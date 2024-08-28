struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-47382i, i32(-2147483648), 20789i, -7627i), vec4<i32>(1i, -1i, 1i, -19583i), vec4<i32>(-14045i, 40779i, 50537i, 19474i), vec4<i32>(-10438i, -21638i, 0i, 18042i), vec4<i32>(1i, 1i, 2147483647i, 22599i));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(1u, 85297u, 0u, 1u));

var<private> global2: i32 = 1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    let var_0 = !all(!arg_1.d.ww);
    let var_1 = vec3<bool>(true, all(arg_1.d.wz), false);
    let var_2 = Struct_2(_wgslsmith_sub_u32(u_input.c, ~(~u_input.c)), -1i);
    let var_3 = Struct_3(_wgslsmith_mod_vec4_u32(~global1.a, _wgslsmith_mult_vec4_u32(global1.a, ~(vec4<u32>(var_2.a, var_2.a, 4294967295u, 52796u) ^ global1.a))));
    global0 = array<vec4<i32>, 5>();
    return ~4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = select(vec3<bool>(arg_1, true, !arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), !(!(!vec3<bool>(arg_1, true, false))), arg_1), arg_1 | !all(vec3<bool>(arg_1, false, true)));
    return 799f;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32) -> vec3<f32> {
    global1 = Struct_3(vec4<u32>(22204u, _wgslsmith_mult_u32(~4294967295u, arg_0.a.x | 1u), _wgslsmith_div_u32(1u, ~func_2(false, Struct_1(4294967295u, u_input.c, false, vec4<bool>(false, false, false, true), vec2<u32>(49309u, 104911u)), u_input.a.yw, arg_0.a.x)), (1u ^ (arg_0.a.x ^ 6046u)) & arg_1.x));
    global0 = array<vec4<i32>, 5>();
    let var_0 = arg_1.x;
    var var_1 = reverseBits(_wgslsmith_mult_vec4_i32(u_input.a & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u ^ u_input.c, 94273u), 5u)], u_input.a));
    global1 = Struct_3(global1.a);
    return vec3<f32>(-323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(776f, _wgslsmith_f_op_f32(abs(-1186f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1954f, -747f, false)) - _wgslsmith_f_op_f32(717f + 667f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f - _wgslsmith_f_op_f32(func_3(Struct_2(global1.a.x, var_1.x), select(true, true, true), -51253i & u_input.a.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec3<u32>(~_wgslsmith_sub_u32(max(u_input.c, 6248u), ~global1.a.x), u_input.c, _wgslsmith_mult_u32(arg_1.a.x, _wgslsmith_add_u32(22904u, 26056u) << (global1.a.x % 32u))) & global1.a.xyw;
    global1 = arg_1;
    var var_1 = Struct_1(u_input.c ^ global1.a.x, global1.a.x, !any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false), all(vec4<bool>(false, false, false, true)))), select(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), true, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, 0u > global1.a.x, global1.a.x >= 72996u), all(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), vec2<u32>(u_input.c, 4294967295u));
    let var_2 = global1.a.yzw;
    global2 = u_input.b.x;
    return Struct_3(select(vec4<u32>(var_2.x, countOneBits(1u), var_1.b, ~u_input.c), _wgslsmith_mod_vec4_u32(arg_1.a ^ vec4<u32>(var_2.x, arg_1.a.x, var_1.e.x, 4294967295u), max(arg_1.a, min(vec4<u32>(arg_1.a.x, 18669u, global1.a.x, arg_1.a.x), global1.a))), vec4<bool>(true, var_1.c, all(select(vec4<bool>(false, var_1.c, var_1.c, var_1.c), vec4<bool>(var_1.c, false, var_1.c, true), var_1.d)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<u32>(0u, 4294967295u, 0u, 25487u)), ~vec2<u32>(global1.a.x, 68915u), 7656u | u_input.c)))), Struct_3(global1.a));
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))), vec2<bool>(!all(vec3<bool>(false, false, false)), (var_0.a.x ^ var_0.a.x) <= ~(~global1.a.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)));
    var var_2 = ~vec3<i32>(u_input.b.x | -u_input.a.x, 32870i, 40165i ^ u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-129f - -417f), -1092f, _wgslsmith_f_op_f32(round(-747f))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -520f), 138f)))));
    global2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x & -10884i, ~(-27185i)), u_input.b.x | _wgslsmith_sub_i32(var_2.x >> (_wgslsmith_mult_u32(1u, 42664u) % 32u), -2147483647i));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(56952u, var_2.x), false, u_input.a.x)))) + var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(func_3(Struct_2(1u, abs(_wgslsmith_div_i32(27058i, u_input.a.x))), _wgslsmith_mod_i32(var_2.x, firstTrailingBit(u_input.b.x)) >= ~firstLeadingBit(-27328i), 2147483647i)), 622f);
    global0 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a.x, reverseBits(_wgslsmith_add_u32(18101u, var_0.a.x))), ~min(global1.a.x, 20348u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) + 360f));
}

