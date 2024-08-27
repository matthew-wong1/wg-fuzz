struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_mult_vec3_u32(abs(arg_0.e) ^ arg_0.e, ~_wgslsmith_mod_vec3_u32(vec3<u32>(21848u, 1u, arg_0.e.x), vec3<u32>(4294967295u, 72598u, arg_0.e.x)))), _wgslsmith_add_vec3_u32(arg_0.e, _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_0.e, arg_0.e), ~arg_0.e)));
    var var_1 = ~firstTrailingBit(vec3<i32>(firstTrailingBit(i32(-1i) * -2147483647i), 60138i, countOneBits(_wgslsmith_clamp_i32(-22428i, 1i, 2147483647i))));
    var var_2 = -27710i;
    global0 = array<vec2<bool>, 24>();
    var var_3 = -2147483647i;
    return global0[_wgslsmith_index_u32(4294967295u, 24u)];
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 24>();
    var var_0 = -(vec4<i32>(-1i) * -vec4<i32>(-u_input.a, abs(-363i), 24518i, u_input.a));
    let var_1 = 0u >> (~u_input.b.x % 32u);
    var var_2 = vec3<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, ~var_1));
    global1 = array<vec4<u32>, 18>();
    return Struct_1(select(select(!func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 24u)], vec4<bool>(false, false, false, true), vec3<f32>(278f, -1000f, -199f), vec4<i32>(4884i, -35576i, 0i, 1i), u_input.b)), global0[_wgslsmith_index_u32(firstTrailingBit(~var_2.x), 24u)], vec2<bool>(true, select(true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), func_3(Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, false, true), vec3<f32>(466f, -273f, 1565f), vec4<i32>(var_0.x, 1i, -33765i, 0i), vec3<u32>(46111u, 0u, 0u))), false), vec2<bool>(true, true)), select(global0[_wgslsmith_index_u32(68547u, 24u)], func_3(Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, false), vec3<f32>(1567f, -562f, 133f), vec4<i32>(37634i, global2.x, global2.x, u_input.a), vec3<u32>(var_2.x, 4294967295u, 1u))), global0[_wgslsmith_index_u32(~4294967295u, 24u)])), vec4<bool>(29329i > u_input.a, all(vec3<bool>(true, true, true)), !(!any(global0[_wgslsmith_index_u32(4294967295u, 24u)])), false | any(select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(580f, -1000f, 604f) + vec3<f32>(-548f, 458f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 1777f, 1317f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 833f, 1398f))))))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a << (var_2.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 23560i, 2147483647i, -2147483647i), vec4<i32>(19906i, 2147483647i, 1i, 2147483647i)), select(var_0.x, var_0.x, false), -4414i)), ~_wgslsmith_add_vec4_i32(max(vec4<i32>(-1i, 1i, 0i, 1i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), vec4<i32>(u_input.a, 1i, -2147483647i, -11053i)), vec4<i32>(countOneBits(1i), firstTrailingBit(-43258i >> (var_1 % 32u)), firstLeadingBit(_wgslsmith_add_i32(10811i, 11974i)), global2.x)), _wgslsmith_add_vec3_u32(~abs(firstTrailingBit(vec3<u32>(var_2.x, var_1, 1u))), ~vec3<u32>(~var_1, firstLeadingBit(66512u), 63899u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = func_2();
    global2 = countOneBits(-vec3<i32>(global2.x, -global2.x, u_input.a) << (arg_2.e % vec3<u32>(32u)));
    global2 = ~abs(var_0.d.xxy) ^ ~(vec3<i32>(-1i) * -var_0.d.zzx);
    var var_1 = !vec2<bool>(!(!all(var_0.b.yxy)), arg_2.a.x && arg_2.b.x);
    var var_2 = -global2.zz;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 18>();
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, -351f) - vec2<f32>(-298f, 515f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, -830f) * vec2<f32>(-351f, -1220f))), global0[_wgslsmith_index_u32(~u_input.b.x, 24u)]))), ~4294967295u, Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec4<bool>(false, true, true, select(true, true, -1i < u_input.a)), vec3<f32>(-581f, 141f, -442f), ~(vec4<i32>(21013i, u_input.a, global2.x, u_input.a) ^ -vec4<i32>(1i, -1363i, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 5125u, u_input.b.x), ~u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1459f, 1197f, true))) * 1f), -836f));
    var var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    var var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>((68392u | var_0.e.x) & select(0u, u_input.b.x, false), ~_wgslsmith_sub_u32(var_0.e.x, u_input.b.x), ~_wgslsmith_mult_u32(var_0.e.x, 30283u)), ~_wgslsmith_sub_vec3_u32(max(_wgslsmith_add_vec3_u32(var_0.e, vec3<u32>(u_input.b.x, 1u, 38132u)), u_input.b), _wgslsmith_div_vec3_u32(var_0.e, vec3<u32>(u_input.b.x, u_input.b.x, 64478u))));
    let var_3 = var_0.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 66879u), vec2<u32>(0u, 24487u)), 18u)], global1[_wgslsmith_index_u32(select(var_2.x, var_2.x, true), 18u)])), ~firstLeadingBit(var_0.e.x << (33586u % 32u)), _wgslsmith_mult_u32(var_0.e.x, 1u) >> (func_2().e.x % 32u)), var_0.c.x, ~4294967295u, _wgslsmith_div_u32(var_0.e.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], firstLeadingBit(global1[_wgslsmith_index_u32(var_0.e.x, 18u)])), ~var_2.x)), select(_wgslsmith_dot_vec2_u32(func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, var_3.x))), ~4294967295u, Struct_1(vec2<bool>(var_0.b.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec3<f32>(904f, var_0.c.x, -838f), var_0.d, vec3<u32>(u_input.b.x, 1130u, var_2.x)), -735f).e.zx, func_2().e.yy), _wgslsmith_mult_u32(~1u, var_0.e.x), !var_0.a.x));
}

