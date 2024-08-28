struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_1(false)), Struct_5(Struct_1(false)), Struct_5(Struct_1(false)), Struct_5(Struct_1(true)), Struct_5(Struct_1(true)), Struct_5(Struct_1(false)), Struct_5(Struct_1(false)), Struct_5(Struct_1(false)));

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: u32;

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec2<f32> {
    var var_0 = u_input.b.x;
    let var_1 = vec4<i32>(arg_1.x, 16322i, -1848i, -38132i);
    let var_2 = arg_0 >> (0u % 32u);
    let var_3 = var_1.xw;
    let var_4 = 2147483647i;
    return vec2<f32>(961f, _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(135f, global4.x)))) - _wgslsmith_f_op_f32(sign(-1065f)))));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(~arg_1.x, _wgslsmith_mult_vec2_i32(vec2<i32>(-6514i >> (u_input.b.x % 32u), _wgslsmith_mod_i32(u_input.a.x, 1i)), u_input.a.yz) | u_input.a.zz));
    global2 = array<vec4<i32>, 26>();
    let var_1 = arg_3.zy;
    var var_2 = Struct_3(Struct_1(all(arg_3)));
    global4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(497f, 299f) + 2282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))), -776f, global4.x)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f - arg_2.x)), 137f, var_1.x)))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global3 = countOneBits(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(73147u, 4294967295u), u_input.b.yy)), u_input.b.xy));
    var var_0 = vec3<i32>(global1.x, _wgslsmith_mult_i32(-1377i, 1i), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(func_2(true, (select(~vec2<u32>(53745u, u_input.b.x), select(u_input.b.yw, vec2<u32>(100644u, 4294967295u), vec2<bool>(true, true)), true) | ~reverseBits(u_input.b.wz)) ^ vec2<u32>(4510u, u_input.b.x), _wgslsmith_f_op_vec2_f32(min(global4.yw, _wgslsmith_f_op_vec2_f32(round(global4.zz)))), vec4<bool>(true, true, any(vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, false)))), true)));
    let var_2 = !any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), -u_input.a.x == 0i));
    let var_3 = Struct_2(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1676f)))), !vec2<bool>(var_2, any(select(vec3<bool>(true, false, var_2), vec3<bool>(var_2, false, true), var_2))), select(vec4<bool>(true, false, true, var_2 & var_2), select(vec4<bool>(true, var_1 == 1027f, select(false, var_2, var_2), var_2), vec4<bool>(all(vec3<bool>(var_2, var_2, var_2)), !var_2, var_2, global1.x <= -10741i), select(vec4<bool>(true, true, var_2, var_2), !vec4<bool>(var_2, true, true, var_2), select(vec4<bool>(false, false, var_2, false), vec4<bool>(true, true, var_2, var_2), var_2))), select(vec4<bool>(true, false || var_2, all(vec3<bool>(true, var_2, false)), all(vec2<bool>(false, false))), !select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(true, var_2, true, false), vec4<bool>(true, var_2, var_2, var_2)), select(select(vec4<bool>(var_2, false, true, var_2), vec4<bool>(false, var_2, true, false), true), vec4<bool>(var_2, var_2, var_2, var_2), any(vec4<bool>(false, false, var_2, var_2))))), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.b.x, 40157u, 30602u)) >> (select(u_input.b.x, 4294967295u, var_2) % 32u)));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(2147483647i, u_input.a.x, -33469i, -global1.x >> (_wgslsmith_div_u32(u_input.b.x >> (6055u % 32u), ~20757u) % 32u)));
    let var_1 = -min(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.yx, vec2<i32>(u_input.a.x, 60479i))), vec2<i32>(-2147483647i, -9537i));
    var var_2 = firstLeadingBit(reverseBits(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)));
    let var_3 = ~u_input.b.xy;
    global2 = array<vec4<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global4.x, -661f, 645f), _wgslsmith_f_op_vec4_f32(vec4<f32>(144f, 403f, 428f, 943f) + vec4<f32>(global4.x, global4.x, -1257f, 659f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, global4.x, global4.x, -464f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - global4.x)), _wgslsmith_f_op_f32(-1699f - _wgslsmith_f_op_f32(-986f * 208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x))), _wgslsmith_f_op_f32(f32(-1f) * -2798f)), vec4<bool>(true, var_0.a, any(!vec2<bool>(var_0.a, true)), false))));
}

