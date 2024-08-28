struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(48546u, 0u, 1u), vec2<u32>(1u, 1u)), 358f, -32768i, vec3<i32>(-1i, 2147483647i, 30319i));

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(331f, -625f, -484f, -118f), vec4<f32>(-147f, -1000f, 795f, -1000f), vec4<f32>(557f, 648f, 1657f, -184f), vec4<f32>(847f, 165f, 318f, -602f), vec4<f32>(902f, 563f, 1198f, 1207f), vec4<f32>(-560f, 1000f, 1002f, -139f), vec4<f32>(363f, -3372f, -1527f, 1000f), vec4<f32>(1000f, -659f, -945f, 523f), vec4<f32>(1135f, 332f, -177f, 907f), vec4<f32>(-2159f, 512f, -362f, 740f), vec4<f32>(-248f, -305f, -249f, 1280f), vec4<f32>(680f, -1389f, 1000f, 1666f));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<u32>(43606u, 1u, 26331u, 14532u), vec3<f32>(1240f, -306f, 1157f)), Struct_3(vec4<u32>(45444u, 12679u, 1u, 36662u), vec3<f32>(901f, -230f, 243f)), Struct_3(vec4<u32>(26176u, 101637u, 41732u, 16584u), vec3<f32>(1004f, -530f, -830f)), Struct_3(vec4<u32>(35678u, 40344u, 14962u, 1u), vec3<f32>(410f, 1000f, -2717f)), Struct_3(vec4<u32>(7651u, 52164u, 0u, 4294967295u), vec3<f32>(-149f, -2456f, -662f)), Struct_3(vec4<u32>(0u, 4294967295u, 71854u, 35097u), vec3<f32>(-1093f, 487f, 740f)), Struct_3(vec4<u32>(18543u, 114754u, 19129u, 45477u), vec3<f32>(-121f, 588f, -1651f)), Struct_3(vec4<u32>(4294967295u, 1u, 4294967295u, 31556u), vec3<f32>(-607f, 497f, 285f)), Struct_3(vec4<u32>(38497u, 11847u, 1u, 45795u), vec3<f32>(-1847f, -123f, -251f)), Struct_3(vec4<u32>(47520u, 70257u, 0u, 0u), vec3<f32>(582f, -744f, -1153f)), Struct_3(vec4<u32>(69378u, 0u, 20557u, 4294967295u), vec3<f32>(-1000f, 1881f, -360f)), Struct_3(vec4<u32>(37380u, 1u, 4294967295u, 1u), vec3<f32>(274f, -3232f, -467f)), Struct_3(vec4<u32>(1u, 0u, 52094u, 43307u), vec3<f32>(-296f, 1238f, 532f)), Struct_3(vec4<u32>(29923u, 38592u, 25107u, 4294967295u), vec3<f32>(-926f, 1865f, -835f)), Struct_3(vec4<u32>(1u, 37157u, 12579u, 22169u), vec3<f32>(768f, 1334f, 416f)), Struct_3(vec4<u32>(4294967295u, 1u, 31409u, 16972u), vec3<f32>(1044f, -1125f, 300f)), Struct_3(vec4<u32>(0u, 4608u, 1u, 6976u), vec3<f32>(-2199f, -1293f, 2802f)), Struct_3(vec4<u32>(12207u, 0u, 0u, 0u), vec3<f32>(-541f, -377f, 1089f)), Struct_3(vec4<u32>(114902u, 52501u, 10330u, 27094u), vec3<f32>(222f, -643f, 2607f)), Struct_3(vec4<u32>(0u, 30478u, 0u, 1u), vec3<f32>(-2350f, -154f, -672f)), Struct_3(vec4<u32>(0u, 0u, 16895u, 0u), vec3<f32>(-473f, 759f, 1000f)), Struct_3(vec4<u32>(4294967295u, 1u, 6335u, 0u), vec3<f32>(-197f, -1221f, 1000f)), Struct_3(vec4<u32>(59325u, 32582u, 5725u, 4294967295u), vec3<f32>(445f, 1058f, 485f)), Struct_3(vec4<u32>(0u, 0u, 27471u, 1u), vec3<f32>(-1390f, 1739f, 153f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = ~(~(~_wgslsmith_sub_vec3_u32(global0.a.a, vec3<u32>(12567u, u_input.c.x, global0.a.b.x)))) | ~vec3<u32>(~(~global0.a.a.x), ~(1u & u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.c.x), global0.a.b, global0.a.a.zx), u_input.c.xz & vec2<u32>(u_input.c.x, u_input.c.x)));
    var var_1 = 0i;
    let var_2 = global0.d;
    global3 = array<Struct_3, 24>();
    let var_3 = global0.a;
    return reverseBits(_wgslsmith_sub_i32(~abs(u_input.d), abs(var_2.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = array<Struct_3, 24>();
    let var_0 = vec2<i32>(-(~_wgslsmith_clamp_i32(global0.d.x, func_3(vec4<bool>(true, false, true, false)), -5619i & u_input.a.x)), global0.d.x >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(61119u, arg_0.a.x, arg_0.b.x, 4294967295u), ~vec4<u32>(arg_0.b.x, arg_0.a.x, u_input.c.x, u_input.c.x)) << (0u % 32u)) % 32u));
    let var_1 = _wgslsmith_dot_vec2_u32(arg_0.a.yz, arg_0.b) ^ ~(u_input.c.x & u_input.c.x);
    global1 = array<vec4<f32>, 12>();
    global1 = array<vec4<f32>, 12>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    global1 = array<vec4<f32>, 12>();
    global1 = array<vec4<f32>, 12>();
    global0 = Struct_2(func_2(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b)))))), -16747i, min(vec3<i32>(u_input.b, u_input.b, -global0.d.x), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(-13013i, 28021i, 86214i), firstLeadingBit(vec3<i32>(1i, u_input.b, u_input.a.x)))));
    var var_1 = Struct_3(~arg_1.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global2.zzy)))));
    return global0.d.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = true;
    let var_1 = firstTrailingBit(i32(-1i) * -905i);
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(~global0.a.b.x, _wgslsmith_clamp_u32(1u, 1u, 135128u)), _wgslsmith_div_u32(u_input.c.x, select(abs(u_input.c.x), global0.a.a.x, true))), 24u)];
    global1 = array<vec4<f32>, 12>();
    global3 = array<Struct_3, 24>();
    return !(_wgslsmith_f_op_f32(exp2(global0.b)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1971f), _wgslsmith_f_op_f32(round(global0.b)), true)), global0.b));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_5(_wgslsmith_add_i32(max(global0.c | ~u_input.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, u_input.b), u_input.a.x ^ global0.c)), 896i), func_4(func_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(6750u, 89599u, u_input.c.x), u_input.c), u_input.c.xz)), global3[_wgslsmith_index_u32(~firstLeadingBit(~0u), 24u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(u_input.c.x, 0u), max(~u_input.c.x, _wgslsmith_clamp_u32(~25302u, global0.a.a.x >> (u_input.c.x % 32u), global0.a.a.x)), min(1u, ~(~u_input.c.x))), 24u)]);
    var var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(1u, 4294967295u) | min(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10305u, 17680u, u_input.c.x, global0.a.b.x), vec4<u32>(0u, 20273u, 1u, 41764u)))) & u_input.c.x, 24u)];
    global0 = Struct_2(global0.a, var_1.b.x, abs(-38565i), ~global0.d);
    let var_2 = global3[_wgslsmith_index_u32(~global0.a.b.x, 24u)];
    global3 = array<Struct_3, 24>();
    return StorageBuffer(global2.x, firstTrailingBit(_wgslsmith_clamp_vec3_u32(global0.a.a, vec3<u32>(0u, func_2(Struct_1(global0.a.a, var_1.a.zz)).a.x, global0.a.b.x), vec3<u32>(1u, u_input.c.x, 30018u & u_input.c.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2064f, _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, global0.b))))), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 12>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -603f)), -1000f, 447f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global2.wwy)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-230f, 225f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global0.b, -584f))))));
    var var_1 = false;
    var var_2 = global2.wzx;
    var var_3 = abs(reverseBits(~(~vec4<i32>(-9589i, global0.c, u_input.b, u_input.d))));
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = func_1();
}

