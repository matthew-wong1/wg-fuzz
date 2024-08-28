struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = vec4<f32>(1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -173f), 1f, true)) * -450f), -158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f + -739f)));
    var var_1 = 17428u;
    let var_2 = -(vec4<i32>(_wgslsmith_clamp_i32(-65287i, u_input.a.x, u_input.a.x), 0i, ~2147483647i, i32(-1i) * -22100i) | vec4<i32>(max(312i, u_input.a.x), ~15617i, u_input.a.x, -2147483647i | u_input.a.x)) >> (~vec4<u32>(abs(u_input.e.x), ~(u_input.c >> (2117u % 32u)), 0u, ~firstLeadingBit(u_input.e.x)) % vec4<u32>(32u));
    var_1 = _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(abs(u_input.d), 1u));
    return -25471i | var_2.x;
}

fn func_2() -> Struct_3 {
    var var_0 = -func_3();
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(firstLeadingBit(u_input.b.x), reverseBits(12718u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, -372f, -1098f, 199f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-657f, -244f, -554f, 200f))))), -vec3<i32>(17012i, 1i, _wgslsmith_mult_i32(u_input.a.x, 70582i)), 15292u), firstTrailingBit((_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz) << (reverseBits(u_input.b.zz) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(~u_input.b.zx, u_input.e.yy) % vec2<u32>(32u))), Struct_1(~u_input.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f + 176f)), _wgslsmith_f_op_f32(floor(-404f)), -562f, -656f), max(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a) >> (countOneBits(vec3<u32>(60429u, u_input.b.x, u_input.d)) % vec3<u32>(32u)), ~1u), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x), -firstLeadingBit(2147483647i), 3317i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, 264f, -1193f) + vec3<f32>(-698f, -151f, 1142f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, 694f, 782f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(813f, 1055f, 238f) + vec3<f32>(-1824f, -971f, -245f)))) + vec3<f32>(217f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-102f, 937f)), _wgslsmith_f_op_f32(floor(-407f)))));
    var var_2 = var_1.e.xy;
    let var_3 = Struct_1(~1u, vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.c.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + var_1.c.b.x)), -1639f)), _wgslsmith_f_op_f32(ceil(595f))), var_1.a.c, u_input.d);
    var var_4 = ~u_input.a.x != u_input.a.x;
    return Struct_3(21337u, var_3);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = select(vec3<bool>(any(vec3<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, true)))), true, false && any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(-10944i != arg_3)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), all(vec3<bool>(true, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))), vec3<bool>(!(!any(vec3<bool>(true, false, true))), true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), true))));
    var var_2 = Struct_4(arg_0.b);
    var_2 = Struct_4(Struct_1(4294967295u, vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x - var_2.a.b.x)), var_2.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2680f, -983f)), arg_0.b.b.x))), firstLeadingBit(arg_0.b.c), u_input.b.x));
    let var_3 = _wgslsmith_f_op_f32(round(arg_2.x));
    return Struct_4(Struct_1(var_2.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(abs(var_2.a.b.x)), _wgslsmith_f_op_f32(select(var_3, 1355f, true)), _wgslsmith_f_op_f32(-215f - var_2.a.b.x))), vec3<i32>(_wgslsmith_sub_i32(~u_input.a.x, abs(-2147483647i)), ~(~0i), -arg_0.b.c.x), ~4294967295u));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = false;
    var var_1 = true;
    var_1 = !(!(!arg_0));
    let var_2 = func_4(func_2(), u_input.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1154f))))), u_input.a.x);
    var var_3 = Struct_5(1u, Struct_2(Struct_1(8783u, vec4<f32>(-485f, _wgslsmith_f_op_f32(-var_2.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1224f), var_2.a.b.x), u_input.a ^ (vec3<i32>(21931i, u_input.a.x, var_2.a.c.x) & vec3<i32>(u_input.a.x, -1i, u_input.a.x)), ~(55351u & u_input.b.x)), ~var_2.a.c.yy, func_2().b, -vec3<i32>(var_2.a.c.x & -14632i, var_2.a.c.x, countOneBits(var_2.a.c.x)), _wgslsmith_f_op_vec3_f32(var_2.a.b.xzz * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1985f), _wgslsmith_f_op_f32(1141f * var_2.a.b.x), var_2.a.b.x))), func_2().b, Struct_3(_wgslsmith_sub_u32(~abs(1u), var_2.a.a), Struct_1(38938u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.b)), select(vec3<i32>(-2147483647i, -1i, u_input.a.x), -vec3<i32>(0i, 28942i, u_input.a.x), select(true, arg_0, arg_0)), ~_wgslsmith_add_u32(u_input.c, var_2.a.d))), var_2.a.b.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2419f;
    var var_1 = Struct_5((abs(func_1(true)) & u_input.c) >> ((~4384u ^ ~(~u_input.e.x)) % 32u), Struct_2(Struct_1(36962u, vec4<f32>(353f, 1095f, func_4(Struct_3(u_input.e.x, Struct_1(0u, vec4<f32>(1000f, -1647f, 512f, -545f), vec3<i32>(18387i, u_input.a.x, 24828i), u_input.d)), u_input.b.x, vec2<f32>(-1000f, -1170f), u_input.a.x).a.b.x, _wgslsmith_f_op_f32(select(570f, -1351f, true))), countOneBits(~u_input.a), firstLeadingBit(_wgslsmith_mult_u32(u_input.e.x, 61560u))), u_input.a.zy, func_4(Struct_3(~4294967295u, func_4(Struct_3(u_input.e.x, Struct_1(u_input.b.x, vec4<f32>(-819f, -547f, -685f, -348f), vec3<i32>(-68857i, u_input.a.x, -44185i), u_input.d)), 7837u, vec2<f32>(-715f, 517f), 2147483647i).a), abs(_wgslsmith_mult_u32(40606u, 0u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2094f, 517f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, 544f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(21075i, u_input.a.x), u_input.a.yy), -u_input.a.zx)).a, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, 21049i), u_input.a.x), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1335f, -775f, 685f), vec3<f32>(1590f, -947f, -112f))) * _wgslsmith_f_op_vec3_f32(func_4(Struct_3(u_input.b.x, Struct_1(4294967295u, vec4<f32>(426f, -1920f, 323f, -1478f), vec3<i32>(-24116i, 30187i, u_input.a.x), 23908u)), 1u, vec2<f32>(-1000f, 653f), u_input.a.x).a.b.wzz * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1710f, 361f, 2250f)))))), func_4(func_2(), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-985f, 557f))) + vec2<f32>(-1000f, -1251f)), u_input.a.x).a, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -803f), -696f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) + -1192f)));
    let var_2 = select(u_input.e ^ _wgslsmith_mod_vec3_u32(u_input.e, max(u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.d.a, 4294967295u, var_1.b.c.d), u_input.e))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, ~var_1.c.d, 1u), min(u_input.b, ~(~vec3<u32>(u_input.c, var_1.a, u_input.d)))), true);
    var var_3 = func_2();
    let var_4 = var_3.a <= ~var_3.a;
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(914f, 225f, var_4))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.b.x, var_1.e) * -624f));
    let x = u_input.a;
    s_output = StorageBuffer(53101u);
}

