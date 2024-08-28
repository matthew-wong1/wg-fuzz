struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<i32, 27> = array<i32, 27>(-1i, -10523i, 0i, 11203i, 45372i, 2147483647i, i32(-2147483648), i32(-2147483648), -1i, 1i, -4896i, -1i, -1i, 2147483647i, 26189i, -1i, -21192i, -14955i, 1i, i32(-2147483648), -16673i, 25413i, 7994i, 1i, 2147483647i, 1i, 81545i);

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_add_i32(-2147483647i, abs(reverseBits(_wgslsmith_clamp_i32(u_input.a, -1i, -6611i))));
    var var_1 = Struct_1(select(select(select(vec2<bool>(false, global1.x), !global1.zz, true), vec2<bool>(true, arg_2), (global2[_wgslsmith_index_u32(arg_0.x, 27u)] ^ 60502i) < u_input.a), vec2<bool>(true, true), select(true, !(global1.x || false), false)), ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, 1320f, -475f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1140f, -1551f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(773f, 1000f, 1319f) - vec3<f32>(1424f, 979f, -617f)))))), -1i, vec4<bool>(true, false, true, true | !(true & arg_1.x)));
    var var_2 = var_1.d;
    var_2 = reverseBits(~_wgslsmith_clamp_i32(-10074i, u_input.a, var_1.d));
    var var_3 = select(~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d, u_input.a, -2065i), vec3<i32>(global2[_wgslsmith_index_u32(95447u, 27u)], global2[_wgslsmith_index_u32(arg_0.x, 27u)], -1i)), vec3<i32>(-1i, u_input.a, u_input.a)), -(vec3<i32>(u_input.a, -1i, var_1.d) << (arg_0 % vec3<u32>(32u)))), -abs(select(firstLeadingBit(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_1.b, 27u)], 2098i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_1.b, 27u)], u_input.a, var_1.d), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(var_1.b, 27u)], -51564i), vec3<i32>(u_input.a, 14174i, 2147483647i)), vec3<bool>(var_1.a.x, global1.x, global1.x))), vec3<bool>(true, !arg_1.x, all(!select(var_1.e, arg_1, arg_1))));
    return vec3<i32>(-_wgslsmith_mult_i32(~reverseBits(18765i), 7136i << (abs(arg_0.x) % 32u)), global2[_wgslsmith_index_u32(var_1.b, 27u)], _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_1.b, 27u)], u_input.a), global2[_wgslsmith_index_u32(var_1.b, 27u)] & _wgslsmith_mod_i32(var_3.x, var_1.d), _wgslsmith_mod_i32(~(-1i), 46856i)), -(reverseBits(vec4<i32>(0i, 23686i, var_3.x, 0i)) ^ select(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x, 27u)], var_1.d, global2[_wgslsmith_index_u32(var_1.b, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec4<i32>(2147483647i, u_input.a, var_1.d, var_1.d), global1.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = ~abs((abs(global2[_wgslsmith_index_u32(arg_1.b, 27u)]) << (_wgslsmith_mult_u32(arg_1.b, 0u) % 32u)) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, arg_1.d, global2[_wgslsmith_index_u32(arg_1.b, 27u)], arg_1.d), vec4<i32>(global2[_wgslsmith_index_u32(1u, 27u)], u_input.a, global2[_wgslsmith_index_u32(13707u, 27u)], -9796i), true), -vec4<i32>(0i, 30205i, 7956i, u_input.a)));
    var var_0 = arg_1;
    let var_1 = vec2<i32>(-12531i, arg_1.d);
    let var_2 = !global1.yy;
    let var_3 = countOneBits(_wgslsmith_clamp_vec3_i32(~select(vec3<i32>(-2147483647i, var_0.d, -7554i), vec3<i32>(var_1.x, -2147483647i, global2[_wgslsmith_index_u32(var_0.b, 27u)]), var_0.a.x), -func_3(vec3<u32>(941u, var_0.b, arg_1.b), var_0.e, var_0.e.x), select(-vec3<i32>(-1i, var_1.x, arg_1.d), vec3<i32>(var_1.x, -2147483647i, global2[_wgslsmith_index_u32(17145u, 27u)]), false))) | (abs(-vec3<i32>(global2[_wgslsmith_index_u32(var_0.b, 27u)], arg_1.d, global2[_wgslsmith_index_u32(11160u, 27u)])) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.b, 5365u), var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 27278u, 2496u), vec3<u32>(0u, 43194u, var_0.b))), ~(vec3<u32>(arg_1.b, 53766u, arg_1.b) ^ vec3<u32>(15833u, 7289u, 84217u))) % vec3<u32>(32u)));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-244f, 172f, 157f), vec3<f32>(-367f, -127f, 868f), vec3<bool>(false, false, true))))), Struct_1(global1.yx, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 49381u), vec3<u32>(16768u, 1u, 0u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(720f, 604f, 1253f) - vec3<f32>(279f, -347f, 1312f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(876f, 294f, -1221f) + vec3<f32>(384f, 844f, 1360f)), all(vec4<bool>(false, true, false, global1.x)))), global2[_wgslsmith_index_u32(~(~13595u), 27u)], !(!vec4<bool>(false, global1.x, true, global1.x)))));
    global2 = array<i32, 27>();
    var var_1 = func_3(vec3<u32>(~3619u, ~_wgslsmith_add_u32(0u, 58014u), 1u), select(select(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, global1.x, global1.x)), !vec4<bool>(global1.x, true, global1.x, global1.x), false || global1.x), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, global1.x), global1.x), !(!vec4<bool>(global1.x, global1.x, true, global1.x))), global1.x).x != var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f * _wgslsmith_f_op_f32(trunc(-1887f))) * -871f)));
    let var_3 = Struct_3(-(~(~firstTrailingBit(1585i))), vec4<u32>(35919u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 32848u)), vec2<u32>(84015u, 1u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(30017u, 42075u, 4294967295u, 7645u), vec4<u32>(4294967295u, 91073u, 1u, 4294967295u)))), abs(17365u) << (1u % 32u), countOneBits(max(_wgslsmith_add_u32(1u, 14795u), _wgslsmith_clamp_u32(0u, 4294967295u, 22317u)))), Struct_1(global1.xz, 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - -2732f), _wgslsmith_f_op_f32(exp2(var_2.x)), -1194f) - var_2), global2[_wgslsmith_index_u32(~(~0u), 27u)] ^ u_input.a, !(!vec4<bool>(false, global1.x, true, true))));
    return Struct_1(!select(select(global1.zx, vec2<bool>(var_3.c.a.x, true), false), !select(global1.zx, var_3.c.a, var_3.c.e.x), !var_3.c.e.x), var_3.b.x, var_2, -18438i, select(vec4<bool>(_wgslsmith_f_op_f32(-var_3.c.c.x) > _wgslsmith_div_f32(var_3.c.c.x, -387f), var_3.c.a.x, true || var_3.c.a.x, all(!var_3.c.e)), var_3.c.e, _wgslsmith_clamp_u32(var_3.c.b | 4294967295u, ~var_3.b.x, _wgslsmith_div_u32(0u, var_3.c.b)) != (~1u >> (var_3.b.x % 32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(36922u, _wgslsmith_clamp_u32(arg_1.b, 24546u, arg_0.x), ~arg_0.x), countOneBits(~arg_0.wzw)), vec3<u32>(func_1().b, arg_0.x, ~arg_1.b)), select(abs(_wgslsmith_mult_u32(arg_1.b, arg_0.x)), reverseBits(abs(arg_0.x)) | ~(1u << (arg_0.x % 32u)), arg_1.e.x), arg_1.b, arg_1.b);
    var var_1 = _wgslsmith_mult_u32(max(~arg_1.b, 13947u), _wgslsmith_clamp_u32(~19008u << (func_1().b % 32u), 1u, 30951u)) & abs(20992u);
    var var_2 = global3[_wgslsmith_index_u32(~(~arg_1.b), 24u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -612f))), _wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 165f) + 648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1247f, 151f, arg_1.e.x)) - _wgslsmith_f_op_f32(sign(-2834f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_div_f32(1263f, 124f), -1196f, _wgslsmith_f_op_f32(f32(-1f) * -269f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 422f, global1.x)), _wgslsmith_f_op_f32(-arg_1.c.x), -1055f, -949f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 1107f, arg_1.c.x, -1714f) - vec4<f32>(arg_2.x, arg_2.x, 320f, arg_2.x))))));
    let var_4 = ~(-vec2<i32>(-u_input.a & u_input.a, firstLeadingBit(max(25309i, u_input.a))));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    global1 = arg_0.e.ywz;
    global3 = array<Struct_2, 24>();
    global0 = 7172i;
    var var_0 = arg_0;
    var var_1 = Struct_3(var_0.d, _wgslsmith_sub_vec4_u32(max(~vec4<u32>(arg_0.b, 1u, var_0.b, var_0.b), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b, 1u, arg_0.b, 0u), vec4<u32>(var_0.b, 0u, 33318u, var_0.b))), min(vec4<u32>(~arg_0.b, 314u, ~1u, 6893u << (arg_0.b % 32u)), vec4<u32>(~var_0.b, 5630u, arg_0.b, ~arg_0.b))), Struct_1(select(var_0.e.wy, vec2<bool>(true, true), true & all(var_0.e.zxz)), ~(~(~arg_0.b)), var_0.c, ~abs(-47767i ^ arg_1.a.x), select(vec4<bool>(global1.x & true, true, !arg_0.e.x, select(true, true, true)), select(!vec4<bool>(true, true, global1.x, arg_0.a.x), select(var_0.e, arg_0.e, false), vec4<bool>(true, true, true, false)), vec4<bool>(global1.x, var_0.a.x, arg_0.e.x, false))));
    return Struct_3(firstLeadingBit(2147483647i), countOneBits(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.b, var_1.b), var_1.b, vec4<u32>(1u, 1u, var_1.c.b, 16607u))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~63986u & ~(~firstTrailingBit(_wgslsmith_mult_u32(14319u, 26118u)));
    var var_1 = !global1.x;
    let var_2 = func_5(func_4(~countOneBits(vec4<u32>(var_0, var_0, var_0, 28098u)), func_1(), vec3<f32>(_wgslsmith_f_op_f32(660f - -770f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1470f - -435f), -445f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-209f)))), -19888i), Struct_2(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, -1i, global2[_wgslsmith_index_u32(1u, 27u)])), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(82249u, 27u)], global2[_wgslsmith_index_u32(37255u, 27u)])), global2[_wgslsmith_index_u32(var_0, 27u)], _wgslsmith_add_i32(1i, global2[_wgslsmith_index_u32(var_0, 27u)])))));
    global0 = func_1().d | (max(-global2[_wgslsmith_index_u32(var_0, 27u)], countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 3411i, global2[_wgslsmith_index_u32(var_0, 27u)], -1i), vec4<i32>(var_2.c.d, var_2.a, 50579i, var_2.c.d)))) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(66218u, var_0) << (var_2.b.x % 32u), max(select(26487u, var_0, var_2.c.e.x), func_4(vec4<u32>(var_0, 1u, var_2.b.x, var_0), var_2.c, var_2.c.c, u_input.a).b)) % 32u));
    let var_3 = 4294967295u;
    let var_4 = select(vec2<bool>(true, var_2.c.c.x >= _wgslsmith_f_op_f32(floor(var_2.c.c.x))), vec2<bool>(false, all(var_2.c.e.wy)), !(!func_1().a));
    let var_5 = func_3(~var_2.b.yzx, vec4<bool>(true, var_2.c.a.x, all(var_2.c.e.zwx), var_2.b.x <= ~8331u), true).xz;
    global3 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~firstLeadingBit(var_2.b.wwz), max(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, var_3), vec3<u32>(var_2.b.x, 15271u, 4294967295u)), var_2.b.yyw << (vec3<u32>(var_2.b.x, 16157u, 0u) % vec3<u32>(32u)))), ~vec2<i32>(~var_5.x, var_5.x), max(2147483647i, 331i));
}

