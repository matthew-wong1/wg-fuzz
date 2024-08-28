struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: vec4<f32> = vec4<f32>(-147f, -2310f, -1101f, 213f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xw));
    var var_1 = Struct_5(Struct_1(_wgslsmith_mod_i32(-21821i, abs(abs(-33369i))), !(arg_0.x < 0i) && false, ~reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -12609i, arg_0.x), arg_0))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, arg_0.x, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-38857i, -1i, arg_0.x, -1045i), vec4<i32>(arg_0.x, 11924i, 0i, arg_0.x))), true || any(vec3<bool>(true, true, true)), firstLeadingBit(-vec3<i32>(arg_0.x, 0i, u_input.b))), Struct_1(arg_0.x, _wgslsmith_f_op_f32(min(400f, arg_2)) == _wgslsmith_f_op_f32(f32(-1f) * -309f), ~vec3<i32>(u_input.b, u_input.a, 2147483647i)), Struct_1(~1i, true, firstTrailingBit(arg_0 & vec3<i32>(41844i, arg_0.x, 0i))), Struct_1(~(arg_0.x ^ arg_0.x), true, arg_0)), global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(19348u, 21u)]), 21u)] >> ((~(~global0[_wgslsmith_index_u32(4294967295u, 21u)]) | _wgslsmith_dot_vec2_u32(vec2<u32>(3586u, 7818u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44106u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)]))) % 32u));
    var var_2 = Struct_1(arg_0.x | ~28079i, _wgslsmith_add_i32(u_input.c, ~_wgslsmith_mod_i32(-53574i, var_1.a.a)) == -5294i, max(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -2147483647i, var_1.a.a)), vec3<i32>(-26697i, 1i, i32(-1i) * -2147483647i)), -arg_0));
    var var_3 = _wgslsmith_div_vec4_u32(select(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c, 21u)], 21u)], 29397u, var_1.c, 1u)), (vec4<u32>(0u, 1u, var_1.c, 30466u) & vec4<u32>(15792u, var_1.c, 23388u, 4294967295u)) | abs(vec4<u32>(var_1.c, global0[_wgslsmith_index_u32(0u, 21u)], var_1.c, 19597u)), true), vec4<u32>(_wgslsmith_div_u32(var_1.c, countOneBits(global0[_wgslsmith_index_u32(0u, 21u)])), var_1.c & _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 21u)]), max(abs(var_1.c), 28186u), 44039u)) | _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1914u, var_1.c, 0u, 1u), vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 21u)], 6678u, 4294967295u)), ~vec4<u32>(5786u, 0u, 26674u, 4294967295u)), vec4<u32>(~var_1.c, 1u, _wgslsmith_add_u32(0u, var_1.c), var_1.c)), select(~(vec4<u32>(7130u, global0[_wgslsmith_index_u32(var_1.c, 21u)], var_1.c, 1u) ^ vec4<u32>(var_1.c, 4294967295u, var_1.c, 40599u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 6943u, 3505u, global0[_wgslsmith_index_u32(11695u, 21u)]), vec4<u32>(var_1.c, global0[_wgslsmith_index_u32(var_1.c, 21u)], 0u, 4294967295u)), vec4<u32>(7439u, var_1.c, var_1.c, global0[_wgslsmith_index_u32(var_1.c, 21u)])), select(select(vec4<bool>(var_2.b, var_2.b, true, false), vec4<bool>(var_2.b, true, var_2.b, false), var_2.b), select(vec4<bool>(false, true, var_2.b, var_1.a.b), vec4<bool>(var_2.b, var_1.b.c.b, var_1.a.b, var_2.b), vec4<bool>(false, var_2.b, var_2.b, true)), select(vec4<bool>(var_1.a.b, false, var_2.b, var_1.a.b), vec4<bool>(true, var_2.b, false, var_1.a.b), vec4<bool>(var_1.a.b, var_2.b, var_2.b, var_1.b.a.b)))));
    let var_4 = Struct_4(var_1.b, vec4<bool>(!var_1.b.d.b, var_1.c <= (~4294967295u >> (var_3.x % 32u)), !(var_2.b && var_2.b), select(any(vec2<bool>(var_2.b, var_2.b)) & var_1.b.b.b, any(vec2<bool>(true, true)), !var_2.b)), var_1.b);
    return false;
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    let var_0 = Struct_4(Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-26166i, -66568i, u_input.b, 2147483647i), vec4<i32>(u_input.c, u_input.a, 0i, 0i)), !any(vec2<bool>(false, true)), min(vec3<i32>(-2147483647i, 22896i, 1784i), vec3<i32>(u_input.c, u_input.a, u_input.a)) | vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(1i, true, vec3<i32>(-1i, u_input.a, u_input.c) << (_wgslsmith_mod_vec3_u32(vec3<u32>(34808u, global0[_wgslsmith_index_u32(arg_0.x, 21u)], 11605u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 21u)], arg_0.x, global0[_wgslsmith_index_u32(76656u, 21u)])) % vec3<u32>(32u))), Struct_1(u_input.a, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.c), vec3<i32>(u_input.b, -2147483647i, u_input.c))), Struct_1(-_wgslsmith_mod_i32(u_input.c, 13575i), true, vec3<i32>(u_input.a | u_input.a, -1i, 2147483647i))), vec4<bool>(!func_3(vec3<i32>(u_input.a, u_input.b, u_input.b) >> (arg_0.xzz % vec3<u32>(32u)), vec4<f32>(global1.x, 421f, global1.x, global1.x), global1.x), 0u == (_wgslsmith_sub_u32(arg_0.x, arg_0.x) >> (arg_0.x % 32u)), _wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16472u, 14194u), vec3<u32>(22653u, 37642u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25361u, 21u)], 21u)]))) >= 31532u, true || !select(true, false, false)), Struct_2(Struct_1(abs(_wgslsmith_sub_i32(u_input.a, 2147483647i)), true, vec3<i32>(u_input.c, u_input.b & -1i, u_input.b)), Struct_1(u_input.b, !all(vec4<bool>(false, true, true, false)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(0i, u_input.c, u_input.c)), vec3<i32>(u_input.a, 1i, u_input.b) >> (arg_0.wwz % vec3<u32>(32u)))), Struct_1(-1i, true, abs(reverseBits(vec3<i32>(1i, u_input.b, u_input.a)))), Struct_1(_wgslsmith_clamp_i32(-u_input.c, min(u_input.b, u_input.b), -1i >> (global0[_wgslsmith_index_u32(0u, 21u)] % 32u)), !all(vec4<bool>(true, true, true, false)), vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.b, u_input.b), -2147483647i))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 1000f, global1.x, -1145f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 506f, global1.x) + vec4<f32>(-351f, 2640f, global1.x, global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -795f) - vec4<f32>(111f, global1.x, 731f, -1029f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -1293f, -675f, -179f), vec4<f32>(-2200f, -1450f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -984f, global1.x), vec4<f32>(393f, global1.x, -589f, global1.x), vec4<bool>(var_0.a.b.b, var_0.b.x, var_0.a.c.b, true))) - vec4<f32>(global1.x, global1.x, global1.x, -692f)))));
    let var_1 = vec2<u32>(~81544u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~global0[_wgslsmith_index_u32(arg_0.x, 21u)], reverseBits(arg_0.x), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), 0u)), min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0.x, 21u)], arg_0.x), arg_0.xwx), 1u, select(arg_0.x, 44920u, false), 1u), arg_0)), 21u)]);
    var var_2 = vec3<i32>(14286i, u_input.b << (countOneBits(global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(arg_0.x, var_1.x), _wgslsmith_clamp_u32(35526u, 0u, arg_0.x)), 21u)]) % 32u), -(u_input.a | _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.a.c.a, 22167i), _wgslsmith_mod_i32(2147483647i, 56925i))));
    var var_3 = Struct_5(var_0.a.c, var_0.c, countOneBits(~_wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u, 0u))));
    return select(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(12992u, arg_0.x), 21u)], ~arg_0.x), vec2<u32>(var_3.c, arg_0.x), !select(!var_0.b.wz, var_0.b.ww, select(vec2<bool>(false, true), vec2<bool>(true, var_0.b.x), vec2<bool>(false, var_3.a.b))));
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = ~(~firstTrailingBit(func_2(vec4<u32>(global0[_wgslsmith_index_u32(106675u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(63986u, 21u)]) ^ vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 49717u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)]))));
    var var_1 = ~(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.b, u_input.c, -30136i, u_input.b)), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -53859i, u_input.a))), vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.c), firstLeadingBit(-33451i), ~27934i, u_input.b)));
    return Struct_5(Struct_1(-2147483647i, false, vec3<i32>(1i, max(var_1.x, 21179i), _wgslsmith_add_i32(var_1.x, var_1.x))), Struct_2(Struct_1(-51651i, true, vec3<i32>(~(-2525i), 18065i, u_input.c)), Struct_1(u_input.b, false | (var_0.x != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)]), var_1.xyz), Struct_1(_wgslsmith_add_i32(var_1.x, _wgslsmith_mod_i32(var_1.x, 0i)), true, vec3<i32>(1i, ~u_input.a, -2147483647i)), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 41440i, 2147483647i), vec4<i32>(var_1.x, u_input.b, u_input.b, u_input.c)), false, ~(~vec3<i32>(u_input.c, -18101i, u_input.c)))), (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(34980u ^ var_0.x, 21u)]), 21u)] << (global0[_wgslsmith_index_u32(12236u, 21u)] % 32u)) ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    let var_0 = func_1(-1647f);
    let var_1 = firstLeadingBit(~(~(reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c, 21u)], 21u)], 5067u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(59917u, 21u)], 4294967295u)) % vec2<u32>(32u)))));
    let var_2 = -2147483647i;
    let var_3 = !select(!select(!vec3<bool>(true, false, var_0.b.b.b), vec3<bool>(true, true, true), var_0.a.b), !select(!vec3<bool>(var_0.a.b, false, var_0.b.b.b), select(vec3<bool>(var_0.b.b.b, var_0.b.b.b, false), vec3<bool>(var_0.b.d.b, var_0.b.b.b, var_0.a.b), var_0.b.c.b), var_0.a.b), true);
    let var_4 = false;
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), -828f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 307f, 811f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, -391f, 1875f, 488f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_clamp_i32(2147483647i, u_input.b, -23404i), ~(-(~var_2))), _wgslsmith_sub_u32(~(var_1.x ^ var_1.x), firstLeadingBit(_wgslsmith_clamp_u32(var_0.c, ~4294967295u, 43589u))), func_1(global1.x).b.a.c.zy);
}

