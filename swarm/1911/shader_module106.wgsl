struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec3<i32> {
    return vec3<i32>(u_input.a, ~(-1i), u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = min(u_input.c.xx, ~select(u_input.c.yy & vec2<u32>(18592u, u_input.c.x), u_input.c.zz, !arg_3.e) & ~_wgslsmith_clamp_vec2_u32(~u_input.c.wz, ~u_input.c.zw, u_input.c.xz & vec2<u32>(u_input.d, 3606u)));
    let var_1 = arg_3.e;
    var_0 = ~u_input.c.yz;
    var var_2 = Struct_1(min(vec3<i32>(min(arg_1.c.a.x, arg_3.c.b.x), _wgslsmith_sub_i32(22752i, _wgslsmith_add_i32(6269i, arg_1.c.a.x)), firstLeadingBit(-31996i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(11098i, 46283i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, -3681i), arg_0.b))), -(~arg_0.a));
    var_2 = Struct_1(arg_1.c.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(8226i, var_2.b.x, u_input.a, 38317i), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, var_2.a.x, u_input.a, arg_1.d.b.x), vec4<i32>(2147483647i, var_2.b.x, u_input.a, 2147483647i))), ~(-arg_3.d.b.x) >> (countOneBits(countOneBits(67047u)) % 32u), -2147483647i));
    return vec3<i32>(u_input.a, ~var_2.b.x, 0i);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-(~u_input.a), u_input.a, -(~u_input.a)), func_2(vec4<u32>(4294967295u, ~1u, u_input.b >> (u_input.b % 32u), ~42168u), true)), ~firstTrailingBit(abs(~vec3<i32>(-6400i, u_input.a, -16738i))));
    let var_1 = max(u_input.a, u_input.a);
    let var_2 = Struct_1(~min(_wgslsmith_div_vec3_i32(func_3(Struct_1(vec3<i32>(-12640i, var_1, u_input.a), vec3<i32>(7028i, u_input.a, var_1)), Struct_2(true, vec3<f32>(691f, 368f, -153f), Struct_1(vec3<i32>(5057i, -31404i, -51324i), vec3<i32>(u_input.a, var_0.a.x, 1i)), Struct_1(var_0.a, var_0.a), true), false, Struct_2(false, vec3<f32>(558f, 1174f, 220f), Struct_1(vec3<i32>(var_1, var_0.a.x, u_input.a), var_0.a), Struct_1(vec3<i32>(var_1, var_1, -2147483647i), vec3<i32>(var_1, u_input.a, var_1)), true)), vec3<i32>(u_input.a, 19104i, var_0.b.x)), -vec3<i32>(2147483647i, -59655i, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(-1i << (max(u_input.b, 12323u) % 32u), -21329i), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-17421i, var_0.b.x, var_0.a.x), var_0.b)), var_1));
    var_0 = var_2;
    let var_3 = ~_wgslsmith_dot_vec3_u32(u_input.c.yzz, vec3<u32>(reverseBits(min(4294967295u, 1u)), ~_wgslsmith_sub_u32(u_input.b, u_input.d), ~abs(4294967295u)));
    return 160f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~0u, ~0u);
    var var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(724f - 1000f), -1587f, _wgslsmith_f_op_f32(1923f - 188f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(249f * -199f), 1079f, _wgslsmith_f_op_f32(sign(1006f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1048f))) + _wgslsmith_f_op_f32(-782f - 1f)))), 0u, _wgslsmith_f_op_f32(func_1()), reverseBits(reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0, vec2<u32>(var_0.x, 4294967295u)), _wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(50089u, u_input.d)), u_input.c.xy))));
}

