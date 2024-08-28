struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b, 8u)])))));
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    var_0 = Struct_1(u_input.b);
    return select(~52149u, var_0.a, true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = vec4<bool>((u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(47040i, u_input.a, -14416i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 0i)))) == u_input.a, select(arg_2.x, true, arg_2.x), !(!arg_2.x), !(!(!(arg_2.x & arg_2.x))));
    let var_1 = arg_3.a.a == abs(firstTrailingBit(_wgslsmith_add_u32(~arg_0.a, ~arg_1.a)));
    global0 = array<vec4<f32>, 8>();
    let var_2 = select(arg_2, var_0.yz, all(vec4<bool>(true | any(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(step(433f, -459f)) < 836f, true, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.a, arg_0.a), vec2<u32>(arg_3.a.a, 49247u)) <= arg_1.a)));
    var var_3 = 1425f;
    return var_0.xzz;
}

fn func_1(arg_0: bool) -> vec2<i32> {
    global0 = array<vec4<f32>, 8>();
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, func_2(), _wgslsmith_div_u32(~37395u >> (u_input.b % 32u), u_input.b), ~1u), vec4<u32>(~(u_input.b & firstTrailingBit(46932u)), 51688u, _wgslsmith_clamp_u32(1u, 0u, 1u), u_input.b | u_input.b));
    var var_1 = any(!(!func_3(Struct_1(60678u), Struct_1(8192u), vec2<bool>(false, arg_0), Struct_2(Struct_1(17853u)))));
    global0 = array<vec4<f32>, 8>();
    let var_2 = Struct_2(Struct_1(1u));
    return vec2<i32>(-u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 42894i), vec3<i32>(u_input.a, u_input.a, -15906i)), -2147483647i), abs(vec2<i32>(18319i, u_input.a) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(70163i, -7839i)), _wgslsmith_add_vec2_i32(~vec2<i32>(2867i, u_input.a), select(vec2<i32>(33349i, u_input.a), vec2<i32>(u_input.a, 46250i), false)), ~select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, -36790i), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 52182i), vec2<i32>(-10590i, u_input.a), vec2<i32>(-2147483647i, 1571i))));
    let var_1 = select(!vec2<bool>(select(true, false, false) | true, true), select(vec2<bool>(true, true), !vec2<bool>(true, any(vec2<bool>(true, true))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true)))), true);
    var_0 = select(vec2<i32>(u_input.a, u_input.a), (~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 5819i), vec2<i32>(var_0.x, u_input.a)) >> (~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 41358u), var_1.x) % vec2<u32>(32u))) | (select(_wgslsmith_div_vec2_i32(vec2<i32>(-11446i, u_input.a), vec2<i32>(37587i, u_input.a)), min(vec2<i32>(var_0.x, u_input.a), vec2<i32>(-2147483647i, u_input.a)), !var_1) ^ func_1(all(vec3<bool>(var_1.x, false, false)))), !var_1.x);
    let var_2 = u_input.b;
    let var_3 = Struct_2(Struct_1(~var_2));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(693f * 760f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-202f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 310f)))) + vec3<f32>(_wgslsmith_f_op_f32(-2311f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f)))), _wgslsmith_f_op_f32(floor(-608f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-300f + -1000f)))));
    var var_5 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_div_i32(u_input.a, ~0i), -1i, 31315i, ~16043i)), vec4<i32>(countOneBits(u_input.a), ~(-u_input.a), _wgslsmith_mult_i32(~6080i, ~0i), 1i) >> (vec4<u32>(select(~u_input.b, abs(var_2), var_4.x >= var_4.x), 19719u, var_3.a.a, _wgslsmith_div_u32(0u & var_2, _wgslsmith_sub_u32(var_3.a.a, u_input.b))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

