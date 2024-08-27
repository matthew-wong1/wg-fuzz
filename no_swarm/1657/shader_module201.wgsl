struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-595f, -449f))), _wgslsmith_f_op_f32(-740f + 1281f))))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(63319i, ~(u_input.b << (u_input.a % 32u)), u_input.b), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, -5658i), ~u_input.b), -abs(-24225i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -30896i, 30066i), vec4<i32>(u_input.b, 37407i, 4633i, u_input.b)), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), reverseBits(-(~vec3<i32>(u_input.b, u_input.b, -2147483647i)))), ~reverseBits(vec2<u32>(u_input.c, u_input.a) & firstTrailingBit(vec2<u32>(u_input.c, u_input.c))), !(_wgslsmith_f_op_f32(exp2(var_0)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-411f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(734f, var_0)), vec4<bool>(select(true, false, var_1.c), var_1.c, true, true), var_1.b.x, var_1, var_0);
    var var_3 = ~var_2.d.a.zy;
    var var_4 = var_2.d;
    return abs(max(-2147483647i, var_3.x)) != var_2.d.a.x;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), -vec3<i32>(-2147483647i, u_input.b, 0i)), max(vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(u_input.b, -2147483647i, u_input.b), -vec3<i32>(-7693i, u_input.b, u_input.b)) | vec3<i32>(u_input.b ^ -2147483647i, ~u_input.b, ~(-1i))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~1u), ~vec2<u32>(1u, u_input.c) | _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.a, 1u))), false);
    let var_1 = Struct_1(vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x), abs(var_0.b), true);
    let var_2 = vec2<bool>(func_3(), true);
    let var_3 = true;
    let var_4 = Struct_1(select(max(var_1.a, vec3<i32>(var_1.a.x, u_input.b >> (1u % 32u), 0i)), ~var_1.a, select(vec3<bool>(var_2.x && var_2.x, var_0.c, false), select(select(vec3<bool>(false, false, var_3), vec3<bool>(var_2.x, false, var_0.c), arg_0.x), select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.x, var_0.c), vec3<bool>(false, var_1.c, false)), !var_3), false)), ~var_0.b, var_2.x);
    return ~(~_wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, u_input.a, var_4.b.x, 8323u) & vec4<u32>(0u, 1u, var_1.b.x, var_1.b.x), vec4<u32>(9528u, 0u, u_input.a, var_4.b.x))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, min(~u_input.c, func_2(vec2<bool>(true, true))) & abs(max(0u, 34150u)), min(~70440u, u_input.c)), ~firstTrailingBit(abs(vec3<u32>(7256u, 304u, u_input.c))));
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = arg_2.d.a.xx;
    var var_1 = select(arg_2.b.xx, select(vec2<bool>(false, true), !vec2<bool>(!arg_1, false), !(!select(vec2<bool>(arg_2.d.c, false), arg_2.b.xz, true))), !all(vec3<bool>(any(arg_2.b), 72852u < u_input.a, true || arg_2.b.x)));
    var_1 = !vec2<bool>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(487f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - -784f)));
    var_1 = select(!arg_2.b.wz, !(!select(vec2<bool>(true, var_1.x), !vec2<bool>(false, arg_2.b.x), arg_2.b.yy)), arg_2.b.x);
    let var_2 = false;
    return StorageBuffer(min(reverseBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0, u_input.b, -24472i, 0i), vec4<i32>(-12427i, u_input.b, arg_0, 29881i), arg_2.b), abs(vec4<i32>(-23398i, arg_2.d.a.x, -13697i, u_input.b)))), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 2147483647i, arg_2.d.a.x, var_0.x), vec4<i32>(8142i | arg_2.d.a.x, countOneBits(43324i), arg_0 << (1u % 32u), ~2147483647i))), _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(26342i, arg_0, 0i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0, -53449i, -1i), vec4<i32>(2147483647i, 1i, -2147483647i, arg_0)), vec4<bool>(arg_1, false, true, false)), ~vec4<i32>(arg_0, var_0.x >> (arg_2.d.b.x % 32u), -2147483647i, _wgslsmith_add_i32(-32228i, 8502i))), func_2(!arg_2.b.yw), 42316u, 21330u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(1u, u_input.c);
    let x = u_input.a;
    s_output = func_4(~func_1(~u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1304f, -216f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(512f, -497f) - -1529f)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true))))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), -1205f)), vec4<bool>(!func_3(), false, true, true), ((1u & u_input.c) & u_input.a) >> (u_input.a % 32u), Struct_1(~(vec3<i32>(-1i, u_input.b, u_input.b) << (vec3<u32>(0u, u_input.c, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.c)), true), -361f));
}

