struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = ~(u_input.b.wz | (~vec2<u32>(4294967295u, 0u) & vec2<u32>(~u_input.b.x, u_input.a)));
    var var_1 = arg_1.c;
    var var_2 = arg_1.c;
    let var_3 = Struct_1(vec3<i32>(abs(-global0.x), arg_1.a, arg_2), var_1.b, vec2<i32>(-(~abs(arg_2)), ~(~min(global0.x, arg_1.c.c.x))), vec2<u32>(arg_1.c.d.x, ~0u));
    var_1 = var_3;
    return min(41606i, reverseBits(var_1.c.x)) ^ global0.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = 4294967295u;
    return vec4<i32>(global0.x, _wgslsmith_mult_i32(i32(-1i) * -global0.x, _wgslsmith_mult_i32(-2147483647i, ~global0.x & _wgslsmith_dot_vec2_i32(global0.zw, global0.yz))), _wgslsmith_add_i32(~func_3(_wgslsmith_add_i32(32565i, global0.x), Struct_2(0i, vec4<bool>(true, false, true, false), Struct_1(global0.wwx, 1186f, vec2<i32>(global0.x, global0.x), vec2<u32>(32769u, 34900u))), ~global0.x), global0.x), global0.x);
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = abs(vec4<i32>(-2147483647i, max(countOneBits(_wgslsmith_mod_i32(-2922i, arg_0.a)), ~(global0.x ^ 13506i)), global0.x, 11365i));
    global0 = _wgslsmith_mult_vec4_i32(func_2(), abs(vec4<i32>(-2147483647i | _wgslsmith_sub_i32(global0.x, global0.x), abs(arg_0.c.a.x), -5596i, 4652i)));
    var var_0 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_0.c.d.x, 19264u, ~u_input.a, arg_0.c.d.x), vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, ~u_input.b.x), _wgslsmith_mult_u32(u_input.a, 4294967295u), 1u), false), u_input.b);
    var var_1 = arg_0.c;
    let var_2 = Struct_1(arg_0.c.a & -var_1.a, arg_0.c.b, ~vec2<i32>(-2147483647i, global0.x), u_input.b.yw);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(-49566i, countOneBits(func_1(Struct_2(global0.x, vec4<bool>(true, true, false, false), Struct_1(global0.yzx, -1000f, vec2<i32>(18880i, global0.x), vec2<u32>(69126u, 24955u))))), -func_1(Struct_2(global0.x, vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(4518i, global0.x, global0.x), 1390f, global0.yy, vec2<u32>(u_input.a, u_input.a)))) >> (_wgslsmith_mod_u32(u_input.a, 13263u) % 32u)), 1409f, global0.zw, u_input.b.wy);
    let var_1 = true;
    var var_2 = Struct_2(-39513i, vec4<bool>(false, true, var_1, !all(select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, true, true), true))), Struct_1(vec3<i32>(1i, ~0i, 1i) | vec3<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -64999i, global0.x), global0.ywx), 31547i ^ global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1050f), vec2<i32>(-1i) * -vec2<i32>(global0.x, -17936i), vec2<u32>((u_input.a | u_input.b.x) << (~25477u % 32u), var_0.d.x)));
    let var_3 = ~(~var_0.d);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(966f + -3026f), var_2.c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f + _wgslsmith_f_op_f32(-var_2.c.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.c.b, _wgslsmith_f_op_f32(max(var_2.c.b, -682f)))))));
    var var_5 = _wgslsmith_sub_u32(countOneBits(var_2.c.d.x), 4294967295u) | u_input.b.x;
    var_5 = ~72057u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b - _wgslsmith_div_f32(var_4.x, _wgslsmith_div_f32(var_0.b, -797f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), -264f), var_4.x)), 21232u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(591f, 1000f))));
}

