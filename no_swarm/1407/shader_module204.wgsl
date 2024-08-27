struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32>;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 15>;

var<private> global4: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(10075u, 4294967295u), vec2<u32>(0u, 41906u), vec2<u32>(1381u, 34337u), vec2<u32>(4294967295u, 48055u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 15u)]))))));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 80233u, 23216u, u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 53319u, u_input.a), vec4<u32>(27000u, 4294967295u, 0u, 1u)), min(vec4<u32>(30925u, u_input.a, 74252u, u_input.a), vec4<u32>(global1.x, 0u, global1.x, global1.x)) << (vec4<u32>(33454u, u_input.a, 4294967295u, global1.x) % vec4<u32>(32u))), abs(select(countOneBits(vec4<u32>(11500u, u_input.a, u_input.a, global1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 49103u, u_input.a, u_input.a), vec4<u32>(global1.x, 43468u, u_input.a, 5530u)), !vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, global2.x)))), ~(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<u32>(4294967295u, global1.x, 36930u, 4294967295u), vec4<u32>(global1.x, global1.x, 0u, u_input.a)), vec4<u32>(global1.x, global1.x, global1.x, u_input.a), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, arg_1.a.b.x, arg_1.a.b.x, true), vec4<bool>(true, global2.x, false, true))) ^ ~countOneBits(vec4<u32>(global1.x, 22053u, 0u, 4294967295u))));
    let var_2 = Struct_5(Struct_1(arg_1.a.b, _wgslsmith_f_op_vec3_f32(max(arg_0.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 15u)], var_0, -1753f), vec3<f32>(134f, arg_0.x, 1361f))))), _wgslsmith_f_op_f32(step(266f, arg_0.x)), arg_1.a.b.x));
    let var_3 = Struct_3(Struct_2(~(~_wgslsmith_clamp_i32(arg_1.a.a, 20934i, arg_1.a.a)), select(vec3<bool>(true, true, true), !arg_1.a.b, true & (0i <= arg_1.b)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~4716u, 15u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(arg_1.a.a, arg_1.a.a, -2147483647i), 1i), vec2<i32>(arg_1.a.a, -arg_1.b)));
    global1 = _wgslsmith_mult_vec3_u32(~firstLeadingBit(reverseBits(abs(vec3<u32>(26046u, var_1, 0u)))), ~abs(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global1.x, var_1, 21722u)), ~vec3<u32>(u_input.a, 4294967295u, 1u))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: Struct_1) -> bool {
    var var_0 = countOneBits(12732i) >> (abs(~countOneBits(abs(u_input.a))) % 32u);
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(_wgslsmith_mod_u32(func_3(vec4<f32>(133f, global3[_wgslsmith_index_u32(arg_0.a.x, 15u)], -1113f, 231f), Struct_3(Struct_2(-14490i, arg_3.a, arg_3.b.x), -19846i)), ~46848u), 80641u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(30945u, arg_0.a.x)) >> (25385u % 32u)) % vec3<u32>(32u)), vec3<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(-22177i, 48912i, 2147483647i, 1i), vec4<i32>(-2147483647i, -36733i, 1i, 0i)) | 1i) ^ reverseBits(1i), ~(-2147483647i), -1i));
    var var_2 = vec4<bool>(arg_3.a.x, abs(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 123f, arg_2.a.c, arg_1)), Struct_3(Struct_2(var_1.x, arg_3.a, global3[_wgslsmith_index_u32(4294967295u, 15u)]), -1i))) < select(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 4u)], vec2<u32>(37213u, 0u)) << (~4294967295u % 32u), arg_0.a.x >> (global1.x % 32u), !(arg_2.a.d || true)), true, all(arg_3.a.zx) & (-_wgslsmith_mult_i32(var_1.x, var_1.x) != 1i));
    let var_3 = any(select(!select(!arg_2.a.a.xz, vec2<bool>(true, false), true), arg_3.a.yz, arg_2.a.a.zz));
    var var_4 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x >> (0u % 32u), -(~var_1.x), _wgslsmith_mult_i32(var_1.x & var_1.x, var_1.x), -var_1.x ^ countOneBits(59334i)), vec4<i32>(-(-18152i >> (global1.x % 32u)), 11322i, i32(-1i) * -13410i, -19626i)));
    return _wgslsmith_mult_u32(arg_0.a.x ^ func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.b.x, -693f, arg_2.a.b.x, -1186f), vec4<f32>(-481f, 858f, arg_1, arg_2.a.c)), Struct_3(Struct_2(1i, arg_3.a, -1166f), var_4.x)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1812f, 700f, arg_3.c, -1000f), vec4<f32>(arg_2.a.c, global3[_wgslsmith_index_u32(arg_0.a.x, 15u)], -563f, 863f))), Struct_3(Struct_2(var_4.x, vec3<bool>(arg_2.a.d, var_2.x, false), -1184f), ~53260i))) < reverseBits(_wgslsmith_sub_u32(~arg_0.a.x, arg_0.a.x) << (~(0u << (0u % 32u)) % 32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(arg_0), arg_2.yxw);
    let var_1 = Struct_1(vec3<bool>(!(!func_2(Struct_4(vec4<u32>(0u, arg_0.x, arg_2.x, var_0.x)), global3[_wgslsmith_index_u32(arg_0.x, 15u)], Struct_5(Struct_1(vec3<bool>(global2.x, true, global2.x), vec3<f32>(328f, global3[_wgslsmith_index_u32(28141u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), arg_1.x, global2.x)), Struct_1(vec3<bool>(global2.x, global2.x, true), arg_1.xzw, global3[_wgslsmith_index_u32(4294967295u, 15u)], global2.x))), global2.x, global2.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.wyy))), global3[_wgslsmith_index_u32(20335u, 15u)], 1i > (_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i) << (~max(u_input.a, 3858u) % 32u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(u_input.a, global1.x, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 15u)], -152f, -585f, 935f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 15u)], -2070f, -1565f, global3[_wgslsmith_index_u32(1u, 15u)]))), ~abs(vec4<u32>(56775u, 13491u, global1.x, 74644u)))))));
    global3 = array<f32, 15>();
    var var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(reverseBits(~(-2147483647i)), max(-27731i, 36634i) | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<i32>(-1i, 16815i, 12861i, 27132i))), vec2<i32>(1i, 1i));
    let var_2 = true;
    global3 = array<f32, 15>();
    let var_3 = select(vec4<i32>(_wgslsmith_div_i32(-1i, reverseBits(-1i)), 0i, select(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, var_1.x, 0i), vec3<i32>(1i, var_1.x, 2147483647i)), var_1.x, ~51797u != u_input.a), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 4931i, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, -45773i, var_1.x))), vec4<i32>(countOneBits(720i), ~var_1.x, _wgslsmith_sub_i32(3532i, var_1.x), firstTrailingBit(var_1.x)))), (vec4<i32>(-1i) * -(vec4<i32>(-1i, var_1.x, 1i, var_1.x) & vec4<i32>(-37i, 0i, var_1.x, 0i))) ^ vec4<i32>(-var_1.x, var_1.x, i32(-1i) * -26401i, var_1.x), !(~(~u_input.a) > u_input.a));
    var var_4 = Struct_2((var_1.x >> (_wgslsmith_mult_u32(global1.x, global1.x & global1.x) % 32u)) ^ _wgslsmith_clamp_i32(var_1.x | -16231i, 24513i, abs(~1i)), select(vec3<bool>(true, true, any(global2.xz)), !vec3<bool>(true, all(vec4<bool>(true, global2.x, var_2, var_2)), false), var_2), global3[_wgslsmith_index_u32(~u_input.a, 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(563f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x), global4[_wgslsmith_index_u32(~422u, 4u)]), ~abs(~1u)), _wgslsmith_f_op_f32(-var_0.x), ~(u_input.a | ~(~u_input.a)));
}

