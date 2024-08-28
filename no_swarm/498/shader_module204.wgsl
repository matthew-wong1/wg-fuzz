struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = !global1.b.x;
    let var_1 = Struct_1(~global1.a, global1.b);
    let var_2 = false;
    global0 = var_1.a << (~countOneBits(_wgslsmith_clamp_u32(var_1.a, ~1u, 0u)) % 32u);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-160f, _wgslsmith_f_op_f32(f32(-1f) * -242f))) - -133f)));
    return _wgslsmith_mult_vec2_i32(abs(countOneBits(firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.zw)))), abs(u_input.a.xy) ^ firstLeadingBit(select(-u_input.a.ww, u_input.a.xx | vec2<i32>(24877i, u_input.a.x), var_2)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = arg_1.a;
    let var_0 = true;
    let var_1 = arg_1.a;
    var var_2 = vec3<i32>(firstLeadingBit(u_input.a.x), abs(-u_input.a.x), ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_2), vec2<i32>(arg_2, arg_2)), u_input.a.wz, func_3()), u_input.a.xx));
    var_2 = u_input.a.xwz;
    return var_0;
}

fn func_1(arg_0: i32) -> f32 {
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32((firstTrailingBit(vec3<u32>(global1.a, 0u, 0u)) << (~vec3<u32>(global1.a, 30554u, global1.a) % vec3<u32>(32u))) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.a, 75600u), vec3<u32>(4294967295u, 18187u, global1.a)) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a, global1.a, global1.a), vec3<u32>(global1.a, global1.a, global1.a) & vec3<u32>(global1.a, global1.a, 92826u)), reverseBits(abs(vec3<u32>(21008u, 4294967295u, global1.a))))), _wgslsmith_mod_u32(global1.a, firstTrailingBit(global1.a)));
    let var_0 = Struct_1(~(~(~1u)), global1.b);
    var var_1 = Struct_1(~(~global1.a), !vec2<bool>(func_2(vec2<bool>(false, true), Struct_1(var_0.a, vec2<bool>(false, false)), arg_0) || true, any(!vec4<bool>(global1.b.x, var_0.b.x, false, true))));
    var var_2 = Struct_1(abs(var_0.a) << (global1.a % 32u), var_0.b);
    global0 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(step(-535f, _wgslsmith_f_op_f32(-532f - 1000f))))) * -659f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(~55094u, global1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_f_op_f32(func_1(u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-455f, 298f)), countOneBits(u_input.a.x));
}

