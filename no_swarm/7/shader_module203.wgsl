struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2;

var<private> global2: array<bool, 3> = array<bool, 3>(true, false, false);

var<private> global3: array<vec3<f32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool) -> vec3<i32> {
    global1 = Struct_2(arg_1.x, global1.c, global1.e, select(~u_input.a.zy, ~global1.c.a, global2[_wgslsmith_index_u32(127650u & ~min(u_input.a.x, u_input.a.x), 3u)]), global1.b);
    global0 = 0u;
    let var_0 = Struct_4(vec3<bool>(false, arg_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.b.x + global1.c.b.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x))));
    global0 = 50633u;
    var var_1 = var_0;
    return vec3<i32>(0i, _wgslsmith_clamp_i32(0i, ~(~global1.a), 16849i), -1i | arg_1.x);
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_i32(max(func_3(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec3<i32>(-18758i, global1.a, -2147483647i), true), countOneBits(vec3<i32>(2939i, global1.a, -2147483647i))) << (firstLeadingBit(u_input.a << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), -vec3<i32>(-18696i, ~(-60732i), global1.a)), global1.b, Struct_1(~min(~vec2<u32>(arg_0, 15971u), vec2<u32>(23017u, 5829u)), vec4<f32>(global1.c.b.x, -899f, global1.b.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-709f, -309f))))), ~_wgslsmith_add_vec2_u32(countOneBits(global1.c.a), min(_wgslsmith_add_vec2_u32(global1.b.a, vec2<u32>(u_input.a.x, global1.d.x)), ~vec2<u32>(1u, 0u))), global1.b);
    var var_1 = vec4<bool>(false, !global2[_wgslsmith_index_u32(var_0.b.a.x, 3u)], !(var_0.b.b.x >= global1.b.b.x) != all(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.e.a.x, 3u)], global2[_wgslsmith_index_u32(var_0.d.x, 3u)]))), any(!select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]), false), vec2<bool>(true, true))));
    let var_2 = Struct_4(var_1.zzx);
    var var_3 = max(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, _wgslsmith_add_u32(global1.b.a.x, 58u), var_0.c.a.x), abs(vec3<u32>(arg_0, arg_0, u_input.a.x))), u_input.a, min(select(u_input.a, vec3<u32>(4294967295u, global1.b.a.x, 1u), global2[_wgslsmith_index_u32(global1.b.a.x, 3u)]) ^ ~u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.a.x, 0u, global1.c.a.x), vec3<u32>(0u, 1u, 15307u), vec3<u32>(0u, arg_0, var_0.c.a.x)) | u_input.a)), u_input.a);
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~6947u, var_3.x, _wgslsmith_sub_u32(var_3.x, 58889u)), u_input.a.x & (0u & u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_3.x, u_input.a.x, 0u) << (u_input.a % vec3<u32>(32u))))), global1.e.a);
    return Struct_5(global1.c.b.x, _wgslsmith_mult_vec4_u32(vec4<u32>(~35661u, ~global1.e.a.x, ~4294967295u, 1u) >> (vec4<u32>(~var_0.e.a.x, global1.e.a.x, 62963u, _wgslsmith_div_u32(24461u, 1u)) % vec4<u32>(32u)), ~(countOneBits(vec4<u32>(58428u, global1.c.a.x, 1u, 1u)) | ~vec4<u32>(47814u, 13515u, 7845u, 4294967295u))), -2147483647i <= var_0.a, vec2<f32>(184f, global1.b.b.x), 24550u);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = 4294967295u;
    var var_1 = -564f;
    let var_2 = !select(vec2<bool>(false, _wgslsmith_f_op_f32(-arg_1.c.b.x) <= _wgslsmith_f_op_f32(sign(arg_2.x))), select(arg_3, vec2<bool>(false, arg_0.c), arg_3), arg_3);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -794f);
    let var_3 = Struct_3(global1.c.a.x, reverseBits(vec4<i32>(-1i, _wgslsmith_clamp_i32(arg_1.b.x, 41904i, global1.a), 1i, _wgslsmith_clamp_i32(arg_1.d, 0i, global1.a)) ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.a, global1.a, arg_1.d), arg_1.b))), Struct_1(vec2<u32>(_wgslsmith_div_u32(9361u, 1u), _wgslsmith_mult_u32(arg_1.a, global1.e.a.x)) ^ ~_wgslsmith_sub_vec2_u32(arg_1.c.a, global1.b.a), global1.b.b), 2147483647i);
    return true;
}

fn func_1() -> u32 {
    let var_0 = !(!(!vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 3u)], any(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(48485u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)])), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), global2[_wgslsmith_index_u32(~global1.c.a.x, 3u)])));
    var var_1 = global1.c;
    let var_2 = !vec3<bool>(var_0.x, func_4(func_2(~u_input.a.x), Struct_3(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), vec4<i32>(-18748i, -27162i, -34586i, global1.a), Struct_1(var_1.a, global1.b.b), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b.x, -415f))), !var_0.zy), true);
    let var_3 = abs(max(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a, global1.a, 10435i, 0i), vec4<i32>(global1.a, 61749i, global1.a, 15787i)), vec4<i32>(global1.a, global1.a, 44284i, global1.a) | vec4<i32>(60262i, global1.a, global1.a, 1i)) >> (vec4<u32>(4294967295u, 4114u, global1.e.a.x, 31439u) % vec4<u32>(32u)), -(vec4<i32>(global1.a, 0i, global1.a, global1.a) >> (~vec4<u32>(4294967295u, 76159u, 65375u, var_1.a.x) % vec4<u32>(32u)))));
    global0 = global1.b.a.x;
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1(), 1u, u_input.a.x | _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.a.x, global1.b.a.x, 1u), u_input.a) | ~32769u), 4294967295u);
    global2 = array<bool, 3>();
    var var_1 = u_input.a.x;
    let var_2 = ~vec3<u32>(~(~abs(40493u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.b.a, u_input.a.zx), var_0.zx), abs(~(1u & var_0.x)));
    global1 = Struct_2(countOneBits(~global1.a), Struct_1(_wgslsmith_sub_vec2_u32(global1.e.a, ~vec2<u32>(u_input.a.x, 0u)), global1.c.b), global1.e, _wgslsmith_mod_vec2_u32(var_2.zz >> (global1.e.a % vec2<u32>(32u)), ~var_0.yx), global1.c);
    let var_3 = true;
    let var_4 = ~(_wgslsmith_mod_i32(abs(global1.a), -47259i) | ~global1.a) >> (~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.e.a.x, var_0.x), vec2<u32>(0u, 4294967295u))) % 32u);
    var var_5 = _wgslsmith_add_i32(14038i, -global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(1u).d.x)), ~(~vec3<u32>(global1.b.a.x, 1u | global1.d.x, _wgslsmith_div_u32(70870u, 1u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.e.b.ywx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-651f, 1145f, -139f) - global3[_wgslsmith_index_u32(var_2.x, 25u)]), 4294967295u != var_2.x))))), -vec2<i32>(global1.a, _wgslsmith_add_i32(max(var_4, global1.a), 2147483647i)));
}

