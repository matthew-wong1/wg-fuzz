struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = ~u_input.e.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1625f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1569f, 3806f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(f32(-1f) * -193f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -663f) - _wgslsmith_div_f32(-230f, -954f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(707f)))), _wgslsmith_f_op_f32(2023f - 418f)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(~(i32(-1i) * -arg_2.c.a.x), arg_0.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.d, _wgslsmith_sub_i32(arg_2.c.a.x, -23256i), i32(-1i) * -14034i), vec3<i32>(-2147483647i, arg_0.c.x, -1i)))));
    var var_2 = arg_0.e;
    var var_3 = _wgslsmith_f_op_f32(trunc(arg_1));
    let var_4 = arg_0.b;
    return arg_0;
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = -1170f;
    global0 = _wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1465f + 229f) * _wgslsmith_f_op_f32(select(-1450f, -329f, true))))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, -1065f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(989f, -756f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, -508f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(157f, -1423f, -270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2040f, -292f, true)) - _wgslsmith_f_op_f32(1461f + -647f))), vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -202f))), 1000f)), Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.c.zx, arg_0.d.wx), _wgslsmith_clamp_vec2_i32(arg_0.c.yz, u_input.c.zw, vec2<i32>(u_input.b, 10369i) & arg_0.d.xw), vec2<i32>(-26692i, ~u_input.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(8763u, 30747u, 4294967295u)), arg_0.e.b.zyx), _wgslsmith_mod_u32(4294967295u, 68558u), ~arg_0.e.b.x, abs(~89293u)), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 12076i, arg_0.c.x), vec3<i32>(arg_0.d.x, u_input.b, -2147483647i)) << (u_input.a.x % 32u)), vec4<u32>(~u_input.e.x, arg_0.a, 4294967295u, ~0u & abs(u_input.e.x))), vec3<i32>(arg_0.e.c, -max(arg_0.c.x, i32(-1i) * -2147483647i), -2147483647i));
    let var_1 = func_1(func_1(Struct_2(4294967295u, func_1(Struct_2(u_input.e.x, var_0.c, vec4<i32>(1i, u_input.d, arg_0.e.a.x, u_input.c.x), vec4<i32>(-3079i, u_input.d, -24749i, -1i), Struct_1(vec2<i32>(arg_0.e.a.x, arg_0.b.c), vec4<u32>(0u, 1u, u_input.e.x, arg_0.a), arg_0.e.a.x, vec4<u32>(arg_0.b.b.x, arg_0.e.b.x, u_input.e.x, 1u))), var_0.a.x, Struct_3(var_0.b.wx, vec4<f32>(var_0.a.x, var_0.b.x, var_0.a.x, 1000f), Struct_1(vec2<i32>(-1727i, u_input.b), vec4<u32>(4294967295u, var_0.c.b.x, arg_0.a, 76936u), -217i, vec4<u32>(46228u, 1u, 26085u, 1342u)), vec3<i32>(1i, arg_0.c.x, 17012i))).b, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.c, var_0.d.x, arg_0.c.x, -19121i), arg_0.d), ~vec4<i32>(5301i, 0i, 2147483647i, var_0.d.x), Struct_1(vec2<i32>(arg_0.d.x, var_0.d.x), abs(arg_0.e.d), -45347i, vec4<u32>(arg_0.a, 0u, 4294967295u, u_input.e.x))), 1210f, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.b, func_1(Struct_2(1u, arg_0.b, vec4<i32>(var_0.d.x, 2147483647i, -2147483647i, var_0.d.x), arg_0.d, Struct_1(vec2<i32>(-30719i, -20062i), vec4<u32>(arg_0.b.b.x, 34731u, 33931u, arg_0.a), var_0.d.x, vec4<u32>(arg_0.a, var_0.c.b.x, 0u, 1u))), var_0.b.x, Struct_3(var_0.b.yy, var_0.b, Struct_1(var_0.d.xz, vec4<u32>(16530u, arg_0.e.b.x, u_input.a.x, 21171u), -2147483647i, vec4<u32>(50996u, u_input.a.x, var_0.c.d.x, 65715u)), u_input.c.zwy)).e, select(~vec3<i32>(22194i, -26735i, u_input.d), -u_input.c.ywx, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x), false)), Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.b.yw), _wgslsmith_f_op_vec4_f32(exp2(var_0.b)), arg_0.b, arg_0.c.xwz)).b;
    var var_2 = ~vec4<u32>(~select(18408u, 1u, any(vec2<bool>(true, false))), var_0.c.d.x | arg_0.a, ~var_1.b.x, ~u_input.e.x);
    return select(true, false, ~(i32(-1i) * -u_input.b) > abs(~3126i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((firstTrailingBit(u_input.d) | u_input.c.x) != u_input.b) != false;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(536f + 280f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1631f + -1260f) * -1090f), func_3(func_1(Struct_2(u_input.a.x, Struct_1(vec2<i32>(u_input.d, u_input.d), u_input.a, u_input.d, u_input.a), vec4<i32>(-28961i, u_input.d, u_input.c.x, u_input.d), u_input.c, Struct_1(vec2<i32>(u_input.c.x, -4058i), vec4<u32>(0u, 0u, u_input.e.x, 33159u), 38147i, u_input.a)), -1025f, Struct_3(vec2<f32>(-754f, 816f), vec4<f32>(-718f, -1133f, -237f, -1769f), Struct_1(u_input.c.xx, vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.e.x), u_input.c.x, u_input.a), u_input.c.yzx))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1769f) - -587f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) - _wgslsmith_div_f32(-200f, 345f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1845f), _wgslsmith_f_op_f32(-748f - -506f))) + _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(min(-484f, _wgslsmith_f_op_f32(-1461f + -378f))))));
    var var_1 = -345f;
    var_0 = all(vec2<bool>(true, !func_3(Struct_2(57503u, Struct_1(u_input.c.zx, vec4<u32>(1u, 0u, u_input.e.x, u_input.e.x), 2147483647i, u_input.a), vec4<i32>(-33758i, u_input.c.x, -474i, -44798i), u_input.c, Struct_1(vec2<i32>(-39117i, 56342i), vec4<u32>(u_input.a.x, 0u, 0u, u_input.e.x), u_input.d, u_input.a)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-877f)));
    let var_2 = ~vec4<u32>(~0u | _wgslsmith_mult_u32(~12123u, ~u_input.e.x), ~u_input.a.x, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), func_1(Struct_2(u_input.a.x, Struct_1(u_input.c.xz, vec4<u32>(4294967295u, 37689u, u_input.a.x, u_input.a.x), u_input.d, vec4<u32>(56550u, 4294967295u, u_input.a.x, 27011u)), u_input.c, vec4<i32>(u_input.b, u_input.b, 0i, u_input.d), Struct_1(vec2<i32>(4576i, u_input.d), u_input.a, u_input.c.x, vec4<u32>(50265u, u_input.a.x, u_input.e.x, u_input.e.x))), -1381f, Struct_3(vec2<f32>(-302f, -303f), vec4<f32>(639f, 697f, 221f, -233f), Struct_1(u_input.c.xy, u_input.a, 1i, u_input.a), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x))).b.d.yx));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(188f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, false), vec3<i32>(u_input.c.x, u_input.c.x, u_input.d))).x * _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, false), u_input.c.wzy)).x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1061f * 1000f) - _wgslsmith_f_op_f32(866f - 918f)), -352f, -1686f)), func_1(Struct_2(var_2.x, func_1(func_1(Struct_2(17625u, Struct_1(vec2<i32>(u_input.d, -1i), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), 2147483647i, vec4<u32>(var_2.x, 54431u, u_input.e.x, 32109u)), u_input.c, u_input.c, Struct_1(u_input.c.xw, vec4<u32>(5540u, 47812u, 48770u, var_2.x), 0i, vec4<u32>(1u, var_2.x, var_2.x, var_2.x))), -703f, Struct_3(vec2<f32>(-503f, -338f), vec4<f32>(371f, 647f, 170f, 1209f), Struct_1(vec2<i32>(u_input.c.x, u_input.b), u_input.a, 7074i, u_input.a), u_input.c.xzy)), -1479f, Struct_3(vec2<f32>(-1956f, -1000f), vec4<f32>(548f, 1742f, 757f, -1393f), Struct_1(u_input.c.zz, var_2, 4807i, var_2), u_input.c.wyy)).b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, 1i, 0i, -13305i), u_input.c) >> (var_2 % vec4<u32>(32u)), ~u_input.c, Struct_1(vec2<i32>(-1i, 0i), u_input.a, -u_input.d, vec4<u32>(u_input.a.x, 24678u, 4294967295u, 7146u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-501f + -1251f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2943f)))), Struct_3(vec2<f32>(-518f, _wgslsmith_f_op_f32(max(-964f, 1319f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, -614f, 617f, -556f)), func_1(Struct_2(u_input.a.x, Struct_1(vec2<i32>(u_input.c.x, u_input.d), vec4<u32>(24515u, var_2.x, u_input.e.x, u_input.e.x), -1i, var_2), vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.b, -27401i, 26863i), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec4<u32>(u_input.e.x, u_input.a.x, u_input.a.x, var_2.x), 31517i, vec4<u32>(43088u, u_input.e.x, 31163u, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -875f), Struct_3(vec2<f32>(-1676f, -185f), vec4<f32>(-128f, -1142f, 1093f, 1020f), Struct_1(u_input.c.ww, u_input.a, u_input.d, vec4<u32>(6287u, 0u, var_2.x, 0u)), u_input.c.zwy)).b, ~u_input.c.ywx << (~vec3<u32>(0u, u_input.e.x, var_2.x) % vec3<u32>(32u)))).e, -(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 32848i, u_input.c.x)));
    var var_4 = var_3.c.a.x;
    let var_5 = Struct_2(_wgslsmith_div_u32(~_wgslsmith_mult_u32(7472u, var_3.c.d.x) << (1u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wyw | vec3<u32>(var_2.x, 4294967295u, 4294967295u), vec3<u32>(43333u, u_input.a.x, var_2.x)), ~vec3<u32>(13760u, var_2.x, var_3.c.d.x))), var_3.c, u_input.c, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), ~vec4<i32>(u_input.b, -16310i, -16585i, -var_3.d.x)), func_1(Struct_2(abs(u_input.a.x), var_3.c, ~firstLeadingBit(u_input.c), -(vec4<i32>(-14417i, u_input.d, var_3.c.a.x, u_input.d) & u_input.c), Struct_1(-vec2<i32>(var_3.d.x, 2147483647i), ~var_2, -2147483647i, ~var_3.c.d)), -725f, Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, 575f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-333f, var_3.a.x, var_3.b.x, var_3.a.x))))), Struct_1(u_input.c.yz, ~var_2, 628i, u_input.a), _wgslsmith_sub_vec3_i32(func_1(Struct_2(0u, Struct_1(vec2<i32>(var_3.c.c, var_3.d.x), vec4<u32>(6924u, 53814u, var_3.c.d.x, 8130u), var_3.c.a.x, vec4<u32>(45189u, 7744u, var_2.x, var_2.x)), u_input.c, u_input.c, var_3.c), var_3.a.x, Struct_3(vec2<f32>(var_3.a.x, var_3.b.x), vec4<f32>(897f, var_3.b.x, var_3.a.x, -159f), Struct_1(var_3.d.yz, vec4<u32>(1u, 1u, u_input.a.x, var_3.c.d.x), u_input.d, vec4<u32>(6979u, 1u, var_2.x, 0u)), vec3<i32>(u_input.b, u_input.c.x, u_input.b))).c.wwy, u_input.c.zxx))).e);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.d.zzw, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, var_3.b.x, -751f) - vec4<f32>(170f, var_3.b.x, var_3.a.x, 1000f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(153f, -591f, var_3.b.x, var_3.a.x)))))));
}

