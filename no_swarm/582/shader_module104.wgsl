struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1547f, vec4<u32>(23837u, 25916u, 10671u, 28302u), vec4<f32>(309f, -383f, -859f, -1503f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f * 1389f) - 541f))), -308f, _wgslsmith_f_op_f32(step(global0.a, -2490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-232f)) + -1000f));
    var_0 = global0.c;
    global0 = Struct_3(_wgslsmith_f_op_f32(-1950f * _wgslsmith_f_op_f32(exp2(var_0.x))), vec4<u32>(global0.b.x, global0.b.x, global0.b.x, arg_1.c << (firstLeadingBit(~0u) % 32u)), _wgslsmith_f_op_vec4_f32(global0.c + global0.c));
    let var_1 = Struct_2(vec4<u32>(global0.b.x, 0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.b.x, 1u), abs(global0.b.x), _wgslsmith_sub_u32(17306u >> (arg_1.a.x % 32u), arg_1.a.x & u_input.b.x)), _wgslsmith_sub_u32(abs(~34849u), ~global0.b.x & u_input.b.x)), -vec3<i32>(abs(arg_0.x), firstLeadingBit(11441i), -1i) >> (firstTrailingBit(vec3<u32>(arg_1.a.x, global0.b.x, 1u) & arg_1.a) % vec3<u32>(32u)), all(arg_1.e.zw));
    var var_2 = _wgslsmith_mult_u32(u_input.b.x, abs(~_wgslsmith_sub_u32(35470u, 80u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1847f, 1115f));
}

fn func_2() -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(func_3(~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, -2147483647i, 10764i)), reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), Struct_1(~vec3<u32>(27940u, u_input.a, u_input.b.x), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 5593u, _wgslsmith_f_op_vec2_f32(exp2(global0.c.wx)), vec4<bool>(u_input.a == 0u, true, true, true)))), countOneBits(max(~global0.b, vec4<u32>(0u, ~5064u, ~21415u, u_input.a << (u_input.a % 32u)))), global0.c);
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(815f, global0.a, -1461f) - _wgslsmith_div_vec3_f32(global0.c.zxw, global0.c.yyw))))));
    var var_2 = global0.b.yz;
    var var_3 = vec4<bool>(true, any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(floor(-1437f));
}

fn func_1() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2())))) + global0.a), global0.b, vec4<f32>(global0.c.x, 544f, global0.a, global0.a));
    let var_1 = Struct_1(global0.b.wyx, vec3<bool>(true, true, true), var_0.b.x, var_0.c.xw, vec4<bool>(true, true, true, true));
    global0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1344f), global0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(var_0.c, global0.c)))));
    return max(~0u, global0.b.x >> ((select(global0.b.x, 65242u, var_1.b.x) << (u_input.b.x % 32u)) % 32u)) >= 13843u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(ceil(671f))) + global0.a), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(u_input.a | global0.b.x, countOneBits(18402u))), u_input.b.x, 1u >> (u_input.b.x % 32u), firstLeadingBit(4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-431f, global0.c.x, global0.a, -1041f))) * _wgslsmith_f_op_vec4_f32(-global0.c)), vec4<f32>(_wgslsmith_f_op_f32(-1224f + global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1996f), _wgslsmith_f_op_f32(global0.c.x - global0.c.x)))), _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_div_vec4_f32(vec4<f32>(-616f, global0.a, global0.c.x, 281f), vec4<f32>(global0.a, global0.c.x, global0.a, 1132f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * global0.a))), global0.b << (_wgslsmith_add_vec4_u32(vec4<u32>(61342u, ~4294967295u, u_input.b.x & 4294967295u, ~u_input.a), global0.b) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.c, global0.c) * global0.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.a, global0.a, global0.c.x) + global0.c) + vec4<f32>(global0.a, global0.c.x, global0.c.x, 373f))))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -39652i), u_input.c & vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.x) & u_input.c.x, u_input.c.x ^ ~(-abs(-1i)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(var_1.c.x + global0.c.x)))) - var_1.c.x), -1150f);
    var_0 = all(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), true || any(vec3<bool>(false, false, true))));
    var_2 = countOneBits(firstLeadingBit(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i | u_input.c.x))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, _wgslsmith_add_i32(u_input.c.x >> (0u % 32u), u_input.c.x)));
}

