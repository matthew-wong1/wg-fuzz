struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    var var_0 = select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(firstLeadingBit(0u) < ~u_input.e.x), false), vec3<bool>(true, true || (u_input.a.x > ~(-13832i)), true));
    let var_1 = _wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1048f))));
    var var_2 = max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 53336i, -6617i, 0i), vec4<i32>(28171i, 1i, 14965i, -17119i)), u_input.a.x ^ -23831i), -15784i, 44056i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(-2147483647i, -3488i))), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 55899i, u_input.b), vec3<i32>(u_input.c, 0i, -20998i)), -35408i, u_input.d))) & (vec4<i32>(-min(-2147483647i, u_input.a.x), max(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(-28278i, 14755i))), u_input.a.x, -min(18424i, -1i)) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.e.x, 15277u, u_input.e.x, u_input.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 42833u, 1u, 63066u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 108508u)), false), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.e.x, 14450u, u_input.e.x)), vec4<u32>(37203u, u_input.e.x, 1u, u_input.e.x), ~vec4<u32>(u_input.e.x, 4294967295u, 1u, u_input.e.x))) % vec4<u32>(32u)));
    var_2 = ~(~reverseBits(reverseBits(vec4<i32>(u_input.c, u_input.a.x, -1i, -12610i)) << (~vec4<u32>(u_input.e.x, 78698u, 36651u, 1u) % vec4<u32>(32u))));
    let var_3 = Struct_2(Struct_1(vec3<f32>(1397f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(var_1))), vec3<i32>(_wgslsmith_dot_vec3_i32(-var_2.wyx, var_2.xxy), u_input.c, 1i), ~vec4<u32>(u_input.e.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 1u), vec3<u32>(30192u, 4226u, 1u)), ~17605u), 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - 637f), -583f)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -794f, -1244f) + vec3<f32>(var_1, var_1, var_1)))))), var_2.yxz, ~_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.e.x, 108048u, 1u, 4294967295u), vec4<u32>(9223u, 0u, u_input.e.x, u_input.e.x)), vec4<u32>(53058u, 7063u, u_input.e.x, 56857u) | vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 25082u)), 0i << ((u_input.e.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, 61841u, 10011u)) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 135f), vec2<f32>(var_1, var_1)))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.a + _wgslsmith_f_op_vec3_f32(-var_3.a.a)) * var_3.b.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_3.b.a))), vec3<bool>(var_0.x, true, var_3.a.c.x < 38128u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), firstLeadingBit(select(vec3<i32>(0i, arg_1.x, u_input.d) | vec3<i32>(arg_1.x, -2147483647i, u_input.c), vec3<i32>(arg_0.x, 0i, arg_0.x) & arg_1.xwz, true)), ~vec4<u32>(1u, _wgslsmith_div_u32(u_input.e.x, 13226u), _wgslsmith_mod_u32(1u, 103154u), ~u_input.e.x), max(-2147483647i, _wgslsmith_add_i32(-2147483647i, arg_1.x)), vec2<f32>(_wgslsmith_div_f32(-543f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -3267f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1482f, -140f, 702f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(676f, -1171f, 777f), vec3<f32>(-856f, 694f, -1122f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(859f, 150f, 269f), vec3<f32>(1000f, -1913f, -1270f))))), vec3<i32>(20178i, 2147483647i, -(arg_0.x >> (u_input.e.x % 32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, 0u), ~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 107524u)), 26701i, vec2<f32>(954f, _wgslsmith_f_op_f32(-1093f + _wgslsmith_f_op_f32(f32(-1f) * -304f)))));
    var var_1 = firstLeadingBit(max(var_0.a.d, arg_0.x));
    var_1 = 22600i;
    var var_2 = vec4<i32>(-32543i, -countOneBits(-1i) & (-2147483647i & abs(select(arg_1.x, var_0.b.d, false))), arg_0.x, ~var_0.a.b.x);
    var var_3 = min(vec4<i32>(-45326i << (var_0.a.c.x % 32u), 2147483647i, _wgslsmith_mult_i32(firstLeadingBit(firstTrailingBit(arg_0.x)), min(-1i, ~2147483647i)), -2147483647i ^ ~_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -40710i)), -(~arg_1));
    return ~abs(vec4<u32>(_wgslsmith_sub_u32(var_0.b.c.x, ~22876u), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.e), vec2<u32>(u_input.e.x, var_0.b.c.x)), 7056u & _wgslsmith_div_u32(u_input.e.x, 0u), ~(var_0.a.c.x ^ 0u)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> f32 {
    var var_0 = Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = max(1i, arg_2.b.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(1i, u_input.b, u_input.a.x, -28i)), firstTrailingBit(-27751i), 31301i), ~select(arg_2.b, vec4<i32>(arg_2.a.d, arg_2.a.d, arg_2.b.x, arg_3), vec4<bool>(true, false, var_0.a.x, var_0.a.x))));
    var var_2 = u_input.e;
    let var_3 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a.a)), -min(arg_2.a.b, arg_2.b.wwx), vec4<u32>(1u, arg_1 | ~67801u, abs(_wgslsmith_add_u32(2424u, 1070u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, var_2.x), vec3<u32>(35236u, arg_2.a.c.x, 1u))), -(u_input.c & u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.e)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(103f, -1000f), arg_2.a.e))))));
    let var_4 = arg_2;
    return 1f;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(503f, select(~4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 19474u), vec4<u32>(29619u, u_input.e.x, 1u, u_input.e.x), vec4<u32>(32349u, 33575u, u_input.e.x, 0u)), func_2(vec4<i32>(u_input.d, u_input.b, u_input.c, 0i), abs(vec4<i32>(u_input.a.x, -61373i, -14128i, 1i)))), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, 2169f, 1884f) * vec3<f32>(-1197f, 941f, -1480f))), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-26001i, u_input.d, u_input.c)), select(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(55193i, -1i, u_input.a.x), false)), vec4<u32>(~u_input.e.x, u_input.e.x, ~66963u, countOneBits(u_input.e.x)), -1i, vec2<f32>(230f, -590f)), -vec4<i32>(_wgslsmith_clamp_i32(u_input.c, 1i, u_input.c), 0i, abs(u_input.a.x), -17022i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.d, u_input.b), vec3<i32>(u_input.c, u_input.d, u_input.b), vec3<bool>(false, true, true)), vec3<i32>(-2167i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.c, -9798i, u_input.d)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(0i, u_input.c, -1i)), firstLeadingBit(vec3<i32>(u_input.a.x, 0i, u_input.c))))));
    let var_1 = min(reverseBits(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 32081u), vec3<u32>(42923u, 0u, 30091u)))), ~vec3<u32>(60196u, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(29805u, 0u, 1u, 57947u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x))));
    var var_2 = (_wgslsmith_div_vec2_i32(u_input.a, select(-vec2<i32>(u_input.c, u_input.c), firstTrailingBit(vec2<i32>(77552i, 1i)), vec2<bool>(true, true))) & _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_mod_i32(u_input.c, -1i), max(-5519i, u_input.b)))) >> ((~vec2<u32>(4118u & u_input.e.x, max(4294967295u, 89329u)) & max(func_2(~vec4<i32>(u_input.c, u_input.c, u_input.d, -18007i), vec4<i32>(u_input.c, 29868i, -75715i, -14462i)).zx, ~u_input.e)) % vec2<u32>(32u));
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1278f, var_0, var_0))))))), (~vec3<i32>(39910i, var_2.x, -2147483647i) ^ abs(vec3<i32>(20706i, 2147483647i, u_input.b))) | ~firstTrailingBit(vec3<i32>(-29104i, 1i, 30610i)), vec4<u32>(u_input.e.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(86208u, 11338u, 4294967295u), vec3<u32>(87212u, 41245u, var_1.x)), 78981u), ~var_1.x >> (reverseBits(var_1.x) % 32u), 20514u), _wgslsmith_mod_i32(var_2.x, ~reverseBits(u_input.b)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), -282f), _wgslsmith_f_op_f32(f32(-1f) * -912f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0))) - _wgslsmith_div_vec3_f32(vec3<f32>(-855f, 1000f, var_0), vec3<f32>(-635f, 1315f, -1866f)))), vec3<i32>(~(-4549i) | -var_2.x, _wgslsmith_div_i32(37031i, -var_2.x), _wgslsmith_div_i32(32551i, u_input.c)), vec4<u32>(12174u, var_1.x, ~var_1.x, ~0u), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_2.x, -2147483647i)), _wgslsmith_div_i32(-1i, -14663i), min(41329i, u_input.b)), vec3<i32>(~var_2.x, u_input.a.x, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, var_0))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(300f, var_0), vec2<f32>(var_0, var_0)))))));
    return Struct_3(!vec3<bool>(all(vec3<bool>(false, var_3, var_3)), !var_3, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26103u | _wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.e.x, u_input.e.x, true) << (u_input.e.x % 32u), u_input.e.x), u_input.e);
    let var_1 = func_1();
    var var_2 = ~20462u;
    let var_3 = max(var_0, reverseBits(firstLeadingBit(u_input.e.x)));
    var var_4 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-434f - 647f), _wgslsmith_f_op_f32(f32(-1f) * -1884f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f * -343f) + -591f)), max(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.b), 1i, reverseBits(u_input.c)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 24233i, -26105i), vec3<i32>(u_input.a.x, u_input.d, u_input.a.x), vec3<i32>(-77962i, 22934i, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(50854i, -18229i, 23124i), vec3<i32>(11602i, -13960i, 20007i)), var_1.a.x)), max(vec4<u32>(countOneBits(4294967295u), ~u_input.e.x, 77658u, 39991u), ~(vec4<u32>(56749u, var_0, 27265u, 4294967295u) << (vec4<u32>(var_0, 0u, 1u, var_0) % vec4<u32>(32u)))), -36129i, vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(round(-642f)))), _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(1i, u_input.d, 15944i, -1i)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.d, u_input.b, u_input.b), select(vec4<i32>(-1i, u_input.c, u_input.d, u_input.b), vec4<i32>(u_input.c, u_input.d, -2147483647i, -14199i), false)), firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, 17151i, u_input.b, -43705i), _wgslsmith_clamp_vec4_i32(vec4<i32>(47320i, 0i, u_input.d, 1i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.d), vec4<i32>(-28465i, u_input.b, 0i, 3885i))))));
    var_2 = _wgslsmith_div_u32(19215u, reverseBits(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.a.x - 1000f) - -1000f)))), 454f, _wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(countOneBits(1u)), 0u), ~(~14397u)), max(reverseBits(~var_4.b.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_4.b.x, 1i, -2147483647i), var_4.b.xzw, vec3<bool>(var_1.a.x, false, true)), select(vec3<i32>(22532i, -1i, -6199i), var_4.b.xww, true))) & u_input.b);
}

