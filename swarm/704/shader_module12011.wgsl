struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 25>;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-690f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1422f)) - _wgslsmith_f_op_f32(-271f * 845f))), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -430f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1462f, -319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1211f - -612f))), global1.yzy))));
    let var_1 = _wgslsmith_div_f32(-737f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -846f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(694f, -456f)))), _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = _wgslsmith_add_i32(u_input.a.x, u_input.c.x);
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_1)))));
    return vec3<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(-var_4));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1))) + _wgslsmith_f_op_vec3_f32(func_3())), ~((vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, -2147483647i) >> (vec4<u32>(arg_2.b.b.x, arg_0, u_input.d, 24438u) % vec4<u32>(32u))) >> (vec4<u32>(arg_0, 0u, 1u, u_input.d) % vec4<u32>(32u))), 1159f), Struct_1(_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.d.x, -1000f, -144f), arg_1, !global1.wyx))), ~select(arg_2.b.c.b, arg_2.c ^ vec4<i32>(31433i, u_input.a.x, arg_2.c.x, -38521i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-991f)))));
    let var_1 = !(!vec4<bool>(true, false, true, global3.x));
    var var_2 = arg_2.b.c.a;
    var var_3 = arg_2.b.c.b.x;
    var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), arg_2.a, 436f)));
    return _wgslsmith_f_op_f32(-var_0.b.c);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec4<u32> {
    global2 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -284f, arg_2)), Struct_4(261f, global2[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, 2147483647i), vec3<u32>(u_input.d, u_input.e, 21814u)))))), _wgslsmith_f_op_f32(min(arg_2, -1371f)), arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(191f * arg_2), -2207f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1105f, -486f, -532f, arg_2) - vec4<f32>(289f, 592f, 260f, -1000f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 848f, arg_2, arg_2) - vec4<f32>(arg_2, -481f, 599f, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, arg_2, arg_2, arg_2))))))));
    return vec4<u32>(4294967295u, ~select((1u & u_input.e) >> (~4294967295u % 32u), max(0u, ~61010u), global3.x), ~(~arg_1), _wgslsmith_dot_vec3_u32(max(vec3<u32>(8473u, ~1u, arg_1), firstLeadingBit(~vec3<u32>(arg_1, u_input.e, arg_1))), vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(11514u, 21845u), vec2<u32>(arg_1, u_input.d)), max(vec2<u32>(32235u, 0u), vec2<u32>(14017u, u_input.e))), _wgslsmith_dot_vec2_u32(vec2<u32>(10587u, u_input.d) & vec2<u32>(1u, arg_1), abs(vec2<u32>(1u, 62099u))), 1u)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(u_input.e, arg_2, Struct_4(-181f, global2[_wgslsmith_index_u32(u_input.d, 25u)], vec4<i32>(10538i, u_input.c.x, u_input.b.x, -1i), vec3<u32>(arg_1.x, 4294967295u, u_input.d)))))), arg_2.x, -461f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, arg_0, arg_2.x), vec4<f32>(376f, arg_0, -151f, -517f), global3.x))) - vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), arg_2.x, arg_0, -1000f)), select(vec4<bool>(1155f != arg_2.x, global1.x, arg_1.x <= 0u, global1.x | global3.x), select(!vec4<bool>(false, true, global1.x, true), !vec4<bool>(global1.x, true, true, true), global3.x), any(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global3.x, global1.x, false), true))))));
    global3 = vec2<bool>(select(false, u_input.d == ~_wgslsmith_mult_u32(arg_1.x, u_input.e), true == global3.x), global3.x);
    var var_2 = ~_wgslsmith_div_vec4_u32(min(~max(arg_1, vec4<u32>(4294967295u, u_input.e, u_input.e, 13090u)), max(~vec4<u32>(arg_1.x, 18100u, arg_1.x, arg_1.x), ~vec4<u32>(u_input.d, arg_1.x, 71228u, 4294967295u))), arg_1);
    global0 = array<vec2<f32>, 26>();
    return Struct_1(vec3<f32>(-294f, _wgslsmith_f_op_f32(-644f + 1f), -1867f), vec4<i32>(_wgslsmith_add_i32(-67582i | u_input.c.x, -u_input.a.x), 0i, 2147483647i, u_input.c.x), var_1.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = !select(!arg_3, global1.zzw, (-6098i << (~u_input.d % 32u)) <= _wgslsmith_dot_vec3_i32(~vec3<i32>(-14612i, -2147483647i, arg_1.b.x), vec3<i32>(arg_1.b.x, -2147483647i, u_input.c.x)));
    var var_2 = global3.x;
    global1 = !(!select(select(!vec4<bool>(global1.x, arg_3.x, true, false), vec4<bool>(arg_3.x, true, global3.x, var_1.x), vec4<bool>(global1.x, true, true, arg_3.x)), select(vec4<bool>(var_1.x, global3.x, global1.x, true), select(vec4<bool>(arg_3.x, arg_3.x, false, global1.x), vec4<bool>(false, true, false, false), var_1.x), true), global1.x));
    let var_3 = arg_1.a.yz;
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1330f - arg_1.a.x), _wgslsmith_f_op_f32(round(-1035f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + -1000f), _wgslsmith_f_op_f32(-813f - -1337f))))), arg_1.b, -782f);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_3.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-798f, 174f, arg_3.a) * arg_0.a.a) + vec3<f32>(-150f, 223f, 762f)), arg_3)))), global2[_wgslsmith_index_u32(arg_3.d.x, 25u)], func_4(arg_2, vec4<u32>(arg_3.d.x, arg_3.d.x, 14887u, 24292u) & _wgslsmith_add_vec4_u32(vec4<u32>(39617u, u_input.e, u_input.e, 0u), vec4<u32>(1u, arg_3.b.e.x, arg_3.d.x, 0u)), func_4(arg_0.a.c, vec4<u32>(arg_3.d.x, 4294967295u, u_input.d, arg_3.d.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1088f, arg_0.b.c, 407f), vec3<f32>(arg_3.a, -132f, arg_2)))).a).b & func_5(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u)), func_4(_wgslsmith_div_f32(1179f, arg_3.a), ~vec4<u32>(1u, 21189u, arg_3.d.x, arg_3.b.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1545f, -452f, -363f) - arg_3.b.d.zzz)), _wgslsmith_sub_i32(arg_3.c.x, arg_3.b.c.b.x) >> (~57247u % 32u), select(global1.zwy, select(global1.xzy, global1.wwy, global1.yxz), select(vec3<bool>(false, global3.x, true), vec3<bool>(false, arg_1, false), global1.ywy))).b, ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, arg_3.d.x, 11626u) ^ arg_3.d, _wgslsmith_mod_vec3_u32(arg_3.b.b, arg_3.b.b)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 32804u, arg_3.d.x), arg_3.d)));
    var var_1 = var_0.b.c.a.yz;
    var var_2 = -36210i;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.a.zy, vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, 1000f)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(func_5(~u_input.d, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1226f), func_1(false, u_input.d, 508f, vec3<i32>(68776i, 0i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -277f, 1021f))), ~(u_input.c.x & u_input.a.x), !global1.yzz), func_5(1u, func_4(_wgslsmith_f_op_f32(floor(104f)), ~vec4<u32>(u_input.e, 0u, 14884u, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, 1233f, 814f))), max(-1i, u_input.c.x >> (51653u % 32u)), global1.yxy)), _wgslsmith_sub_i32(-46032i, firstTrailingBit(u_input.a.x)) < -func_4(func_5(1u, Struct_1(vec3<f32>(498f, -703f, -1683f), vec4<i32>(1i, 0i, 11062i, u_input.a.x), 1014f), u_input.b.x, global1.xxx).a.x, vec4<u32>(4294967295u, u_input.d, u_input.e, u_input.e) & vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -143f, 661f), vec3<f32>(-1172f, -141f, 976f)))).b.x, 1f, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))), global2[_wgslsmith_index_u32(~(~(~2581u)), 25u)], func_4(-572f, ~(~vec4<u32>(21586u, u_input.d, 4294967295u, 4294967295u)), vec3<f32>(-172f, func_4(700f, vec4<u32>(u_input.e, 0u, 0u, 22489u), vec3<f32>(-1915f, 903f, 445f)).a.x, _wgslsmith_div_f32(1000f, -991f))).b, ~(~(~vec3<u32>(u_input.d, u_input.d, u_input.e)))));
    var var_1 = var_0;
    let var_2 = select(~(~(-(var_1.b.xy >> (vec2<u32>(u_input.d, u_input.e) % vec2<u32>(32u))))), ~var_1.b.zw, vec2<bool>(any(global1.yw), false));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), 1688f)))), var_1.c, var_0.a.x);
    var var_4 = Struct_2(Struct_1(func_5(1u, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(771f, 1080f, var_0.c), vec3<f32>(1591f, var_3.x, -2506f))), vec4<i32>(-1i, var_1.b.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_clamp_i32(func_4(939f, vec4<u32>(u_input.d, u_input.e, 4294967295u, u_input.d), var_0.a).b.x, u_input.b.x, var_2.x >> (4030u % 32u)), select(global1.yww, vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, true, false), true))).a, ~var_1.b, var_3.x), func_4(var_0.a.x, max(vec4<u32>(57914u, _wgslsmith_clamp_u32(38375u, 50269u, u_input.d), u_input.d, u_input.d), vec4<u32>(30276u ^ u_input.e, ~u_input.e, ~0u, _wgslsmith_div_u32(41614u, 45676u))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -709f) - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1369f))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.b.b.x, countOneBits(-var_2.x));
}

