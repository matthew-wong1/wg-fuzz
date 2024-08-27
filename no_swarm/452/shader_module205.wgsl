struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(vec2<u32>(6032u, 1u), ~(~(~vec2<u32>(1u, 109055u))), vec2<bool>(all(vec3<bool>(true, true, true)), true)), ~(~_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, u_input.a.x, 21484i, -5340i))) & vec4<i32>(u_input.a.x, ~(-2147483647i), -u_input.b.x, u_input.b.x ^ (u_input.a.x ^ -1i)), ~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 30606u)), reverseBits(vec2<u32>(4294967295u, 36112u)))));
    let var_1 = 37091u;
    var var_2 = var_0.b.x;
    var_2 = var_0.b.x;
    let var_3 = Struct_1(vec2<u32>(var_1, 6005u), var_0.b, 42112u << (_wgslsmith_div_u32(~abs(2814u), var_1) % 32u));
    return -2147483647i;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_add_vec3_u32(~firstLeadingBit(~(~arg_0)), ~vec3<u32>((arg_1.a.x >> (arg_0.x % 32u)) << (2595u % 32u), arg_1.c, ~_wgslsmith_dot_vec2_u32(var_0.a, var_0.a)));
    var var_2 = firstTrailingBit(arg_1.a);
    let var_3 = vec3<i32>(func_3(), _wgslsmith_div_i32(-31538i & -arg_1.b.x, ~(~var_0.b.x)), u_input.a.x) | vec3<i32>(reverseBits(-1i) & var_0.b.x, u_input.a.x, -61851i);
    var_2 = vec2<u32>(1u, var_0.c);
    return select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), vec4<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), false, false), all(vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))))), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_1(arg_0.a, abs(abs(-vec4<i32>(-38692i, 3134i, -2147483647i, u_input.a.x))), ~32957u);
    let var_1 = func_2(select(select(vec3<u32>(_wgslsmith_clamp_u32(0u, arg_0.a.x, var_0.a.x), 0u, abs(4294967295u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, 1u, 24562u), vec3<u32>(42957u, arg_0.c, var_0.a.x)), vec3<bool>(true, true, true)), select(abs(vec3<u32>(var_0.a.x, 0u, arg_0.c)) << (~vec3<u32>(var_0.c, 36685u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u), vec3<u32>(var_0.c, 0u, 4294967295u)), max(vec3<u32>(1u, 44761u, var_0.c), vec3<u32>(arg_0.a.x, 70840u, 42266u))), vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, true)))), vec3<bool>(true, false, true)), Struct_1(vec2<u32>(4294967295u, _wgslsmith_sub_u32(var_0.a.x, abs(38740u))), var_0.b, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_0.c, 30965u, arg_0.a.x, 16894u) | vec4<u32>(13713u, 5708u, arg_0.a.x, arg_0.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(8078u, var_0.a.x, 4294967295u, 0u), ~vec4<u32>(4294967295u, arg_0.c, 11005u, 26283u)))));
    let var_2 = vec3<i32>(-1i, -2147483647i, 2147483647i);
    let var_3 = var_1.x;
    var var_4 = arg_0.b.xyy;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstTrailingBit(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(3467u, 1u, 71865u)))), min(~10695u, ~(~(~55859u))), reverseBits(~(~(~37812u))), ~(~countOneBits(func_1(Struct_1(vec2<u32>(68830u, 1481u), u_input.a, 4294967295u), vec2<f32>(-1000f, 269f)))));
    var var_1 = ~vec4<u32>(_wgslsmith_sub_u32(~(~4294967295u), 0u), ~30181u, ~var_0.x & ~(var_0.x | var_0.x), firstLeadingBit(var_0.x));
    var var_2 = vec2<bool>(true, true);
    var var_3 = reverseBits(_wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 52103i, 2147483647i, 1i) >> (var_0 % vec4<u32>(32u)), u_input.a ^ vec4<i32>(2147483647i, 18562i, u_input.b.x, u_input.b.x)))) | vec4<i32>(~0i, u_input.a.x, -1i, 1i);
    var var_4 = vec3<bool>(true, select(select(true, var_2.x | (var_1.x > 45847u), !var_2.x && var_2.x), true, var_2.x), !var_2.x);
    let var_5 = 1638f;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<u32>(abs(var_0.x), abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_1.wz))), _wgslsmith_f_op_f32(exp2(var_5)));
}

