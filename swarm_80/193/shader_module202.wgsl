struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(1u, 1172f, 4294967295u, false), Struct_3(10103u, -1261f, 20788u, false), Struct_3(102734u, -668f, 1u, false), Struct_3(0u, 432f, 51810u, false), Struct_3(63456u, -836f, 4294967295u, false), Struct_3(0u, -555f, 46586u, false), Struct_3(1u, 321f, 4294967295u, false), Struct_3(4294967295u, 604f, 4294967295u, true), Struct_3(29893u, 412f, 4294967295u, false), Struct_3(24163u, -785f, 44255u, false), Struct_3(0u, -862f, 4294967295u, false), Struct_3(9600u, -884f, 0u, false));

var<private> global1: array<i32, 10> = array<i32, 10>(-14807i, 0i, -1i, -6834i, -10529i, 2147483647i, 1i, -48677i, -1954i, 2147483647i);

var<private> global2: vec4<u32>;

var<private> global3: array<bool, 21>;

var<private> global4: Struct_1 = Struct_1(947f, -838f, -26953i, vec3<i32>(-29317i, -11486i, 43587i), 43350u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    return global2.wy;
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(660f, 822f))), global4.a, _wgslsmith_f_op_f32(global4.a + global4.a), 886f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, 1800f, 333f, global4.b)))), Struct_1(global4.a, -847f, 1i, vec3<i32>(0i, 1i, 0i >> (_wgslsmith_clamp_u32(global4.e, 62740u, arg_0.x) % 32u)), reverseBits(_wgslsmith_dot_vec2_u32(global2.wy, arg_0.zz))));
    var var_1 = !select(vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), ~18060u), 21u)], !all(vec3<bool>(false, global3[_wgslsmith_index_u32(global2.x, 21u)], false))), vec2<bool>(any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(global2.x, 21u)], false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(24597u, 21u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(45089u, 21u)], global3[_wgslsmith_index_u32(global2.x, 21u)]))), false), !select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 21u)], false), select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 21u)]), vec2<bool>(false, true), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 21u)])), !global3[_wgslsmith_index_u32(15267u, 21u)]));
    let var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.yz, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 52674u), arg_0.zy), vec2<u32>(72928u, ~0u)), vec2<u32>(~(~0u), ~23980u));
    global4 = var_0.b;
    global2 = max(vec4<u32>(abs(func_2(false, vec4<i32>(u_input.a.x, -3590i, -59988i, 3591i), Struct_3(4294967295u, var_0.a.x, global2.x, true), global1[_wgslsmith_index_u32(70052u, 10u)]).x), global2.x, 19101u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2.yxz, vec3<u32>(0u, global2.x, arg_0.x)), vec3<u32>(12889u, 109245u, global4.e))) & abs(countOneBits(vec4<u32>(1u, var_2, 1u, global4.e))), ~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.x, 4294967295u, var_2), vec4<u32>(var_0.b.e, 0u, 4294967295u, var_2), vec4<u32>(34101u, 0u, 7166u, global4.e)), abs(vec4<u32>(42336u, 0u, global4.e, 4294967295u)), true)));
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(global2.x, 10u)];
    let var_1 = arg_2.a.wyy;
    let var_2 = func_3(vec3<u32>(~_wgslsmith_dot_vec2_u32(func_2(global3[_wgslsmith_index_u32(global2.x, 21u)], vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 20622i, -1i, arg_2.b.d.x), Struct_3(6333u, arg_2.b.b, 1u, true), arg_1.d.x), vec2<u32>(arg_1.e, 0u)), 1u, _wgslsmith_mod_u32(arg_2.b.e, select(func_2(true, vec4<i32>(arg_3.x, 0i, global1[_wgslsmith_index_u32(83804u, 10u)], -15788i), Struct_3(0u, var_1.x, 29795u, true), global1[_wgslsmith_index_u32(1u, 10u)]).x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u)), global3[_wgslsmith_index_u32(24394u, 21u)]))));
    global1 = array<i32, 10>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(-1580f)), global4.a, _wgslsmith_f_op_f32(min(494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1956f) + 819f)))));
    return select(_wgslsmith_dot_vec3_i32(select(vec3<i32>(24220i, arg_3.x, global4.c), abs(vec3<i32>(global4.d.x, global4.d.x, arg_1.c)), false), ~firstTrailingBit(vec3<i32>(arg_3.x, 39627i, 0i))), -2147483647i, true) << (40491u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(abs(0u));
    let var_1 = -(vec3<i32>(func_1(!global3[_wgslsmith_index_u32(global4.e, 21u)], Struct_1(-1234f, global4.a, 1i, vec3<i32>(-14834i, global4.c, 942i), global2.x), Struct_2(vec4<f32>(-1000f, global4.b, -1000f, -624f), Struct_1(820f, global4.b, u_input.a.x, global4.d, global2.x)), global4.d), ~(~(-32380i)), ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 10u)], -8644i)) | global4.d);
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    var var_2 = any(!(!(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 21u)], false, true)))));
    let var_3 = !(!vec3<bool>(global4.e >= global4.e, func_3(abs(global2.xyy)), any(vec3<bool>(global3[_wgslsmith_index_u32(57484u, 21u)], false, global3[_wgslsmith_index_u32(global4.e, 21u)]))));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.d, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, global4.e), global4.e, ~global2.x), _wgslsmith_div_u32(~108370u, global4.e)), global2.x, _wgslsmith_sub_u32(countOneBits(global2.x), 1799u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~global2.x, global2.x, 2732u), abs(global2.zxw)), vec3<u32>(select(global2.x, firstTrailingBit(global2.x), all(var_3)), 0u, global4.e | countOneBits(67855u)) & vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(109120u, global4.e)), global2.x, _wgslsmith_mult_u32(55624u, 51472u)));
}

