struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1126f, -902f, 850f, 808f, -100f, 1000f, -1000f, 790f);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(14985u, 175f), Struct_1(2728u, -1255f), Struct_1(24415u, -748f), Struct_1(0u, 547f), Struct_1(30422u, -1767f), Struct_1(1u, 934f), Struct_1(1u, -707f), Struct_1(133214u, -339f), Struct_1(124925u, 237f), Struct_1(0u, -444f), Struct_1(0u, -641f), Struct_1(4294967295u, -2571f), Struct_1(0u, 649f), Struct_1(68424u, 420f), Struct_1(65789u, 710f), Struct_1(4294967295u, -325f), Struct_1(0u, 924f), Struct_1(0u, 1004f), Struct_1(0u, 2214f), Struct_1(38032u, -1140f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = ~u_input.a.xy;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, firstLeadingBit(11136u)), 20u)];
    global1 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(0u, _wgslsmith_sub_u32(89259u, 17865u), var_1.a, firstLeadingBit(_wgslsmith_mult_u32(select(38435u, 4294967295u, false), 1u))));
    global0 = array<f32, 8>();
    return !all(vec2<bool>(true, true));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(4628u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, -2408f)) * vec2<f32>(888f, global0[_wgslsmith_index_u32(4294967295u, 8u)])))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)])) + vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(403f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(977f, -504f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)])))))));
    let var_1 = Struct_3(vec3<bool>(func_3() && !all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(1f - -432f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -455f)), true), ~0u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(abs(u_input.b)), u_input.b), 13480u), 20u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 624f, 537f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1021f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b, 8u)])), -452f, _wgslsmith_div_f32(2050f, var_0.x))))));
    global0 = array<f32, 8>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-762f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-1697f * -357f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_1.c.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1788f), _wgslsmith_f_op_f32(select(var_0.x, 1000f, var_1.a.x)))), any(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)))) + -423f));
    global1 = array<Struct_1, 20>();
    return Struct_3(select(select(vec3<bool>(var_1.d.x >= var_1.c.b, true, var_1.b != var_1.b), select(var_1.a, !vec3<bool>(var_1.a.x, false, false), true), !var_1.a), !var_1.a, var_1.a), 90242u, Struct_1(u_input.c.x, _wgslsmith_div_f32(-705f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, -1000f)), var_1.d.x))), _wgslsmith_f_op_vec4_f32(var_1.d - var_1.d));
}

fn func_1() -> bool {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u) ^ u_input.b, u_input.c.x, u_input.b, ~(u_input.b | ~countOneBits(u_input.b)));
    global1 = array<Struct_1, 20>();
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.d.xw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2379f, var_1.c.b) + _wgslsmith_f_op_vec2_f32(sign(var_1.d.wx))), !select(var_1.a.zz, vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.zz)))));
    var_1 = func_2();
    return !(!(_wgslsmith_sub_u32(~0u, abs(var_1.b)) != ~abs(var_1.b)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(7173u, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)]), vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 8u)], 1422f, 939f, global0[_wgslsmith_index_u32(18965u, 8u)]))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 697f, global0[_wgslsmith_index_u32(1u, 8u)]))))))));
    let var_1 = u_input.a.x;
    global1 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) - var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_2, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1389f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2, -2141f, -1828f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 8u)], global0[_wgslsmith_index_u32(6104u, 8u)], -152f, var_0.x))))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2, var_0.x, func_2().c.b)), func_2().d)));
    return vec3<bool>(arg_0, arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    let var_0 = Struct_3(func_4((u_input.d & ~u_input.d) >= -1i, ~30512u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 102271u, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 52834u), u_input.c)), 24475u, !func_1())), min(1u, 42156u), Struct_1(~(~39960u), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 8u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f - global0[_wgslsmith_index_u32(u_input.c.x, 8u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 110f, 2588f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(272f, -440f, 889f, 764f)))))));
    var var_1 = var_0.a.x & var_0.a.x;
    var_1 = false;
    var var_2 = func_2();
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yw);
}

