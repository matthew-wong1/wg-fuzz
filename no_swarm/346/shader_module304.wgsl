struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u), Struct_1(42910u), Struct_1(18399u), Struct_1(0u), Struct_1(24934u), Struct_1(22280u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u), Struct_1(7281u), Struct_1(36543u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(21942u), Struct_1(0u));

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(3377i, 2147483647i, 0i, -19751i), vec4<i32>(1i, -52967i, 0i, -1i), vec4<i32>(-14821i, 17320i, 24164i, 22911i), vec4<i32>(-21099i, 13889i, -88058i, -3145i), vec4<i32>(14885i, -11604i, 0i, 0i), vec4<i32>(0i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, -1i, 0i, 31547i), vec4<i32>(-33541i, 3575i, 3018i, -28379i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 28085i), vec4<i32>(i32(-2147483648), 0i, -15723i, 1i), vec4<i32>(1i, 1i, -6332i, -1i), vec4<i32>(-13583i, -40682i, 1i, i32(-2147483648)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(11512u);
    global1 = array<Struct_1, 4>();
    var var_1 = var_0;
    var var_2 = var_0;
    let var_3 = max(vec2<i32>(_wgslsmith_sub_i32(min(u_input.a, -1i), -47242i) ^ -u_input.b.x, firstTrailingBit(~(~(-1i)))), _wgslsmith_sub_vec2_i32(u_input.b.xz, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-35777i, 5028i), vec2<i32>(-2147483647i, -1i)), reverseBits(u_input.b.yy), _wgslsmith_add_vec2_i32(u_input.b.xw, u_input.b.xx)), vec2<i32>(u_input.b.x, 42610i ^ u_input.a))));
    return select(select(!select(!vec3<bool>(arg_0, false, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0, true, true), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), true)), vec3<bool>(var_1.a <= var_0.a, !arg_0, any(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true)))), select(vec3<bool>(arg_0, !arg_0, false), vec3<bool>(!arg_0, true, true), select(!vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false), arg_0))), !(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0), arg_0)), all(select(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, false, false)), vec4<bool>(false, true, arg_0 && arg_0, arg_0), select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0, arg_0, false, true), false), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true)), !vec4<bool>(false, arg_0, arg_0, arg_0)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(arg_0.x);
    var var_1 = Struct_1(var_0.a);
    var var_2 = Struct_1(var_0.a);
    let var_3 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(u_input.b.xyx, vec3<i32>(51535i, 82930i, 0i)), abs(firstTrailingBit(vec3<i32>(-16402i, 2147483647i, u_input.b.x)))));
    var var_4 = func_3(false);
    return var_3;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !vec4<bool>(any(vec2<bool>(true, true)), true, true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))));
    var var_1 = func_2(_wgslsmith_add_vec3_u32(countOneBits(abs(vec3<u32>(arg_0, 0u, arg_0))), abs(vec3<u32>(firstTrailingBit(arg_0), ~25760u, 31416u))));
    var var_2 = Struct_2(_wgslsmith_div_i32(21309i, -(~11199i)));
    var var_3 = global0[_wgslsmith_index_u32(arg_0, 15u)];
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(arg_0, 1u), _wgslsmith_mod_u32(var_3.a, arg_0 ^ arg_0), 1u), ~(~(~vec3<u32>(3538u, 4294967295u, arg_0)))));
    return (!var_0 & false) == any(!(!select(vec3<bool>(var_0, true, true), vec3<bool>(false, true, var_0), vec3<bool>(false, false, var_0))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x ^ arg_1.x, -2147483647i, -9560i, arg_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), u_input.b.xx), _wgslsmith_mod_i32(1i, 2147483647i)), -abs(u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(10695i, -21346i, arg_2, 2147483647i), vec4<i32>(11203i, -10351i, arg_1.x, -2147483647i), u_input.b))));
    global0 = array<Struct_1, 15>();
    global1 = array<Struct_1, 4>();
    let var_1 = vec4<bool>(1i >= _wgslsmith_add_i32(1i, select(select(var_0.x, arg_2, arg_0), _wgslsmith_dot_vec3_i32(arg_1, arg_1), true)), arg_0, arg_0, true);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(137f + 1022f)))))));
    return Struct_2(-arg_1.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 4>();
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(51295u, 0u), vec2<u32>(1u, 1u)), vec2<u32>(countOneBits(1u), 1u), arg_0.x), vec2<u32>(~4294967295u, 1u), ~vec2<u32>(1u, 1u)));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x) & vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))), vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0)), _wgslsmith_add_u32(4294967295u, ~4294967295u), var_0.x)), vec4<u32>(~2387u, 4294967295u, var_0.x, _wgslsmith_add_u32(var_0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 21905u, var_0.x), vec4<u32>(var_0.x, 11915u, 23182u, var_0.x)))));
    let var_2 = arg_0.wxw;
    var_1 = min(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, ~47692u), ~(~var_0.x), var_0.x >> (var_0.x % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 1u), ~(~vec3<u32>(21464u, var_0.x, var_0.x)))));
    return arg_2;
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(min(52876u, ~(~(0u >> (1u % 32u)))), 4u)];
    let var_1 = Struct_1(~(~(~(var_0.a & 1u))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_3 = Struct_2(-arg_0);
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_1.a, 0u, var_0.a)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(9237u, 28035u, var_1.a), vec3<u32>(4294967295u, 10948u, 0u)))), abs(vec3<u32>(1u, var_0.a, 4294967295u))), 4u)];
    return Struct_2(-31078i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    global2 = array<vec4<i32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_2 = global1[_wgslsmith_index_u32(~(~4294967295u), 4u)];
    var var_3 = func_6(u_input.a, _wgslsmith_div_vec2_f32(vec2<f32>(296f, _wgslsmith_f_op_f32(f32(-1f) * -607f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, -2698f))), func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(1303f, var_0.x, var_0.x, -1339f))))), func_4(func_1(var_2.a & 4294967295u), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.b.x), vec3<i32>(40792i, u_input.b.x, u_input.a), u_input.b.yzz), ~u_input.b.wzz), 1i, ~(~20007u))));
    var_3 = Struct_2(var_3.a);
    var var_4 = ~_wgslsmith_clamp_i32(u_input.a, var_3.a, max(i32(-1i) * -u_input.a, ~(u_input.a ^ var_3.a)));
    var var_5 = func_6(0i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.zy - vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x - -842f))))), Struct_2(func_2(vec3<u32>(var_1.a & 68003u, 132270u, var_2.a)).a));
    let x = u_input.a;
    s_output = StorageBuffer(-(~1243i) ^ ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_5.a, var_3.a, 1i), u_input.b.wyy) << (20522u % 32u)), vec4<f32>(-589f, 1555f, var_0.x, -1825f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * -1227f))));
}

