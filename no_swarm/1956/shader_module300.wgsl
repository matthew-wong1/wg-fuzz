struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(true), vec4<bool>(true, true, false, false), -2024i), Struct_2(Struct_1(false), vec4<bool>(false, false, true, false), -71979i), Struct_2(Struct_1(false), vec4<bool>(true, false, true, false), 2147483647i), Struct_2(Struct_1(true), vec4<bool>(true, true, true, false), 7655i), Struct_2(Struct_1(false), vec4<bool>(true, false, true, false), 0i), Struct_2(Struct_1(false), vec4<bool>(false, true, false, false), 0i), Struct_2(Struct_1(false), vec4<bool>(true, false, true, false), 2147483647i), Struct_2(Struct_1(false), vec4<bool>(true, false, false, true), 1i), Struct_2(Struct_1(false), vec4<bool>(false, true, false, true), -1i), Struct_2(Struct_1(false), vec4<bool>(false, true, true, false), 17149i), Struct_2(Struct_1(false), vec4<bool>(true, false, false, true), 10801i), Struct_2(Struct_1(false), vec4<bool>(false, true, false, true), -8775i), Struct_2(Struct_1(true), vec4<bool>(false, true, true, true), 50431i), Struct_2(Struct_1(false), vec4<bool>(true, true, true, false), 40271i), Struct_2(Struct_1(false), vec4<bool>(false, false, false, true), 0i), Struct_2(Struct_1(true), vec4<bool>(false, false, true, false), -9797i), Struct_2(Struct_1(false), vec4<bool>(true, false, true, false), 0i), Struct_2(Struct_1(true), vec4<bool>(true, false, false, true), i32(-2147483648)), Struct_2(Struct_1(true), vec4<bool>(true, true, false, false), 85018i), Struct_2(Struct_1(false), vec4<bool>(true, false, false, true), 0i), Struct_2(Struct_1(true), vec4<bool>(false, false, true, true), 32727i), Struct_2(Struct_1(true), vec4<bool>(true, false, true, true), 1i), Struct_2(Struct_1(false), vec4<bool>(true, true, false, true), 11217i), Struct_2(Struct_1(true), vec4<bool>(true, false, false, false), 66777i), Struct_2(Struct_1(false), vec4<bool>(false, false, true, false), i32(-2147483648)), Struct_2(Struct_1(false), vec4<bool>(true, false, true, true), -57418i), Struct_2(Struct_1(true), vec4<bool>(false, true, false, false), -25465i), Struct_2(Struct_1(true), vec4<bool>(false, true, true, false), 13122i), Struct_2(Struct_1(false), vec4<bool>(true, true, true, true), 0i), Struct_2(Struct_1(true), vec4<bool>(true, false, false, false), -57155i), Struct_2(Struct_1(false), vec4<bool>(false, false, true, true), -39889i), Struct_2(Struct_1(true), vec4<bool>(false, false, false, true), -10879i));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3.b.x && false;
    var_0 = arg_3.b.x;
    global0 = array<Struct_1, 16>();
    global1 = array<Struct_2, 32>();
    let var_1 = u_input.b.yxz;
    return Struct_3(vec2<u32>(57347u, ~6321u), vec4<f32>(-1590f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, -1000f, arg_2)))), arg_1.x)), arg_1.x, 273f), 1u, arg_1.x, arg_0);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c & 1i, -2147483647i), _wgslsmith_div_vec3_i32(max(vec3<i32>(-1i, -14020i, -22314i), vec3<i32>(arg_0.c, -2147483647i, -2147483647i)), firstLeadingBit(vec3<i32>(25582i, arg_0.c, arg_0.c)))), i32(-1i) * -max(arg_0.c, arg_0.c)), _wgslsmith_add_i32(-487i, -28956i) << (_wgslsmith_dot_vec2_u32(~arg_2.a & ~u_input.b.xy, reverseBits(vec2<u32>(1u, u_input.b.x))) % 32u), ~1i);
    global1 = array<Struct_2, 32>();
    var var_1 = u_input.a.xw;
    global0 = array<Struct_1, 16>();
    return Struct_2(arg_2.e, arg_0.b, -arg_0.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    let var_0 = all(select(arg_0, arg_1.b.yy, !(!global2.xy)));
    global2 = arg_1.b;
    global0 = array<Struct_1, 16>();
    let var_1 = func_3(Struct_2(global0[_wgslsmith_index_u32(~4294967295u, 16u)], !select(vec4<bool>(true, false, arg_1.a.a, true), arg_1.b, false), select(arg_3, arg_3, !(!global2.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1628f, 1669f), vec2<f32>(1277f, 1000f)))))))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2, 4294967295u), 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1722f, -656f, 1307f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(362f)), _wgslsmith_f_op_f32(floor(-111f)), 2235f)), !(var_0 & arg_1.b.x), arg_1)).a;
    return func_2(Struct_1(true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1132f - 1822f) + _wgslsmith_div_f32(768f, 790f)), _wgslsmith_f_op_f32(f32(-1f) * -1095f), -1011f)), any(func_3(func_3(func_3(Struct_2(global0[_wgslsmith_index_u32(arg_2, 16u)], arg_1.b, arg_1.c), vec2<f32>(818f, -483f), Struct_3(vec2<u32>(u_input.a.x, 0u), vec4<f32>(-218f, -984f, -476f, 850f), u_input.b.x, -356f, arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1565f, 251f)), Struct_3(vec2<u32>(u_input.b.x, arg_2), vec4<f32>(692f, 441f, 856f, 1980f), 0u, -1982f, arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1694f, -1000f) * vec2<f32>(-2581f, 118f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, 1575f))), func_2(Struct_1(false), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, 244f, -971f) * vec3<f32>(-250f, -468f, 242f)), any(vec3<bool>(var_1.a, false, arg_1.a.a)), global1[_wgslsmith_index_u32(reverseBits(arg_2), 32u)])).b.yw), func_3(func_3(func_3(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, 1702f)), func_2(Struct_1(true), vec3<f32>(1710f, 1000f, 373f), true, Struct_2(Struct_1(global2.x), vec4<bool>(true, true, true, var_0), arg_1.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1398f), vec2<f32>(-1128f, 846f)), _wgslsmith_div_vec2_f32(vec2<f32>(287f, -728f), vec2<f32>(148f, -1653f)), vec2<bool>(false, global2.x))), Struct_3(firstLeadingBit(u_input.a.yx), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(260f, 212f, 1475f, -761f))), _wgslsmith_sub_u32(u_input.b.x, 1u), -512f, Struct_1(var_1.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1651f, 213f), vec2<f32>(-2815f, -546f)) - vec2<f32>(210f, 338f)), vec2<f32>(_wgslsmith_f_op_f32(max(-407f, 1464f)), 912f))), Struct_3(vec2<u32>(u_input.b.x, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1755f, -2235f, 636f, 856f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(576f, -486f, 659f, 355f) * vec4<f32>(1009f, -2545f, 424f, -725f))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(step(-155f, 1869f)), var_1))).e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> bool {
    let var_0 = Struct_2(Struct_1(!(-arg_1.c < arg_2)), arg_1.b, arg_2);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f * -844f))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -816f);
    var var_2 = func_2(Struct_1(false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<f32>(-799f, -352f, -160f), true, Struct_2(Struct_1(true), vec4<bool>(false, arg_0.a, false, true), arg_2)).e, _wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, -1000f, 3209f) + vec3<f32>(550f, -575f, 760f)), any(vec3<bool>(true, arg_1.b.x, true)), func_3(var_0, vec2<f32>(447f, -763f), Struct_3(u_input.b.zz, vec4<f32>(-402f, 705f, 639f, 825f), u_input.a.x, -1750f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))).b.wxw + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(484f, -251f, 891f)))))))), func_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(round(-1487f)), -616f, _wgslsmith_f_op_f32(364f - -1943f)), true, arg_1).e.a && arg_0.a, var_0);
    let var_3 = false;
    return arg_1.b.x;
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = !func_5(func_4(arg_0, func_3(global1[_wgslsmith_index_u32(32920u, 32u)], vec2<f32>(358f, -1341f), func_2(Struct_1(global2.x), vec3<f32>(-219f, -227f, -387f), global2.x, global1[_wgslsmith_index_u32(4294967295u, 32u)])), ~1u, ~1i), func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], select(vec4<bool>(false, arg_0.x, true, global2.x), vec4<bool>(arg_0.x, arg_0.x, false, false), arg_0.x), -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(265f, -311f), vec2<f32>(-156f, 1385f))))), func_2(global0[_wgslsmith_index_u32(1u, 16u)], vec3<f32>(325f, 147f, -331f), all(arg_0), func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec4<bool>(false, false, arg_0.x, true), 2147483647i), vec2<f32>(-1267f, 1015f), Struct_3(u_input.a.xw, vec4<f32>(564f, 1861f, -1274f, 851f), u_input.b.x, 1066f, global0[_wgslsmith_index_u32(12268u, 16u)])))), ~(~func_3(global1[_wgslsmith_index_u32(0u, 32u)], vec2<f32>(1469f, 736f), Struct_3(u_input.a.zz, vec4<f32>(-282f, 225f, 1633f, -1043f), u_input.a.x, -951f, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])).c));
    var var_1 = _wgslsmith_sub_vec3_u32(~u_input.a.yyy, vec3<u32>(select(_wgslsmith_dot_vec3_u32(select(u_input.a.zyy, u_input.b.yyz, global2.zwx), _wgslsmith_div_vec3_u32(u_input.b.www, u_input.a.zwx)), 862u, func_5(global0[_wgslsmith_index_u32(u_input.b.x << (u_input.a.x % 32u), 16u)], func_3(global1[_wgslsmith_index_u32(88943u, 32u)], vec2<f32>(-477f, 1283f), Struct_3(vec2<u32>(u_input.b.x, 1978u), vec4<f32>(457f, 177f, -1701f, -1000f), u_input.b.x, 300f, Struct_1(arg_0.x))), countOneBits(-7969i))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, 1u, 43955u) ^ u_input.b.wwz), ~(~u_input.b.zyw)), ~0u));
    global0 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x ^ u_input.a.x, u_input.a.x), 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, 1235f, 604f) * vec3<f32>(562f, 119f, 261f))), arg_0.x, func_3(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-790f, -548f)), Struct_3(var_1.zx, vec4<f32>(212f, 1984f, -1000f, -587f), 14032u, -1052f, Struct_1(false)))).d)));
    let var_3 = 5761u;
    return _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(0u, 11580u, ~func_2(func_4(vec2<bool>(arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(4294967295u, 32u)], 54764u, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(3297f, 1096f, -1000f) * vec3<f32>(643f, 639f, -289f)), true, func_3(Struct_2(Struct_1(arg_0.x), vec4<bool>(false, arg_0.x, true, var_0), 49234i), vec2<f32>(164f, -1583f), Struct_3(u_input.a.zx, vec4<f32>(372f, -354f, 761f, 1000f), 0u, -311f, Struct_1(false)))).c, ~_wgslsmith_clamp_u32(~var_3, var_3, ~var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(countOneBits(func_1(vec2<bool>(false, true))), u_input.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-876f, -1788f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, 1000f))))));
}

