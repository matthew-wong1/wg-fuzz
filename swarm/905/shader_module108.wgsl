struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<i32>(0i, i32(-2147483648), -1i, 32335i), vec3<i32>(-9393i, 1i, 9774i)), vec3<i32>(2147483647i, 38300i, -1i), true, false), Struct_3(Struct_1(vec4<u32>(0u, 1u, 7363u, 0u), vec4<i32>(2147483647i, 31607i, i32(-2147483648), i32(-2147483648)), vec3<i32>(265i, 35811i, 19102i)), vec3<i32>(-1955i, -6751i, -6292i), true, true), Struct_3(Struct_1(vec4<u32>(1u, 78886u, 29278u, 1u), vec4<i32>(63254i, -8968i, 30549i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 22799i)), vec3<i32>(-50150i, 2147483647i, 21871i), false, true), Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, 8690u, 0u), vec4<i32>(25834i, 35958i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-6111i, -35510i, 18107i)), vec3<i32>(i32(-2147483648), 70604i, -29670i), false, true), Struct_3(Struct_1(vec4<u32>(0u, 56347u, 1u, 4294967295u), vec4<i32>(2239i, 77974i, i32(-2147483648), i32(-2147483648)), vec3<i32>(11658i, -43416i, 8176i)), vec3<i32>(-29578i, -1i, 40896i), false, false), Struct_3(Struct_1(vec4<u32>(65225u, 95869u, 90828u, 0u), vec4<i32>(0i, -1i, -36910i, -23645i), vec3<i32>(51306i, 2147483647i, -4421i)), vec3<i32>(i32(-2147483648), -1i, 0i), false, false), Struct_3(Struct_1(vec4<u32>(97325u, 10389u, 0u, 22990u), vec4<i32>(i32(-2147483648), 1i, 39687i, -8743i), vec3<i32>(0i, 38745i, 0i)), vec3<i32>(0i, 19635i, 1i), true, true), Struct_3(Struct_1(vec4<u32>(5542u, 1u, 1u, 0u), vec4<i32>(-5745i, -19023i, 10552i, -1i), vec3<i32>(29837i, 17498i, 0i)), vec3<i32>(-33174i, -52920i, 0i), true, true), Struct_3(Struct_1(vec4<u32>(113987u, 4294967295u, 22234u, 0u), vec4<i32>(1i, -29127i, 27169i, 2147483647i), vec3<i32>(117i, 2147483647i, 1i)), vec3<i32>(2147483647i, i32(-2147483648), 35313i), true, false), Struct_3(Struct_1(vec4<u32>(1u, 4460u, 4294967295u, 1u), vec4<i32>(55817i, 1i, -1i, 18272i), vec3<i32>(23797i, 6541i, 28224i)), vec3<i32>(36050i, 46487i, 0i), false, false), Struct_3(Struct_1(vec4<u32>(1u, 27754u, 60222u, 4294967295u), vec4<i32>(-40067i, 1i, 2147483647i, 1i), vec3<i32>(22720i, -1i, -14802i)), vec3<i32>(i32(-2147483648), -28354i, -31488i), false, false), Struct_3(Struct_1(vec4<u32>(88288u, 0u, 52047u, 11445u), vec4<i32>(2147483647i, -507i, -62833i, 1i), vec3<i32>(1i, 10214i, 13755i)), vec3<i32>(2147483647i, 2147483647i, 32472i), true, false), Struct_3(Struct_1(vec4<u32>(46076u, 0u, 4294967295u, 0u), vec4<i32>(31767i, -29469i, -1i, 24058i), vec3<i32>(0i, -1i, 1i)), vec3<i32>(5883i, 2147483647i, 10848i), true, true), Struct_3(Struct_1(vec4<u32>(0u, 3385u, 0u, 1u), vec4<i32>(i32(-2147483648), 1i, 0i, 23033i), vec3<i32>(-52612i, 1i, -1i)), vec3<i32>(2147483647i, 34823i, 0i), false, false), Struct_3(Struct_1(vec4<u32>(12711u, 51798u, 4294967295u, 1u), vec4<i32>(2147483647i, -3733i, -1943i, 1i), vec3<i32>(15312i, 11121i, -6148i)), vec3<i32>(21837i, -42310i, 0i), false, true), Struct_3(Struct_1(vec4<u32>(3642u, 10455u, 31401u, 1u), vec4<i32>(2147483647i, -15612i, -1i, i32(-2147483648)), vec3<i32>(8094i, 30529i, 26645i)), vec3<i32>(10894i, -5161i, -1i), false, true), Struct_3(Struct_1(vec4<u32>(61829u, 15289u, 56131u, 20341u), vec4<i32>(-69615i, i32(-2147483648), 1i, -1i), vec3<i32>(42649i, -1i, 2147483647i)), vec3<i32>(i32(-2147483648), 7835i, i32(-2147483648)), false, true), Struct_3(Struct_1(vec4<u32>(1u, 15451u, 0u, 1u), vec4<i32>(-11751i, -1i, 22923i, 0i), vec3<i32>(i32(-2147483648), 1i, 4490i)), vec3<i32>(16023i, i32(-2147483648), 4614i), false, true), Struct_3(Struct_1(vec4<u32>(4266u, 4294967295u, 4294967295u, 50542u), vec4<i32>(i32(-2147483648), 2147483647i, -18075i, 27793i), vec3<i32>(-43044i, 1i, 0i)), vec3<i32>(-6558i, -10103i, -39235i), true, false), Struct_3(Struct_1(vec4<u32>(68010u, 51011u, 4294967295u, 0u), vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 0i, -22652i)), vec3<i32>(0i, 0i, i32(-2147483648)), false, false), Struct_3(Struct_1(vec4<u32>(13002u, 53647u, 0u, 1u), vec4<i32>(0i, 1i, 1i, 63266i), vec3<i32>(-1i, 2147483647i, -40136i)), vec3<i32>(-2907i, 0i, 6288i), true, false), Struct_3(Struct_1(vec4<u32>(36705u, 400u, 4294967295u, 141706u), vec4<i32>(i32(-2147483648), -12249i, -6229i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 0i)), vec3<i32>(-83623i, -1i, 1i), false, false), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<i32>(i32(-2147483648), 2147483647i, -4593i, 2147483647i), vec3<i32>(2147483647i, -19778i, -53096i)), vec3<i32>(i32(-2147483648), 23619i, 6399i), false, true), Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 28406u, 1u), vec4<i32>(-8473i, -1i, -8895i, -66125i), vec3<i32>(31854i, -20256i, -26779i)), vec3<i32>(7050i, -12591i, 1i), false, false), Struct_3(Struct_1(vec4<u32>(80474u, 4294967295u, 1u, 1u), vec4<i32>(0i, 1i, -6889i, 2147483647i), vec3<i32>(2147483647i, 6674i, 15685i)), vec3<i32>(i32(-2147483648), 2147483647i, 0i), false, false), Struct_3(Struct_1(vec4<u32>(0u, 37374u, 1u, 25142u), vec4<i32>(-45944i, 55190i, -69803i, 49084i), vec3<i32>(-1i, 62926i, -51673i)), vec3<i32>(15417i, -9076i, 2147483647i), true, false), Struct_3(Struct_1(vec4<u32>(30550u, 0u, 4294967295u, 21967u), vec4<i32>(2147483647i, 28614i, 0i, 12494i), vec3<i32>(-2290i, i32(-2147483648), i32(-2147483648))), vec3<i32>(-4673i, i32(-2147483648), 0i), false, false), Struct_3(Struct_1(vec4<u32>(22650u, 26597u, 1u, 80u), vec4<i32>(19910i, 0i, 1i, -20385i), vec3<i32>(-1i, 2147483647i, -8005i)), vec3<i32>(14173i, 2i, -6478i), false, false), Struct_3(Struct_1(vec4<u32>(19683u, 4294967295u, 62072u, 21243u), vec4<i32>(-17867i, -1i, 0i, 1i), vec3<i32>(9316i, i32(-2147483648), 0i)), vec3<i32>(15567i, 0i, -1i), true, true), Struct_3(Struct_1(vec4<u32>(62457u, 1u, 43954u, 27642u), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 11454i), vec3<i32>(i32(-2147483648), 36308i, 0i)), vec3<i32>(-1i, i32(-2147483648), -1i), true, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    let var_0 = vec2<bool>(false, false);
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_1 = min(5868u, u_input.c);
    let var_2 = ~(-2147483647i) << (u_input.b % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -290f);
}

fn func_3(arg_0: f32) -> f32 {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_1(~abs(~vec4<u32>(u_input.b, u_input.b, 19973u, 1u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(u_input.a, ~u_input.a, 9451i, u_input.e.x)), u_input.e), reverseBits(~u_input.e.zww));
    var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~u_input.d.x, 63705u, select(1u, 4294967295u, true)), max(select(vec4<u32>(var_0.a.x, u_input.d.x, 1u, u_input.c), vec4<u32>(0u, u_input.d.x, 7795u, var_0.a.x), true), vec4<u32>(49341u, u_input.c, 4294967295u, u_input.b)))), u_input.e, ~vec3<i32>(i32(-1i) * -u_input.e.x, -1i, reverseBits(var_0.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)));
}

fn func_1() -> f32 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, 325f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(652f + -559f)))), -1566f)));
    let var_1 = -15383i;
    global0 = array<Struct_3, 30>();
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-328f)), 1131f), 808f)), _wgslsmith_f_op_f32(floor(1f))));
    return 655f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.e.wx;
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    let var_1 = -firstLeadingBit(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e.x), u_input.e.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xyy, _wgslsmith_f_op_f32(func_1()));
}

