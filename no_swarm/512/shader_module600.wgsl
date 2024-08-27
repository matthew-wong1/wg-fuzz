struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1105f;

var<private> global1: array<f32, 6> = array<f32, 6>(-224f, 889f, 528f, 770f, -810f, 143f);

var<private> global2: vec4<u32> = vec4<u32>(1u, 24233u, 48782u, 40061u);

var<private> global3: array<vec2<f32>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    let var_0 = select(firstLeadingBit(abs(1u)), ~(~(~_wgslsmith_mult_u32(4294967295u, 1u))), false);
    global1 = array<f32, 6>();
    var var_1 = _wgslsmith_clamp_u32(global2.x, arg_0, _wgslsmith_add_u32(6371u, global2.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~16082u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1873f))))), arg_1.x);
    var var_3 = -u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1806f * 1f));
}

fn func_2() -> Struct_2 {
    global0 = 507f;
    var var_0 = 0u;
    global3 = array<vec2<f32>, 17>();
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 6u)];
    global1 = array<f32, 6>();
    return Struct_2(-14259i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10682u, 6u)] + -315f), _wgslsmith_f_op_f32(func_3(u_input.b.x, vec3<f32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))), global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(0u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u)), 6u)], -128f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(37852u, 6u)], -828f, -2055f, global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a ^ -58098i, -54754i, u_input.a), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, -12426i, 0i)), vec3<i32>(12495i, -32812i, -1i), -vec3<i32>(u_input.a, -48474i, 2147483647i)), any(vec2<bool>(true, true))), vec3<i32>(u_input.a, ~u_input.a | reverseBits(22454i), _wgslsmith_mult_i32(~0i, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(global2.x, 17u)])))), Struct_1(~countOneBits(global2.xy >> (vec2<u32>(global2.x, 44138u) % vec2<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = min(u_input.b, min(global2.zy, ~reverseBits(~vec2<u32>(global2.x, u_input.b.x))));
    let var_1 = !(true || (var_0.x == _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(global2.x, global2.x), ~4294967295u)));
    var var_2 = Struct_4(global2.x, vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(var_1, true, false), var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(true, false, true)))), !all(vec3<bool>(false, var_1, true)), -1i > -u_input.a), func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 6u)])))) - global1[_wgslsmith_index_u32(8603u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(864f, -154f)))))));
    global1 = array<f32, 6>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.c.b.xyw), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -456f))) == var_2.d);
    return Struct_1(u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    global1 = array<f32, 6>();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~reverseBits(arg_0.a.x & 359u), 6u)] + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(firstLeadingBit(u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(377f, global1[_wgslsmith_index_u32(arg_0.a.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]) - vec3<f32>(global1[_wgslsmith_index_u32(18420u, 6u)], 1120f, 1279f)))))))));
    var var_0 = Struct_4(u_input.b.x, select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true))), all(vec3<bool>(false, false, true)) || true), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true)), true), func_2(), -258f);
    var var_1 = func_2();
    var var_2 = var_0.c.e;
    return Struct_4(_wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_0.a.x, 58960u), var_2.a.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 25083u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, var_0.c.e.a.x, arg_0.a.x, 1u)))), !var_0.b, func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -478f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_1());
    global0 = -1812f;
    global2 = max(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), ~(vec4<u32>(u_input.b.x, 92712u, global2.x, 0u) >> (min(vec4<u32>(0u, var_0.c.e.a.x, 4294967295u, 1u), vec4<u32>(9704u, 58328u, 1u, 61489u)) % vec4<u32>(32u)))), min(~select(_wgslsmith_div_vec4_u32(vec4<u32>(7699u, u_input.b.x, 32033u, var_0.c.e.a.x), vec4<u32>(var_0.a, 0u, u_input.b.x, var_0.c.e.a.x)), vec4<u32>(var_0.a, 1u, 16846u, 45447u), select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(false, true, false, true), var_0.b.x)), firstLeadingBit(select(firstTrailingBit(vec4<u32>(1199u, global2.x, 4294967295u, global2.x)), vec4<u32>(u_input.b.x, var_0.c.e.a.x, u_input.b.x, u_input.b.x), true))));
    var var_1 = ~_wgslsmith_mult_i32(0i, -2147483647i);
    var var_2 = global2.xy << (~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 315u, 0u), ~vec4<u32>(0u, 47032u, 41204u, 48329u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(11750u, u_input.b.x, global2.x, global2.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.c.b), firstLeadingBit(-(~(vec2<i32>(0i, u_input.a) & var_0.c.c.zy))), vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(var_2.x, ~1u)), ~min(65417u, func_2().e.a.x), func_1().a.x, ~(3694u | max(29693u, u_input.b.x))), _wgslsmith_mod_vec3_u32(global2.yyw, global2.xzz), select(28457i, u_input.a, func_4(var_0.c.e, Struct_1(reverseBits(var_0.c.e.a))).b.x));
}

