struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(108852u, 1u, 4294967295u, 81806u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 1650f, -2324f, -384f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-644f, arg_2.a, -1000f, -1231f), vec4<f32>(arg_2.a, 1668f, arg_2.a, arg_2.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, -1269f, 212f, 1992f), vec4<f32>(arg_2.a, 1000f, -587f, 957f)))), vec4<bool>(select(arg_3.a.x, arg_3.a.x, arg_3.a.x), false, true, true))))));
    let var_1 = Struct_1(vec4<bool>(true, true, !select(true, !arg_3.a.x, !arg_3.a.x), false || arg_1.x), firstLeadingBit(global0.xz));
    let var_2 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0, firstTrailingBit(~arg_0)), vec2<i32>(~(-1i), arg_0)), ~vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 0i, 1i), abs(countOneBits(0i))), select(var_1.a.yz, arg_1.yy, true));
    var var_3 = arg_2;
    var_3 = arg_2;
    return 27224u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(!arg_1.a, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b, reverseBits(abs(vec2<u32>(13181u, 28830u)))), arg_0));
    let var_1 = min(max(~(-1i), u_input.a), 2147483647i);
    let var_2 = Struct_2(-237f, arg_1.b.x, ~firstTrailingBit(vec3<u32>(abs(21387u), 32944u, _wgslsmith_mod_u32(29180u, arg_1.b.x))));
    let var_3 = Struct_2(var_2.a, 40359u, ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.x, var_2.b, 61720u, 31721u), vec4<u32>(var_0.b.x, arg_0.x, arg_1.b.x, 1u)), select(global0.x, func_3(2147483647i, vec4<bool>(arg_1.a.x, var_0.a.x, var_0.a.x, true), Struct_2(var_2.a, var_2.b, vec3<u32>(51385u, 1u, arg_0.x)), var_0), any(var_0.a.xw)), 49593u));
    var var_4 = 39446u;
    return arg_0.x;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), global0.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(~1u, func_2(global0.xz, Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(global0.x, global0.x))), global0.x), _wgslsmith_mod_vec3_u32(~global0.zzx ^ countOneBits(vec3<u32>(global0.x, global0.x, global0.x)), global0.yyy)));
    var var_1 = !(!vec4<bool>(any(vec4<bool>(true, false, true, true)) & (u_input.a == arg_0.x), all(vec3<bool>(true, true, true)), true, true));
    global0 = abs(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.x, 0u, global0.x, 78440u)), (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, global0.x), vec4<u32>(1u, 25337u, 4294967295u, global0.x)) ^ ~vec4<u32>(71566u, var_0.b, global0.x, 1u)) << (max(select(vec4<u32>(29948u, 1u, 37175u, 32578u), vec4<u32>(global0.x, 4294967295u, 12118u, global0.x), var_1.x), vec4<u32>(0u, 35776u, 4294967295u, 1u) << (vec4<u32>(var_0.b, 43376u, 20595u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = global0.x;
    var var_3 = Struct_2(var_0.a, 1u, select(~abs(vec3<u32>(1u, var_0.b, 29804u)), ~var_0.c, firstTrailingBit(~(-1533i)) != arg_0.x));
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, 1i)), vec2<i32>(u_input.a, u_input.a)));
    global0 = ~vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0, global0.x), 19861u), ~_wgslsmith_mod_u32(24496u, global0.x), 0u >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global0.x), var_0) % 32u), var_0 ^ var_0);
    var var_1 = max(~func_2(vec2<u32>(reverseBits(45260u), countOneBits(43748u)), Struct_1(vec4<bool>(true, true, true, true), global0.yw)), global0.x);
    let var_2 = max(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(_wgslsmith_mult_u32(var_0, 0u), global0.x, _wgslsmith_div_u32(var_0, var_0), ~var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, _wgslsmith_mult_u32(0u, 1u), global0.x >> (50017u % 32u), _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(1u, var_0))), (vec4<u32>(global0.x, 85008u, 4294967295u, global0.x) << (vec4<u32>(global0.x, 19846u, 13219u, 1u) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(var_0, 8777u, var_0, var_0)) % vec4<u32>(32u)))), max(~(~(~vec4<u32>(var_0, var_0, 1u, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(func_3(u_input.a, vec4<bool>(false, false, true, true), Struct_2(-275f, 4294967295u, vec3<u32>(global0.x, var_0, 58102u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(global0.x, 4294967295u))), 1u, 0u ^ var_0, global0.x), ~(~vec4<u32>(global0.x, var_0, 51104u, global0.x)))));
    let var_3 = -2608f;
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0, firstLeadingBit(1u) ^ var_0), 0u);
}

