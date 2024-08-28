struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-32041i, -56240i), vec2<i32>(45656i, 0i), vec2<i32>(-44534i, 9346i), vec2<i32>(-1i, 14418i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-6817i, i32(-2147483648)), vec2<i32>(-1i, -21534i), vec2<i32>(-25078i, 69065i), vec2<i32>(1i, 12653i), vec2<i32>(21223i, 2147483647i), vec2<i32>(64460i, 6278i), vec2<i32>(-9037i, 22487i), vec2<i32>(-26968i, 38921i), vec2<i32>(2147483647i, -1i), vec2<i32>(-30390i, -1i), vec2<i32>(-24873i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 15246i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -6372i), vec2<i32>(38183i, 8264i), vec2<i32>(2147483647i, 5393i));

var<private> global3: array<Struct_2, 8>;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = -2147483647i;
    var var_1 = 26344u;
    var var_2 = arg_2;
    let var_3 = max(_wgslsmith_div_u32(~abs(arg_2.b), var_2.b), var_2.d) != max(1u, 4294967295u);
    let var_4 = countOneBits(min(_wgslsmith_div_vec2_u32(firstTrailingBit(select(vec2<u32>(4577u, 0u), vec2<u32>(4294967295u, 50199u), var_3)), vec2<u32>(~1u, var_2.b)), ~(~(~vec2<u32>(14849u, var_2.b)))));
    return true;
}

fn func_3() -> vec3<i32> {
    global4 = !select(vec4<bool>(global4.x, global4.x, !any(global4.zzy), global4.x), !(!select(vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(false, true, false, true), global4.x)), vec4<bool>(global4.x, all(!vec4<bool>(false, global4.x, true, global4.x)), global4.x, false));
    global4 = vec4<bool>(true, false, false, true);
    let var_0 = global3[_wgslsmith_index_u32(66416u, 8u)];
    var var_1 = 40583u;
    let var_2 = Struct_1(countOneBits(vec3<i32>(u_input.b.x, -207i, 4202i)), _wgslsmith_mult_u32(~0u, 1u), ~_wgslsmith_mod_i32(0i, u_input.b.x), ~abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(35389u, 48333u), _wgslsmith_clamp_u32(0u, 42429u, 45443u))));
    return var_2.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(func_3() & vec3<i32>(-(~1i), -1i, 50319i), _wgslsmith_clamp_u32(~(~(~40913u)), select(countOneBits(_wgslsmith_sub_u32(46332u, 0u)), reverseBits(1u), true), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 19758u, 6429u), 1u)), _wgslsmith_mult_i32(u_input.a, 54598i), 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2264f, global1.x, global1.x)), vec3<f32>(1057f, -247f, global1.x), !vec3<bool>(false, global4.x, global4.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f - 627f))), _wgslsmith_f_op_f32(ceil(863f)), -270f), !global4.xzz));
    var var_2 = i32(-1i) * -4093i;
    let var_3 = -1798f;
    var var_4 = var_0.b >= ~min(var_0.b, 15051u | ~var_0.d);
    return 1012f;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 15>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1848f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)))), _wgslsmith_f_op_f32(f32(-1f) * -448f)));
    global4 = !(!vec4<bool>(true, 1i > (13751i >> (arg_1 % 32u)), select(arg_2.a.x, any(arg_2.a), any(vec2<bool>(global4.x, arg_2.a.x))), true));
    var var_0 = arg_2.a.zx;
    let var_1 = false;
    return !select(!(!(!vec4<bool>(var_1, true, var_0.x, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_1, false), all(vec4<bool>(false, false, global4.x, true))), !(u_input.a == countOneBits(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(_wgslsmith_f_op_f32(-global1.x), ~_wgslsmith_mult_u32(~60681u, 1u), Struct_2(select(select(!global4.wyx, select(vec3<bool>(true, false, global4.x), global4.wzx, global4.x), func_1(1i, 4294967295u, Struct_1(vec3<i32>(-1i, -24100i, u_input.a), 16609u, u_input.a, 0u))), global4.xxx, global4.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(func_2(u_input.b.wxz, u_input.b.wx))), 771f)));
    var var_0 = Struct_2(vec3<bool>(global4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), global1.x, true)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -488f) + global1.x), false));
    var_0 = Struct_2(select(vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(21613u, 161290u, 17380u), vec3<u32>(53812u, 64885u, 0u)) != ~31787u, false, true), select(var_0.a, select(func_4(global1.x, 69273u, global3[_wgslsmith_index_u32(12410u, 8u)], vec2<f32>(-1000f, global1.x)).ywz, select(vec3<bool>(false, false, global4.x), var_0.a, vec3<bool>(global4.x, true, true)), true), func_4(global1.x, ~82182u, Struct_2(var_0.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x)))).wzw), !var_0.a));
    let var_1 = global3[_wgslsmith_index_u32(~(~0u), 8u)];
    var var_2 = -555f;
    global4 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.x) * global1.x) < global1.x, !any(var_1.a), !(!var_0.a.x) || true, any(select(!vec4<bool>(var_0.a.x, true, true, global4.x), !vec4<bool>(var_1.a.x, true, false, false), global4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(1u, 1u, true)));
}

