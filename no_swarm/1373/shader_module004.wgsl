struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(1509u, 4294967295u, 0u), vec3<u32>(1256u, 43592u, 8606u), -315f), Struct_1(vec3<u32>(29439u, 39284u, 2728u), vec3<u32>(4294967295u, 4294967295u, 13308u), 1180f), 0i, 0u);

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(24413u, 42796u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), -891f), Struct_1(vec3<u32>(62199u, 1u, 1u), vec3<u32>(25920u, 1u, 3070u), -1080f), Struct_1(vec3<u32>(0u, 87119u, 0u), vec3<u32>(6122u, 20797u, 0u), -324f), Struct_1(vec3<u32>(0u, 106065u, 1u), vec3<u32>(1u, 66801u, 1u), 179f), Struct_1(vec3<u32>(53052u, 22638u, 4294967295u), vec3<u32>(6664u, 14820u, 0u), 890f), Struct_1(vec3<u32>(1u, 4294967295u, 49917u), vec3<u32>(0u, 5910u, 0u), 199f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 60868u, 56687u), -1598f), Struct_1(vec3<u32>(1u, 13421u, 0u), vec3<u32>(51128u, 17794u, 50852u), 625f));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(40365u, 4294967295u, 2453u), vec3<u32>(4294967295u, 0u, 0u), -219f), Struct_1(vec3<u32>(0u, 19594u, 46327u), vec3<u32>(4294967295u, 0u, 2765u), 493f), Struct_1(vec3<u32>(0u, 1u, 45087u), vec3<u32>(44158u, 22527u, 23881u), -1403f), Struct_1(vec3<u32>(53834u, 0u, 4294967295u), vec3<u32>(26237u, 29330u, 44104u), 175f), Struct_1(vec3<u32>(0u, 48573u, 14749u), vec3<u32>(0u, 0u, 0u), 1060f), Struct_1(vec3<u32>(4294967295u, 1u, 33039u), vec3<u32>(4294967295u, 1u, 0u), 978f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 17911u), vec3<u32>(32151u, 1u, 1u), -111f), Struct_1(vec3<u32>(56892u, 94160u, 7893u), vec3<u32>(4294967295u, 33041u, 26516u), -1846f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<Struct_1, 8>();
    global0 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 8740u), 8u)], global0.b, global0.c, _wgslsmith_clamp_u32(firstTrailingBit(global0.d), firstTrailingBit(_wgslsmith_mod_u32(64807u, u_input.a.x)) ^ global0.d, _wgslsmith_sub_u32(abs(12460u) >> (reverseBits(u_input.a.x) % 32u), firstTrailingBit(u_input.a.x))));
    return firstTrailingBit(u_input.a.x);
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = arg_0.a.a.zz;
    var var_1 = ~(~(~(global0.b.a.yy >> (global0.b.a.zz % vec2<u32>(32u))))) << (~(~arg_0.a.a.zx) % vec2<u32>(32u));
    return arg_0.b;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<u32> {
    global1 = array<Struct_2, 17>();
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(~u_input.a.x, 8u)], func_4(Struct_3(global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-global0.a.c)), 8u)], !vec4<bool>(true, false, arg_1, false))));
    let var_1 = Struct_3(global0.a, !var_0.b);
    let var_2 = ~(~min(_wgslsmith_div_vec2_i32(-vec2<i32>(global0.c, global0.c), vec2<i32>(global0.c, global0.c)), vec2<i32>(global0.c, _wgslsmith_sub_i32(18240i, global0.c))));
    global2 = array<Struct_1, 8>();
    return vec3<u32>(~u_input.a.x << (4294967295u % 32u), 0u, global0.d);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<i32>) -> vec3<u32> {
    global3 = array<Struct_1, 8>();
    global0 = Struct_2(Struct_1(arg_1, ~_wgslsmith_sub_vec3_u32(func_2(false, false), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(592f, _wgslsmith_f_op_f32(trunc(1480f)))), _wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(-global0.b.c)))), global0.b, global0.c, select(_wgslsmith_clamp_u32(14944u, arg_1.x, _wgslsmith_div_u32(0u, 4294967295u)), _wgslsmith_div_u32(1u, 62722u), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    global3 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(328f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c + global0.b.c)))))));
    global0 = global1[_wgslsmith_index_u32(countOneBits(~(1u | ~abs(arg_1.x))), 17u)];
    return abs(abs(~(~arg_1) >> (global0.b.b % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.c, -609f, 676f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1069f, global0.a.c, global0.a.c), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.c, 728f, global0.b.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, global0.a.c, global0.a.c)), global0.c >= _wgslsmith_mult_i32(1i, 2147483647i))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 768f, var_0.x, var_0.x))))) - vec4<f32>(var_0.x, global0.b.c, _wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.c, var_0.x)) + _wgslsmith_f_op_f32(-global0.a.c)))));
    var var_2 = global3[_wgslsmith_index_u32(global0.d, 8u)];
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a), global0.a.b), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(30981u, u_input.a.x, 9474u), vec3<u32>(var_2.a.x, 104240u, 12750u), ~vec3<u32>(1u, 52744u, 8848u)), select(global0.a.b, vec3<u32>(global0.b.a.x, 1u, 5712u), true)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-839f, var_0.x, false))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(88589u, global0.d, 96888u), global0.a.b), ~vec3<u32>(global0.b.b.x, 0u, 32875u)), _wgslsmith_clamp_i32(52164i, _wgslsmith_mult_i32(global0.c, 4951i), global0.c), vec2<i32>(global0.c, 1i))), _wgslsmith_f_op_f32(var_0.x * 1287f));
    var var_4 = ~(~((~vec4<u32>(global0.d, 14612u, global0.d, 10743u) ^ vec4<u32>(u_input.a.x, global0.d, 70063u, 70466u)) >> (~(~vec4<u32>(var_3.b.x, global0.b.b.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u))));
    var var_5 = Struct_3(Struct_1(vec3<u32>(54129u, var_3.b.x, firstLeadingBit(var_4.x) & ~36546u), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.a.x, 73578u, var_4.x), var_2.b, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(var_3.b.x, u_input.a.x, 37975u)))), var_2.c), vec4<bool>(any(vec2<bool>(true, true)), -(~2147483647i) < global0.c, false, all(vec2<bool>(true, true))));
    let var_6 = global2[_wgslsmith_index_u32(~global0.a.a.x, 8u)];
    let var_7 = false;
    var var_8 = vec4<u32>(abs(_wgslsmith_mult_u32(0u, global0.b.b.x) << (firstLeadingBit(max(global0.a.b.x, var_4.x)) % 32u)), var_2.a.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 35836u, var_6.b.x), vec4<u32>(4294967295u, u_input.a.x, 51729u, var_3.b.x) & vec4<u32>(45670u, u_input.a.x, 76370u, 1u)), 1u), ~1u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global0.c, global0.c, ~(-2147483647i)));
}

