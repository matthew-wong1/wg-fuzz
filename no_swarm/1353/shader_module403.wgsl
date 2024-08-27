struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-421f, -229f, 788f, -359f), vec4<f32>(561f, 322f, -213f, 1145f), vec4<f32>(-271f, 301f, 1088f, 1659f), vec4<f32>(-1000f, 1041f, 647f, 195f), vec4<f32>(1000f, -1270f, -601f, -1029f), vec4<f32>(-419f, 2773f, -126f, 125f), vec4<f32>(-1449f, -1282f, 1314f, -812f), vec4<f32>(-3212f, 657f, 134f, 472f), vec4<f32>(1000f, 1407f, 697f, -679f), vec4<f32>(-182f, -512f, -949f, 144f), vec4<f32>(-1000f, 412f, -255f, 1293f), vec4<f32>(-364f, 329f, 191f, -204f), vec4<f32>(-903f, 1483f, 1829f, -311f), vec4<f32>(214f, 267f, 954f, 485f), vec4<f32>(673f, 1263f, -326f, -635f), vec4<f32>(-1064f, 1214f, -209f, 612f), vec4<f32>(-563f, 1536f, -2327f, 2016f), vec4<f32>(-288f, -1249f, -411f, 1027f), vec4<f32>(182f, 671f, -234f, 817f), vec4<f32>(1089f, 472f, 684f, -419f), vec4<f32>(-3153f, 867f, 1130f, 454f), vec4<f32>(1590f, -1632f, -466f, 1222f), vec4<f32>(249f, -840f, 224f, 1210f));

var<private> global3: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec2<u32>(76299u, 3622u)), Struct_4(vec2<u32>(17354u, 1u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(4294967295u, 37809u)), Struct_4(vec2<u32>(0u, 24356u)), Struct_4(vec2<u32>(4294967295u, 1974u)), Struct_4(vec2<u32>(47771u, 0u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool) -> u32 {
    global0 = Struct_5(global1.x, !arg_0, -1084f);
    let var_0 = global3[_wgslsmith_index_u32(~abs(reverseBits(51461u)), 7u)];
    let var_1 = ~u_input.a;
    let var_2 = 1i;
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-259f, global1.x) * _wgslsmith_f_op_f32(701f - global1.x)), _wgslsmith_f_op_f32(max(220f, _wgslsmith_f_op_f32(f32(-1f) * -1529f))))))));
    return u_input.a.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = -vec3<i32>(0i, u_input.d | ~u_input.d, u_input.d) >> ((u_input.a.xwy ^ vec3<u32>(_wgslsmith_add_u32(1u, u_input.c.x), _wgslsmith_mod_u32(max(u_input.b, u_input.a.x), 0u), func_3(global0.b, u_input.d, global0.b) << (49424u % 32u))) % vec3<u32>(32u));
    var var_1 = Struct_3(33713u, vec4<f32>(699f, _wgslsmith_f_op_f32(floor(global1.x)), 828f, _wgslsmith_f_op_f32(-global1.x)));
    var var_2 = 4294967295u;
    var_0 = vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_div_i32(~u_input.d, var_0.x), -max(0i, u_input.d)), 1i, var_0.x);
    var var_3 = _wgslsmith_mod_i32(reverseBits(0i), 22775i);
    return Struct_3(var_1.a, var_1.b);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(-46350i, -38576i, 1i), vec3<i32>(-38263i, 0i, -68887i), global0.b), vec3<i32>(-1i, u_input.d, u_input.d))), -max(~vec3<i32>(u_input.d, -1i, -29470i), vec3<i32>(1i, u_input.d, u_input.d))), vec3<i32>(1i, u_input.d, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(u_input.d, u_input.d))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(3407f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-303f))))), any(vec4<bool>(global0.b, 198f >= _wgslsmith_f_op_f32(floor(-937f)), true, true)), 1000f);
    global3 = array<Struct_4, 7>();
    return Struct_1(!select(vec3<bool>(any(vec3<bool>(var_1.b, var_1.b, var_1.b)), !var_1.b, var_1.b), vec3<bool>(var_1.b && true, global0.b, !var_1.b), select(!vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(global0.b, true, false), select(vec3<bool>(global0.b, false, var_1.b), vec3<bool>(true, true, var_1.b), global0.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(1358f)), _wgslsmith_f_op_f32(-global1.x), global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_2(vec4<bool>(global0.b, false, false, true)).b.yyx, arg_0.b.xxz) + arg_0.b.www))));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(u_input.a.xw);
    global2 = array<vec4<f32>, 23>();
    var var_1 = func_4(func_2(select(!vec4<bool>(false, false, false, global0.b), select(!vec4<bool>(global0.b, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), _wgslsmith_add_u32(var_0.a.x, 4294967295u) == ~37839u)));
    var var_2 = countOneBits(min(~(~15662u), 4294967295u) ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(var_0.a.x, 1u))), ~_wgslsmith_div_u32(u_input.b, var_0.a.x)));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-528f + 2294f), _wgslsmith_f_op_f32(3673f + -630f), _wgslsmith_f_op_f32(trunc(-1302f))) - var_1.b), _wgslsmith_f_op_vec3_f32(-var_1.b))));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), global1.x) * 659f), any(!select(!vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<bool>(false, false, var_3.a.x, global0.b), true && global0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1773f) + 154f), select(false | var_3.a.x, false, var_1.a.x))), false)));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5) -> u32 {
    var var_0 = u_input.d;
    var var_1 = -39026i >> (min(u_input.b, max(~0u, ~48395u)) % 32u);
    global0 = func_1();
    let var_2 = arg_1;
    global0 = Struct_5(-1423f, arg_1.b, -734f);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~func_5(_wgslsmith_add_i32(u_input.d, 25195i), func_1(), func_1())));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_1().a);
    var var_2 = u_input.d;
    var var_3 = Struct_3(1u, global2[_wgslsmith_index_u32(var_0, 23u)]);
    var var_4 = Struct_4(countOneBits(min(~(u_input.a.zw | u_input.c.xz), u_input.c.zy)));
    var var_5 = Struct_2(func_4(Struct_3(~(~0u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, var_3.b.x, -1015f, var_1.x)))))), ~vec4<i32>(9100i, max(u_input.d, 1i), _wgslsmith_mult_i32(u_input.d, u_input.d), _wgslsmith_clamp_i32(u_input.d, -35007i, u_input.d)) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_4.a.x, var_0, u_input.a.x, 0u)), u_input.a), vec4<u32>(u_input.a.x & 0u, ~var_3.a, var_3.a, 1u)) % vec4<u32>(32u)));
    var var_6 = _wgslsmith_mod_i32(i32(-1i) * -29991i, ~(-4574i));
    var_2 = ~580i << (_wgslsmith_div_u32(var_4.a.x, var_3.a) % 32u);
    var var_7 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f - -1000f) - _wgslsmith_f_op_f32(var_5.a.b.x + 818f)) * -267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(422f)) - var_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1364f), -114f));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.wxz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_3.b.wx, var_5.a.b.xx))))), _wgslsmith_f_op_vec2_f32(round(var_7.yy)))), vec4<i32>(var_5.b.x, var_5.b.x, _wgslsmith_dot_vec4_i32(var_5.b, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, u_input.d, 1i), _wgslsmith_sub_vec4_i32(var_5.b, var_5.b))), -_wgslsmith_dot_vec3_i32(var_5.b.zzz, var_5.b.xyz)), 1i);
}

