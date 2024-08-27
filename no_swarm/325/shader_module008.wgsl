struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(30862u, 141281u), vec3<f32>(329f, -331f, -1000f));

var<private> global1: array<Struct_1, 12>;

var<private> global2: bool = true;

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 46253u, 80308u), vec3<u32>(1u, 0u, 24408u), vec3<u32>(40002u, 54379u, 0u));

var<private> global4: array<u32, 17> = array<u32, 17>(0u, 74018u, 1u, 1u, 28226u, 0u, 0u, 9608u, 0u, 46998u, 1u, 34816u, 4294967295u, 0u, 0u, 35940u, 28969u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_3(vec4<bool>(!(!(arg_3.a.b.x == global0.b.x)), any(vec2<bool>(true, true)), (select(u_input.d, -39796i, true) >= (arg_1.x << (arg_2.a.x % 32u))) || !all(vec2<bool>(true, false)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0)) >= -943f), arg_2, Struct_2(Struct_1(~(global0.a ^ arg_3.a.a), _wgslsmith_f_op_vec3_f32(-global0.b))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(52202i, -11484i), -arg_1, arg_1) | arg_1;
    let var_2 = var_0.a.x;
    let var_3 = vec4<bool>(!any(vec2<bool>(true, false)), arg_1.x < u_input.d, all(!vec2<bool>(var_0.a.x, true)), !all(var_0.a.wyw));
    global4 = array<u32, 17>();
    return 1i;
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = true;
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 1104f, arg_0.a.x))), arg_0.b.b, true)));
    global4 = array<u32, 17>();
    let var_2 = 24593u;
    let var_3 = Struct_2(Struct_1(select(~vec2<u32>(26362u, 45538u), u_input.c.yw << (global0.a % vec2<u32>(32u)), !(!vec2<bool>(var_0, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.b)))));
    return true;
}

fn func_1() -> vec4<f32> {
    var var_0 = all(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.b))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 0u), 12u)], reverseBits(u_input.d), u_input.c.zx, ~(~global4[_wgslsmith_index_u32(global0.a.x, 17u)]));
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c, u_input.d, var_1.c), vec4<i32>(var_1.c, var_1.c, 1i, -364i)), _wgslsmith_mult_i32(~var_1.c, func_2(1200f, vec2<i32>(var_1.c, -33797i), Struct_1(var_1.b.a, var_1.a), Struct_2(global1[_wgslsmith_index_u32(var_1.b.a.x, 12u)])))), (vec2<i32>(-1i) * -vec2<i32>(var_1.c, 0i)) ^ reverseBits(-vec2<i32>(u_input.d, 2894i))), ~vec2<i32>(max(-1i, u_input.d), var_1.c));
    var var_3 = vec3<bool>(true, all(select(vec3<bool>(true, func_3(var_1), all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, global0.a.x <= u_input.b))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, true)))));
    var var_4 = global0.b;
    return _wgslsmith_div_vec4_f32(vec4<f32>(-796f, -226f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1359f, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(ceil(-748f))), _wgslsmith_f_op_f32(ceil(-480f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), global0.b.x, var_4.x, _wgslsmith_f_op_f32(-var_1.b.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1950f, global0.b.x, _wgslsmith_f_op_f32(floor(953f)), _wgslsmith_f_op_f32(-817f * var_4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1633f - -1166f)), -648f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(global0.b.x)))), global0.b.x))) + _wgslsmith_f_op_vec4_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(~u_input.d, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2461i, u_input.d), u_input.d, 1i), countOneBits(u_input.d)), _wgslsmith_mod_vec3_u32(u_input.c.xzz >> (global3[_wgslsmith_index_u32(97898u, 3u)] % vec3<u32>(32u)), ~(u_input.c.wzx >> (global3[_wgslsmith_index_u32(34195u, 3u)] % vec3<u32>(32u))) ^ global3[_wgslsmith_index_u32(~(~u_input.b), 3u)]));
}

