struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(49140i, 1i, -32965i, 37092i, 1i, 11780i, 0i, 2147483647i, 1i, 18073i, -46304i, -1i, 1i, 1i, 0i, i32(-2147483648), -53786i, 2147483647i, 32642i, -1783i);

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 20>();
    let var_0 = abs(abs(-max(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(arg_2.a, 20u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -30371i), vec2<i32>(u_input.a, u_input.a)))));
    global1 = array<vec3<bool>, 15>();
    global0 = array<i32, 20>();
    global3 = array<vec4<bool>, 20>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(953f * 931f) - _wgslsmith_f_op_f32(-arg_2.b)) + 925f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-469f)) + _wgslsmith_f_op_f32(-arg_2.b)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2.b)), arg_0.a.x, any(global1[_wgslsmith_index_u32(4294967295u, 15u)])))))), _wgslsmith_f_op_f32(min(1315f, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(select(1392f, arg_2.b, any(vec3<bool>(true, false, true))))))), true));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(~min(_wgslsmith_clamp_u32(4294967295u, 1u, 1u), arg_1.a.a & 4294967295u), abs(2468u), 24446u));
    global3 = array<vec4<bool>, 20>();
    var var_1 = _wgslsmith_f_op_f32(select(746f, _wgslsmith_f_op_f32(-arg_1.a.b), any(vec3<bool>(614f <= _wgslsmith_f_op_f32(arg_3.x - arg_1.c.a.x), false, _wgslsmith_f_op_f32(999f * arg_0) == _wgslsmith_f_op_f32(step(1000f, -1652f))))));
    global0 = array<i32, 20>();
    var var_2 = firstTrailingBit(~(-2147483647i)) << (1u % 32u);
    return -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(25158i >> (arg_1.a.a % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.a, arg_1.b.x)), _wgslsmith_dot_vec2_i32(arg_1.b.yx, ~arg_1.b.yy)), ~(-14182i));
}

fn func_2() -> Struct_3 {
    var var_0 = abs(select(func_4(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-849f, 149f)), vec3<u32>(1u, 1u, 1u), Struct_1(1u, -1000f))), Struct_4(Struct_1(34653u, -200f), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 8611i, -41423i), vec3<i32>(u_input.a, -40452i, 10115i)), Struct_3(vec2<f32>(717f, 166f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2410f), -229f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, -2075f, -1081f, -1892f))))), -func_4(-872f, Struct_4(Struct_1(4294967295u, -1199f), vec3<i32>(global0[_wgslsmith_index_u32(27364u, 20u)], u_input.a, 2147483647i), Struct_3(vec2<f32>(-276f, 289f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1077f, 246f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(206f, -1388f, 321f, -1141f), vec4<f32>(1395f, 1177f, 882f, 608f)))), vec2<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)))));
    global0 = array<i32, 20>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(21020u, 1u), _wgslsmith_sub_u32(81739u, 0u)), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1149f, _wgslsmith_f_op_f32(f32(-1f) * -637f))))), abs(~vec3<i32>(1i, u_input.a, u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-250f, -925f), vec2<f32>(122f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1099f, -397f) + vec2<f32>(-824f, 154f)))), vec2<f32>(-1507f, _wgslsmith_f_op_f32(round(-1000f)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.c.a, var_1.c.a, true)))))));
    var var_3 = var_1;
    return var_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = arg_1.a.a;
    var var_1 = arg_1.c;
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, arg_1.a.b))), arg_1.a.b)), -733f))));
    var var_2 = abs(~19956u << (arg_1.a.a % 32u));
    var var_3 = Struct_1(15514u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2157f, 929f)))) + 511f));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.a))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = select(vec2<bool>(all(global1[_wgslsmith_index_u32(~1u, 15u)]), false), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), 2147483647i < global0[_wgslsmith_index_u32(11370u, 20u)]), vec2<bool>(true, true), any(global1[_wgslsmith_index_u32(~60117u, 15u)])), true);
    global0 = array<i32, 20>();
    global1 = array<vec3<bool>, 15>();
    var var_1 = Struct_1(21856u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-186f))), 1f)))));
    let var_2 = false;
    return Struct_2(~(~35989u & var_1.a));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false && (_wgslsmith_f_op_f32(trunc(1276f)) == _wgslsmith_f_op_f32(round(876f)));
    let var_1 = _wgslsmith_sub_vec2_i32(~(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(2067u, 20u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 20u)], -1i)), _wgslsmith_mult_i32(-2147483647i, arg_0))), max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-35412i, 29196i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(75642u, 20u)])), u_input.a & -32110i), -vec2<i32>(0i, u_input.a) << (~vec2<u32>(4040u, 4294967295u) % vec2<u32>(32u))) & select(firstLeadingBit(vec2<i32>(u_input.a, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(global0[_wgslsmith_index_u32(13099u, 20u)], -20787i), abs(vec2<i32>(2147483647i, 0i))), vec2<bool>(all(global1[_wgslsmith_index_u32(1u, 15u)]), true)));
    let var_2 = func_6(func_5(func_2(), Struct_4(Struct_1(~4294967295u, -757f), _wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.x, 1i, global0[_wgslsmith_index_u32(17907u, 20u)]), -vec3<i32>(-2147483647i, u_input.a, 47941i)), func_2()), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-478f, 324f)) - func_2().a))), firstTrailingBit(vec4<i32>(arg_0, ~(-1i), 37165i, 1i) >> (vec4<u32>(~49137u, ~0u, 4294967295u, _wgslsmith_mult_u32(23736u, 10265u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -120f))) + -3909f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, -1063f, 244f, 340f)), vec4<f32>(-2123f, -377f, 1606f, 1613f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_3 = Struct_4(Struct_1(26175u, -109f), ~reverseBits(vec3<i32>(-1i, -2147483647i, 17313i)) >> ((~(~vec3<u32>(24746u, 0u, 1u)) | max(vec3<u32>(4294967295u, 1u, var_2.a), vec3<u32>(0u, 4294967295u, 29673u))) % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1594f, _wgslsmith_f_op_f32(min(-170f, 542f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 2048f), vec2<f32>(1149f, 1734f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(798f, 519f))), all(vec2<bool>(var_0, false))))))));
    var var_4 = Struct_1(abs(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12421u), vec2<u32>(9250u, 457u)), ~4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.b - -1526f), var_3.c.a.x), 154f)), -959f)));
    return var_3.a;
}

fn func_7(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<i32, 20>();
    let var_0 = -1i;
    var var_1 = select(vec3<bool>(select(all(global1[_wgslsmith_index_u32(1u, 15u)]), !(false | arg_0), arg_0), select(!(arg_1.x < arg_2.a.a), arg_0 && (arg_2.a.a > 20907u), !any(global3[_wgslsmith_index_u32(0u, 20u)])), arg_0), !(!global1[_wgslsmith_index_u32(~65143u, 15u)]), vec3<bool>(!arg_0, arg_0, 1u == ~arg_1.x));
    global1 = array<vec3<bool>, 15>();
    var var_2 = arg_2;
    return func_1(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, !(all(vec3<bool>(false, false, false)) || true), true, (any(vec2<bool>(false, true)) | true) || all(vec3<bool>(true, true, true))), !global3[_wgslsmith_index_u32(~min(0u, ~11202u), 20u)], true);
    var var_1 = -select(countOneBits(vec2<i32>(~(-2147483647i), u_input.a)), _wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(35646i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 20u)], u_input.a) ^ vec2<i32>(37986i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(49130u, 20u)]), vec2<i32>(-1i, -42727i)))), any(vec2<bool>(any(global3[_wgslsmith_index_u32(4294967295u, 20u)]), true)));
    global3 = array<vec4<bool>, 20>();
    let var_2 = func_7(all(global1[_wgslsmith_index_u32(1u, 15u)]), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 59863u, 4294967295u, 0u), vec4<u32>(31843u, 5628u, 0u, 60075u)))), Struct_4(func_1(~firstTrailingBit(0i)), vec3<i32>(abs(_wgslsmith_mod_i32(var_1.x, u_input.a)), global0[_wgslsmith_index_u32(~(~0u), 20u)], global0[_wgslsmith_index_u32(62705u, 20u)]), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(trunc(1083f))))));
    var var_3 = func_6(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 994f) * vec2<f32>(var_2.b, 382f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) * vec2<f32>(var_2.b, var_2.b))))), select(abs(firstLeadingBit(vec4<i32>(var_1.x, -21262i, u_input.a, -2147483647i) & vec4<i32>(u_input.a, 2147483647i, var_1.x, u_input.a))), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~(-1i), abs(global0[_wgslsmith_index_u32(var_2.a, 20u)]), _wgslsmith_sub_i32(var_1.x, var_1.x)), vec4<bool>(~var_2.a <= ~52293u, !(-17516i != u_input.a), _wgslsmith_f_op_f32(-var_2.b) >= 331f, true)), var_2.b, vec4<f32>(_wgslsmith_f_op_f32(sign(func_5(func_2(), Struct_4(var_2, vec3<i32>(-1i, 0i, -2147483647i), Struct_3(vec2<f32>(var_2.b, var_2.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 835f))).a.x)), var_2.b, 2099f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + -1498f))))).a;
    global0 = array<i32, 20>();
    var var_4 = _wgslsmith_f_op_f32(abs(var_2.b));
    var var_5 = func_2();
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), ~countOneBits(~(~vec4<u32>(var_2.a, var_2.a, var_2.a, 1u))));
}

