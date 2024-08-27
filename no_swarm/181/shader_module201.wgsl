struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = select(!select(vec4<bool>(true, arg_0.e & false, arg_0.c.x == arg_0.c.x, any(arg_2)), !select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(arg_3.d, arg_2.x, true, true), vec4<bool>(true, true, arg_3.d, false)), _wgslsmith_f_op_f32(step(663f, arg_3.b.x)) > _wgslsmith_f_op_f32(-arg_3.b.x)), !select(vec4<bool>(true, true, arg_3.b.x >= arg_0.b.x, false), vec4<bool>(false & arg_1.x, true, arg_1.x, false), ~arg_0.c.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.c.x, arg_0.c.x), arg_3.c)), vec4<bool>(arg_0.e && true, !(!(false | arg_2.x)), u_input.b < arg_3.a.x, !(!all(vec4<bool>(false, arg_1.x, true, true)))));
    global1 = array<vec2<u32>, 16>();
    var_0 = vec4<bool>(true, false, !((true | (arg_3.d != arg_0.d)) || any(vec4<bool>(arg_2.x, true, false, var_0.x))), true);
    let var_1 = vec4<i32>(arg_0.c.x, arg_3.c.x, arg_3.c.x, -_wgslsmith_mod_i32(_wgslsmith_div_i32(7063i, i32(-1i) * -21698i), -39942i));
    var var_2 = Struct_1(~(~arg_3.a) | arg_3.a, arg_0.b, -arg_0.c, !(all(!arg_1) | false), arg_2.x && true);
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    global1 = array<vec2<u32>, 16>();
    global0 = !func_3(Struct_1(vec4<u32>(arg_2.a.x, min(var_0.a.x, arg_0), ~4294967295u, ~arg_2.a.x), var_0.b, arg_1.xy, !var_0.e, var_0.d), !vec3<bool>(var_0.d, true, arg_2.e || arg_2.e), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, arg_2.e), select(vec3<bool>(arg_2.e, false, var_0.e), vec3<bool>(var_0.e, var_0.e, arg_2.e), vec3<bool>(var_0.d, arg_2.e, var_0.d)), select(vec3<bool>(arg_2.e, false, false), vec3<bool>(false, false, false), var_0.d)), vec3<bool>(false, var_0.a.x < 9528u, false)), Struct_1(countOneBits(vec4<u32>(1896u, var_0.a.x, 4294967295u, arg_2.a.x)), arg_2.b, -var_0.c, arg_2.e, !(var_0.b.x > 795f)));
    var var_1 = var_0;
    global0 = arg_2.d;
    return _wgslsmith_sub_i32(var_1.c.x, _wgslsmith_dot_vec3_i32((_wgslsmith_clamp_vec3_i32(arg_1.wxz, arg_1.zyy, vec3<i32>(var_0.c.x, var_0.c.x, 2147483647i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, var_1.a.x), vec3<u32>(arg_2.a.x, 0u, u_input.b)) % vec3<u32>(32u))) | -(vec3<i32>(arg_2.c.x, var_1.c.x, -1813i) | arg_1.wwx), arg_1.yyw));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global1 = array<vec2<u32>, 16>();
    global0 = true;
    return select(1i, _wgslsmith_div_i32(i32(-1i) * -25685i, ~func_2(u_input.a.x, vec4<i32>(-69127i, 57820i, 0i, 2147483647i), Struct_1(vec4<u32>(u_input.a.x, arg_0.x, 1u, 0u), vec4<f32>(1332f, 1000f, 348f, -619f), vec2<i32>(-27850i, 9451i), true, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global1 = array<vec2<u32>, 16>();
    global1 = array<vec2<u32>, 16>();
    var var_0 = vec3<i32>(-12981i, countOneBits(func_1(vec2<u32>(u_input.a.x, u_input.a.x))) << (u_input.b % 32u), -25001i);
    var var_1 = i32(-1i) * -12287i;
    let var_2 = Struct_1(abs(vec4<u32>(~0u ^ u_input.a.x, u_input.b, 4294967295u, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f - _wgslsmith_f_op_f32(2051f * 1479f))), 981f, -1429f, -594f), var_0.yz, -1393i > _wgslsmith_dot_vec3_i32(-min(vec3<i32>(1i, var_0.x, var_0.x), vec3<i32>(var_0.x, 2147483647i, -1i)), countOneBits(reverseBits(vec3<i32>(var_0.x, var_0.x, var_0.x)))), true == (false | any(vec2<bool>(false, false))));
    var var_3 = vec2<u32>(var_2.a.x, ~abs(19467u) & ((1u << (u_input.a.x % 32u)) >> ((0u & var_2.a.x) % 32u))) ^ global1[_wgslsmith_index_u32(var_2.a.x, 16u)];
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1035f, _wgslsmith_f_op_f32(ceil(624f)), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, -448f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-118f * 1000f))), _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) - var_2.b.x), var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, _wgslsmith_f_op_f32(round(var_4.x)), var_4.x)), vec2<i32>(var_0.x, ~(25195i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -28393i, var_2.c.x, -2455i), vec4<i32>(-2147483647i, var_0.x, -13191i, var_0.x)))));
}

