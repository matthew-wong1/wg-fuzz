struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, 0i, -2032i, 0i), vec4<i32>(1i, 48011i, 69158i, -19230i), vec4<i32>(-54708i, i32(-2147483648), 2147483647i, 11964i), vec4<i32>(-1i, 15469i, 9632i, -25135i), vec4<i32>(9324i, 2147483647i, -53318i, 0i), vec4<i32>(-1700i, i32(-2147483648), -50640i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = any(!select(vec3<bool>(true, true, all(vec2<bool>(true, false))), vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))));
    let var_1 = Struct_2(Struct_1(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21340u, u_input.a, 4294967295u), vec4<u32>(35925u, 69355u, 4294967295u, 11791u)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f - 851f) - _wgslsmith_f_op_f32(abs(-1377f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-786f)) * -955f))), -573f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1923f, _wgslsmith_div_f32(-1000f, 1000f)), _wgslsmith_f_op_f32(-661f * _wgslsmith_div_f32(-189f, -1228f))), _wgslsmith_f_op_f32(f32(-1f) * -231f)), 12500i);
    var var_2 = Struct_1(_wgslsmith_mult_u32(firstTrailingBit(var_1.a.a), 20963u));
    let var_3 = vec3<u32>(22554u, var_1.a.a, firstTrailingBit(~(~19591u)) | u_input.a);
    var var_4 = var_1;
    return ~2147483647i;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(~((global0.x << (u_input.a % 32u)) >> (firstLeadingBit(56437u) % 32u)), global0.x ^ func_3(-2147483647i)), global0.x, abs(48293i));
    global1 = array<vec4<i32>, 6>();
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u), u_input.a), ~firstTrailingBit(abs(vec2<u32>(4294967295u, 30343u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(716f * -1390f)))));
    var var_3 = 0u;
    return Struct_1(var_1.a << (~16657u % 32u));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-489f)), _wgslsmith_f_op_f32(-1663f * -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, 499f) * vec2<f32>(-217f, -1746f)) - vec2<f32>(-564f, 672f)))));
    let var_1 = func_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-686f))));
    return func_2(any(select(vec4<bool>(true, true, true, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, false))), !(var_0.x >= 1522f))), _wgslsmith_f_op_f32(-var_0.x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = countOneBits(vec4<i32>(global0.x, -4530i, global0.x, -_wgslsmith_dot_vec3_i32(global0.zxz, vec3<i32>(2683i, global0.x, -42597i))));
    var var_0 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), all(vec3<bool>(u_input.a <= arg_0.a, true, any(vec4<bool>(true, true, true, false)))));
    var var_1 = vec4<bool>(any(!vec4<bool>(true, var_0.x & var_0.x, true, false)), !(!(var_0.x || true)), select(var_0.x, !(!(!var_0.x)), var_0.x), var_0.x);
    global1 = array<vec4<i32>, 6>();
    var_0 = select(!vec3<bool>((arg_0.a ^ arg_0.a) >= (16474u >> (u_input.a % 32u)), true, false), select(!vec3<bool>(true, true, var_1.x && var_1.x), var_1.zxx, var_1.yyz), true);
    return Struct_1(_wgslsmith_add_u32(~(~(~arg_0.a)), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 6>();
    let var_0 = func_4(func_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 43580u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 47042u, 9994u, 42997u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 58366u, 0u), vec4<u32>(47125u, u_input.a, u_input.a, 4505u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(0u, 22705u, 20518u, 0u))));
    global1 = array<vec4<i32>, 6>();
    let var_1 = Struct_2(Struct_1(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f))), 852f, -732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -653f))) + _wgslsmith_f_op_f32(883f * -1341f))), 0i);
    let var_2 = func_2(false, -166f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.a, countOneBits(4294967295u)), _wgslsmith_f_op_vec2_f32(sign(var_1.b.zz)), vec2<u32>(1u >> (func_1(vec4<u32>(4294967295u, 4294967295u, 36623u, var_0.a)).a % 32u), 1u & ~var_0.a) << (vec2<u32>(14818u, _wgslsmith_div_u32(~4294967295u, ~u_input.a)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-975f)))))));
}

