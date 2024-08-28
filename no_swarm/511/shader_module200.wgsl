struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(1i, 18647i, 10189i, -20871i), vec4<i32>(0i, 20179i, 31975i, 70672i), vec4<i32>(-10398i, 0i, 20298i, i32(-2147483648)), vec4<i32>(-46768i, -48717i, -58838i, -25058i));

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(0i, -33253i, -74673i, 36222i), vec4<i32>(1i, -41657i, 0i, -8624i), vec4<i32>(6756i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-38758i, 39044i, -3003i, -101728i), vec4<i32>(-1i, -1i, -24406i, -27515i), vec4<i32>(1i, -10403i, 1i, 20557i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 23197i), vec4<i32>(0i, -28090i, -1i, 1i), vec4<i32>(14437i, 2147483647i, -5537i, -38044i));

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 19129i);

var<private> global3: array<Struct_3, 24>;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<u32>(42059u, 0u, 7046u, 25087u)), Struct_1(vec4<u32>(0u, 4294967295u, 21262u, 37305u)), Struct_1(vec4<u32>(1u, 37569u, 1u, 28702u)), Struct_1(vec4<u32>(1u, 13483u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 58101u, 4294967295u, 0u)), Struct_1(vec4<u32>(10975u, 0u, 0u, 1u)), Struct_1(vec4<u32>(0u, 0u, 4571u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 0u, 0u)), Struct_1(vec4<u32>(8783u, 38431u, 4294967295u, 0u)), Struct_1(vec4<u32>(35367u, 4294967295u, 1u, 114498u)), Struct_1(vec4<u32>(105530u, 1u, 72855u, 1u)), Struct_1(vec4<u32>(0u, 1u, 19385u, 46196u)), Struct_1(vec4<u32>(11788u, 4294967295u, 0u, 10459u)), Struct_1(vec4<u32>(49433u, 49762u, 29106u, 9158u)), Struct_1(vec4<u32>(18035u, 20042u, 47239u, 80269u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 13580u)), Struct_1(vec4<u32>(133570u, 4294967295u, 1u, 0u)), Struct_1(vec4<u32>(0u, 37880u, 0u, 4294967295u)), Struct_1(vec4<u32>(39603u, 0u, 1u, 55711u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(2147483647i, Struct_1(countOneBits(abs(~arg_1.a))), Struct_1(firstTrailingBit(vec4<u32>(~0u, ~4294967295u, ~48528u, _wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x)))));
    let var_1 = select(true, ~var_0.b.a.x <= select(1u, arg_1.a.x, any(vec2<bool>(true, false))), true) | any(!vec3<bool>(select(false, false, true), true, false));
    let var_2 = abs(~34126u);
    let var_3 = -u_input.b;
    let var_4 = countOneBits(~(_wgslsmith_sub_u32(u_input.a, u_input.c.x) | abs(1u)) & (10661u | max(0u, var_0.b.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1275f, 772f)) + _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1218f)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(u_input.d, Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, u_input.a, 62971u, 1u)), ~(~vec4<u32>(18843u, u_input.a, 25392u, u_input.c.x)))), Struct_1(countOneBits(vec4<u32>(_wgslsmith_mod_u32(1u, 82553u), 4294967295u, _wgslsmith_mult_u32(0u, u_input.a), 4294967295u))));
    let var_1 = vec4<f32>(-461f, 763f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f - 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(595f, global4[_wgslsmith_index_u32(var_0.b.a.x, 19u)])) - -508f)))), _wgslsmith_f_op_f32(1442f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-609f))))));
    global0 = array<vec4<i32>, 4>();
    global4 = array<Struct_1, 19>();
    var var_2 = 4294967295u;
    return -1057f;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(~21408u, ~(~u_input.a))), (_wgslsmith_mult_u32(29645u, 1u) << (select(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.c.x), true) % 32u)) << (u_input.a % 32u), 0u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1375f, -1000f) * 396f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(551f, 1543f), _wgslsmith_f_op_f32(func_2())))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1546f)) - 1000f)))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -167f);
    var var_3 = Struct_2(~countOneBits(~1i), Struct_1(countOneBits(~countOneBits(vec4<u32>(42422u, 15668u, 33335u, u_input.c.x)))), Struct_1(vec4<u32>(7429u, 10213u, 13807u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, var_0.x), u_input.c.yy))));
    return max(vec2<i32>(_wgslsmith_sub_i32(arg_0, abs(i32(-1i) * -25080i)), -1i), vec2<i32>(global2.x | 54758i, global2.x));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~52310i;
    global0 = array<vec4<i32>, 4>();
    var var_1 = Struct_5(Struct_2(~arg_0.x, Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 28381u, u_input.c.x), vec4<u32>(2677u, u_input.a, u_input.a, u_input.c.x)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 14310u, 1u)))), global4[_wgslsmith_index_u32(u_input.c.x & u_input.c.x, 19u)]), Struct_1(vec4<u32>(4294967295u, abs(41604u), 0u, ~4755u)), Struct_4(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    var var_2 = select(vec2<bool>(true, any(!vec4<bool>(var_1.c.a, var_1.c.a, true, var_1.c.a)) && false), !vec2<bool>((false && var_1.c.a) && !var_1.c.a, any(vec3<bool>(true, var_1.c.a, var_1.c.a))), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, var_1.c.a))), vec2<bool>(true, var_1.c.a), !select(select(vec2<bool>(true, var_1.c.a), vec2<bool>(true, true), false), !vec2<bool>(var_1.c.a, true), vec2<bool>(false, true))));
    let var_3 = ~u_input.c.yz;
    return global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1.a.c.a.x, var_1.a.c.a.x), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(u_input.a > _wgslsmith_sub_u32(u_input.a, select(6035u, u_input.c.x, false)), any(vec2<bool>(true, select(false, false, false)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, select(true, false, false)), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, true)), false, true)), !any(vec4<bool>(false, true, true, true))));
    var var_1 = Struct_5(Struct_2(i32(-1i) * -53745i, func_4(func_1(abs(40260i))), Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 37560u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 257u)), ~vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a), select(vec4<u32>(1u, u_input.c.x, u_input.c.x, 45310u), vec4<u32>(9371u, 61439u, 7905u, u_input.a), var_0.x)))), func_4(reverseBits(~func_1(global2.x))), Struct_4(true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_3 = global3[_wgslsmith_index_u32(u_input.c.x, 24u)];
    global1 = array<vec4<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.a.a | func_1(-2147483647i).x, _wgslsmith_div_i32(global2.x, 43835i), -56214i), vec3<i32>(_wgslsmith_mult_i32(-global2.x, global2.x) << (~31511u % 32u), reverseBits(~(i32(-1i) * -1i)), -13914i), -var_1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1779f, 252f, 327f, -820f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 185f, -2220f, 303f)), vec4<f32>(-954f, 1000f, -782f, -223f), false)))));
}

