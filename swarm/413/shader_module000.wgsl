struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 31393u, 73705u);

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: u32 = 19724u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_div_i32(countOneBits(reverseBits(-1i)), 8605i | _wgslsmith_mod_i32(max(60425i & u_input.a, 1i), _wgslsmith_mod_i32(u_input.a, u_input.a)));
    var var_1 = Struct_2(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(3243u << (arg_2 % 32u)), 1u), 2u)]), vec2<u32>(_wgslsmith_clamp_u32(1u, (global0.x ^ 4294967295u) & 0u, abs(_wgslsmith_add_u32(46052u, global0.x))), _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(global0.x, 52299u)))), all(select(vec2<bool>(1u < arg_2, true), vec2<bool>(true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))), Struct_1(vec3<i32>(min(-2147483647i, select(u_input.a, 2147483647i, true)), reverseBits(u_input.a & u_input.a), u_input.a), firstLeadingBit(i32(-1i) * -1i), vec4<u32>(40067u, 4294967295u, ~arg_2, global0.x) >> (min(~vec4<u32>(global0.x, arg_2, 14138u, 81172u), abs(vec4<u32>(arg_2, global0.x, arg_2, global0.x))) % vec4<u32>(32u)), any(vec2<bool>(false, false)) || true, abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(-25682i, -1i, u_input.a, -1208i)))));
    var var_2 = global0.x;
    let var_3 = var_1.d;
    let var_4 = min(min(vec3<u32>(arg_2, arg_2, 1u), ~(~vec3<u32>(11355u, var_1.b.x, 43906u))), ~(~var_1.d.c.zyw));
    return -395i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> vec4<f32> {
    let var_0 = 1u;
    var var_1 = 0u;
    var var_2 = !(!(-func_3(540f, vec2<f32>(1536f, 405f), 150522u) != _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(-1i, -32607i))));
    var var_3 = 187u;
    global2 = 14006u;
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-769f)) * _wgslsmith_div_f32(-492f, -633f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(-362f + -1000f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(select(1597f, _wgslsmith_f_op_f32(204f + -211f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f - -178f)))), _wgslsmith_f_op_f32(-276f + _wgslsmith_f_op_f32(trunc(-510f))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_u32(global0.x | global0.x, ~global0.x), 1828u, vec4<i32>(u_input.a | -59823i, _wgslsmith_sub_i32(max(u_input.a, u_input.a), reverseBits(u_input.a)), u_input.a, -1i), 1u)), vec4<f32>(617f, -724f, -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1362f * 1469f) - -897f))), vec4<bool>(false, true, false, false)));
    let var_1 = vec4<i32>(max(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 25947i, -10534i, -41474i), vec4<i32>(-2147483647i, u_input.a, 24357i, u_input.a)), u_input.a), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-32750i, -9523i), -10563i, u_input.a >> (global0.x % 32u)))), -2147483647i, u_input.a, -21078i);
    var var_2 = -243f;
    let var_3 = Struct_1(~(-abs(-vec3<i32>(var_1.x, var_1.x, var_1.x))), ~func_3(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), reverseBits(global0.x & global0.x)), ~(~(vec4<u32>(54132u, global0.x, 20020u, global0.x) ^ select(vec4<u32>(global0.x, 127501u, 4294967295u, 4230u), vec4<u32>(24259u, 43685u, 1u, 119548u), vec4<bool>(false, true, true, false)))), false, -(~(~vec4<i32>(var_1.x, -4682i, var_1.x, var_1.x))));
    var var_4 = var_3.c.wxz;
    return max(-21748i, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, 24662i, -37224i, 0i), var_3.e))) != ~(abs(~(-8171i)) | ~func_3(-770f, var_0.zw, 14433u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~global0.x) >> ((_wgslsmith_clamp_u32(global0.x, ~global0.x, global0.x) | ~(~(1u ^ global0.x))) % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-581f)) - -672f))));
    var var_2 = reverseBits(_wgslsmith_sub_u32(~((global0.x ^ global0.x) ^ global0.x), 1u));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f - -691f) + _wgslsmith_f_op_f32(-1588f - -1557f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))) + _wgslsmith_f_op_f32(f32(-1f) * -232f)), 452f)));
    var var_4 = !vec3<bool>(all(vec2<bool>(all(vec2<bool>(true, true)), func_1())), !(select(u_input.a, u_input.a, false) >= ~u_input.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, 1314f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0.x, 1u, vec4<i32>(u_input.a, u_input.a, u_input.a, -39659i), global0.x)).x)), 1f)), var_1.x);
}

