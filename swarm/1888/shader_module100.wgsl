struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(countOneBits(~countOneBits(u_input.d.wzz)), firstTrailingBit(u_input.d.wzz)));
    let var_1 = any(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)) | true;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1204f)) + _wgslsmith_f_op_f32(f32(-1f) * -1598f)))))));
    var_2 = -243f;
    var_2 = _wgslsmith_f_op_f32(step(846f, -709f));
    return vec3<i32>(-arg_0 | (33269i >> (u_input.e.x % 32u)), 0i << (1u % 32u), -u_input.b.x);
}

fn func_2() -> f32 {
    var var_0 = u_input.d.x;
    var_0 = u_input.d.x;
    var var_1 = Struct_3(vec3<i32>(u_input.c, _wgslsmith_sub_i32(_wgslsmith_add_i32(-31255i, u_input.b.x), u_input.b.x), (8809i >> (u_input.e.x % 32u)) ^ (~60081i >> (1u % 32u))));
    let var_2 = Struct_1(vec4<bool>(true, true, true, true), 114f);
    var_1 = Struct_3(_wgslsmith_clamp_vec3_i32(var_1.a, vec3<i32>(-(~u_input.c), var_1.a.x, var_1.a.x), func_3(6562i)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-811f * var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + var_2.b), -111f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(func_2()));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(911f, -846f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, 193f)))));
    let var_2 = true;
    let var_3 = Struct_1(!select(select(select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(var_2, true, false, var_2), vec4<bool>(false, var_2, true, true)), select(vec4<bool>(true, false, var_2, false), vec4<bool>(var_2, false, var_2, false), vec4<bool>(true, false, var_2, var_2)), vec4<bool>(var_2, true, var_2, var_2)), !vec4<bool>(false, false, var_2, var_2), select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(var_2, true, false, false), vec4<bool>(false, false, var_2, false))), _wgslsmith_f_op_f32(-var_1.x));
    var_0 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f - var_3.b) - _wgslsmith_f_op_f32(select(-1068f, var_3.b, false))) * _wgslsmith_f_op_f32(-565f - -1000f))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(max(select(u_input.b.zz, _wgslsmith_mod_vec2_i32(-u_input.b.xz, func_3(arg_1.d).zx), arg_1.a.xz), arg_1.e), vec2<i32>(select(i32(-1i) * -38545i, _wgslsmith_add_i32(0i << (0u % 32u), u_input.b.x), true), -2147483647i));
    var var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.c.b))), _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(max(arg_3.d, var_2)), true)))));
    var_1 = 4294967295u;
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~vec2<u32>(u_input.a, 31995u), Struct_3(u_input.d.wwy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))), Struct_4(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), true), _wgslsmith_f_op_f32(func_2()), 1f, 2147483647i, vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 54315i), _wgslsmith_sub_i32(~2147483647i, firstTrailingBit(u_input.c)))), vec2<u32>(~(~u_input.e.x), ~min(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.e.x))), Struct_2(u_input.c & 7685i, select(~vec2<u32>(u_input.a, u_input.e.x), ~vec2<u32>(1u, u_input.e.x), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(332f * _wgslsmith_div_f32(-1362f, 340f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_clamp_i32(~(~u_input.d.x), 0i, ~_wgslsmith_mod_i32(9488i, 4070i))));
    let var_1 = min(abs(~(~select(vec4<u32>(u_input.e.x, u_input.e.x, 17266u, u_input.a), vec4<u32>(10514u, u_input.e.x, 0u, 46653u), vec4<bool>(var_0.a.x, true, true, false)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 24751u, 26197u, u_input.a) ^ vec4<u32>(u_input.e.x, 1u, 590u, 11600u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.a, u_input.e.x), vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 31387u))), firstLeadingBit(vec4<u32>(46332u, 29817u, u_input.a, u_input.e.x))) >> (vec4<u32>(2764u, 44104u, u_input.e.x, ~(~17545u)) % vec4<u32>(32u)));
    var_0 = Struct_1(!select(!(!var_0.a), vec4<bool>(u_input.b.x >= u_input.c, false | var_0.a.x, any(var_0.a.xwy), false), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + func_4(true, Struct_4(vec4<bool>(var_0.a.x, var_0.a.x, false, true), -142f, var_0.b, u_input.b.x, u_input.d.wx), vec2<u32>(30980u, var_1.x), Struct_2(u_input.c, u_input.e, Struct_1(var_0.a, var_0.b), var_0.b, -1i)).b)) - -2492f));
    let var_2 = var_1.xy;
    var_0 = func_4(all(select(vec4<bool>(var_0.a.x, false, true, !var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, false, true), !any(vec4<bool>(true, true, var_0.a.x, false)))), Struct_4(vec4<bool>(false, true, func_4(false, Struct_4(vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.b, 650f, u_input.c, vec2<i32>(29788i, u_input.d.x)), ~u_input.e, Struct_2(0i, var_2, Struct_1(vec4<bool>(true, true, true, var_0.a.x), 1036f), var_0.b, u_input.c)).a.x, var_0.a.x), var_0.b, var_0.b, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, u_input.d.x, 42408i) | u_input.b), vec3<i32>(-u_input.d.x, max(u_input.d.x, 10582i), 55551i)), u_input.d.wy & ~u_input.b.zx), vec2<u32>(u_input.a, u_input.e.x), Struct_2(u_input.d.x, vec2<u32>(abs(var_2.x), _wgslsmith_mult_u32(var_1.x, var_1.x)), Struct_1(var_0.a, var_0.b), var_0.b, abs(_wgslsmith_mod_i32(select(-1i, -2147483647i, true), u_input.c))));
    let var_3 = func_4(all(!select(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, false), func_4(var_0.a.x, Struct_4(vec4<bool>(false, true, var_0.a.x, var_0.a.x), -270f, var_0.b, 11091i, u_input.b.yz), vec2<u32>(1u, 4294967295u), Struct_2(43462i, vec2<u32>(var_1.x, 75276u), Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, false), -1207f), -875f, -2147483647i)).a)), Struct_4(var_0.a, _wgslsmith_f_op_f32(step(-268f, func_4(false, Struct_4(vec4<bool>(true, true, false, var_0.a.x), -1135f, -127f, 1i, vec2<i32>(-35344i, -8139i)), min(vec2<u32>(1u, 1u), vec2<u32>(0u, 89510u)), Struct_2(-29802i, var_1.yz, Struct_1(var_0.a, var_0.b), var_0.b, -44562i)).b)), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_clamp_i32(~0i, ~u_input.d.x << (~48743u % 32u), u_input.d.x), vec2<i32>(~abs(-10539i), -1i)), u_input.e, Struct_2(select(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, -7797i, u_input.d.x, -2147483647i), u_input.d, var_0.a), vec4<i32>(u_input.b.x, -12157i, 6344i, -2147483647i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, 26377i, u_input.c), u_input.b), all(!var_0.a)), abs(min(vec2<u32>(51361u, 0u), _wgslsmith_clamp_vec2_u32(var_1.wy, vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_1.x, 18431u)))), func_4(all(vec3<bool>(true, true, var_0.a.x)), Struct_4(var_0.a, _wgslsmith_f_op_f32(var_0.b * var_0.b), 1334f, 38507i ^ u_input.c, u_input.d.yz | vec2<i32>(u_input.c, u_input.c)), vec2<u32>(u_input.a, 31084u), Struct_2(1i, vec2<u32>(var_2.x, 54681u) & var_1.wy, Struct_1(vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.b), 791f, -2147483647i | u_input.b.x)), _wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(func_2())), func_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), countOneBits(u_input.d.x))).x));
    var_0 = Struct_1(!(!vec4<bool>(!var_3.a.x, var_3.a.x & var_0.a.x, var_0.a.x, true)), 1372f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, var_0.b)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1337f, var_0.b), vec2<f32>(1000f, var_3.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -605f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 352f))))));
}

