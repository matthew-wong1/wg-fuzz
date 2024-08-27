struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-1871i, 6964i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = ~(~_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.b, u_input.b), select(~u_input.b, u_input.b, false)));
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    let var_1 = Struct_1(u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(608f, arg_3.d)), _wgslsmith_f_op_f32(max(arg_0, 1000f)))), _wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -526f), arg_3.d))), arg_0), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, arg_3.d))) - _wgslsmith_f_op_f32(step(893f, arg_3.b.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(439f, _wgslsmith_f_op_f32(abs(arg_3.b.b.x)))))), i32(-1i) * -arg_3.a);
    var var_2 = var_0.xz;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(747f, arg_3.b.b.x, arg_3.c) - arg_3.b.b)))))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = any(global0[_wgslsmith_index_u32(1u, 20u)]);
    var var_1 = Struct_1(arg_0.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.b.b - arg_0.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, 199f, -143f) - arg_0.b.b), select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0)))), arg_0.b.b) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.b.b + _wgslsmith_f_op_vec3_f32(func_3(-1203f, vec4<u32>(69237u, 1001u, u_input.a.x, 44754u), var_0, Struct_2(arg_0.a, arg_0.b, arg_0.c, -919f))))))), arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-742f))) * 884f), _wgslsmith_mod_i32(~abs(arg_0.b.e), arg_0.a) & 0i);
    var var_2 = ~u_input.d;
    let var_3 = vec4<f32>(arg_0.d, var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - arg_0.d) + var_1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) + _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - -275f)))), _wgslsmith_f_op_f32(arg_0.c + -668f));
    var var_4 = ~(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-43553i, var_1.e, 34030i, u_input.c), vec4<i32>(var_1.e, -46566i, -13851i, u_input.b.x))) >> (vec4<u32>(_wgslsmith_mod_u32(countOneBits(15261u), u_input.d.x << (u_input.a.x % 32u)), ~arg_0.b.a, 4294967295u, u_input.d.x) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    var var_0 = vec4<bool>(false, false, select(true, true, any(global0[_wgslsmith_index_u32(1u, 20u)]) || false), arg_1.x);
    var var_1 = vec2<f32>(3004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(-53333i, Struct_1(arg_0, vec3<f32>(-592f, 1000f, 145f), 1u, -622f, u_input.b.x), -254f, 1000f))), 1045f))));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(~u_input.b.yy, _wgslsmith_div_vec2_i32(vec2<i32>(max(u_input.c, u_input.b.x), -18405i << (u_input.a.x % 32u)), firstLeadingBit(vec2<i32>(22790i, u_input.c)))), Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 216f, -750f) + vec3<f32>(1441f, 937f, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(376f + var_1.x), _wgslsmith_f_op_f32(-336f * 430f), _wgslsmith_f_op_f32(var_1.x - -1114f))), ~arg_0, -414f, 14886i), var_1.x, var_1.x);
    let var_3 = 296f;
    let var_4 = _wgslsmith_mult_u32(~select(_wgslsmith_sub_u32(u_input.a.x, 57294u | u_input.d.x), _wgslsmith_add_u32(15324u, arg_0) >> (~global1.x % 32u), arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 67121u, 4294967295u), vec3<u32>(arg_0, var_2.b.a, u_input.d.x)), u_input.d.yyw << (vec3<u32>(global1.x, var_2.b.c, u_input.a.x) % vec3<u32>(32u))), select(1u, 89470u, arg_1.x), 26150u), vec3<u32>(54510u, ~global1.x, global1.x)));
    return _wgslsmith_add_u32(min(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 11786u, global1.x, 85314u), vec4<u32>(1u, 30141u, 74697u, global1.x)), u_input.d), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_4), u_input.d.zx), 3219u)), 2283u) < reverseBits(var_2.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 1>();
    let var_0 = !select(vec3<bool>(true, select(true, true, true), false), vec3<bool>(true, all(vec3<bool>(true, false, true)), !all(vec3<bool>(false, true, false))), select(vec3<bool>(true, u_input.b.x >= -6616i, true), vec3<bool>(true, func_1(4294967295u, vec2<bool>(false, false)), false), vec3<bool>(true, any(vec3<bool>(true, true, false)), true)));
    global0 = array<vec2<bool>, 20>();
    let var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1092f + 1774f), 798f, -769f))), _wgslsmith_div_u32(~global1.x, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) + _wgslsmith_div_f32(-490f, -872f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f - 1f) + _wgslsmith_f_op_f32(abs(1440f)))), (~(-42299i) ^ -(~u_input.b.x)) ^ ~abs(min(1i, -28820i)));
    var var_2 = Struct_2(~(-25755i), var_1, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x));
    let var_3 = _wgslsmith_add_i32(2147483647i, var_1.e);
    var_2 = Struct_2(_wgslsmith_mult_i32(-var_1.e, var_1.e), var_2.b, var_1.d, -194f);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.a, var_1.a, 66430u) & vec3<u32>(0u, var_4.c, var_4.c), ~u_input.a)));
}

