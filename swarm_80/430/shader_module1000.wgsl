struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(true, vec2<u32>(0u, 14796u), 4294967295u, vec4<bool>(true, false, false, false)), Struct_2(true, vec2<u32>(9675u, 0u), 15718u, vec4<bool>(false, true, true, false)), Struct_2(false, vec2<u32>(85292u, 4294967295u), 22254u, vec4<bool>(true, false, false, true)), Struct_2(true, vec2<u32>(0u, 44129u), 21224u, vec4<bool>(true, false, false, true)), Struct_2(false, vec2<u32>(1u, 1u), 4294967295u, vec4<bool>(false, true, false, true)), Struct_2(false, vec2<u32>(63343u, 4294967295u), 35965u, vec4<bool>(true, true, false, true)), Struct_2(true, vec2<u32>(1u, 35022u), 35092u, vec4<bool>(true, false, false, false)), Struct_2(false, vec2<u32>(7158u, 28012u), 31662u, vec4<bool>(false, true, true, false)), Struct_2(true, vec2<u32>(4294967295u, 4294967295u), 0u, vec4<bool>(false, false, false, true)), Struct_2(true, vec2<u32>(67906u, 0u), 13879u, vec4<bool>(false, false, false, false)), Struct_2(false, vec2<u32>(22844u, 4294967295u), 32710u, vec4<bool>(false, false, false, false)), Struct_2(false, vec2<u32>(1u, 0u), 10804u, vec4<bool>(false, true, false, false)), Struct_2(false, vec2<u32>(4294967295u, 19276u), 43681u, vec4<bool>(true, false, false, false)), Struct_2(true, vec2<u32>(11565u, 53384u), 29265u, vec4<bool>(true, false, false, false)), Struct_2(false, vec2<u32>(31709u, 105708u), 1u, vec4<bool>(true, true, false, false)));

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_1(-2147483647i, arg_0.b, u_input.c, 19i);
    let var_1 = 28282i;
    global0 = array<Struct_2, 15>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.c.x)), arg_1.b.c.x, 1120f));
    var var_3 = Struct_3(~select(abs(0u), 48867u, !arg_1.a.a) & (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_1.b.a, arg_0.c), ~vec3<u32>(var_0.c, 75566u, arg_0.c)) & 4294967295u), select(select(select(select(vec2<bool>(false, arg_1.b.b.x), arg_1.a.d.wy, arg_1.a.d.wy), !arg_1.a.d.xx, arg_1.a.a), select(!arg_1.b.b, select(arg_1.b.b, vec2<bool>(arg_1.b.d, true), arg_1.a.d.zx), vec2<bool>(true, true)), !(-1i != u_input.a.x)), vec2<bool>(arg_1.b.e, select(true, true, any(vec2<bool>(arg_1.a.d.x, arg_1.b.b.x)))), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.c)), _wgslsmith_mod_u32(~u_input.c | ~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b.x, 20281u), arg_1.a.b)) < (0u & ~arg_0.c), false);
    return 505f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-115f)))), -761f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -711f), _wgslsmith_f_op_f32(ceil(arg_0.x))), -769f)), arg_0.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -656f, _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_1.x)))))));
    var var_1 = u_input.a.x;
    var_1 = ~(-2147483647i);
    var var_2 = ~u_input.c;
    let var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.c, 1u) & vec2<u32>(16364u, 77527u))) & u_input.d, 10u)];
    return abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.d, u_input.d, var_3.c, u_input.d) ^ ~vec4<u32>(0u, 0u, 19864u, 0u), ~vec4<u32>(var_3.b.x, 4294967295u, var_3.b.x, u_input.d)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(70889u, 0u, var_3.c, 0u), vec4<u32>(13898u, var_3.c, u_input.d, 4294967295u)), ~vec4<u32>(71295u, var_3.b.x, 4294967295u, 11343u), select(var_3.d, vec4<bool>(arg_1.x, var_3.a, true, false), var_3.a)) | reverseBits(~vec4<u32>(35786u, 4294967295u, u_input.d, 74224u))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = vec3<u32>(func_4(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(func_3(arg_1, Struct_4(global0[_wgslsmith_index_u32(13658u, 15u)], Struct_3(u_input.d, vec2<bool>(false, false), vec3<f32>(arg_1.b, arg_1.b, -687f), true, false), -1719f)))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), ~50642u | arg_1.c, reverseBits(_wgslsmith_div_u32(~2935u, _wgslsmith_clamp_u32(73415u, u_input.d, u_input.d)) >> (arg_1.c % 32u)));
    let var_1 = Struct_4(Struct_2(true, ~vec2<u32>(_wgslsmith_add_u32(var_0.x, 4294967295u), firstTrailingBit(11766u)), func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b, arg_1.b))), vec2<bool>(true, true)) ^ select(arg_1.c, abs(u_input.d), 2147483647i != u_input.b.x), !vec4<bool>(0u < arg_1.c, any(vec2<bool>(false, true)), true, true)), Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -408f))), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-552f, -507f, arg_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, -488f) - vec3<f32>(arg_1.b, 779f, arg_1.b)))), all(vec3<bool>(false, all(vec3<bool>(true, false, true)), arg_1.b >= arg_1.b)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_1.b) + arg_1.b))))));
    global0 = array<Struct_2, 15>();
    global1 = array<vec3<i32>, 20>();
    global2 = array<Struct_2, 10>();
    return select(max(u_input.d, select(_wgslsmith_add_u32(var_0.x, 2420u), u_input.c, all(var_1.a.d.zyz))) > _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.a, 14416u, var_1.a.b.x, 4294967295u) << (vec4<u32>(0u, var_0.x, 0u, 66664u) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(74751u), 1u, 1u, ~1u)), any(vec4<bool>(true, any(!vec2<bool>(var_1.a.d.x, true)), var_1.a.d.x, any(select(vec3<bool>(true, var_1.b.b.x, var_1.b.b.x), var_1.a.d.yzx, var_1.a.d.x)))), true);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global2 = array<Struct_2, 10>();
    global0 = array<Struct_2, 15>();
    let var_0 = 22791u;
    global1 = array<vec3<i32>, 20>();
    var var_1 = Struct_2(false, ((vec2<u32>(arg_2.c, var_0) >> (vec2<u32>(var_0, arg_2.c) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(34031u, 0u)), select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, u_input.c), true))) ^ ((vec2<u32>(45083u, 4294967295u) >> (vec2<u32>(arg_0, 14818u) % vec2<u32>(32u))) << (~vec2<u32>(arg_0, 15074u) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, u_input.d, 23749u)), vec3<u32>(_wgslsmith_add_u32(1u, ~u_input.d), ~21415u, ~_wgslsmith_div_u32(1980u, arg_2.c))), !(!vec4<bool>(true, false, true, func_2(-20324i, Struct_1(-38991i, arg_2.b, u_input.c, -6944i)))));
    return _wgslsmith_f_op_f32(round(1047f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27208u;
    global0 = array<Struct_2, 15>();
    let var_1 = select((_wgslsmith_f_op_f32(func_1(30868u, 70128i, Struct_1(-39895i, 147f, u_input.c, -1i), u_input.a.x)) <= 1f) | true, true, !func_2(-1904i, Struct_1(0i, -1347f, 88505u, u_input.b.x)) != true) | true;
    let var_2 = global2[_wgslsmith_index_u32(u_input.d, 10u)];
    var_0 = ~(~(~(~(4294967295u << (u_input.d % 32u)))));
    var var_3 = var_2.d.zyx;
    var var_4 = !vec2<bool>(false, any(var_2.d.zxw));
    global0 = array<Struct_2, 15>();
    var_3 = var_2.d.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, 265f) * vec2<f32>(-420f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(468f, -101f), vec2<f32>(1000f, 312f), vec2<bool>(false, true))), true)))))), ~120425u, -_wgslsmith_add_i32((i32(-1i) * -33395i) << (_wgslsmith_sub_u32(1u, u_input.d) % 32u), 2147483647i), vec4<i32>(~(u_input.b.x << (~1u % 32u)), _wgslsmith_mod_i32(firstLeadingBit(u_input.b.x) >> (~u_input.d % 32u), ~abs(u_input.b.x)), 63104i, u_input.a.x));
}

