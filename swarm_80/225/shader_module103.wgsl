struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, true, true, false, true, true, true, true, false, false);

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(7919u, 1u), vec2<u32>(0u, 61241u), vec2<u32>(4294967295u, 7487u), vec2<u32>(43392u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1682u), vec2<u32>(34655u, 33830u), vec2<u32>(24787u, 0u), vec2<u32>(4294967295u, 40440u), vec2<u32>(14624u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 20502u), vec2<u32>(72469u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 48549u), vec2<u32>(93837u, 4294967295u), vec2<u32>(40395u, 1u), vec2<u32>(12155u, 3777u), vec2<u32>(47660u, 0u), vec2<u32>(1u, 0u), vec2<u32>(29314u, 51265u), vec2<u32>(4294967295u, 0u), vec2<u32>(19255u, 11692u));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(73379u, 0u, 1u), -1539f);

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -46073i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    let var_0 = ~_wgslsmith_div_u32(4294967295u, 1u);
    let var_1 = any(!(!select(vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(var_0, 11u)], true, global1[_wgslsmith_index_u32(arg_0.x, 11u)], false), arg_3.x > arg_3.x)));
    return !any(vec4<bool>(true | (global3.b == 2030f), all(vec2<bool>(var_1, var_1)), true & all(vec2<bool>(true, true)), any(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], true, global1[_wgslsmith_index_u32(28663u, 11u)], false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, global1[_wgslsmith_index_u32(global3.a.x, 11u)], true, true)))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = abs(~countOneBits((vec4<u32>(arg_0, arg_2.b, arg_2.b, 4294967295u) << (vec4<u32>(arg_0, arg_0, 34359u, 4294967295u) % vec4<u32>(32u))) & abs(vec4<u32>(14792u, arg_2.b, 4294967295u, 35704u))));
    global3 = Struct_1(~global3.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(trunc(arg_1.x))))));
    global3 = Struct_1(~_wgslsmith_mod_vec3_u32(global3.a, countOneBits(vec3<u32>(4294967295u, 2007u, arg_2.b))), _wgslsmith_div_f32(-1000f, 609f));
    let var_1 = Struct_2(Struct_1(~(~vec3<u32>(1u, global3.a.x, 24614u)) | ~(~vec3<u32>(85312u, 13101u, global3.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_sub_vec3_u32(var_0.xzz, vec3<u32>(arg_2.b, 5447u, arg_0)) | select(global3.a, global3.a, select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, true), arg_2.c, vec3<bool>(true, true, false))), 2000f), 7159u);
    global0 = array<vec2<u32>, 9>();
    return select(select(vec2<bool>(false | arg_2.a, true), vec2<bool>(func_1(var_1.b.a, vec3<i32>(-1i, -14000i, 0i), ~u_input.d, _wgslsmith_div_vec3_i32(vec3<i32>(global4.x, global4.x, global4.x), vec3<i32>(-160i, u_input.c, 2147483647i))), global1[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(arg_2.d.x == true, false)), arg_2.c.zy, false);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = select(!func_3(0u << ((arg_1.x >> (arg_1.x % 32u)) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(abs(384f))), Struct_3(true, global3.a.x, !vec3<bool>(false, true, global1[_wgslsmith_index_u32(global3.a.x, 11u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(4537u, 11u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(17451u, 11u)], global1[_wgslsmith_index_u32(16014u, 11u)], global1[_wgslsmith_index_u32(global3.a.x, 11u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 11u)], global1[_wgslsmith_index_u32(arg_1.x, 11u)])))), func_3(~global3.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 795f, arg_0)))), Struct_3(true, 35255u, select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(26356u, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 11u)])), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(111194u, 11u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(global3.a.x, 11u)], false, global1[_wgslsmith_index_u32(arg_1.x, 11u)])), false), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 11u)], false, global1[_wgslsmith_index_u32(0u, 11u)]), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(65936u, 11u)]), global1[_wgslsmith_index_u32(~arg_1.x, 11u)]))), vec2<bool>(true, true));
    global0 = array<vec2<u32>, 9>();
    global1 = array<bool, 11>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(abs(global3.a), ~(~vec3<u32>(global3.a.x, global3.a.x, 4294967295u))), 827f), Struct_1(arg_1.xxz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-944f * -1000f))), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(global3.b, global3.b))))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(1u), 38272u ^ global3.a.x), 24u)], (global3.a.zx >> (global0[_wgslsmith_index_u32(global3.a.x, 9u)] % vec2<u32>(32u))) >> (~arg_1.xy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 48690u, global3.a.x), vec3<u32>(60590u, arg_1.x, global3.a.x)), ~arg_1.x), abs(vec2<u32>(arg_1.x, 105733u)), countOneBits(~global2[_wgslsmith_index_u32(global3.a.x, 24u)]))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1121f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, -1709f)) * vec2<f32>(493f, -805f)), all(select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(10405u, 11u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.a.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.x), vec4<bool>(var_0.x, false, true, true))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, global3.b, global1[_wgslsmith_index_u32(var_1.c, 11u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1.a.b)))))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(f32(-1f) * -1147f))), _wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(var_1.a.b * 527f)), true))));
    return ~global3.a.x << (abs(var_1.b.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(~vec3<u32>(global3.a.x, 1u, global3.a.x), abs(vec3<u32>(0u, global3.a.x, global3.a.x)) >> (vec3<u32>(8675u, global3.a.x, global3.a.x) % vec3<u32>(32u)), vec3<bool>(false && global1[_wgslsmith_index_u32(global3.a.x, 11u)], true, global1[_wgslsmith_index_u32(~global3.a.x, 11u)])), _wgslsmith_add_vec3_i32(abs(-vec3<i32>(global4.x, 0i, u_input.b)), vec3<i32>(global4.x, global4.x, global4.x & -1i)), _wgslsmith_sub_i32(u_input.a, -(i32(-1i) * -35414i)), ~vec3<i32>(-1i, 1i, u_input.a)) && any(!vec2<bool>(!global1[_wgslsmith_index_u32(global3.a.x, 11u)], true));
    var var_1 = 0i;
    global2 = array<vec2<u32>, 24>();
    global4 = firstTrailingBit(~vec3<i32>(_wgslsmith_sub_i32(-u_input.c, max(global4.x, -2147483647i)), u_input.a, -abs(u_input.b)));
    global1 = array<bool, 11>();
    let var_2 = Struct_3(false, ~max(_wgslsmith_sub_u32(103108u, firstTrailingBit(1u)), ~global3.a.x >> ((4294967295u << (global3.a.x % 32u)) % 32u)), !vec3<bool>(func_1(vec3<u32>(global3.a.x, global3.a.x, global3.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(41413i, 0i, -50955i), vec3<i32>(u_input.a, -5i, -1i)), 41947i, vec3<i32>(1i, global4.x, 28240i)), true, all(!vec2<bool>(global1[_wgslsmith_index_u32(56457u, 11u)], global1[_wgslsmith_index_u32(global3.a.x, 11u)]))), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(global3.a.x, 11u)], true, true))));
    let var_3 = Struct_1(~max(_wgslsmith_mod_vec3_u32(~global3.a, _wgslsmith_add_vec3_u32(global3.a, vec3<u32>(global3.a.x, var_2.b, global3.a.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_2.b, 34305u), vec3<u32>(4294967295u, 8008u, 39135u) ^ global3.a)), global3.b);
    global1 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~(~80705u), 1u, _wgslsmith_mod_u32(var_2.b, var_3.a.x), func_2(-1000f, vec4<u32>(var_2.b, 5831u, var_2.b, 4294967295u)))), vec3<i32>(firstTrailingBit(reverseBits(u_input.c << (56628u % 32u))), -20816i, ~u_input.d), 19461u, vec3<i32>(~(-1i), 2147483647i, -67772i), ~min(~vec4<u32>(var_3.a.x, var_3.a.x, 0u, 70249u), _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.a.x, var_2.b, var_2.b, 3320u), vec4<u32>(4294967295u, 1u, var_2.b, var_3.a.x) ^ vec4<u32>(var_3.a.x, 4294967295u, 42368u, 1u))));
}

