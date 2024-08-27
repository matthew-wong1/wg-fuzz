struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 15> = array<u32, 15>(22337u, 0u, 0u, 0u, 6092u, 1399u, 0u, 14905u, 1u, 14524u, 15232u, 50192u, 38194u, 8672u, 2465u);

var<private> global3: Struct_3 = Struct_3(vec4<u32>(0u, 25557u, 4112u, 1u), 1u);

var<private> global4: array<i32, 21> = array<i32, 21>(60840i, 1i, -1i, 2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i, 11540i, -5780i, 1i, 9971i, -72998i, 0i, -22559i, 0i, i32(-2147483648), i32(-2147483648), -1i, 17088i, i32(-2147483648), 0i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = all(!select(select(select(vec3<bool>(true, true, arg_0.a.a), vec3<bool>(arg_0.b.a, true, true), arg_1.a), select(vec3<bool>(arg_0.a.a, arg_1.a, global0.x), vec3<bool>(true, arg_0.a.a, true), vec3<bool>(false, arg_0.a.a, arg_0.b.a)), select(vec3<bool>(true, arg_1.a, global0.x), vec3<bool>(global0.x, global0.x, false), arg_0.a.a)), vec3<bool>(!arg_1.a, false, all(vec3<bool>(false, true, true))), any(!vec4<bool>(false, true, true, arg_1.a))));
    global2 = array<u32, 15>();
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1225f + _wgslsmith_f_op_f32(floor(1053f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f - _wgslsmith_f_op_f32(max(-527f, 1052f))))), _wgslsmith_f_op_f32(min(220f, -1509f)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.d.x, global1.x), _wgslsmith_f_op_f32(sign(776f))))))));
    var var_1 = Struct_3(global3.a, min(~_wgslsmith_div_u32(~arg_0.e, ~4294967295u), 65923u));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2417f)), arg_0.d.x)) - vec2<f32>(_wgslsmith_f_op_f32(abs(102f)), -1808f)), arg_0.a.a);
    return vec3<i32>(max((firstLeadingBit(u_input.a.x) ^ ~34461i) ^ -(~(-1i)), -countOneBits(78566i)), -1i, ~(firstLeadingBit(1i) >> (abs(_wgslsmith_div_u32(0u, arg_0.e)) % 32u)));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = Struct_4(Struct_2(Struct_1(false), Struct_1(true), firstTrailingBit(func_3(Struct_2(Struct_1(global0.x), Struct_1(global0.x), vec3<i32>(-45885i, 2147483647i, -1i), vec4<f32>(global1.x, 944f, 1077f, global1.x), 25236u), Struct_1(false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, global1.x, global1.x, global1.x)))), global2[_wgslsmith_index_u32(arg_0.a.x, 15u)]));
    global2 = array<u32, 15>();
    let var_1 = Struct_2(Struct_1(true), var_0.a.b, -_wgslsmith_mult_vec3_i32(select(vec3<i32>(2147483647i, -1i, u_input.a.x), var_0.a.c, select(vec3<bool>(global0.x, var_0.a.a.a, true), vec3<bool>(global0.x, var_0.a.b.a, var_0.a.a.a), vec3<bool>(global0.x, var_0.a.b.a, global0.x))), abs(~var_0.a.c)), _wgslsmith_f_op_vec4_f32(select(var_0.a.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.a.d, vec4<f32>(global1.x, var_0.a.d.x, 934f, global1.x)))), !select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, var_0.a.a.a, true), vec4<bool>(var_0.a.a.a, true, global0.x, true)))), select(select(!vec4<bool>(var_0.a.a.a, false, var_0.a.a.a, false), select(vec4<bool>(var_0.a.b.a, var_0.a.a.a, false, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, var_0.a.b.a, true, var_0.a.a.a)), false), select(!vec4<bool>(var_0.a.b.a, true, true, false), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), !vec4<bool>(true, true, false, global0.x)), !(648f < global1.x)))), global2[_wgslsmith_index_u32(46248u, 15u)]);
    let var_2 = _wgslsmith_mult_u32(34607u, global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(abs(0u), 15u)], var_1.e), 15u)]);
    global1 = _wgslsmith_f_op_vec3_f32(select(var_1.d.wxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d.wxx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, 800f, var_1.d.x))))), !(!(!all(vec3<bool>(true, false, false))))));
    return !global0.x != true;
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -538f);
    var var_1 = ~u_input.a.x;
    let var_2 = !(!(!(!select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)))));
    let var_3 = !select(!vec3<bool>(true, true, func_2(Struct_3(vec4<u32>(global2[_wgslsmith_index_u32(global3.b, 15u)], 4294967295u, arg_0, 31642u), global2[_wgslsmith_index_u32(58444u, 15u)]))), !vec3<bool>(select(global0.x, false, false), select(global0.x, global0.x, false), !global0.x), false);
    global3 = Struct_3(vec4<u32>(48364u, ~1u, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~39579u, 15u)], 4594u), _wgslsmith_dot_vec3_u32(~global3.a.xyy, global3.a.zzy)), firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(global3.a.x, 34236u), global2[_wgslsmith_index_u32(global3.a.x, 15u)]), 15u)]));
    return -(vec4<i32>(max(35253i, 19548i), ~(global4[_wgslsmith_index_u32(56962u, 21u)] >> (global2[_wgslsmith_index_u32(global3.b, 15u)] % 32u)), 0i, (u_input.a.x | global4[_wgslsmith_index_u32(arg_0, 21u)]) >> (countOneBits(global2[_wgslsmith_index_u32(global3.a.x, 15u)]) % 32u)) << (global3.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-38199i, -2147483647i, global4[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<i32>(u_input.a.x, 0i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -70846i, u_input.a.x), vec4<i32>(global4[_wgslsmith_index_u32(global3.b, 21u)], -40907i, global4[_wgslsmith_index_u32(1u, 21u)], -2938i)), u_input.a.x, ~global4[_wgslsmith_index_u32(40339u, 21u)]), ~_wgslsmith_div_vec4_i32(vec4<i32>(28110i, 2147483647i, global4[_wgslsmith_index_u32(44237u, 21u)], global4[_wgslsmith_index_u32(global3.b, 21u)]), vec4<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 21u)], 37937i, u_input.a.x, global4[_wgslsmith_index_u32(global3.b, 21u)])), !(!vec4<bool>(true, false, global0.x, true))), func_1(~select(global3.a.x, 1u, false))), firstLeadingBit(vec4<i32>(-u_input.a.x, u_input.a.x ^ _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), func_3(Struct_2(Struct_1(true), Struct_1(global0.x), vec3<i32>(64352i, -54314i, 37075i), vec4<f32>(var_1.x, -1313f, 2284f, 1313f), global2[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_1(global0.x)).x, firstLeadingBit(u_input.a.x))));
    var_0 = -437f;
    global1 = vec3<f32>(var_1.x, -1157f, var_1.x);
    let var_3 = abs(7156i);
    var var_4 = Struct_1(true);
    let var_5 = -_wgslsmith_add_i32(func_1(~abs(global2[_wgslsmith_index_u32(0u, 15u)])).x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_2, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~83327u, 15u)], 21u)]) | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(37390i, var_5, 0i, var_2), vec4<i32>(-26957i, var_5, -1i, 46243i)), max(vec4<i32>(6180i, var_3, -47186i, global4[_wgslsmith_index_u32(global3.a.x, 21u)]), vec4<i32>(45455i, 7797i, var_3, -7574i))), 0i), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58996u, 15u)], 21u)], abs(1u) >> (~(4294967295u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global3.b, 15u)], 0u), 15u)], 15u)] % 32u)) % 32u), abs(max(global2[_wgslsmith_index_u32(abs(min(global2[_wgslsmith_index_u32(30390u, 15u)], global3.b)), 15u)], global3.a.x)));
}

