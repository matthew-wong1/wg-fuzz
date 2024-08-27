struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = 1i;

var<private> global2: array<i32, 9>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1 & max(8831i, arg_1), abs(~global2[_wgslsmith_index_u32(arg_0, 9u)]), global2[_wgslsmith_index_u32(abs(select(53058u, u_input.b.x, global3.a.a.x)), 9u)], arg_2.b), ~u_input.a));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, -160f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a))))), -1i, max(arg_2.c, ~vec4<u32>(u_input.b.x, 4294967295u, arg_0, global0.x) ^ vec4<u32>(reverseBits(u_input.b.x), 1u, global0.x >> (global0.x % 32u), ~u_input.b.x)));
    let var_2 = 0u ^ ~_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(arg_2.c.x, global0.x, arg_0)), ~vec3<u32>(arg_0, 0u, 4294967295u), all(global3.a.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, arg_0, 28430u), vec3<u32>(arg_2.c.x, 37751u, 57478u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1463f, -724f, 1749f, arg_2.a.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(549f, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, arg_2.a.x, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 1128f), vec4<f32>(arg_2.a.x, -572f, var_1.a.x, arg_2.a.x), vec4<bool>(global3.a.a.x, false, true, false)))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-1941f - 531f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2187f, -1000f, -599f, -882f))), vec4<f32>(var_1.a.x, 166f, -1311f, 772f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, var_1.a.x, -982f, var_1.a.x) + vec4<f32>(-745f, var_1.a.x, 207f, arg_2.a.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.x, 256f, arg_2.a.x, arg_2.a.x))), vec4<f32>(281f, arg_2.a.x, arg_2.a.x, -230f)))), vec4<bool>(true, ~global0.x <= u_input.b.x, global3.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, u_input.b.x), var_1.c.xw) == arg_0)))));
    let var_4 = global3.a.a.x;
    return ~(~var_1.c);
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    var var_1 = vec4<i32>(global2[_wgslsmith_index_u32(global0.x, 9u)], -36856i, i32(-1i) * -28485i, global2[_wgslsmith_index_u32(~abs(~19040u), 9u)]);
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1789f)))), -2147483647i, _wgslsmith_div_vec4_u32(~func_3(global0.x, 0i, Struct_4(vec2<f32>(1000f, -797f), 39301i, vec4<u32>(global0.x, 18230u, global0.x, 0u))), vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(52119u, 66555u, 0u), u_input.b), global0.x), global0.x, 0u, global0.x << (u_input.b.x % 32u))));
    let var_3 = var_2.a.x;
    return Struct_3(var_2.b, _wgslsmith_sub_vec4_i32(u_input.a, ~(-vec4<i32>(0i, -2147483647i, 2147483647i, 1i) >> (~var_2.c % vec4<u32>(32u)))), var_2.a, !(any(select(vec3<bool>(global3.a.a.x, true, true), vec3<bool>(global3.a.a.x, true, true), false)) & any(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(true, global3.a.a.x, false, false), vec4<bool>(false, var_0, true, true)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = global3.a;
    global0 = arg_2.c.xy;
    var var_1 = !(!(!(!vec3<bool>(arg_0.x, var_0.a.x, true))));
    var var_2 = select(!(!vec4<bool>(any(var_1.yy), true, arg_0.x, !arg_1.d)), vec4<bool>(false, arg_1.d | (false || select(false, arg_1.d, arg_1.d)), global3.a.a.x, func_2().d), !select(arg_0, arg_0, var_0.a.x));
    global0 = ~(~(vec2<u32>(0u, 0u) | _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, arg_2.c.x), u_input.b.yx)) & arg_2.c.ww);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, arg_2.a.x, _wgslsmith_f_op_f32(floor(arg_2.a.x)), arg_1.c.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(!(!select(!vec4<bool>(global3.a.a.x, global3.a.a.x, true, global3.a.a.x), vec4<bool>(global3.a.a.x, global3.a.a.x, global3.a.a.x, global3.a.a.x), vec4<bool>(global3.a.a.x, global3.a.a.x, global3.a.a.x, false))), func_2(), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-688f)), _wgslsmith_f_op_f32(840f - -287f))), 1i, vec4<u32>(~(~46278u), _wgslsmith_mod_u32(firstTrailingBit(0u), 48377u), ~54401u, reverseBits(39460u)))));
    let var_1 = arg_1.x | arg_1.x;
    let var_2 = !(reverseBits(~(var_1 ^ var_1)) > 18665u);
    global2 = array<i32, 9>();
    var var_3 = firstTrailingBit(u_input.a.yw);
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = !select(!select(vec2<bool>(arg_0.d, arg_0.d), !vec2<bool>(true, global3.a.a.x), true), select(global3.a.a.xy, select(vec2<bool>(arg_0.d, true), !global3.a.a.xy, arg_0.d), true), arg_0.d);
    var var_1 = Struct_2(Struct_1(vec3<bool>(func_1(global0.x, _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, global0.x, 0u)), global0.x).d, !all(global3.a.a), global3.a.a.x)));
    var var_2 = _wgslsmith_clamp_u32(~4294967295u, ~countOneBits(arg_1.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(~firstTrailingBit(2882u), 4294967295u), 60200u));
    var_1 = Struct_2(global3.a);
    let var_3 = Struct_2(Struct_1(vec3<bool>(arg_0.d, false, true)));
    return global0.x >= ~(~reverseBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -global2[_wgslsmith_index_u32(1u, 9u)];
    var var_0 = ~_wgslsmith_sub_u32(u_input.b.x, global0.x);
    let var_1 = vec4<bool>(global3.a.a.x, !global3.a.a.x, true & func_5(func_1(28627u >> (global0.x % 32u), vec3<u32>(0u, 0u, u_input.b.x), _wgslsmith_mult_u32(global0.x, 4294967295u)), abs(vec4<u32>(0u, 1u, 0u, global0.x) ^ vec4<u32>(45514u, global0.x, global0.x, 4294967295u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-115f)), -1415f)), vec3<i32>(u_input.a.x, u_input.a.x, abs(2147483647i))), global3.a.a.x);
    global3 = Struct_2(global3.a);
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(func_2().c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(523f)), _wgslsmith_f_op_f32(-1000f - -965f)))), -33066i, ~countOneBits(vec4<u32>(u_input.b.x, 7488u, u_input.b.x, ~1u)));
    var var_3 = Struct_2(global3.a);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(~(-var_2.b)), _wgslsmith_mult_i32(-33704i, ~_wgslsmith_mod_i32(var_2.b, var_2.b))), vec4<i32>(((9531i | var_2.b) & -62085i) << (max(48437u, global0.x | 10139u) % 32u), abs(78852i), abs(var_2.b), var_2.b & _wgslsmith_add_i32(24954i, firstTrailingBit(var_2.b))));
}

