struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), vec2<bool>(false, false), any(!global0[_wgslsmith_index_u32(u_input.a.x, 25u)])));
    var var_1 = any(!vec4<bool>(!(!var_0), any(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 25u)]), any(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, false, true), vec4<bool>(false, var_0, var_0, false))), true));
    global0 = array<vec3<bool>, 25>();
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, -1000f, _wgslsmith_f_op_f32(step(arg_0, -447f)), _wgslsmith_f_op_f32(-arg_0)))), u_input.d.x);
    let var_3 = var_2.a.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - -1986f))), arg_0, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)))) * var_2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1494f);
    let var_1 = Struct_2(Struct_1(abs(u_input.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-676f, -996f, -477f, -175f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-530f, -1204f, -1342f, 199f)))), _wgslsmith_f_op_vec4_f32(func_3(-289f)))), u_input.c));
    var var_2 = _wgslsmith_div_f32(var_1.a.b.x, var_1.a.b.x);
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(992u, u_input.a.x, u_input.a.x), ~firstTrailingBit(22325u)) >> (~u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(11324u, 20257u, u_input.a.x, u_input.a.x))), ~firstTrailingBit(vec4<u32>(20711u, u_input.a.x, 0u, u_input.a.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, u_input.a.x, 0u, 28627u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), abs(vec4<u32>(u_input.a.x, u_input.a.x, 11271u, u_input.a.x))), vec4<u32>(~u_input.a.x, ~4294967295u, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 57405u))), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 62823u), 0u, ~u_input.a.x & select(5724u, u_input.a.x, false), 1u)), u_input.a.x);
    let var_4 = -1002f;
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = 43218u;
    let var_1 = _wgslsmith_f_op_f32(step(-243f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(475f, _wgslsmith_f_op_f32(374f + _wgslsmith_f_op_f32(max(-527f, 539f))))))));
    var_0 = u_input.a.x;
    var_0 = firstLeadingBit(~(~((u_input.a.x | u_input.a.x) | firstTrailingBit(u_input.a.x))));
    var_0 = max(47305u, _wgslsmith_div_u32(~(~(~1u)), ~select(4294967295u, ~45671u, true)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = ~u_input.a.x;
    global0 = array<vec3<bool>, 25>();
    let var_1 = func_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -15951i, _wgslsmith_mult_i32(13774i, u_input.d.x), -1i), -(~u_input.b.xyy)), u_input.b.ywx, select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -17741i, -1i), vec3<i32>(15880i, 20027i, 43i), vec3<i32>(u_input.d.x, -19379i, u_input.c)), vec3<i32>(-1714i | u_input.c, -41599i, -44182i), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 25u)], vec3<bool>(true, true, true), true))));
    var var_2 = -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(~(-5653i), -var_1.c, u_input.d.x, 2147483647i)), u_input.b);
    let var_3 = true;
    global0 = array<vec3<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) - vec3<f32>(var_1.b.x, -978f, 736f))) - vec3<f32>(func_2().b.x, 329f, _wgslsmith_f_op_f32(f32(-1f) * -703f))) - var_1.b.zwx), 4294967295u, abs(max(max(~vec2<u32>(1u, u_input.a.x), u_input.a.zx), ~u_input.a.zy >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(46014u, 28251u), vec2<u32>(u_input.a.x, 1u), vec2<u32>(4294967295u, 23576u)) % vec2<u32>(32u)))));
}

