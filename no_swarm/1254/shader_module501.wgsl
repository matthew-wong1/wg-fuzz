struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_1(1048f, -2069f, -629f));

var<private> global1: vec3<f32>;

var<private> global2: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1178f, -1676f, global1.x, -1305f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(464f, 530f, 1950f, global0.b.b)))))), Struct_1(151f, global0.b.b, global0.b.b), global0.a, global0.a, !vec4<bool>(global0.a && false, !any(vec4<bool>(global0.a, false, global0.a, global0.a)), global0.a, !all(vec4<bool>(global0.a, global0.a, global0.a, false))));
    var var_1 = _wgslsmith_dot_vec2_u32(~global2.a ^ global2.a, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(35067u, _wgslsmith_clamp_u32(global2.a.x, 0u, global2.a.x))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.zwz), _wgslsmith_f_op_vec3_f32(-var_0.a.yyx)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_0.a.yzy, var_0.a.xww)), _wgslsmith_f_op_vec3_f32(max(var_0.a.wxy, vec3<f32>(global0.b.c, global0.b.b, -856f))), true))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.c, global0.b.b, 1387f), vec3<f32>(328f, global1.x, 423f)) * _wgslsmith_f_op_vec3_f32(trunc(var_0.a.yxx)))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.b))))), _wgslsmith_f_op_f32(global0.b.a - var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x))))))), _wgslsmith_f_op_f32(-200f + -952f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1708f), global1.x, _wgslsmith_f_op_f32(global1.x * global1.x)) * var_0.a)), global0.b, true, false, select(select(var_0.e, select(var_0.e, var_0.e, var_0.e.x), vec4<bool>(false, global0.a, false, all(var_0.e.ww))), vec4<bool>(_wgslsmith_mult_i32(u_input.d, u_input.b) < 101792i, false, false, all(var_0.e.yy) != (786f <= global0.b.c)), vec4<bool>(global0.a, all(vec3<bool>(global0.a, true, global0.a)), !(854f == var_0.a.x), false)));
    return vec3<f32>(1983f, global0.b.b, _wgslsmith_f_op_f32(-global0.b.a));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(552f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * -351f)), global1.x, global0.b.a, _wgslsmith_f_op_f32(func_2()))));
    global0 = Struct_3(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.c + var_0.x)))), global0.b.a, -179f));
    let var_1 = Struct_1(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1459f, 583f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) + -502f));
    let var_2 = global0.a;
    var var_3 = Struct_4(vec2<u32>(~11657u >> (global2.a.x % 32u), ~(~4294967295u)) >> ((~vec2<u32>(58977u, arg_0.x) << (~(arg_0 & vec2<u32>(55500u, 54447u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return 11932u;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_4(select(global2.a, global2.a, global1.x < global0.b.a));
    global2 = Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(27131u, _wgslsmith_mod_u32(firstLeadingBit(var_0.a.x), 79824u ^ var_0.a.x)), var_0.a, ~global2.a));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(sign(global0.b.c))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a - 639f), global0.b.a), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1529f, _wgslsmith_f_op_f32(global1.x + global1.x))))), global0.b, !all(vec3<bool>(arg_2, global1.x > global1.x, !global0.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(select(global0.b.a, global1.x, global0.a))), _wgslsmith_f_op_vec3_f32(func_3()).x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b + global0.b.a))), !vec4<bool>(select(!arg_1.x, all(vec4<bool>(arg_2, true, true, arg_1.x)), true), arg_2, reverseBits(u_input.d) <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -150i, u_input.d, 29260i), vec4<i32>(u_input.b, -1i, u_input.d, 0i)), any(vec3<bool>(arg_1.x, true, false))));
    var var_2 = all(var_1.e.wy) && all(var_1.e);
    var var_3 = min(u_input.b, 28143i);
    return Struct_3(arg_2, Struct_1(var_1.a.x, 1285f, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(~vec4<u32>(52946u, 0u, global2.a.x, 3614u)) & ~(~(vec4<u32>(global2.a.x, u_input.a, 0u, 3001u) & vec4<u32>(global2.a.x, 0u, u_input.a, u_input.a)) >> (firstTrailingBit(select(vec4<u32>(u_input.a, 45173u, 4294967295u, 1u), vec4<u32>(4294967295u, global2.a.x, 1u, global2.a.x), global0.a)) % vec4<u32>(32u)));
    let var_1 = func_4(_wgslsmith_dot_vec4_u32(~(~var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c, func_1(global2.a), u_input.a & var_0.x, ~var_0.x), vec4<u32>(~u_input.c, ~4294967295u, global2.a.x, global2.a.x))), !vec4<bool>(var_0.x != 4997u, !global0.a, true, true | select(false, true, true)), true);
    let var_2 = var_1.b;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1364f, _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(-var_2.c), -205f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-152f, global0.b.a, global1.x, global1.x)))))), func_4(_wgslsmith_add_u32(global2.a.x, 54561u), !vec4<bool>(false, true, global0.a, false), all(!(!vec3<bool>(true, global0.a, var_1.a)))).b, func_4(_wgslsmith_div_u32(50087u, u_input.c) | abs(25376u), vec4<bool>(true, true && global0.a, all(vec3<bool>(global0.a, true, false)), !global0.a), func_4(global2.a.x, vec4<bool>(true, true, false, true), global0.a).a).a & true, var_1.a, vec4<bool>(global0.a, !var_1.a, all(!vec3<bool>(global0.a, true, true)), var_1.a));
    global2 = Struct_4(vec2<u32>(~(~firstLeadingBit(u_input.a)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-24167i, u_input.c, 34819u);
}

