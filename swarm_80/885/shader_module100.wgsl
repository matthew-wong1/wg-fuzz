struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, global0.x), vec2<bool>(true, global0.x)), vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), global0.x)), vec2<bool>(false || global0.x, true), global0.x), vec2<bool>(!global0.x, false), false), !select(select(vec2<bool>(global0.x, true), select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), all(vec4<bool>(global0.x, global0.x, false, global0.x))), select(vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), global0.x), true), select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x), global0.x)), true);
    var var_0 = select(!vec3<bool>(!any(vec3<bool>(false, global0.x, global0.x)), true, _wgslsmith_f_op_f32(select(-2188f, 1183f, global0.x)) > -350f), select(!select(!vec3<bool>(global0.x, false, false), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, global0.x), global0.x), vec3<bool>(global0.x, global0.x, global0.x)), !select(vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, true, global0.x), -2147483647i <= u_input.b), vec3<bool>(_wgslsmith_f_op_f32(sign(836f)) <= _wgslsmith_f_op_f32(sign(-630f)), global0.x, !(!global0.x))), !(!(!(!vec3<bool>(global0.x, global0.x, false)))));
    global0 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.x), var_0.yz, var_0.xx), vec2<bool>(true, select(false, var_0.x, true)), var_0.xz), !var_0.zx, global0.x);
    var var_1 = !global0.x;
    var var_2 = all(!vec3<bool>(false, all(select(var_0.zy, var_0.xy, var_0.x)), true));
    return true == !global0.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_sub_i32(global1.x, -49126i);
    let var_1 = countOneBits(global1.zx);
    let var_2 = !select((func_3() | false) || false, true, global0.x);
    var_0 = ~(~(-2147483647i));
    let var_3 = Struct_1(arg_0.x);
    return Struct_5(!all(vec4<bool>(global0.x, global0.x, any(vec3<bool>(false, global0.x, var_2)), var_2)), arg_0, global0.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec3<u32>(~(u_input.d | firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(firstTrailingBit(u_input.d), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 24840u, 3276u), vec3<u32>(27065u, u_input.d, 8016u)))), u_input.c.x));
    let var_1 = Struct_3(Struct_1(firstTrailingBit(var_0.b.x)), firstLeadingBit(abs(_wgslsmith_sub_i32(i32(-1i) * -53237i, firstTrailingBit(global1.x)))), 1u ^ ((u_input.d ^ ~var_0.b.x) << (~select(var_0.b.x, u_input.c.x, true) % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-142f, 898f, -1362f, 1602f)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + -605f), -1518f, 955f, 1f), select(select(vec4<bool>(var_0.c, var_0.c, global0.x, global0.x), vec4<bool>(var_0.c, false, var_0.a, global0.x), global0.x), !vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(global0.x, global0.x, false, var_0.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(103f, -307f, -1971f, 1000f) + vec4<f32>(589f, 221f, -1485f, 198f))))), false)), _wgslsmith_div_i32(-(0i & min(global1.x, global1.x)), abs(global1.x)));
    global1 = vec4<i32>(max(62334i, 2147483647i), var_1.e, 24271i, ~global1.x);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, abs(global1.x), global1.x, 1i), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.b, 1i, i32(-1i) * -1i, _wgslsmith_add_i32(u_input.b, var_1.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.e, u_input.b, u_input.b, -34321i), -vec4<i32>(global1.x, -6337i, 1i, 0i)), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global1.x, global1.x, 20773i, -18777i)), -vec4<i32>(u_input.b, var_1.b, global1.x, -2147483647i)))));
    var var_3 = global0.x;
    return Struct_2(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(step(-1328f, -220f)), vec2<bool>(select(-43883i >= _wgslsmith_dot_vec2_i32(global1.yw, global1.zy), !global0.x, true), true));
    var var_1 = func_1();
    let var_2 = var_0.b;
    var_1 = Struct_2(func_1().a);
    global1 = vec4<i32>(reverseBits(~countOneBits(_wgslsmith_clamp_i32(global1.x, u_input.b, 10727i))), max(i32(-1i) * -42958i, firstTrailingBit(-5735i)), max(firstLeadingBit(global1.x), -(~u_input.b)), ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1.zy & -select(-global1.xz, ~global1.xx, true), reverseBits(select(~abs(u_input.c.x), ~_wgslsmith_div_u32(62485u, u_input.a), true)), u_input.b);
}

