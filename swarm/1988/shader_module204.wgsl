struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<i32, 9> = array<i32, 9>(26419i, 18171i, 5554i, 1i, 53909i, -26666i, i32(-2147483648), 8501i, -3760i);

var<private> global2: f32;

var<private> global3: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = 1f;
    let var_0 = _wgslsmith_div_i32(min(firstTrailingBit(~_wgslsmith_sub_i32(-1i, 0i)), -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(420u, 9u)], -1i)), firstTrailingBit(vec2<i32>(0i, -41891i)))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-31311i << (u_input.b % 32u), abs(arg_1)), -3741i));
    return 0u;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(func_3(global3[_wgslsmith_index_u32(u_input.b, 32u)], -57443i, global0[_wgslsmith_index_u32(u_input.b, 26u)], Struct_1(4294967295u, false, false)) >> ((u_input.a.x & u_input.b) % 32u), u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 70020u, u_input.a.x, u_input.b), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x)), 1u));
    var var_1 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, u_input.c.x, 6910i, global1[_wgslsmith_index_u32(var_0.x, 9u)]), vec4<i32>((global1[_wgslsmith_index_u32(84151u, 9u)] ^ 4011i) & ~7724i, -9477i << (u_input.b % 32u), global1[_wgslsmith_index_u32(var_0.x, 9u)], abs(global1[_wgslsmith_index_u32(u_input.b, 9u)]))), -67284i);
    let var_2 = vec4<i32>(select(_wgslsmith_add_i32(countOneBits(13919i), global1[_wgslsmith_index_u32(~var_0.x >> (_wgslsmith_add_u32(4294967295u, var_0.x) % 32u), 9u)]), _wgslsmith_dot_vec2_i32(u_input.c.xz, -(~vec2<i32>(5290i, 25129i))), max(_wgslsmith_clamp_i32(-27678i, 2147483647i, 5238i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 9u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 9u)], u_input.c.x))) >= 1i), u_input.c.x, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(0i, -2147483647i, 798i, global1[_wgslsmith_index_u32(u_input.b, 9u)]) >> (vec4<u32>(var_0.x, 17126u, 28672u, var_0.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, u_input.c.x, 1i, -1i), all(vec3<bool>(true, false, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i | u_input.c.x, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 9u)], u_input.c.x), u_input.c.x), -firstLeadingBit(vec4<i32>(-22243i, global1[_wgslsmith_index_u32(1u, 9u)], 2147483647i, 1i)))), global1[_wgslsmith_index_u32(18137u, 9u)]);
    let var_3 = 615f;
    global0 = array<Struct_1, 26>();
    return select(~(~vec4<u32>(~u_input.b, u_input.b & u_input.b, 0u, 105761u)), ~(~abs(countOneBits(vec4<u32>(24087u, var_0.x, var_0.x, 94883u)))), false);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1295f, 303f))), -194f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, 114f, 860f, var_0.x) - vec4<f32>(var_0.x, 179f, -1793f, 1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-1572f + -1370f), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -514f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(386f, var_0.x, -797f, 204f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1331f, var_0.x, var_0.x) - vec4<f32>(-172f, var_0.x, var_0.x, -698f)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687f + -212f) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1123f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1907f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-328f, var_0.x, var_0.x, -1120f), vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f)) + vec4<f32>(var_0.x, 869f, 856f, var_0.x))))));
    var var_2 = Struct_1(~arg_2.x, 1i > -u_input.c.x, false & any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-233f, var_1.x, var_1.x), var_1.zxz, vec3<bool>(var_2.b, var_2.b, var_2.b))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1688f), _wgslsmith_f_op_f32(798f + -233f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(362f)), 2006f))))));
    var var_4 = vec3<u32>(~45075u, 0u, max(~(~(arg_2.x << (arg_2.x % 32u))), ~(abs(arg_2.x) | func_3(global3[_wgslsmith_index_u32(0u, 32u)], 39103i, Struct_1(arg_2.x, true, false), Struct_1(4294967295u, var_2.b, var_2.b)))));
    return global0[_wgslsmith_index_u32(94902u, 26u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec2<f32> {
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_f32(min(-781f, 311f));
    let var_1 = u_input.c.yx;
    var var_2 = func_4(_wgslsmith_mod_vec2_i32(u_input.c.yx, vec2<i32>(-u_input.c.x >> (4294967295u % 32u), var_1.x)), u_input.b, ~abs(_wgslsmith_add_vec4_u32(func_2(), vec4<u32>(u_input.a.x, u_input.b, 1u, 68593u) >> (vec4<u32>(u_input.a.x, 5391u, u_input.a.x, 0u) % vec4<u32>(32u)))));
    global3 = array<vec3<bool>, 32>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, -496f) + vec2<f32>(-201f, 1614f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(327f, 729f) + vec2<f32>(795f, 232f)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, -458f)), vec2<bool>(var_2.c, false))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1942f)), -1397f)), -1990f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 32>();
    var var_0 = Struct_1(67194u, !(true & (1u > _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.a.x, 0u, 1u)))), all(select(vec4<bool>(true, true, all(global3[_wgslsmith_index_u32(1u, 32u)]), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), !(u_input.c.x < -2147483647i))));
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1(!(!(!select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, true), var_0.b))), vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(62687u, _wgslsmith_mod_u32(var_0.a, var_0.a));
}

