struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(97695u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(60754u, 19699u), vec2<u32>(71465u, 0u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(firstLeadingBit(~1u)), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(15719u, 54801u), countOneBits(global1[_wgslsmith_index_u32(27616u, 5u)])) | u_input.e.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 55681u, 0u) & vec3<u32>(~4294967295u, 21291u, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.e.x)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.e.x), ~vec3<u32>(4294967295u, 0u, u_input.e.x)), ~vec3<u32>(u_input.e.x, 8460u, u_input.e.x), !vec3<bool>(arg_0.b, arg_0.b, false))));
    var var_1 = vec4<u32>(1u, u_input.a.x, ~1928u, ~_wgslsmith_mult_u32(1u, abs(var_0.x)));
    let var_2 = firstTrailingBit(~vec4<u32>(var_1.x, 1u, 1u, ~4294967295u));
    global1 = array<vec2<u32>, 5>();
    var_1 = (vec4<u32>(~var_1.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.x, 0u), 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, var_2.x, 23277u, 4294967295u), vec4<u32>(0u, 73173u, 32098u, 20344u)), vec4<u32>(1u, 1u, var_0.x, 4294967295u)), u_input.e.x) >> (~min(~vec4<u32>(1u, var_0.x, 50804u, 31165u), var_2) % vec4<u32>(32u))) & ~var_2;
    return arg_1;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0;
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    global1 = array<vec2<u32>, 5>();
    return Struct_2(abs(~(~max(global1[_wgslsmith_index_u32(39410u, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-986f, -1843f)), _wgslsmith_f_op_f32(f32(-1f) * -1313f), _wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(max(arg_0.b, -385f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, 2269f, -686f, 585f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1821f, -465f, -282f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1933f, var_0.b, 796f) * vec4<f32>(arg_0.a, 1000f, var_0.a, arg_0.b)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-368f, var_0.a, var_0.b, arg_0.a)))))), vec2<i32>(-1i, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), -59723i >= u_input.d.x, vec4<bool>(true, true, true, true)), u_input.d.x)), -17059i, ~(vec3<i32>(_wgslsmith_clamp_i32(53863i, u_input.d.x, u_input.d.x), -u_input.d.x, u_input.d.x) ^ abs(~vec3<i32>(u_input.d.x, -1i, u_input.d.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec4<bool>(false, !(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), true, true);
    let var_1 = vec2<bool>(4294967295u >= arg_0.a.x, all(!select(var_0, vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0)) & true);
    var var_2 = max(~countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 9064i, 0i, 13638i), vec4<i32>(16676i, u_input.d.x, u_input.d.x, arg_0.c.x))), _wgslsmith_sub_vec4_i32(~(~(vec4<i32>(u_input.d.x, arg_0.d, u_input.d.x, 0i) ^ vec4<i32>(u_input.d.x, 1i, -2147483647i, 18893i))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i, arg_0.e.x, arg_0.d, arg_0.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-23795i, u_input.d.x, arg_0.c.x, 0i), vec4<i32>(-1i, 2147483647i, 0i, u_input.d.x), vec4<i32>(-1i, u_input.d.x, u_input.d.x, 2147483647i))) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, arg_0.e.x, -2147483647i), vec4<i32>(-1i, -2147483647i, -15813i, u_input.d.x))));
    var var_3 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), arg_0.b.x) + func_2(Struct_3(arg_0.b.x, -779f)).b.x), arg_0.b.x));
    var var_4 = ~(-countOneBits(-arg_0.d)) & 0i;
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global1 = array<vec2<u32>, 5>();
    global0 = array<vec2<f32>, 21>();
    var var_0 = arg_1;
    let var_1 = func_4(func_2(arg_0));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(591f, _wgslsmith_f_op_f32(f32(-1f) * -342f))), var_0.a.x), true, var_0.c);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_clamp_u32(~21076u, 1u, func_1(Struct_3(1227f, -342f), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, vec4<bool>(true, false, false, false)))) & 4294967295u) & (1u >> (func_4(Struct_2(firstLeadingBit(vec2<u32>(u_input.b.x, 15950u)), func_2(Struct_3(-2561f, 1639f)).b, u_input.d & u_input.d, -1i << (1u % 32u), select(vec3<i32>(-8938i, 18545i, u_input.d.x), vec3<i32>(-47056i, -2147483647i, 1i), vec3<bool>(true, false, true)))).a.x % 32u));
    let var_1 = vec4<bool>(false, (-1021f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-720f)))) || true, !any(vec2<bool>(true, true)) == select(false, false, func_4(Struct_2(global1[_wgslsmith_index_u32(0u, 5u)], vec4<f32>(-3012f, -1497f, -292f, 281f), vec2<i32>(u_input.d.x, u_input.d.x), -1i, vec3<i32>(-60787i, 5249i, u_input.d.x))).b.x <= 1f), !any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)));
    global0 = array<vec2<f32>, 21>();
    var var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, _wgslsmith_div_i32(u_input.d.x, 10752i) >> (_wgslsmith_add_u32(u_input.b.x, u_input.a.x) % 32u)), vec4<i32>(-countOneBits(u_input.d.x), ~abs(1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-7978i, 39063i), _wgslsmith_clamp_vec2_i32(vec2<i32>(3361i, u_input.d.x), vec2<i32>(u_input.d.x, 7636i), u_input.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(-65691i, 29286i, 40729i, -36365i) ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -5753i), vec4<i32>(-2147483647i, -15000i, -2147483647i, u_input.d.x))));
    var_2 = abs(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -u_input.d.x, ~u_input.d.x, -2147483647i));
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], !var_1.x, select(var_1, select(vec4<bool>(true, true, var_1.x, true), var_1, select(vec4<bool>(true, true, var_1.x, var_1.x), select(var_1, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, true)), var_1.x)), !select(select(vec4<bool>(var_1.x, var_1.x, true, false), var_1, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), !vec4<bool>(false, false, var_1.x, false))));
    let var_4 = Struct_2(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(~(17053u << (0u % 32u)), 5u)], ~global1[_wgslsmith_index_u32(1u, 5u)]), vec4<f32>(var_3.a.x, 1000f, -1000f, 1000f), vec2<i32>(u_input.d.x, -1i), -firstLeadingBit(31012i), var_2.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.e), countOneBits(reverseBits(~_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, -37739i), var_4.c))));
}

