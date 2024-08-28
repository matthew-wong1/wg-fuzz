struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(0u, 63283u, 0u), vec2<i32>(0i, 47823i), false);

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-606f, 670f))));
    let var_1 = arg_0;
    let var_2 = var_1;
    global2 = array<vec4<i32>, 10>();
    let var_3 = Struct_1(arg_0.a, ~_wgslsmith_clamp_vec3_u32(arg_0.b ^ vec3<u32>(1u, 41296u, var_1.b.x), ~vec3<u32>(4294967295u, var_1.b.x, 42282u), ~vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u) >> (global1.b % vec3<u32>(32u))), max(vec2<i32>(-19364i, -6331i), vec2<i32>(_wgslsmith_mod_i32(0i, var_2.c.x) >> (~3222u % 32u), 2147483647i)), arg_0.d);
    return !(!arg_0.a.x);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = all(vec2<bool>(true, true));
    var var_1 = _wgslsmith_div_i32(58493i, -36815i);
    let var_2 = countOneBits(vec4<i32>(51450i, _wgslsmith_sub_i32(abs(select(global1.c.x, global1.c.x, false)), -5746i), _wgslsmith_dot_vec2_i32(-global1.c, ~vec2<i32>(-6279i, 68125i)), i32(-1i) * -50673i));
    global2 = array<vec4<i32>, 10>();
    global2 = array<vec4<i32>, 10>();
    return abs(~global0.x);
}

fn func_2() -> vec3<bool> {
    global2 = array<vec4<i32>, 10>();
    let var_0 = true;
    global1 = Struct_1(select(vec4<bool>(global1.a.x, func_3(var_0) > max(global1.b.x, global1.b.x), all(!global1.a.xzx), func_1(Struct_1(vec4<bool>(global1.d, global1.d, var_0, var_0), global1.b, u_input.a.zx, false))), vec4<bool>(all(!vec4<bool>(var_0, false, global1.d, global1.a.x)), all(vec4<bool>(global1.a.x, true, var_0, global1.d)), select(var_0, false, true), false), select(global1.a, global1.a, global1.c.x == max(global1.c.x, 23941i))), abs(global1.b), -u_input.a.xz, !(!all(select(global1.a, vec4<bool>(false, var_0, global1.a.x, var_0), global1.a))));
    return !(!(!vec3<bool>(var_0, !var_0, select(global1.a.x, global1.d, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.c.x;
    global0 = _wgslsmith_mult_vec2_u32(~abs(abs(global1.b.xz)), global1.b.yx);
    let var_1 = select(vec3<bool>(~global0.x == 25884u, global1.d, true), select(vec3<bool>(29917u != ~global0.x, !(!global1.a.x), global1.d | true), !global1.a.wyx, global1.a.zxy), select(func_1(Struct_1(global1.a, global1.b, u_input.a.yx, global1.d)), any(func_2()), true) & false);
    let var_2 = Struct_1(!select(global1.a, global1.a, select(vec4<bool>(false, global1.d, global1.d, true), global1.a, true)), ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global1.b, min(global1.b, global1.b)), ~global1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a.x, ~reverseBits(-6649i)), firstLeadingBit(global1.c)), all(!vec2<bool>(30960u > global0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1467f);
}

