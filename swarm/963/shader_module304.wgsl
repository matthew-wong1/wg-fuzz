struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-878f, -1292f), vec4<f32>(-1301f, 815f, -1326f, 1726f), 1239f, -1i, vec4<u32>(1u, 27286u, 64646u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = arg_0;
    let var_1 = arg_1;
    var var_2 = abs(arg_3.b.c.e);
    let var_3 = arg_1;
    let var_4 = arg_1;
    return max(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.a.b.d.d, 0i, -arg_1.a.c.d), ~vec3<i32>(-39509i, -22403i, global1.d) << (var_3.a.e.c.e.xww % vec3<u32>(32u))), global0.x & (~_wgslsmith_dot_vec2_i32(var_4.a.b.a.wy, arg_1.a.e.a.yx) >> (select(~u_input.c, 4294967295u, var_3.a.b.b.x) % 32u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(global1.b.yxx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.b.yxz + global1.b.zzw)))))), Struct_2(vec4<i32>(max(1i, global0.x), select(global1.d, global0.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, global0.x, 1i), vec4<i32>(global0.x, 2147483647i, global1.d, -1i)), 67299i) | vec4<i32>(global1.d, global0.x, _wgslsmith_sub_i32(2147483647i, 1i), global1.d), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), all(vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1631f, global1.b.x)) * vec2<f32>(-1555f, global1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), ~func_3(Struct_1(vec2<f32>(global1.b.x, global1.a.x), vec4<f32>(-926f, -2124f, -514f, -788f), global1.c, -41342i, vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.c)), Struct_4(Struct_3(vec3<f32>(-327f, 916f, 402f), Struct_2(vec4<i32>(global0.x, 56840i, -2147483647i, -2147483647i), vec3<bool>(false, false, false), Struct_1(vec2<f32>(-1462f, global1.b.x), vec4<f32>(679f, 341f, global1.a.x, global1.b.x), -369f, 2147483647i, global1.e), Struct_1(vec2<f32>(global1.b.x, global1.b.x), global1.b, global1.c, 0i, vec4<u32>(25501u, u_input.c, u_input.b.x, 105061u))), Struct_1(global1.b.wy, vec4<f32>(1158f, -751f, 276f, 504f), global1.c, -2510i, vec4<u32>(u_input.b.x, 22991u, 6274u, 1u)), vec3<u32>(global1.e.x, u_input.c, u_input.c), Struct_2(vec4<i32>(-2897i, 2147483647i, u_input.a, 0i), vec3<bool>(false, false, false), Struct_1(global1.a, global1.b, 258f, 10943i, vec4<u32>(global1.e.x, u_input.b.x, global1.e.x, 1116u)), Struct_1(vec2<f32>(703f, -207f), global1.b, global1.b.x, global1.d, global1.e)))), global1.c, Struct_3(global1.b.wzw, Struct_2(vec4<i32>(2147483647i, 2147483647i, 0i, u_input.a), vec3<bool>(true, true, false), Struct_1(global1.a, global1.b, -221f, -19758i, global1.e), Struct_1(vec2<f32>(-2680f, -1861f), vec4<f32>(2091f, global1.b.x, 1000f, global1.a.x), -537f, global1.d, global1.e)), Struct_1(vec2<f32>(global1.a.x, -1000f), global1.b, global1.a.x, -50829i, global1.e), global1.e.wzx, Struct_2(vec4<i32>(1i, global0.x, -5611i, global0.x), vec3<bool>(true, false, true), Struct_1(global1.b.wy, global1.b, 228f, 2147483647i, vec4<u32>(global1.e.x, u_input.b.x, global1.e.x, 4294967295u)), Struct_1(vec2<f32>(global1.a.x, -815f), global1.b, global1.a.x, 80686i, global1.e)))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global1.e, global1.e), vec4<u32>(12584u, global1.e.x, u_input.b.x, 4294967295u) << (vec4<u32>(u_input.b.x, 13670u, 21541u, 26118u) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.xx + vec2<f32>(global1.a.x, -1351f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, -1572f, 301f, global1.a.x), vec4<f32>(global1.b.x, 144f, 181f, -728f), true)) - _wgslsmith_f_op_vec4_f32(max(global1.b, global1.b))), 2486f, 19813i, vec4<u32>(min(u_input.b.x, 4294967295u), ~global1.e.x, 32084u | u_input.b.x, 16725u))), Struct_1(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_div_vec2_f32(vec2<f32>(global1.c, global1.c), vec2<f32>(global1.b.x, global1.c)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true))), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c + global1.c), _wgslsmith_f_op_f32(-global1.c)), -181f), global1.c, global0.x, _wgslsmith_div_vec4_u32(global1.e, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 7373u, 1u, u_input.b.x), vec4<u32>(1u, 39325u, 0u, 0u))) | _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, u_input.c, global1.e.x), max(vec4<u32>(31262u, 49421u, 27526u, 0u), vec4<u32>(41982u, 3133u, u_input.b.x, 43097u)))), ~(~global1.e.ywz), Struct_2(firstTrailingBit(select(vec4<i32>(global0.x, global0.x, 2147483647i, 7382i), countOneBits(vec4<i32>(global0.x, u_input.a, -5291i, -19544i)), all(vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.b.xz), _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(1777f, -939f, 1713f, -311f), false))), global1.b.x, global0.x, select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.e.x, u_input.c, u_input.c), vec4<u32>(11392u, 52050u, global1.e.x, 42133u)), global1.e, select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c, 912f), vec2<f32>(-484f, global1.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global1.b, vec4<f32>(global1.c, global1.c, 1353f, 396f)))), 1288f, 0i, _wgslsmith_add_vec4_u32(global1.e & vec4<u32>(u_input.c, 4294967295u, 4294967295u, global1.e.x), vec4<u32>(4294967295u, u_input.b.x, global1.e.x, global1.e.x) ^ global1.e))));
    var var_1 = 14190u;
    let var_2 = true;
    global0 = ((-(~vec3<i32>(-2147483647i, -2147483647i, -21416i)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, global1.e.x, u_input.b.x), var_0.e.d.e.ywx) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(7412i, 18149i, global1.d)), vec3<i32>(global1.d, u_input.a, global1.d)), -firstLeadingBit(var_0.e.a.yyx))) << (~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(15358u, var_0.b.c.e.x, 10287u)), vec3<u32>(4294967295u, firstTrailingBit(23078u), u_input.b.x)) % vec3<u32>(32u));
    global1 = Struct_1(var_0.e.c.b.yw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.d.b - var_0.b.d.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -1000f, 1877f, var_0.c.c))))), global1.a.x, global1.d, var_0.c.e);
    return Struct_3(_wgslsmith_f_op_vec3_f32(floor(var_0.c.b.yxz)), Struct_2(_wgslsmith_clamp_vec4_i32(var_0.b.a, -(~var_0.b.a), countOneBits(~vec4<i32>(-2147483647i, -2147483647i, -69039i, 47292i))), select(!var_0.b.b, var_0.e.b, select(select(vec3<bool>(var_2, var_0.e.b.x, var_0.b.b.x), var_0.e.b, false), vec3<bool>(false, var_2, var_2), select(var_0.b.b, var_0.b.b, vec3<bool>(var_0.b.b.x, var_0.b.b.x, var_0.e.b.x)))), var_0.b.d, Struct_1(var_0.a.yx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.b.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), -(~24184i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.c.e.x, 19829u, 0u), countOneBits(vec4<u32>(var_0.d.x, var_0.d.x, global1.e.x, u_input.b.x)), global1.e))), var_0.b.d, (vec3<u32>(0u, 16994u, u_input.b.x) ^ ~vec3<u32>(1u, global1.e.x, u_input.b.x)) & vec3<u32>(global1.e.x << (57089u % 32u), global1.e.x, var_0.b.c.e.x), Struct_2(vec4<i32>(-29937i, select(-26769i, -2147483647i, false) ^ global1.d, var_0.e.c.d, firstTrailingBit(~1i)), select(select(select(vec3<bool>(var_2, var_2, var_0.b.b.x), vec3<bool>(true, false, false), false), !vec3<bool>(true, var_2, var_2), true), vec3<bool>(!var_2, var_0.e.b.x, var_0.e.b.x), !all(var_0.b.b.xy)), Struct_1(var_0.e.d.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-299f, -326f, var_0.a.x, 747f), _wgslsmith_f_op_vec4_f32(sign(global1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -542f), 0i, min(~vec4<u32>(1u, global1.e.x, 1u, global1.e.x), ~var_0.e.c.e)), var_0.c));
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f)));
    let var_1 = func_2();
    global0 = vec3<i32>(1i, 2147483647i, 23621i);
    var var_2 = 13043u;
    var_2 = u_input.b.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.b.d.b - global1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x)))) * _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.x, -714f, global1.c, 1545f))))) - _wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(460f, 1127f, -1477f, global1.c))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1200f, global1.a.x, -581f, 974f), vec4<f32>(-633f, 589f, global1.c, -217f)))))), 403f, u_input.a, countOneBits(global1.e));
    var var_0 = -2147483647i ^ func_3(func_2().c, Struct_4(func_2()), global1.c, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.a.x) + global1.b.www) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c, -471f, -1106f), vec3<f32>(global1.a.x, global1.b.x, 252f), vec3<bool>(true, true, false)))), func_2().b, Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1348f, -1841f), vec2<f32>(global1.b.x, global1.c))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.c, -1330f, global1.a.x, global1.b.x), vec4<f32>(global1.c, -758f, 1044f, global1.c)), _wgslsmith_f_op_f32(global1.a.x + global1.a.x), _wgslsmith_div_i32(24847i, 1i), vec4<u32>(global1.e.x, 0u, u_input.b.x, 41241u)), _wgslsmith_add_vec3_u32(global1.e.xwx, ~vec3<u32>(0u, 1u, 59106u)), func_2().e));
    var var_1 = all(vec3<bool>(true, true, true));
    var_1 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)) - _wgslsmith_f_op_f32(abs(global1.c)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c, 302f, true)) * _wgslsmith_f_op_f32(min(1000f, global1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.x), 677f)), -905f) * global1.b), -450f, 40505i, vec4<u32>(_wgslsmith_mod_u32(43658u, select(17314u, firstLeadingBit(65105u), false)), 1u, firstLeadingBit(global1.e.x >> (1u % 32u)), ~u_input.c));
    var var_2 = ~global1.e.ww;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), -944f, 1286f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.xwy)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global1.b.ywy, vec3<f32>(757f, -359f, 1205f), vec3<bool>(true, false, true)))))))));
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + global1.b), 485f, min(_wgslsmith_dot_vec2_i32(countOneBits(reverseBits(vec2<i32>(-2642i, global0.x))), _wgslsmith_div_vec2_i32(~vec2<i32>(1i, global0.x), global0.zz)), ~global0.x), _wgslsmith_mod_vec4_u32(global1.e, reverseBits(global1.e)));
    let var_5 = max(firstLeadingBit(-(vec4<i32>(-1i, 0i, var_4.d, 1i) ^ abs(vec4<i32>(2147483647i, var_4.d, u_input.a, 67133i)))), -_wgslsmith_mult_vec4_i32(vec4<i32>(global1.d, global0.x, -2147483647i, u_input.a) & vec4<i32>(-1i, global1.d, 0i, 29565i), min(vec4<i32>(-2147483647i, -1i, var_4.d, 0i), vec4<i32>(21618i, 35708i, var_4.d, -2147483647i))) & _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(-55976i, u_input.a, u_input.a, -1i), vec4<i32>(-2147483647i, u_input.a, -1i, 71202i)), vec4<i32>(var_4.d, 1i, var_4.d, 1i) | vec4<i32>(0i, 2147483647i, 33750i, -103256i)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, global1.d, -1i)), vec4<i32>(-17891i, var_4.d, 0i, 4409i), -vec4<i32>(var_4.d, u_input.a, 0i, var_4.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global1.b.ww, _wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(-func_2().e.d.b.xy))), 8030i, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.x, 1412f)) * _wgslsmith_div_f32(423f, -781f)))), -vec3<i32>(~u_input.a, _wgslsmith_mod_i32(0i, 1i), var_4.d));
}

