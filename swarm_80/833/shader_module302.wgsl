struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    global1 = array<vec4<bool>, 28>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) * 739f);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(30765u), (0u | min(u_input.b.x, abs(u_input.c))) << (~u_input.c % 32u)), 15u)];
    var var_2 = Struct_1(abs(vec4<u32>(~(~u_input.b.x), var_1.a, 77479u | max(1u, u_input.c), ~var_1.b.x)), -(1i >> (var_1.b.x % 32u)));
    var var_3 = Struct_3(select(~vec4<u32>(reverseBits(49316u), ~42848u, 53569u, select(u_input.c, 57944u, false)), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_1.b.x, 1u, 37741u), vec4<u32>(u_input.b.x, var_2.a.x, u_input.c, var_1.b.x), vec4<u32>(var_2.a.x, u_input.b.x, var_1.a, var_2.a.x)), ~var_2.a), all(!(!vec2<bool>(false, var_1.c.x)))), false, _wgslsmith_f_op_f32(select(-1141f, _wgslsmith_f_op_f32(sign(1468f)), var_1.c.x)));
    return !all(var_1.c.xx) || (!(!any(var_1.c.wwy)) && true);
}

fn func_2() -> Struct_1 {
    let var_0 = !select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, true, false)), u_input.d >= u_input.a.x)), vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(!func_3(950f), false));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c ^ 4294967295u, 15u)];
    var var_2 = Struct_3(_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.b.x, 96807u, var_1.b.x, 27702u))), max(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_1.b.x, u_input.c, u_input.b.x, 0u)), vec4<u32>(u_input.b.x, var_1.a, 1u, var_1.a)), vec4<u32>(~0u, 14714u ^ u_input.b.x, ~u_input.c, var_1.a))), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1481f + 2548f), 1666f, func_3(-1792f) != false)));
    var var_3 = ~(_wgslsmith_mod_u32(firstTrailingBit(~var_2.a.x), var_2.a.x) ^ u_input.c);
    global1 = array<vec4<bool>, 28>();
    return Struct_1(~vec4<u32>(~(~4294967295u), ~1u, var_1.a, var_2.a.x), -u_input.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~arg_0.a.x)), 15u)];
    var var_1 = Struct_2(-_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a.xz, firstLeadingBit(u_input.a.zx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c, 908f, arg_1.c), vec3<f32>(-1121f, -1540f, arg_1.c))), vec3<f32>(1223f, arg_1.c, -928f)), vec3<f32>(-537f, _wgslsmith_div_f32(arg_1.c, 267f), arg_1.c))), arg_0, func_2(), arg_0);
    let var_2 = u_input.a.x ^ u_input.a.x;
    global0 = array<Struct_4, 15>();
    let var_3 = Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(17212u, 0u, var_0.b.x, 0u), vec4<u32>(countOneBits(15209u), 1u, ~4294967295u, _wgslsmith_dot_vec3_u32(arg_1.a.zxy, vec3<u32>(var_1.c.a.x, u_input.c, arg_1.a.x)))) & ~(~select(arg_1.a, arg_0.a, global1[_wgslsmith_index_u32(1u, 28u)])), all(select(var_0.c.zw, select(vec2<bool>(false, arg_1.b), var_0.c.zw, var_0.c.wy), var_0.c.zx)), -615f);
    return ~abs(209u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~countOneBits(arg_0.a.yz);
    var var_1 = true;
    var_1 = 4294967295u <= func_4(func_2(), Struct_3(max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 9913u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.b.x, 1u, 1u)), ~vec4<u32>(arg_0.a.x, var_0.x, 0u, u_input.b.x)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) * _wgslsmith_f_op_f32(-153f + -488f))), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) - -1632f), 1584f)) - 1000f)));
    global1 = array<vec4<bool>, 28>();
    return 7818i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(736f)))))))));
    var var_1 = Struct_2(reverseBits(func_1(Struct_1(vec4<u32>(33880u, u_input.b.x, u_input.c, 1u), -2147483647i))), vec3<f32>(-1496f, _wgslsmith_f_op_f32(round(var_0)), var_0), Struct_1(~(~firstTrailingBit(vec4<u32>(93774u, 20950u, u_input.c, u_input.b.x))), ~(-2147483647i)), func_2(), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(21961u, 12106u, u_input.b.x, u_input.c), vec4<u32>(u_input.b.x, 94447u, u_input.b.x, u_input.c)), u_input.a.x));
    let var_2 = var_1.d.a;
    let var_3 = Struct_3(var_1.e.a, _wgslsmith_f_op_f32(sign(-1668f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x);
    let var_4 = Struct_3(countOneBits(~(vec4<u32>(var_3.a.x, 38416u, var_1.e.a.x, 1u) & vec4<u32>(var_1.c.a.x, var_2.x, u_input.c, u_input.b.x)) & vec4<u32>(_wgslsmith_add_u32(4294967295u, var_1.c.a.x), ~var_3.a.x, u_input.b.x, _wgslsmith_mult_u32(4294967295u, 0u))), !var_3.b, var_1.b.x);
    global1 = array<vec4<bool>, 28>();
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zx, var_5.a.x, min(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, -21228i, -13934i), u_input.a.wyw), -u_input.a.wwx) | firstTrailingBit(u_input.a.xww));
}

