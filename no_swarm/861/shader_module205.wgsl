struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(-538f, -1933f, -317f);

var<private> global2: array<vec3<u32>, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> vec3<i32> {
    var var_0 = u_input.b;
    let var_1 = firstTrailingBit(~arg_0.a.b);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1172f)), arg_0.a.a.x, arg_2));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -448f), arg_1.a.x));
    var_0 = var_1.x;
    return ~(~vec3<i32>(-select(u_input.a, arg_0.a.b.x, arg_2), u_input.b, 5288i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    global2 = array<vec3<u32>, 28>();
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.x, -127f))))), vec2<f32>(arg_1.a.x, -680f)), ~_wgslsmith_sub_u32(arg_3.x, ~1689u) | _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(arg_3.xz, arg_3.yx), arg_3.x));
    let var_1 = Struct_3(vec3<bool>(true, arg_0.b.x, arg_0.c), select(!arg_0.b, vec4<bool>(true, true, any(select(arg_0.a.yy, arg_0.a.zz, arg_0.a.xy)), (0i >> (u_input.c % 32u)) >= func_3(Struct_2(arg_2, global2[_wgslsmith_index_u32(0u, 28u)], 60779u), Struct_4(var_0.a, u_input.c), false).x), !(!arg_0.b.x)), any(arg_0.b.zxz));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_mult_vec2_i32((countOneBits(vec2<i32>(2147483647i, 0i)) & arg_1.b.xz) ^ arg_2.b.zy, vec2<i32>(arg_2.d, -28411i));
    return _wgslsmith_sub_i32(1i, 42394i >> (var_0.b % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))), firstTrailingBit(vec3<i32>(max(u_input.a, 0i) << (~u_input.c % 32u), firstTrailingBit(0i), _wgslsmith_clamp_i32(u_input.a, 45354i, arg_1))), _wgslsmith_f_op_vec3_f32(-arg_0), func_4(Struct_3(vec3<bool>(false, 0u >= u_input.c, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), Struct_1(vec2<f32>(-274f, _wgslsmith_f_op_f32(1353f - arg_0.x)), func_3(Struct_2(Struct_1(vec2<f32>(940f, global1.x), vec3<i32>(8944i, 2147483647i, u_input.b), vec3<f32>(1180f, 2129f, -950f), -2147483647i), global2[_wgslsmith_index_u32(87028u, 28u)], 1u), Struct_4(arg_0.zx, 0u), select(false, true, false)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-318f, 1641f, arg_0.x))), ~0i), Struct_1(_wgslsmith_f_op_vec2_f32(global1.yz + _wgslsmith_f_op_vec2_f32(max(arg_0.yx, global1.xz))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, arg_1, -36481i), vec3<i32>(arg_1, u_input.a, arg_1), vec3<i32>(u_input.b, u_input.b, arg_1)), vec3<i32>(arg_1, arg_1, -3203i) ^ vec3<i32>(-50330i, -50880i, -35471i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(arg_0.x, -3727f, arg_0.x))), 18935i), global2[_wgslsmith_index_u32(0u, 28u)] >> (~firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 28u)]) % vec3<u32>(32u))));
    var var_1 = any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, false)) | false), vec3<bool>(~u_input.c <= _wgslsmith_mod_u32(u_input.c, u_input.c), true, true)));
    var var_2 = Struct_3(!vec3<bool>(true, _wgslsmith_mod_i32(var_0.b.x, arg_1) != var_0.b.x, false), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), any(vec4<bool>((u_input.c > 0u) || true, true, false, true)));
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(34088u, 1u), 28u)];
    var var_4 = ~global2[_wgslsmith_index_u32(u_input.c, 28u)] | global2[_wgslsmith_index_u32(u_input.c, 28u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx + vec2<f32>(_wgslsmith_f_op_f32(floor(513f)), 1261f))), -vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-1i, min(arg_1, 1i), -29725i), ~(-1i)), _wgslsmith_f_op_vec3_f32(-arg_0), -max(-8492i, -75807i));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_2(func_2(vec3<f32>(global1.x, global1.x, global1.x), 1i), ~abs(vec3<u32>(47873u, 0u, reverseBits(u_input.c))), 0u);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global1.x) - _wgslsmith_f_op_f32(max(global1.x, -1000f)))), var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.a.c.x)));
    let var_1 = -(u_input.b ^ u_input.b);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(252f + -1000f)) * 601f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -285f));
    global0 = global1.x;
    return !vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)) && false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(u_input.c | _wgslsmith_mod_u32(firstTrailingBit(u_input.c), ~1u), 1u);
    var_0 = u_input.c;
    var var_1 = select(select(vec3<bool>(1457u <= _wgslsmith_sub_u32(u_input.c, 8496u), true, true), vec3<bool>(true, true, true), !(4798i >= u_input.b)), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1())), !(1u <= u_input.c), !(!(9120u < u_input.c))), any(!vec2<bool>(true, any(vec4<bool>(true, false, true, false)))));
    let var_2 = (-2147483647i < u_input.a) | all(select(vec4<bool>(!var_1.x, all(var_1.yx), any(vec4<bool>(true, true, var_1.x, true)), 1u < u_input.c), !vec4<bool>(var_1.x, false, true, false), false));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-904f, -702f) + _wgslsmith_f_op_vec2_f32(global1.zx - vec2<f32>(global1.x, -235f))))), ~firstLeadingBit(1u));
    var var_4 = firstTrailingBit(~(~abs(vec3<u32>(11403u, u_input.c, 0u))));
    let var_5 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f - global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-682f, _wgslsmith_div_f32(-123f, _wgslsmith_f_op_f32(var_3.a.x + -475f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2(vec3<f32>(global1.x, var_3.a.x, 1189f), u_input.a).c.x), _wgslsmith_f_op_f32(global1.x * var_3.a.x), any(vec2<bool>(var_2, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-711f + 1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-151f * var_3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)), any(vec4<bool>(all(vec4<bool>(var_2, true, var_1.x, true)), true, true, select(false, false, var_1.x))))));
    var_4 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~global2[_wgslsmith_index_u32(max(26436u, 4294967295u), 28u)], _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(select(24854u, 0u, false), 28u)], global2[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)])), _wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(var_3.b, 28u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c), 28u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_5, _wgslsmith_f_op_vec4_f32(trunc(var_5)), select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, var_2, var_2, false), var_1.x), vec4<bool>(true, true, true, var_1.x), true))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_5) - var_5), var_5)), ~(~u_input.a), vec2<u32>(var_4.x, ~(~u_input.c)) >> ((vec2<u32>(min(4294967295u, var_3.b), _wgslsmith_dot_vec2_u32(vec2<u32>(34944u, 38586u), var_4.yy)) << (~(~vec2<u32>(0u, var_4.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(~1u, 4294967295u), ~_wgslsmith_mult_u32(var_4.x, 57481u)));
}

