struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: i32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<u32>(32901u, 0u, 61858u, 1u), false, vec4<bool>(true, false, true, true), vec2<u32>(1u, 1u)), vec4<bool>(false, true, true, true), -1316f, 49212i);

var<private> global1: vec3<i32> = vec3<i32>(-3580i, -1i, i32(-2147483648));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(45975u, 0u, 59906u, 52091u), true, vec4<bool>(true, true, true, false), vec2<u32>(0u, 25078u)), Struct_1(vec4<u32>(0u, 1u, 83311u, 0u), true, vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 1u)), Struct_1(vec4<u32>(1u, 0u, 1u, 59116u), false, vec4<bool>(true, false, true, false), vec2<u32>(60640u, 0u)), Struct_1(vec4<u32>(23233u, 1u, 1u, 0u), true, vec4<bool>(false, true, true, true), vec2<u32>(20614u, 4294967295u)), Struct_1(vec4<u32>(16028u, 17074u, 4294967295u, 0u), true, vec4<bool>(false, false, false, false), vec2<u32>(1u, 12394u)), Struct_1(vec4<u32>(14258u, 9461u, 21462u, 0u), true, vec4<bool>(false, false, true, false), vec2<u32>(27512u, 41272u)), Struct_1(vec4<u32>(32564u, 25915u, 54173u, 17383u), true, vec4<bool>(true, true, false, true), vec2<u32>(41325u, 12460u)), Struct_1(vec4<u32>(4294967295u, 13708u, 1u, 4294967295u), true, vec4<bool>(false, true, false, true), vec2<u32>(11049u, 4294967295u)), Struct_1(vec4<u32>(25906u, 1u, 29160u, 35310u), true, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 59996u)), Struct_1(vec4<u32>(1u, 76415u, 4294967295u, 4294967295u), true, vec4<bool>(true, false, false, true), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 6712u), true, vec4<bool>(true, true, true, true), vec2<u32>(1u, 16697u)), Struct_1(vec4<u32>(0u, 10323u, 5930u, 8709u), false, vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 12160u)), Struct_1(vec4<u32>(31036u, 0u, 0u, 23869u), false, vec4<bool>(false, true, true, true), vec2<u32>(1132u, 9394u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), true, vec4<bool>(true, true, false, true), vec2<u32>(13629u, 36357u)), Struct_1(vec4<u32>(4294967295u, 31547u, 21759u, 0u), true, vec4<bool>(true, false, true, true), vec2<u32>(8544u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 89549u, 3202u), false, vec4<bool>(true, false, false, true), vec2<u32>(0u, 44058u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), false, vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 42744u)), Struct_1(vec4<u32>(42487u, 0u, 0u, 4294967295u), true, vec4<bool>(false, false, true, true), vec2<u32>(82006u, 4294967295u)), Struct_1(vec4<u32>(0u, 8380u, 4294967295u, 4294967295u), true, vec4<bool>(true, false, false, false), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(0u, 12218u, 8635u, 0u), false, vec4<bool>(false, true, false, true), vec2<u32>(39347u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), false, vec4<bool>(true, false, true, false), vec2<u32>(0u, 9594u)), Struct_1(vec4<u32>(15028u, 4294967295u, 0u, 1u), false, vec4<bool>(false, true, false, true), vec2<u32>(1u, 32463u)), Struct_1(vec4<u32>(36251u, 4294967295u, 1u, 2782u), true, vec4<bool>(true, true, true, true), vec2<u32>(59679u, 1u)), Struct_1(vec4<u32>(52785u, 17378u, 1u, 19942u), true, vec4<bool>(false, false, false, true), vec2<u32>(2628u, 6071u)), Struct_1(vec4<u32>(7447u, 0u, 52782u, 8574u), true, vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), false, vec4<bool>(true, true, true, false), vec2<u32>(4761u, 0u)), Struct_1(vec4<u32>(4294967295u, 91887u, 91275u, 0u), false, vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 58064u)), Struct_1(vec4<u32>(21157u, 33636u, 4294967295u, 35101u), true, vec4<bool>(true, false, false, false), vec2<u32>(2198u, 1u)), Struct_1(vec4<u32>(58043u, 0u, 32536u, 1u), true, vec4<bool>(false, false, true, false), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(1u, 16856u, 1u, 4294967295u), false, vec4<bool>(false, false, false, true), vec2<u32>(126316u, 1u)), Struct_1(vec4<u32>(14138u, 0u, 54110u, 1u), false, vec4<bool>(false, true, true, true), vec2<u32>(31342u, 61550u)), Struct_1(vec4<u32>(4294967295u, 1u, 42803u, 1u), true, vec4<bool>(true, true, false, true), vec2<u32>(0u, 4294967295u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.c)), global0.c, _wgslsmith_f_op_f32(floor(-266f)), _wgslsmith_f_op_f32(round(-160f))), vec4<f32>(_wgslsmith_f_op_f32(round(global0.c)), _wgslsmith_f_op_f32(global0.c * 326f), _wgslsmith_f_op_f32(sign(-1090f)), _wgslsmith_f_op_f32(f32(-1f) * -220f)))));
    var var_1 = global0.c;
    let var_2 = global0.a.d;
    global0 = Struct_3(Struct_1(~abs(~vec4<u32>(u_input.a.x, 0u, global0.a.a.x, 26146u)), any(global0.a.c), !select(vec4<bool>(false, global0.a.b, false, global0.a.b), !vec4<bool>(global0.a.b, false, false, global0.b.x), global0.a.b), u_input.e.zz), global0.a.c, var_0.x, global0.d);
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u ^ min(var_2.x, max(4294967295u, u_input.c))), vec2<u32>(~58143u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 1287u)), _wgslsmith_mult_vec3_u32(global0.a.a.xyz, vec3<u32>(72691u, 1u, u_input.d.x))), _wgslsmith_mult_vec3_u32(u_input.a, global0.a.a.zyy))));
    return ~var_2.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(select(1u, 4294967295u, true), u_input.c, select(u_input.d.x, global0.a.d.x, global0.b.x), func_3())), u_input.e), 32u)], !select(!global0.b, global0.b, global0.a.c), _wgslsmith_f_op_f32(max(global0.c, global0.c)), 2147483647i);
    var var_0 = !select(select(!global0.a.c.zzx, select(vec3<bool>(false, false, global0.b.x), global0.b.xyx, select(global0.b.wwx, global0.b.zyw, global0.b.yxz)), vec3<bool>(global0.b.x, any(global0.b), global0.b.x)), vec3<bool>(global0.b.x, all(vec4<bool>(false, global0.a.b, global0.a.c.x, global0.b.x)), false), !global0.a.c.wwy);
    let var_1 = vec4<u32>(~abs(24659u), ~(~global0.a.d.x), u_input.a.x, _wgslsmith_div_u32(u_input.c, u_input.d.x));
    let var_2 = vec4<i32>(min(-3059i, _wgslsmith_dot_vec3_i32(firstLeadingBit(select(vec3<i32>(0i, u_input.b.x, 0i), vec3<i32>(-59750i, 30982i, arg_0.x), vec3<bool>(true, false, false))), vec3<i32>(~arg_0.x, u_input.b.x, u_input.b.x))), global0.d >> (~_wgslsmith_add_u32(~51496u, min(var_1.x, global0.a.a.x)) % 32u), ~global0.d << (~(~countOneBits(global0.a.a.x)) % 32u), 2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, 496f, global0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c, -118f, global0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.c, global0.c, global0.c) + vec4<f32>(374f, -1708f, 437f, -246f)))))), vec4<f32>(_wgslsmith_f_op_f32(-global0.c), 1118f, 237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(404f)) * global0.c))));
    return Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 126716u, global0.a.d.x, select(100927u, 80352u, var_0.x)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.a.a.x, 4294967295u, 32667u), 9145u), reverseBits(~21343u), ~4294967295u & ~u_input.d.x, _wgslsmith_clamp_u32(var_1.x, ~u_input.a.x, 0u))), false, select(global0.a.c, !vec4<bool>(var_0.x, true, false, true & global0.a.c.x), !global0.b), ~_wgslsmith_sub_vec2_u32(abs(~u_input.a.yz), abs(firstTrailingBit(vec2<u32>(u_input.a.x, 115501u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_4 {
    global0 = Struct_3(global2[_wgslsmith_index_u32(1u, 32u)], vec4<bool>(!any(arg_0.c.xxx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-585f)) * global0.c) <= -1000f, false, any(arg_0.c.yxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -296f)), u_input.b.x);
    global1 = vec3<i32>(-(~abs(57391i)) << (_wgslsmith_div_u32(1u, _wgslsmith_add_u32(1u, ~global0.a.d.x)) % 32u), -2147483647i, u_input.b.x);
    let var_0 = func_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(10697i, global0.d) >> (u_input.d.xz % vec2<u32>(32u))), global1.xx), global1.xy));
    var var_1 = Struct_3(arg_0, func_2(u_input.b).c, _wgslsmith_f_op_f32(-arg_1.x), 8115i);
    var var_2 = Struct_2(var_1.c, global0.a, var_0);
    return Struct_4(-vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, var_1.d, 2147483647i, global0.d), vec4<i32>(u_input.b.x, global1.x, u_input.b.x, global1.x)), -1i, _wgslsmith_sub_i32(29743i, firstTrailingBit(u_input.b.x))), Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(44559u, 1u)), 32u)], func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, global1.x), vec3<i32>(18889i, global0.d, 0i)), u_input.b.x | global0.d)).c, _wgslsmith_f_op_f32(f32(-1f) * -1362f), u_input.b.x), ~(~(~(~var_2.c.d.x))), u_input.b, vec4<i32>(min(abs(1i), global0.d), 10742i, 0i, 0i) | -(vec4<i32>(global1.x, -24196i, global1.x, u_input.b.x) & vec4<i32>(-2147483647i, u_input.b.x, -57939i, global1.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> vec3<bool> {
    global2 = array<Struct_1, 32>();
    var var_0 = func_4(func_2(select(u_input.b, global1.xy & (vec2<i32>(-48372i, global1.x) ^ global1.zx), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(global0.c, 1245f))), _wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(global0.c + 550f)), -1449f)));
    var_0 = func_4(global2[_wgslsmith_index_u32(arg_2, 32u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1376f), 1456f, 1014f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) * global0.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, 1585f, global0.c, var_0.b.c) * vec4<f32>(global0.c, global0.c, 1000f, 626f)), vec4<f32>(-1474f, -1000f, global0.c, global0.c))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, 1520f, -923f, var_0.b.c) + vec4<f32>(var_0.b.c, var_0.b.c, 150f, global0.c)))))));
    let var_1 = false;
    var var_2 = (-(~var_0.e) >> (vec4<u32>(19743u, 1u, 1u, 1u) % vec4<u32>(32u))) & (_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(global0.d), -2147483647i, _wgslsmith_sub_i32(-1i, arg_0.x), abs(2147483647i)), select(var_0.e & var_0.e, var_0.e, var_0.b.b), var_0.e) & ~vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(13048i, 2147483647i), global1.yy), 12930i, u_input.b.x));
    return func_4(global2[_wgslsmith_index_u32(global0.a.d.x, 32u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(global0.c, var_0.b.c)), var_0.b.c, func_4(Struct_1(global0.a.a, false, global0.a.c, vec2<u32>(var_0.c, var_0.b.a.a.x)), vec4<f32>(261f, 782f, 126f, var_0.b.c)).b.c, _wgslsmith_f_op_f32(sign(global0.c))), vec4<f32>(176f, _wgslsmith_f_op_f32(f32(-1f) * -1593f), -1000f, _wgslsmith_f_op_f32(-var_0.b.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c, var_0.b.c, -362f, global0.c), vec4<f32>(102f, -1302f, 1000f, var_0.b.c)))))))).b.b.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!(!(!global0.a.c.zxy)), select(func_1(-global1.xy, any(vec4<bool>(true, global0.a.b, global0.b.x, global0.a.c.x)), 1u), !vec3<bool>(global0.b.x, false, global0.b.x), global0.a.c.xww), vec3<bool>(global0.b.x, global0.b.x, global0.a.c.x)), select(func_1(~max(vec2<i32>(global1.x, global0.d), global1.xz), u_input.b.x > (i32(-1i) * -1i), _wgslsmith_div_u32(func_2(vec2<i32>(global0.d, 2147483647i)).a.x, ~global0.a.a.x)), select(select(func_4(global0.a, vec4<f32>(-307f, -617f, global0.c, global0.c)).b.a.c.xyw, select(global0.a.c.yww, global0.b.zzw, global0.b.xzz), !global0.b.x), !(!vec3<bool>(global0.b.x, global0.b.x, global0.a.b)), vec3<bool>(global0.a.b, true || global0.a.c.x, func_2(vec2<i32>(-57829i, u_input.b.x)).c.x)), select(func_2(u_input.b).c.zwx, !global0.b.yww, !(!global0.a.c.xyw))), any(!vec2<bool>(global0.a.b, func_1(u_input.b, true, u_input.d.x).x)));
    var var_1 = -vec3<i32>(u_input.b.x, global1.x, -(~func_4(global0.a, vec4<f32>(global0.c, global0.c, global0.c, global0.c)).a.x));
    var var_2 = global0.a.a.yw;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -826f) * global0.c))), Struct_1(vec4<u32>(1u | select(0u, u_input.d.x, false), 1u, ~(~4472u), _wgslsmith_add_u32(~u_input.e.x, ~0u)), func_1(vec2<i32>(_wgslsmith_sub_i32(global0.d, global0.d), reverseBits(global1.x)), var_0.x, 39251u).x, global0.b, ~(~vec2<u32>(var_2.x, 25982u))), Struct_1(global0.a.a, true, vec4<bool>(!(false == global0.b.x), func_1(func_4(Struct_1(global0.a.a, false, vec4<bool>(false, var_0.x, global0.a.b, global0.b.x), u_input.e.xw), vec4<f32>(186f, -315f, -781f, 309f)).a.zz, global0.b.x, 1u).x, func_2(countOneBits(var_1.yz)).c.x, all(vec3<bool>(global0.b.x, global0.b.x, false))), vec2<u32>(1u, global0.a.d.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.a)), _wgslsmith_f_op_f32(sign(-1071f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c, -806f), vec2<f32>(-297f, -2132f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(var_2.x, var_3.b.a.x)), global0.a.d >> (~vec2<u32>(50324u, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(min(var_3.c.a.xw, vec2<u32>(4294967295u, 33295u))), !func_2(firstTrailingBit(var_1.zx)).c.ww));
}

