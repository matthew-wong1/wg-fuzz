struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 15>;

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 26626u, 44520u, 0u, 4294967295u, 1u, 1u, 1u, 5211u, 4294967295u, 0u, 4294967295u, 1u, 1996u, 3303u, 1u, 4294967295u, 1u, 23351u, 4294967295u, 1u, 1u, 1u);

var<private> global4: array<u32, 23> = array<u32, 23>(32475u, 1u, 18838u, 42595u, 84027u, 1u, 1u, 1u, 29208u, 0u, 17024u, 4294967295u, 4294967295u, 4294967295u, 2256u, 4294967295u, 72564u, 4294967295u, 96667u, 10348u, 0u, 1u, 0u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> u32 {
    global3 = array<u32, 24>();
    var var_0 = vec4<f32>(-1523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(select(1746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2230f))) - global2.x), any(vec4<bool>(true, true, false, true)) && false)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(1166f + _wgslsmith_f_op_f32(ceil(global2.x)))));
    global4 = array<u32, 23>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), var_0.x, _wgslsmith_div_f32(var_0.x, 392f), global2.x);
    let var_2 = ~((_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(28598u, global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 24u)], 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 23u)], 24u)], 24u)], 23u)], 15u)], 5093u, 0u)), ~vec4<u32>(20900u, 0u, global3[_wgslsmith_index_u32(1u, 24u)], 1u)) ^ vec4<u32>(global4[_wgslsmith_index_u32(25807u, 23u)], _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 15u)], 23u)], 24u)], 0u), 0u, global4[_wgslsmith_index_u32(1u, 23u)])) ^ (~firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(24357u, 24u)], global3[_wgslsmith_index_u32(223u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)])) & ~_wgslsmith_add_vec4_u32(vec4<u32>(4803u, 32572u, 4294967295u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34775u, 23u)], 15u)], 16171u, 295u, 16100u))));
    return _wgslsmith_mod_u32(~(49011u ^ var_2.x), _wgslsmith_div_u32(~select(var_2.x, ~4294967295u, true), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(max(44900u, abs(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.x, 23u)], 24u)])), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(var_2.x, 24u)], _wgslsmith_mod_u32(24626u, 9025u)), 15u)])));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    var var_0 = vec4<i32>(-17576i, 2147483647i, _wgslsmith_sub_i32(40753i, -_wgslsmith_mult_i32(u_input.a, u_input.a)), 0i);
    global1 = array<u32, 15>();
    var var_1 = Struct_3(~global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_3(_wgslsmith_clamp_i32(1i, u_input.a, arg_0.x)) >> (~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27134u, 23u)], 23u)], 15u)], 23u)], 4294967295u), 23u)] % 32u), 24u)], 15u)], 23u)]);
    global0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))))))), arg_2.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) - global2.x)));
    var_1 = Struct_3(abs(firstLeadingBit((global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74025u, 15u)], 24u)] >> (109528u % 32u)) | abs(global1[_wgslsmith_index_u32(1u, 15u)]))));
    return abs(8051u);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = global2.x;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f * -2158f))) + arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1242f))), _wgslsmith_f_op_f32(f32(-1f) * -1757f), 608f);
    let var_1 = vec4<i32>(min(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, -15067i, -55699i)), reverseBits(vec4<i32>(-1696i, -30172i, u_input.a, u_input.a)) >> (vec4<u32>(1u, global4[_wgslsmith_index_u32(57721u, 23u)], global1[_wgslsmith_index_u32(33670u, 15u)], global4[_wgslsmith_index_u32(4294967295u, 23u)]) % vec4<u32>(32u))), _wgslsmith_sub_i32(firstLeadingBit(u_input.a), u_input.a)), -2147483647i, u_input.a, _wgslsmith_mod_i32(~(-24601i), 2147483647i));
    var var_2 = Struct_4(Struct_3(_wgslsmith_sub_u32(~func_2(vec2<i32>(0i, 0i), vec4<bool>(arg_0, arg_0, arg_0, arg_2.x), global2.zz), 1u)), Struct_1(false || arg_0, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(global1[_wgslsmith_index_u32(24714u, 15u)], 34744u), abs(vec2<u32>(1u, 4294967295u)), true), (vec2<u32>(global4[_wgslsmith_index_u32(45398u, 23u)], global4[_wgslsmith_index_u32(53707u, 23u)]) >> (arg_3.zy % vec2<u32>(32u))) & arg_3.yx), arg_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, global2.x) - arg_1.xx))), 32525i << ((_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_3.x, 15u)], 145080u, arg_3.x, 17430u), vec4<u32>(1u, global3[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(10615u, 23u)], arg_3.x)) | (global3[_wgslsmith_index_u32(20962u, 24u)] & global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 15u)], 24u)])) % 32u)), Struct_3(1u), Struct_3(func_3(countOneBits(1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.xxx - global2.xxx)), vec3<f32>(771f, 1186f, _wgslsmith_f_op_f32(abs(global2.x)))) + global2.zxx));
    var var_3 = 2147483647i;
    return Struct_4(Struct_3(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.x, arg_3.x), 15u)], firstLeadingBit(arg_3.x)), _wgslsmith_dot_vec2_u32(var_2.b.b, vec2<u32>(global3[_wgslsmith_index_u32(82741u, 24u)], 4294967295u)))), var_2.b, Struct_3(37780u), var_2.c, _wgslsmith_f_op_vec3_f32(-arg_1));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    var var_0 = func_1(true, arg_0.e, select(select(!(!vec3<bool>(true, arg_0.b.a, arg_0.b.a)), select(!vec3<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a), select(vec3<bool>(false, arg_0.b.a, arg_0.b.a), vec3<bool>(arg_0.b.a, true, arg_0.b.a), vec3<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a)), !vec3<bool>(arg_0.b.a, false, arg_0.b.a)), select(vec3<bool>(true, false, false), !vec3<bool>(arg_0.b.a, arg_0.b.a, false), arg_0.b.a)), vec3<bool>(arg_0.b.a, !any(vec3<bool>(arg_0.b.a, arg_0.b.a, false)), select(arg_0.b.a || arg_0.b.a, true, select(arg_0.b.a, arg_0.b.a, true))), select(!select(vec3<bool>(arg_0.b.a, false, true), vec3<bool>(false, arg_0.b.a, arg_0.b.a), arg_0.b.a), vec3<bool>(all(vec2<bool>(false, false)), arg_0.b.a & true, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)] >= global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 15u)]), arg_0.b.a)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 15u)], 22786u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 15u)], 15u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 24u)], 1382u), 23u)]), global4[_wgslsmith_index_u32(func_1(arg_0.b.a & arg_0.b.a, vec3<f32>(-417f, arg_0.b.d.x, -1050f), vec3<bool>(arg_0.b.a, false, false), ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12812u, 23u)], 23u)], 1u, global3[_wgslsmith_index_u32(16472u, 24u)])).c.a, 23u)], abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c.a, 24u)], 23u)], 19087u), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.c.a, 0u)))) | max(_wgslsmith_add_vec3_u32(select(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(25376u, 0u, 0u), vec3<bool>(arg_0.b.a, true, arg_0.b.a)), ~vec3<u32>(global1[_wgslsmith_index_u32(arg_0.c.a, 15u)], 0u, 1u)), vec3<u32>(select(global3[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(arg_0.c.a, 23u)], arg_0.b.a), func_2(vec2<i32>(52533i, u_input.a), vec4<bool>(true, arg_0.b.a, true, false), global2.wx), 4294967295u))).a;
    global3 = array<u32, 24>();
    var var_1 = Struct_5(func_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.xxz), _wgslsmith_f_op_vec3_f32(round(global2.xxx))) - global2.zyx), select(vec3<bool>(true, arg_0.b.a, arg_0.b.a && false), select(vec3<bool>(true, arg_0.b.a, true), vec3<bool>(true, true, true), true), _wgslsmith_mod_u32(4294967295u, arg_0.c.a) <= ~1u), select(vec3<u32>(~var_0.a, 4294967295u ^ global4[_wgslsmith_index_u32(0u, 23u)], ~1u), ~vec3<u32>(37919u, 46747u, 0u), true)).a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.yxw * global2.yxy) - _wgslsmith_f_op_vec3_f32(-global2.wxy));
    let var_3 = Struct_5(Struct_3(9291u));
    return Struct_1(arg_0.b.a, abs(abs(~(~vec2<u32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29387u, 15u)], 23u)], 62212u)))), _wgslsmith_clamp_u32(var_3.a.a, _wgslsmith_clamp_u32(2227u, 67840u, 32266u), func_2(firstLeadingBit(-vec2<i32>(-2147483647i, 35261i)), !vec4<bool>(true, arg_0.b.a, true, true), _wgslsmith_f_op_vec2_f32(step(arg_0.b.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, var_2.x))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(false, arg_0.e, !vec3<bool>(arg_0.b.a, true, arg_0.b.a), ~vec3<u32>(global4[_wgslsmith_index_u32(var_3.a.a, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], 20191u)).e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.e.x, 302f, false)), var_2.x))), ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1(any(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global2.x, global2.x))), vec3<bool>(true, true, true), ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(88008u, 15u)], 0u) << ((vec3<u32>(global3[_wgslsmith_index_u32(1u, 24u)], 0u, 15459u) & vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 4924u, global4[_wgslsmith_index_u32(1u, 23u)])) % vec3<u32>(32u))), -5477i));
    global4 = array<u32, 23>();
    let var_1 = Struct_2(Struct_1(all(!select(vec3<bool>(var_0.a.a, false, var_0.a.a), vec3<bool>(false, var_0.a.a, true), vec3<bool>(false, false, var_0.a.a))), vec2<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 1u), global4[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.yy - var_0.a.d))), -1i));
    var var_2 = vec2<bool>(var_0.a.d.x <= _wgslsmith_f_op_f32(sign(-373f)), var_1.a.a);
    let var_3 = 10434u;
    var var_4 = -_wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a.e, var_1.a.e), -1i)) | -20310i;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.d.x, 449f, var_0.a.d.x, var_0.a.d.x), vec4<f32>(global2.x, var_0.a.d.x, var_1.a.d.x, var_0.a.d.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(505f, 417f, 1775f, global2.x)))))) * vec4<f32>(686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -1000f) * var_0.a.d.x), _wgslsmith_f_op_f32(-func_4(func_1(var_1.a.a, global2.wzw, vec3<bool>(var_1.a.a, false, true), vec3<u32>(58760u, 1u, global1[_wgslsmith_index_u32(39315u, 15u)])), -1i).d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, var_1.a.d.x))) - global2.x)));
    let var_5 = select(vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], ~firstLeadingBit(20114u)), _wgslsmith_div_u32(0u, var_3), var_3, 0u), vec4<u32>(var_0.a.c >> (var_0.a.b.x % 32u), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), ~(~20378u)), 47803u, global4[_wgslsmith_index_u32(4294967295u, 23u)]), var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x + var_1.a.d.x)))), ~var_5, ~abs(9246u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2012f * var_0.a.d.x), -296f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-700f - var_1.a.d.x), _wgslsmith_f_op_f32(select(var_1.a.d.x, global2.x, true)), !var_0.a.a)))), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57317u, 23u)], 15u)], 15u)]);
}

