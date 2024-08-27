struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<i32>(9116i, -12901i, 27220i, 0i)), Struct_4(vec4<i32>(31757i, i32(-2147483648), -12255i, 0i)), Struct_4(vec4<i32>(-1i, 28642i, 1i, 2147483647i)), Struct_4(vec4<i32>(1i, 48202i, -4077i, -1850i)), Struct_4(vec4<i32>(23075i, 10584i, 2147483647i, -29256i)), Struct_4(vec4<i32>(-1i, 1374i, -6425i, i32(-2147483648))), Struct_4(vec4<i32>(2147483647i, 1i, -37850i, -62042i)), Struct_4(vec4<i32>(2147483647i, 2147483647i, -1i, 0i)), Struct_4(vec4<i32>(32586i, -4616i, -6880i, -58550i)), Struct_4(vec4<i32>(77774i, 0i, i32(-2147483648), i32(-2147483648))), Struct_4(vec4<i32>(1i, -1i, 7888i, -3087i)), Struct_4(vec4<i32>(0i, -16311i, -57704i, 0i)), Struct_4(vec4<i32>(-6780i, i32(-2147483648), i32(-2147483648), 6060i)), Struct_4(vec4<i32>(-1i, 16788i, 49297i, 0i)), Struct_4(vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(0i, 16895i, 78362i, 0i)), Struct_4(vec4<i32>(1i, 30547i, 29507i, -26009i)), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -34812i, 2147483647i)), Struct_4(vec4<i32>(2147483647i, 1i, -36326i, 1i)), Struct_4(vec4<i32>(i32(-2147483648), -28454i, -6593i, -73i)), Struct_4(vec4<i32>(-565i, 2147483647i, -9963i, 345i)), Struct_4(vec4<i32>(29726i, -10943i, -22104i, -24337i)), Struct_4(vec4<i32>(i32(-2147483648), 31973i, 0i, -9410i)), Struct_4(vec4<i32>(45998i, 25852i, 1i, i32(-2147483648))), Struct_4(vec4<i32>(0i, 59835i, -1i, -13794i)), Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i)));

var<private> global1: vec4<f32>;

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(1000f, -1090f, -533f);

var<private> global4: array<vec4<f32>, 16>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(ceil(global3.x));
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    global2 = !(!arg_0.a.b.x);
    global4 = array<vec4<f32>, 16>();
    global0 = array<Struct_4, 26>();
    let var_0 = select(firstLeadingBit(~vec3<u32>(countOneBits(0u), countOneBits(1u), ~u_input.a)), ~(~(~select(vec3<u32>(76953u, u_input.a, u_input.a), vec3<u32>(u_input.a, 56554u, 21030u), arg_0.a.a))), vec3<bool>(true, false, all(vec3<bool>(true, true, arg_0.a.b.x))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(trunc(global1.x))), Struct_3(false, select(vec4<bool>(arg_0.a.a, true, false, false), vec4<bool>(false, true, false, arg_0.a.a), arg_0.a.b))))));
    return Struct_2(326f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))), ~(~firstLeadingBit(vec4<i32>(arg_0.b, -53819i, 43998i, arg_0.b)))), vec3<u32>(max(~1u, firstLeadingBit(var_0.x << (u_input.a % 32u))), var_0.x, (min(1u, u_input.a) << ((4294967295u | var_0.x) % 32u)) | var_0.x), vec2<bool>(true, true));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    global3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(global3.x * global1.x))), 2864f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), 391f))))));
    var var_0 = Struct_5(Struct_3(arg_2.d.x, select(!(!vec4<bool>(true, arg_1.d.x, arg_1.d.x, arg_1.d.x)), vec4<bool>(all(vec3<bool>(true, arg_1.d.x, arg_2.d.x)), arg_1.d.x || true, false, false), arg_2.c.x == 47437u)), -(~(i32(-1i) * -2147483647i)));
    var var_1 = select(vec2<i32>(-(~arg_2.b.b.x), firstLeadingBit((arg_2.b.b.x | -22387i) ^ (i32(-1i) * -44628i))), reverseBits(vec2<i32>(_wgslsmith_div_i32(-arg_2.b.b.x, 14157i), firstTrailingBit(12839i & arg_1.b.b.x))), arg_2.d.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global1.x) * arg_1.b.a), Struct_3(any(var_0.a.b.zyx), vec4<bool>(arg_1.d.x, false, arg_2.d.x, arg_2.d.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-223f, global3.x) * _wgslsmith_f_op_f32(841f * 530f)), Struct_3(false, !vec4<bool>(arg_2.d.x, true, true, arg_2.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -297f)) * global1.zxy);
    let var_3 = func_2(Struct_5(Struct_3(var_0.a.b.x, select(!vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x), var_0.a.b, func_2(Struct_5(var_0.a, arg_1.b.b.x)).d.x)), ~var_0.b)).b;
    return firstLeadingBit(vec2<u32>(6368u, _wgslsmith_div_u32(0u, arg_1.c.x)) & ~arg_1.c.yx);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    global0 = array<Struct_4, 26>();
    let var_0 = ~(_wgslsmith_sub_vec2_u32(~(vec2<u32>(19500u, 8713u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), vec2<u32>(countOneBits(arg_1), 10859u)) & vec2<u32>(~arg_1, select(~13520u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1), vec2<u32>(36960u, u_input.a)), any(vec3<bool>(arg_0, arg_0, true)))));
    var var_1 = _wgslsmith_sub_vec2_i32((_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 44355i)) << (select(vec2<u32>(arg_1, 38925u), var_0, vec2<bool>(arg_0, arg_0)) % vec2<u32>(32u))) ^ max(vec2<i32>(8430i, 2147483647i) << (var_0 % vec2<u32>(32u)), vec2<i32>(1i, 1i)), -(~(-vec2<i32>(11514i, -73856i)))) << (~(func_4(~var_0.x, Struct_2(571f, Struct_1(global3.x, vec4<i32>(77896i, 0i, 0i, -1146i)), vec3<u32>(var_0.x, 42344u, 38441u), vec2<bool>(arg_0, arg_0)), func_2(Struct_5(Struct_3(arg_0, vec4<bool>(arg_0, arg_0, arg_0, false)), 0i))) << (~(~var_0) % vec2<u32>(32u))) % vec2<u32>(32u));
    global2 = !(!(true && any(vec4<bool>(true, false, true, true))) || arg_0);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~var_1.x, firstLeadingBit(-6415i), 11731i ^ _wgslsmith_mult_i32(var_1.x << (4294967295u % 32u), i32(-1i) * -23455i)), -11506i);
    return func_2(Struct_5(Struct_3(select(true, arg_0, false & arg_0), vec4<bool>(true, false, arg_0 | arg_0, any(vec4<bool>(true, true, false, arg_0)))), ~firstLeadingBit(0i)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    var var_0 = !func_2(Struct_5(Struct_3(false, !vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)), arg_1 & select(-48461i, arg_1, arg_0.d.x))).d;
    global0 = array<Struct_4, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.yxy) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1324f, arg_0.b.a, global1.x)), global1.wyy, true)) + vec3<f32>(257f, global3.x, global3.x))) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(314f + -1000f), -1115f));
    var var_1 = u_input.a;
    let var_2 = func_1(var_0.x || arg_0.d.x, u_input.a).d.x;
    return global1.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global3.x, -1000f);
    var var_1 = vec3<f32>(var_0, global3.x, _wgslsmith_f_op_f32(exp2(global3.x)));
    global4 = array<vec4<f32>, 16>();
    let var_2 = global4[_wgslsmith_index_u32(0u, 16u)];
    global3 = global1.yzw;
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.yww - _wgslsmith_f_op_vec3_f32(func_5(func_1(true, ~41168u), abs(~(-86889i))))), vec3<f32>(_wgslsmith_f_op_f32(-133f + 1231f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f - global1.x) - _wgslsmith_f_op_f32(min(1000f, global1.x)))))));
    let var_3 = !(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)));
    global1 = global4[_wgslsmith_index_u32(u_input.a, 16u)];
    var var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(26114u, u_input.a, u_input.a), vec3<u32>(1u, 0u, 10476u)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 16369u, 11271u))) & max(1u, 117042u), u_input.a, u_input.a, u_input.a) ^ _wgslsmith_div_vec4_u32(vec4<u32>(36362u, 0u, ~_wgslsmith_add_u32(u_input.a, u_input.a), ~reverseBits(u_input.a)), ~select(vec4<u32>(u_input.a, u_input.a, 15139u, 74944u), ~vec4<u32>(36457u, 1u, 31583u, 0u), select(vec4<bool>(false, true, var_3.x, false), vec4<bool>(var_3.x, false, false, var_3.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -32608i), vec4<i32>(-17185i, 2147483647i, -2147483647i, 38283i)), i32(-1i) * -32029i, -45962i >> (var_4.x % 32u), firstLeadingBit(-1828i)) | select(vec4<i32>(-1i, -18651i, -44414i, 2147483647i), vec4<i32>(40513i, 0i, 1i, 1i) << (vec4<u32>(32169u, 1u, u_input.a, var_4.x) % vec4<u32>(32u)), vec4<bool>(false, var_3.x, var_3.x, var_3.x))), var_4.xy);
}

