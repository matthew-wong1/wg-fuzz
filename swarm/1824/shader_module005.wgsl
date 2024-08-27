struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, i32(-1i) * -50537i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f * 362f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(-1543f - 180f)))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-vec3<i32>(-8942i, u_input.c, u_input.c), min(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(81227i, -2147483647i, u_input.c))), Struct_1(vec2<i32>(1i, ~39575i), !select(false, true, true)));
    let var_1 = true;
    global0 = array<vec3<f32>, 32>();
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 13506u), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), var_0.b.x < 1i), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), ~vec4<u32>(1u, u_input.a, 57698u, u_input.a))), firstTrailingBit(vec4<u32>(u_input.a & u_input.b.x, abs(1u), ~1u, _wgslsmith_mod_u32(96198u, u_input.b.x)))), u_input.b);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(402f, 403f)), -330f, any(vec2<bool>(!var_0.c.b, min(0i, var_0.c.a.x) > -2147483647i))));
    return var_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = func_3();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-442f, -1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(527f))))))));
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, -1198f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -299f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1273f, var_1.x))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec2<i32>(63246i, u_input.c), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), u_input.b.wzw)))))));
    var var_1 = u_input.b.wx ^ ~(~select(u_input.b.zw, u_input.b.zw, all(vec3<bool>(false, true, false))));
    var var_2 = Struct_1(select(vec2<i32>(~u_input.c, _wgslsmith_sub_i32(u_input.c, select(9349i, 31734i, true))), min(-_wgslsmith_clamp_vec2_i32(vec2<i32>(17791i, u_input.d), vec2<i32>(-27243i, 65036i), vec2<i32>(-16699i, 42058i)), ~(vec2<i32>(-29588i, 2147483647i) & vec2<i32>(u_input.c, 73544i))), any(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)));
    let var_3 = all(select(vec3<bool>(var_2.b, !any(vec2<bool>(var_2.b, var_2.b)), true), !vec3<bool>(var_2.b, 1876f <= var_0.x, true), !(!(var_2.b && true))));
    let var_4 = Struct_2(Struct_1(vec2<i32>(countOneBits(~73493i), min(~u_input.d, -u_input.d)), var_3), vec3<i32>(select(abs(abs(u_input.c)), u_input.c >> (u_input.a % 32u), true), ~(~(-var_2.a.x)), ~1i), Struct_1(-var_2.a, all(vec2<bool>(true, true))));
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2653f, _wgslsmith_f_op_f32(step(1351f, -2933f))) * _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    var var_1 = -max(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 55564i, u_input.d, -2147483647i) << (u_input.b % vec4<u32>(32u)), vec4<i32>(u_input.c, -2147483647i, 16559i, -46772i) & vec4<i32>(u_input.c, u_input.d, 27750i, u_input.d)), (vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, 9408i, 2147483647i)) >> (vec4<u32>(select(26664u, 0u, var_0.x), 0u, u_input.b.x, reverseBits(u_input.b.x)) % vec4<u32>(32u)));
    let var_2 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = func_1();
}

