struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: u32 = 17034u;

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-284f)), _wgslsmith_f_op_f32(trunc(-295f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1216f, 1639f) * vec2<f32>(-1000f, -229f))))))));
    let var_1 = any(arg_1.xx);
    var var_2 = !select(select(vec3<bool>(false, arg_1.x, !arg_1.x), arg_1, arg_1), !select(arg_1, select(arg_1, vec3<bool>(true, true, true), false), all(arg_1.yz)), true);
    global0 = array<Struct_2, 7>();
    global1 = _wgslsmith_mult_u32(0u, arg_0.x);
    return _wgslsmith_sub_u32(arg_0.x, arg_0.x);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(func_3(select(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), arg_0.x), arg_0.wyx, u_input.d.yx), 0u)), (_wgslsmith_clamp_u32(0u << (1u % 32u), _wgslsmith_div_u32(0u, 37632u), countOneBits(1u)) ^ ~(~20312u)) << (~select(max(39725u, 48282u), ~24121u, true) % 32u), ~_wgslsmith_sub_u32(func_3(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), arg_0.xxw, vec2<i32>(-23337i, u_input.c)) ^ _wgslsmith_mod_u32(4294967295u, 1u), max(1u, 0u)));
    var var_1 = arg_0;
    global0 = array<Struct_2, 7>();
    var_1 = vec4<bool>(var_1.x, 744f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-580f))))), false, var_1.x);
    var_1 = vec4<bool>(any(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(arg_0.x, true, arg_0.x))), false, all(select(var_1.wy, var_1.zy, var_1.x)), !((var_0.x << (func_3(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec3<bool>(arg_0.x, arg_0.x, false), u_input.d.wz) % 32u)) <= var_0.x));
    return _wgslsmith_dot_vec2_u32(~select(var_0.yy, ~vec2<u32>(var_0.x, 17478u), true) ^ ~reverseBits(var_0.zy), vec2<u32>(_wgslsmith_sub_u32(1u, var_0.x), _wgslsmith_mod_u32(5783u, func_3(countOneBits(vec4<u32>(75573u, 4294967295u, var_0.x, 31787u)), vec3<bool>(true, true, var_1.x), ~vec2<i32>(u_input.a.x, u_input.c)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = ~max(_wgslsmith_div_u32(max(1u, 37643u), func_2(arg_1)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_0 = arg_2;
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(1i, u_input.d.x), _wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), -61277i, _wgslsmith_mod_i32(u_input.d.x, firstTrailingBit(~(-50639i)))), u_input.b, u_input.c);
    global2 = _wgslsmith_f_op_f32(select(1493f, 511f, !all(select(select(vec4<bool>(var_0.a, false, var_0.a, arg_3), arg_1, arg_3), !vec4<bool>(var_0.a, false, true, arg_3), select(arg_1, arg_1, arg_1)))));
    var var_2 = 77114u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-538f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-218f + -1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(329f, -650f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(165f, vec4<bool>(false, true, false, false), Struct_1(true), false)))) - -246f))));
    let var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1937f)))))));
    global3 = array<vec3<u32>, 32>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -958f, 1471f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * vec3<f32>(-341f, -750f, 363f));
    var_0 = u_input.a.x;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(571f + var_2.x) - var_3.x) * var_2.x)), -1i, func_3(vec4<u32>(1u, 1u, 1u, 1u), select(vec3<bool>(true, true, var_4), select(select(vec3<bool>(var_4, var_4, var_4), vec3<bool>(true, true, var_4), false), select(vec3<bool>(var_4, var_4, false), vec3<bool>(var_4, false, var_4), vec3<bool>(false, var_4, false)), var_4), vec3<bool>(false, true, !var_4)), _wgslsmith_mult_vec2_i32(~(~u_input.d.wy), _wgslsmith_add_vec2_i32(u_input.a, ~u_input.a))));
}

