struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(665f)), 754f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = -29716i;
    let var_1 = Struct_1(_wgslsmith_sub_u32(~42386u, ~(~_wgslsmith_mod_u32(0u, 4294967295u))), vec4<bool>(false, true, any(vec3<bool>(true, true, true)) && false, true && any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec2<i32>(0i, i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0, 81531i, u_input.c.x) ^ abs(vec3<i32>(1i, 4800i, 31286i))), vec3<i32>(u_input.c.x, 0i, -2147483647i)), -1126f);
    return u_input.a.xz;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = 2259u;
    let var_1 = arg_0;
    var var_2 = arg_0.b.x;
    var_2 = select(var_1.e <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0))), var_1.b.x, var_1.b.x);
    let var_3 = ~_wgslsmith_mod_vec2_u32(~func_3(), vec2<u32>(~(~43862u), 42449u));
    return firstLeadingBit(_wgslsmith_add_vec3_i32(min(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.c.x, arg_0.d, 0i)), firstTrailingBit(vec3<i32>(var_1.c.x, u_input.c.x, 38568i))), abs(vec3<i32>(-1i, var_1.c.x, u_input.c.x) ^ vec3<i32>(0i, -6641i, 2147483647i))), _wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(-2147483647i, 2147483647i, 41406i)), vec3<i32>(2147483647i, arg_0.d, u_input.c.x), select(vec3<bool>(arg_0.b.x, false, false), vec3<bool>(arg_0.b.x, true, var_1.b.x), vec3<bool>(var_1.b.x, false, var_1.b.x))), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, var_1.c.x, u_input.c.x), ~vec3<i32>(0i, 1i, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(12988i, -3805i, u_input.c.x), vec3<i32>(1i, -45548i, 18984i)), reverseBits(func_1(Struct_1(19847u, vec4<bool>(true, true, true, false), vec2<i32>(-16040i, u_input.c.x), -2147483647i, -482f)))), -vec3<i32>(u_input.c.x, -u_input.c.x, -u_input.c.x));
    let var_1 = !(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))));
    let var_2 = func_1(Struct_1(~_wgslsmith_sub_u32(u_input.b.x, 52985u), var_1, ~u_input.c << (u_input.b.ww % vec2<u32>(32u)), u_input.c.x, _wgslsmith_f_op_f32(sign(-982f)))).x;
    var_0 = reverseBits(2147483647i);
    let var_3 = ~_wgslsmith_sub_vec3_u32(max(u_input.a.ywz, (u_input.b.ywx & u_input.a.xwx) << (u_input.b.xxx % vec3<u32>(32u))), select(~u_input.a.yxw, ~(vec3<u32>(4875u, 8712u, 0u) << (u_input.b.zzw % vec3<u32>(32u))), var_1.xww));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, 1i, u_input.c.x), firstTrailingBit(vec4<i32>(-19274i, 2147483647i, var_2, u_input.c.x)))), 18766u);
}

