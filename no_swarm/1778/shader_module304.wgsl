struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 25>;

var<private> global3: u32;

var<private> global4: array<vec3<f32>, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    global4 = array<vec3<f32>, 31>();
    var var_0 = ~0i;
    global4 = array<vec3<f32>, 31>();
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(0u), 11u)];
    var var_2 = var_1.c;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u ^ var_1.e.x, _wgslsmith_sub_u32(countOneBits(reverseBits(4294967295u) | _wgslsmith_clamp_u32(global1.e.x, 13696u, var_1.e.x)), ~57826u)), 11u)];
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = select(func_2().d.yzz, vec3<bool>(!var_0.d.x, true, false), select(vec3<bool>(global1.d.x, true, arg_0.d.x && true), var_0.d.zyx, var_0.d.wwx));
    let var_2 = func_2();
    let var_3 = vec4<u32>(4294967295u, 77390u, ~countOneBits(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.e.x, var_2.e.x, 1707u), vec4<u32>(var_2.e.x, u_input.c, arg_0.e.x, 4711u)), _wgslsmith_clamp_u32(u_input.c, 4294967295u, var_0.e.x))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~countOneBits(arg_0.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.e.x, 0u, arg_0.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 1u, var_2.e.x), vec4<u32>(45131u, 1u, 25810u, 1u)))), 0u >> ((global1.e.x << (12230u % 32u)) % 32u)));
    var var_4 = select(vec2<u32>(min(71564u, arg_0.e.x) << (0u % 32u), ~17357u) & vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u) >> (var_3.xz % vec2<u32>(32u)), vec2<bool>(var_0.d.x, var_2.d.x));
    return ~(~select(_wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(arg_0.c, u_input.b)) >> ((arg_0.e.xz << (vec2<u32>(46569u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(var_0.b.x, 0i), vec2<bool>(var_2.d.x != var_0.d.x, false)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(~31856u, 11u)];
    global2 = array<vec2<bool>, 25>();
    global2 = array<vec2<bool>, 25>();
    var var_1 = func_2();
    global3 = var_1.e.x;
    return -vec2<i32>(-1i, arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = func_2();
    global1 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), func_4(Struct_1(-1435f, var_0.b, -1i, !vec4<bool>(true, var_0.d.x, false, false), firstLeadingBit(arg_0.e)), ~_wgslsmith_sub_u32(21865u, var_0.e.x << (global1.e.x % 32u)), Struct_1(-383f, _wgslsmith_mult_vec2_i32(func_3(global0[_wgslsmith_index_u32(arg_0.e.x, 11u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, 1i), vec2<i32>(arg_2, u_input.b))), -41237i, select(arg_0.d, func_2().d, arg_0.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(60170u, 4294967295u, global1.e.x), vec3<u32>(var_0.e.x, arg_0.e.x, var_0.e.x) >> (vec3<u32>(global1.e.x, 88255u, arg_1) % vec3<u32>(32u))))), 60631i, select(var_0.d, vec4<bool>(any(arg_0.d.ww) | select(var_0.d.x, global1.d.x, true), !var_0.d.x, !(false & arg_0.d.x), false), (true & (arg_1 != arg_3)) != select(global1.d.x, true, any(vec3<bool>(var_0.d.x, var_0.d.x, false)))), arg_0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(select(global1.a, 816f, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(trunc(arg_0.a))))), reverseBits(vec2<i32>(-2239i >> (var_0.e.x % 32u), u_input.b) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.e.x), vec2<u32>(arg_0.e.x, var_0.e.x)) << (vec2<u32>(u_input.c, arg_3) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0.b.x >> (firstLeadingBit(arg_1) % 32u), vec4<bool>(!any(vec2<bool>(true, false)), !func_2().d.x, true, !(!arg_0.d.x && any(vec2<bool>(var_0.d.x, var_1.d.x)))), _wgslsmith_sub_vec3_u32(var_0.e, var_1.e));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, 676f, _wgslsmith_f_op_f32(var_2.a * 568f), global1.a))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, -736f, func_2().a, 1000f))));
    return _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, 26943u, u_input.c, arg_1))), ~(min(vec4<u32>(var_0.e.x, 51186u, arg_3, var_2.e.x), vec4<u32>(arg_0.e.x, 18550u, 0u, global1.e.x)) ^ ~vec4<u32>(26376u, 1u, 18427u, 1u)) | _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(29757u, 1u, arg_1, 12642u), ~vec4<u32>(28344u, 69882u, 1u, 0u), var_0.d), vec4<u32>(28470u, arg_0.e.x, 1u, u_input.c) ^ (vec4<u32>(var_1.e.x, 3829u, 16587u, global1.e.x) ^ vec4<u32>(global1.e.x, 17669u, 4294967295u, global1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~_wgslsmith_dot_vec2_u32(global1.e.zx, vec2<u32>(~global1.e.x, func_1(global0[_wgslsmith_index_u32(33360u, 11u)], global1.e.x, 1i, 15653u))));
    global2 = array<vec2<bool>, 25>();
    global0 = array<Struct_1, 11>();
    global2 = array<vec2<bool>, 25>();
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_1(1f, global1.b, select(_wgslsmith_clamp_i32(-max(-3523i, u_input.b), _wgslsmith_sub_i32(1i, 2147483647i) << (global1.e.x % 32u), global1.c), global1.c, global1.d.x), !global1.d, min(max(vec3<u32>(1u & u_input.a, _wgslsmith_mult_u32(global1.e.x, 4294967295u), 4294967295u), vec3<u32>(func_1(Struct_1(-630f, vec2<i32>(u_input.b, -2147483647i), global1.c, global1.d, global1.e), 6751u, -8831i, u_input.a), global1.e.x, select(global1.e.x, u_input.c, false))), _wgslsmith_add_vec3_u32((vec3<u32>(u_input.a, u_input.c, 14191u) >> (vec3<u32>(u_input.a, u_input.a, u_input.c) % vec3<u32>(32u))) >> (global1.e % vec3<u32>(32u)), vec3<u32>(global1.e.x, u_input.a, 1u))));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<i32>(4485i, var_1.b.x, 24199i, 56531i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(57662i, u_input.b, var_1.b.x, var_1.b.x) << (vec4<u32>(20779u, global1.e.x, var_1.e.x, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<i32>(var_1.c, -45760i, var_1.b.x, var_0.c)))), abs(1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)), _wgslsmith_f_op_f32(261f - 1245f), _wgslsmith_f_op_f32(-global1.a), -1647f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1070f, global1.a, var_1.a)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, -583f, -395f, var_0.a))))))), !all(global1.d.zwy))), var_1.e.x, _wgslsmith_f_op_f32(abs(var_0.a)));
}

