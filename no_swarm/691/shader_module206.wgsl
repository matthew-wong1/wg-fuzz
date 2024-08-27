struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 2>;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1i, 2147483647i, 76115i), vec3<i32>(0i, -50043i, 5383i), vec3<i32>(-27569i, 79423i, -35632i), vec3<i32>(1i, 58715i, -21519i), vec3<i32>(0i, -1i, -31608i), vec3<i32>(1i, 0i, -8457i), vec3<i32>(33259i, -1i, 1841i), vec3<i32>(-66975i, 56338i, 2147483647i), vec3<i32>(-2983i, -19527i, 24243i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(32342i, 0i, 15987i), vec3<i32>(-51065i, 1i, 18100i), vec3<i32>(i32(-2147483648), 1i, -26982i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = vec4<bool>(select(arg_3.b.x, _wgslsmith_mod_u32(arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 46397u, 1u), vec3<u32>(arg_0.d, arg_3.c, 34725u))) == ~(~1u), arg_2.a.a), all(!vec4<bool>(true, false, !arg_2.a.a, any(arg_3.b))), !(!(~(-20701i) == _wgslsmith_clamp_i32(2147483647i, arg_2.c.x, arg_1.d.x))), true);
    return true;
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(func_3(Struct_2(vec2<i32>(u_input.a, 0i) & vec2<i32>(1438i, u_input.a), Struct_1(global0.a), Struct_1(false), u_input.b), global1[_wgslsmith_index_u32(~u_input.b << (65590u % 32u), 2u)], global1[_wgslsmith_index_u32(max(u_input.b & u_input.b, ~u_input.b), 2u)], Struct_3(4294967295u, !vec2<bool>(false, global0.a), 3264u, Struct_2(vec2<i32>(-37452i, -1i), Struct_1(global0.a), Struct_1(false), u_input.b), Struct_2(vec2<i32>(1i, 59355i), Struct_1(global0.a), Struct_1(global0.a), u_input.b))) & any(vec4<bool>(all(vec2<bool>(true, global0.a)), any(vec4<bool>(false, global0.a, global0.a, global0.a)), all(vec2<bool>(global0.a, global0.a)), false)));
    let var_0 = ~vec4<u32>(~min(u_input.b, 44432u), abs(reverseBits(~u_input.b)), u_input.b, ~0u);
    global2 = array<vec3<i32>, 13>();
    let var_1 = Struct_3(_wgslsmith_sub_u32(~61805u, var_0.x ^ firstTrailingBit(1u)), vec2<bool>(4294967295u != ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), var_0.wz), true), _wgslsmith_add_u32(select(~1u, var_0.x, true), 1u), Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(0i, u_input.a) ^ vec2<i32>(34476i, -1i), vec2<i32>(max(1i, -34003i), 0i)), Struct_1(!all(vec4<bool>(global0.a, global0.a, global0.a, false))), Struct_1(true), 4294967295u), Struct_2(reverseBits(vec2<i32>(u_input.a, -u_input.a)), Struct_1(true), Struct_1(global0.a), 1u));
    global2 = array<vec3<i32>, 13>();
    return ~select(~_wgslsmith_add_vec2_u32(var_0.zw, min(var_0.wy, var_0.yx)), vec2<u32>(3943u, var_0.x), global0.a);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<i32> {
    global2 = array<vec3<i32>, 13>();
    let var_0 = func_2();
    let var_1 = Struct_1(all(vec3<bool>(true, any(select(vec4<bool>(true, arg_2.a, global0.a, true), vec4<bool>(arg_2.a, true, false, global0.a), vec4<bool>(global0.a, global0.a, arg_2.a, arg_2.a))), u_input.b > (arg_1.x << (var_0.x % 32u)))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a ^ _wgslsmith_add_i32(u_input.a, 18541i), -_wgslsmith_mult_i32(u_input.a, 324i)), -max(u_input.a, u_input.a)), vec3<i32>(~(~u_input.a), abs(~(-u_input.a)), -(u_input.a >> (0u % 32u))));
    global1 = array<Struct_4, 2>();
    return vec4<i32>(reverseBits(u_input.a), ~(-var_2.x), var_2.x, ~(-1i));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    global1 = array<Struct_4, 2>();
    let var_0 = true;
    var var_1 = arg_3;
    let var_2 = Struct_2(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(-10216i, 16677i)), func_1(0u, vec4<u32>(49234u, 4294967295u, u_input.b, u_input.b), Struct_1(false)).zw | max(max(arg_2.xx, arg_2.xy), countOneBits(arg_2.wz))), Struct_1(!global0.a), Struct_1(true), u_input.b);
    var var_3 = var_2;
    return _wgslsmith_mod_u32(firstLeadingBit(u_input.b), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!any(select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, false, false, true), true))));
    let var_1 = ~u_input.b >> (func_4(select(!(!vec2<bool>(global0.a, global0.a)), vec2<bool>(any(vec4<bool>(global0.a, false, false, global0.a)), !global0.a), global0.a), !vec3<bool>(global0.a, all(vec2<bool>(global0.a, true)), select(true, global0.a, global0.a)), func_1(1u, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 25055u, 0u, u_input.b)), Struct_1(false)) >> (max(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), abs(vec4<u32>(0u, 276u, 27651u, 13667u))) % vec4<u32>(32u)), 1i) % 32u);
    var var_2 = all(select(select(vec3<bool>(global0.a || true, global0.a, u_input.b != u_input.b), !(!vec3<bool>(false, global0.a, true)), vec3<bool>(select(false, global0.a, global0.a), global0.a | true, global0.a)), vec3<bool>(all(!vec2<bool>(global0.a, false)), !(-2147483647i == u_input.a), global0.a), select(select(!vec3<bool>(global0.a, false, false), !vec3<bool>(false, global0.a, true), global0.a), !select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, global0.a, true)), select(!vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, false, true), vec3<bool>(global0.a, global0.a, true)), !vec3<bool>(true, global0.a, global0.a)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, 350f, -239f, -2638f)), vec4<f32>(_wgslsmith_f_op_f32(select(-1036f, 385f, global0.a)), 453f, 242f, -1000f), !select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(global0.a, false, true, global0.a), true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, 801f, 1000f, -1517f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1894f, 492f, -2064f, -190f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, 1176f, 1956f, 524f)), vec4<bool>(global0.a, all(vec3<bool>(true, true, false)), true, false))))), vec4<bool>(u_input.a < 1i, true, true, global0.a)));
    let var_4 = Struct_4(Struct_1(global0.a), max(_wgslsmith_clamp_i32(reverseBits(u_input.a & 0i), ~abs(30122i), -16010i), ~u_input.a), vec3<i32>(select(_wgslsmith_mult_i32(~u_input.a, -u_input.a), ~func_1(4294967295u, vec4<u32>(1u, 4294967295u, 0u, 1u), Struct_1(true)).x, !global0.a), -5495i, (i32(-1i) * -2147483647i) >> (func_4(vec2<bool>(true, true), !vec3<bool>(global0.a, true, global0.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), -29686i) % 32u)), -vec4<i32>(u_input.a, -1i, -15560i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.a), min(vec2<i32>(u_input.a, 63804i), vec2<i32>(33667i, 1i)))));
    var var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-227f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-621f, var_3.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~max(u_input.a, -53150i)), -1i, _wgslsmith_div_i32(-_wgslsmith_clamp_i32(u_input.a, 0i, var_4.c.x), firstTrailingBit(2147483647i) << (0u % 32u)), ~max(firstLeadingBit(u_input.a), firstLeadingBit(78863i))), var_3.yz, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(19694u, u_input.b) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 43301u), vec2<u32>(var_1, 6796u)) % vec2<u32>(32u)), vec2<u32>(1u, 70280u)), 26196u, ~(~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1303f, var_3.x, var_3.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1091f, -609f, -129f) - var_3.wwy)))), var_3.x);
}

