struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_4,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-122f, -304f, -560f), vec3<f32>(1386f, 946f, 486f), vec3<f32>(-1178f, -908f, 1454f), vec3<f32>(-228f, -211f, -1423f), vec3<f32>(232f, 615f, -712f), vec3<f32>(335f, 1320f, 1215f), vec3<f32>(-1252f, 1000f, 1811f), vec3<f32>(974f, -1188f, 172f), vec3<f32>(2265f, 713f, 1394f), vec3<f32>(803f, 1000f, -521f), vec3<f32>(-495f, 493f, 632f));

var<private> global2: Struct_4;

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_i32(global2.b.a, abs(u_input.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(173f + 317f), _wgslsmith_div_f32(global2.d, arg_0.d.e), global2.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, 1347f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(sign(arg_0.d.d)), -714f));
    let var_2 = arg_0;
    var var_3 = arg_2.e;
    var var_4 = ~firstLeadingBit(max(u_input.d, min(~u_input.d, ~u_input.d)));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_div_f32(var_1.x, 1517f)), _wgslsmith_f_op_f32(global2.e * 1748f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1523f - global2.e))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.d * arg_2.e)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f + _wgslsmith_f_op_f32(max(1730f, 806f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(arg_0.d.e + 1264f))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    let var_0 = global2.b.a;
    let var_1 = arg_0.c;
    var var_2 = -208f;
    let var_3 = var_1.a;
    let var_4 = !arg_0.d.a.a;
    return vec3<u32>(countOneBits(u_input.d), 1u, ~2603u);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(~vec4<u32>(1u, u_input.d, arg_0, u_input.d), ~vec4<u32>(u_input.d, 14815u, u_input.d, 1u), vec4<bool>(true, true, false, global2.a.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, arg_0), vec4<u32>(u_input.d, 1u, 3696u, arg_0)) & (vec4<u32>(u_input.d, 1u, 678u, 6754u) ^ vec4<u32>(u_input.d, arg_0, 0u, 54576u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 22802u, arg_0, 51434u) << (vec4<u32>(arg_0, 1u, 57071u, arg_0) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.d, 91219u, arg_0, 1u)), vec4<bool>(global2.c, true, false, global2.c)), ~vec4<u32>(10651u, u_input.d, arg_0, 33103u))) >> (~countOneBits(~(~vec4<u32>(4294967295u, 58234u, 1u, arg_0))) % vec4<u32>(32u));
    let var_1 = func_4(Struct_5(global2.b.a, global2.a, Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(global2.b.a, global2.a, Struct_3(vec4<f32>(1837f, 735f, global2.e, global2.e)), Struct_4(global2.a, global2.b, true, -1000f, 1186f), vec4<bool>(false, false, false, true)), Struct_1(global2.b.a), Struct_4(global2.a, global2.b, global2.a.a.x, 1000f, global2.e), global2.a.b))), Struct_4(Struct_2(vec2<bool>(global2.c, global2.a.a.x), Struct_1(-2147483647i)), global2.b, global2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(ceil(2047f))), 328f), !vec4<bool>(global2.a.a.x || global2.c, global2.a.b.a > 18602i, any(vec3<bool>(false, global2.a.a.x, false)), true)), global2.a, global2.c);
    var var_2 = !vec3<bool>(true, !all(global2.a.a), global2.a.a.x);
    global0 = Struct_1(1i);
    let var_3 = global2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e));
}

fn func_1() -> Struct_4 {
    let var_0 = -583f;
    let var_1 = _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.d, 11u)], vec3<f32>(global2.d, var_0, global2.e));
    global1 = array<vec3<f32>, 11>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2068f, _wgslsmith_f_op_f32(1079f + -949f), global2.e, var_1.x))), vec4<f32>(_wgslsmith_div_f32(var_0, global2.e), -1680f, _wgslsmith_f_op_f32(func_2(u_input.d)), 1351f), vec4<bool>(false, true, !any(global3[_wgslsmith_index_u32(u_input.d, 20u)]), select(select(true, global2.c, global2.c), global0.a < global0.a, false)))));
    let var_3 = Struct_3(var_2.a);
    return Struct_4(Struct_2(global2.a.a, global2.a.b), Struct_1(-global2.b.a), false, -866f, _wgslsmith_f_op_f32(sign(-1691f)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> StorageBuffer {
    global0 = arg_3;
    var var_0 = global3[_wgslsmith_index_u32(min(u_input.d, _wgslsmith_div_u32(36648u, min(4294967295u, 22517u))), 20u)];
    let var_1 = Struct_5(arg_0.b.a, Struct_2(vec2<bool>(global2.c, _wgslsmith_f_op_f32(trunc(arg_2.e)) > arg_1.a.x), func_1().a.b), arg_1, func_1(), !global3[_wgslsmith_index_u32(u_input.d, 20u)]);
    global1 = array<vec3<f32>, 11>();
    var var_2 = vec4<i32>(firstLeadingBit(32810i), ~_wgslsmith_mod_i32(~1i, global2.b.a), 2147483647i, _wgslsmith_mod_i32(global2.b.a, arg_3.a));
    return StorageBuffer(_wgslsmith_f_op_f32(-547f + 315f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.e)), -(~firstLeadingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(475f, global2.d, 1084f, global2.d), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-669f, global2.e, global2.e, 1848f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.e, global2.e, global2.d)))), func_1(), global2.a.b);
}

