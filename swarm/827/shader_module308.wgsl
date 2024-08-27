struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32> = vec4<f32>(-657f, -1534f, 1000f, 168f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = abs(4294967295u);
    let var_1 = Struct_1(u_input.b);
    let var_2 = Struct_2(var_1, any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))), any(vec3<bool>(true, true, true)))));
    var var_3 = !all(vec2<bool>(var_2.b || (-3302i == var_2.a.a), all(!vec4<bool>(true, var_2.b, false, true))));
    var var_4 = ~vec3<i32>(abs(var_2.a.a << (var_0 % 32u)) << (((var_0 >> (u_input.a.x % 32u)) ^ min(0u, var_0)) % 32u), _wgslsmith_div_i32(-39126i, reverseBits(-var_1.a)), firstLeadingBit(-1619i));
    return select(var_2.b, all(!vec2<bool>(u_input.a.x == 53097u, any(vec3<bool>(true, var_2.b, true)))), !var_2.b);
}

fn func_2() -> vec2<u32> {
    var var_0 = -984f;
    var var_1 = vec2<bool>(all(!vec2<bool>(true, func_3(-2147483647i))), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -182f)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f), 1740f))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-617f + var_2.x)))))));
    return vec2<u32>(0u, ~_wgslsmith_mod_u32(23428u, _wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x)));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(func_2(), _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.ww, u_input.a.xx)), vec2<u32>(max(countOneBits(u_input.a.x), 84222u), u_input.a.x));
    let var_1 = Struct_2(Struct_1(u_input.b), !func_3(firstLeadingBit(u_input.b)) | true);
    let var_2 = var_1.b;
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyz, select(_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.a.yxz), u_input.a.wzy), firstTrailingBit(vec3<u32>(1u, 126688u, u_input.a.x) & vec3<u32>(u_input.a.x, 21898u, u_input.a.x)), var_2)), ~min(~(~var_0.x), var_0.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, -268f, select(var_1.a.a != u_input.b, all(vec2<bool>(false, false)), global1.x >= -788f)))), global1.x);
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(0i, var_1.a.a, -1239i)), -_wgslsmith_div_vec3_i32(~vec3<i32>(var_1.a.a, -1i, -14510i), _wgslsmith_add_vec3_i32(vec3<i32>(-21464i, u_input.b, var_1.a.a), vec3<i32>(2147483647i, u_input.b, var_1.a.a))), -vec3<i32>(u_input.b, var_1.a.a, countOneBits(32032i))), ~u_input.a << (~(~(~u_input.a)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1606f, _wgslsmith_f_op_f32(abs(global1.x)))), global1.x));
    let var_2 = select(u_input.a.x, _wgslsmith_dot_vec2_u32(~((vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.xx % vec2<u32>(32u))) & vec2<u32>(1u, u_input.a.x)), countOneBits(vec2<u32>(26341u, 4294967295u))), any(vec2<bool>(true, true)));
    var_0 = false;
    let var_3 = 1i;
    var var_4 = vec4<f32>(2082f, _wgslsmith_f_op_f32(floor(global1.x)), global1.x, _wgslsmith_f_op_f32(-global1.x));
    var_0 = !((_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), u_input.a.zy) == ~countOneBits(16900u)) & true);
    let x = u_input.a;
    s_output = func_1();
}

