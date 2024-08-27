struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(1184f, 20868i, Struct_1(27352i, 37207u), vec4<bool>(false, true, true, false), Struct_1(-23691i, 4294967295u)), Struct_2(1000f, i32(-2147483648), Struct_1(1i, 4294967295u), vec4<bool>(false, true, false, true), Struct_1(i32(-2147483648), 4294967295u)), vec3<i32>(1i, 2147483647i, 76919i));

var<private> global1: array<u32, 15> = array<u32, 15>(4294967295u, 26364u, 77593u, 28642u, 0u, 1u, 52116u, 1u, 0u, 1u, 29524u, 80536u, 2798u, 1u, 4294967295u);

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(0u, 0u), vec2<u32>(39142u, 85974u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(34086u, 1u), vec2<u32>(24352u, 4294967295u), vec2<u32>(1u, 65037u), vec2<u32>(1u, 29262u), vec2<u32>(1u, 1u), vec2<u32>(22896u, 100639u), vec2<u32>(4294967295u, 1u), vec2<u32>(14459u, 52252u), vec2<u32>(0u, 93818u), vec2<u32>(135869u, 87421u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(8839u, 9412u), vec2<u32>(16348u, 0u), vec2<u32>(0u, 64610u), vec2<u32>(0u, 0u), vec2<u32>(13775u, 0u), vec2<u32>(67732u, 24870u), vec2<u32>(8923u, 4294967295u), vec2<u32>(1u, 15852u), vec2<u32>(0u, 3868u), vec2<u32>(1u, 1u), vec2<u32>(9195u, 0u), vec2<u32>(0u, 54629u), vec2<u32>(1088u, 4294967295u), vec2<u32>(107541u, 0u));

var<private> global3: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.zzw, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-424f, var_0.a, -254f), vec3<f32>(307f, 244f, arg_0.a)))))), !select(vec3<bool>(false, true, arg_0.d.x), !global0.a.d.wzw, var_0.d.wyz))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_add_i32(firstTrailingBit(arg_0.e.a), 22375i), _wgslsmith_dot_vec4_u32(vec4<u32>(34539u, 4294967295u, global1[_wgslsmith_index_u32(arg_0.e.b, 15u)], global0.b.c.b) & vec4<u32>(global0.a.e.b, 0u, 4294967295u, 54534u), ~vec4<u32>(var_0.c.b, 50052u, 1u, global1[_wgslsmith_index_u32(68887u, 15u)])) >> (4294967295u % 32u)));
    let var_3 = -var_0.b < _wgslsmith_div_i32(var_0.c.a, global0.c.x);
    let var_4 = var_0;
    return _wgslsmith_clamp_i32(var_0.c.a, var_2.a.a, _wgslsmith_div_i32(-76905i, -arg_0.c.a) | var_0.b) & 2147483647i;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(~func_3(Struct_2(global3.x, 1i, Struct_1(global0.a.b, global0.a.c.b), vec4<bool>(global0.b.d.x, global0.b.d.x, global0.a.d.x, global0.b.d.x), Struct_1(u_input.d.x, global1[_wgslsmith_index_u32(107582u, 15u)])), vec4<bool>(global0.a.d.x, false, global0.b.d.x, global0.a.d.x), false, global0.c), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, -36455i), -43447i, u_input.b.x)), max(5313i, global0.b.e.a), func_3(global0.b, vec4<bool>(global0.b.d.x & global0.b.d.x, all(global0.b.d.zx), global0.a.d.x, true), global0.a.d.x && global0.b.d.x, global0.c), 58162i) & u_input.d;
    global0 = Struct_3(global0.b, global0.b, reverseBits(u_input.d.wxw));
    var var_1 = max(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, global1[_wgslsmith_index_u32(88631u, 15u)]), vec3<u32>(65189u, 28701u, 0u)) & ~max(vec3<u32>(25102u, 38163u, 11212u), vec3<u32>(global1[_wgslsmith_index_u32(9373u, 15u)], 29674u, arg_1)), vec3<u32>(arg_1 >> (9954u % 32u), 1u, global1[_wgslsmith_index_u32(global0.b.e.b, 15u)])) >> (vec3<u32>(global0.b.c.b, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b.c.b, firstTrailingBit(1u)), 15u)], _wgslsmith_clamp_u32(~4294967295u, arg_1, ~global1[_wgslsmith_index_u32(16998u, 15u)])), arg_1) % vec3<u32>(32u));
    var var_2 = ~vec2<u32>(~(~firstLeadingBit(56850u)), ~global0.a.e.b);
    let var_3 = abs(_wgslsmith_clamp_vec3_u32(reverseBits(~firstLeadingBit(vec3<u32>(arg_1, 0u, global1[_wgslsmith_index_u32(var_1.x, 15u)]))), ~select(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 15u)], 34301u, var_1.x)), ~vec3<u32>(27418u, 36104u, 49484u), !vec3<bool>(global0.a.d.x, global0.a.d.x, global0.a.d.x)), min(vec3<u32>(var_1.x, ~21714u, 15692u), vec3<u32>(countOneBits(global1[_wgslsmith_index_u32(26341u, 15u)]), select(0u, global1[_wgslsmith_index_u32(var_2.x, 15u)], true), var_2.x >> (global1[_wgslsmith_index_u32(39655u, 15u)] % 32u)))));
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global2 = array<vec2<u32>, 29>();
    let var_0 = arg_1;
    let var_1 = Struct_3(global0.a, func_2(global0.c & global0.c, _wgslsmith_mult_u32(15758u & ~var_0.c.b, global0.b.e.b)), -vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(-9452i, arg_1.b, global0.c.x)), var_0.c.a & (var_0.c.a | -1i), func_2(select(vec3<i32>(global0.a.e.a, 12617i, global0.c.x), global0.c, true), 0u >> (var_0.c.b % 32u)).c.a));
    var var_2 = true;
    return Struct_1(_wgslsmith_div_i32(0i, max(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_1.c, u_input.b), -2147483647i), -arg_1.e.a)), global0.a.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(841f, global0.c.x, func_1(true, Struct_2(global0.b.a, -1i, Struct_1(u_input.a, global0.b.e.b), global0.a.d, Struct_1(2147483647i, 0u))), global0.b.d, Struct_1(global0.c.x, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.a))), ~abs(firstTrailingBit(u_input.a)), func_1(global0.a.d.x, global0.b), func_2(countOneBits(abs(u_input.d.wwz)), 1u).d, global0.b.e), u_input.d.yzy);
    let var_1 = Struct_3(func_2(vec3<i32>(_wgslsmith_div_i32(0i ^ var_0.b.c.a, 359i), _wgslsmith_sub_i32(countOneBits(-1i), global0.b.b), select(global0.b.c.a, _wgslsmith_div_i32(u_input.a, -21496i), all(vec2<bool>(global0.b.d.x, true)))), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(4294967295u, 72677u, true), ~global1[_wgslsmith_index_u32(13478u, 15u)]), 29u)], ~select(global2[_wgslsmith_index_u32(1u, 29u)], vec2<u32>(35908u, 1u), true))), Struct_2(var_0.b.a, u_input.d.x, func_2(select(max(vec3<i32>(var_0.c.x, 10133i, 1i), vec3<i32>(-1i, 2147483647i, 48999i)), global0.c, func_2(vec3<i32>(1i, global0.c.x, var_0.c.x), 0u).d.x), abs(23744u)).e, func_2(global0.c, global0.a.c.b).d, Struct_1(select(global0.a.e.a, ~9404i, global0.b.d.x), 290u)), u_input.d.zyz);
    global1 = array<u32, 15>();
    var var_2 = global0.a.d.x;
    let var_3 = -45151i;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, 881f, global0.a.a, global0.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, 320f, global0.b.a, 206f) + vec4<f32>(global0.b.a, -158f, 224f, 265f)), true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, -160f, global0.b.a, global3.x))))))));
    var var_4 = Struct_1(~(-39455i), 4294967295u);
    var_4 = var_0.b.c;
    var var_5 = Struct_4(func_2(var_1.c, firstLeadingBit(func_2(vec3<i32>(u_input.b.x, var_4.a, 1639i), func_1(global0.b.d.x, var_1.b).b).e.b)).c);
    let x = u_input.a;
    s_output = StorageBuffer(global3.zyw, _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(972f, global3.x)), -296f), _wgslsmith_f_op_f32(-var_1.b.a), var_0.b.a, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.b.c.a, -func_3(var_1.a, var_0.b.d, true, global0.c)), 2147483647i, countOneBits(var_0.c.x)));
}

