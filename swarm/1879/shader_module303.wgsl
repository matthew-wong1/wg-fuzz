struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 29148i;

var<private> global1: Struct_2;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_5) -> vec2<i32> {
    global0 = _wgslsmith_div_i32(-11786i, -21864i);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -574f);
    var var_1 = reverseBits(vec4<i32>(-arg_3.d.e.a.x, -_wgslsmith_mod_i32(-arg_0.x, -29311i), countOneBits(-arg_0.x), ~_wgslsmith_add_i32(~(-26336i), -30799i)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(400f, -1136f)), 1009f);
    global0 = arg_0.x;
    return vec2<i32>(-firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, arg_3.d.a, 1i, ~68681i << ((4294967295u >> (u_input.a.x % 32u)) % 32u)), firstTrailingBit(arg_0)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<i32> {
    global2 = -select(vec2<i32>(534i, arg_2.e.a.x), ~func_2(vec4<i32>(arg_2.a, global2.x, -14254i, 5045i), arg_1, Struct_3(vec4<f32>(-344f, 920f, arg_1, arg_1)), Struct_5(Struct_1(global1.b.a, vec2<u32>(38965u, arg_2.c.c), arg_2.e.b.d, 40202u), arg_1, Struct_3(vec4<f32>(-1503f, 1530f, arg_1, 3590f)), Struct_4(arg_3.a, arg_3.a, arg_3.d, arg_3.e.b, Struct_2(vec2<i32>(arg_3.e.a.x, arg_3.b), Struct_1(vec4<u32>(4294967295u, arg_2.c.b.x, 25135u, arg_2.c.b.x), vec2<u32>(global1.b.c, arg_2.c.d), global1.b.c, 4294967295u))))) ^ arg_2.e.a, ~1u <= _wgslsmith_mult_u32(arg_2.c.a.x, arg_3.c.a.x));
    var var_0 = vec3<u32>(~(~global1.b.d), global1.b.d, ~1u);
    return vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~2147483647i, arg_2.e.a.x), global1.a.x) & (-369i >> (~(36990u | var_0.x) % 32u)), ~global1.a.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(func_2(vec4<i32>(global2.x, global2.x, global1.a.x, 2147483647i), arg_1, Struct_3(vec4<f32>(arg_1, -223f, arg_1, arg_1)), Struct_5(Struct_1(vec4<u32>(0u, 32986u, arg_2.d.d, u_input.a.x), u_input.a, u_input.b, arg_2.c.d), arg_1, Struct_3(vec4<f32>(682f, 248f, arg_1, -546f)), arg_2)).x, -25272i), vec2<i32>(-28040i, arg_2.e.a.x), arg_1 != -1000f), global1.a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    let var_0 = vec3<bool>(any(select(vec4<bool>(all(vec3<bool>(true, false, true)), false, false, any(vec2<bool>(true, false))), vec4<bool>(true, arg_2.c.a.x > arg_2.b, true, false), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)))), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), true);
    var var_1 = Struct_5(Struct_1(~(~_wgslsmith_sub_vec4_u32(global1.b.a, global1.b.a)), select(~global1.b.a.yx ^ vec2<u32>(40742u, global1.b.c), abs(vec2<u32>(u_input.b, arg_2.d.e.b.d) << (vec2<u32>(24608u, global1.b.b.x) % vec2<u32>(32u))), var_0.yy), 1u, 25313u), _wgslsmith_f_op_f32(abs(arg_3)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(693f * arg_3), arg_3, arg_2.b, 701f) + vec4<f32>(-845f, arg_2.c.a.x, _wgslsmith_f_op_f32(min(arg_2.b, arg_2.c.a.x)), _wgslsmith_f_op_f32(abs(-461f))))), Struct_4(18209i, 1i, global1.b, Struct_1(global1.b.a, vec2<u32>(_wgslsmith_div_u32(global1.b.d, 4294967295u), 4294967295u), ~1u, ~(~16030u)), arg_2.d.e));
    var var_2 = !select(select(select(var_0.yy, var_0.zz, var_0.x), !select(vec2<bool>(true, var_0.x), var_0.yx, var_0.x), var_0.zx), var_0.yy, !var_0.yx);
    let var_3 = !(!var_0.x);
    let var_4 = var_1.c.a.wxy;
    return Struct_2(~vec2<i32>(global2.x, 60215i), arg_2.d.e.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_3(global1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(max(0i, global2.x), 1i, i32(-1i) * -2147483647i, ~(-74228i)), vec4<i32>(3192i, ~global2.x, global2.x, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(9480i, 0i, global2.x, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global1.a.x, global1.a.x, 3496i), vec4<i32>(global2.x, global1.a.x, global2.x, global2.x)))) | vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2.x, global1.a.x, 1i)), func_1(global1.a.x, 1000f, Struct_4(global1.a.x, 1i, Struct_1(vec4<u32>(u_input.b, global1.b.d, 0u, 4294967295u), vec2<u32>(global1.b.a.x, 4294967295u), u_input.b, 5677u), Struct_1(global1.b.a, global1.b.b, 57355u, global1.b.a.x), Struct_2(vec2<i32>(global2.x, global2.x), Struct_1(vec4<u32>(global1.b.d, 103373u, global1.b.d, 1u), global1.b.b, global1.b.c, global1.b.c))), Struct_4(global1.a.x, 0i, Struct_1(global1.b.a, vec2<u32>(global1.b.a.x, global1.b.d), u_input.b, 0u), global1.b, Struct_2(vec2<i32>(0i, global2.x), global1.b)))), ~(global2.x | global2.x), func_1(_wgslsmith_div_i32(global2.x, -1i), 1207f, Struct_4(-1i, global1.a.x, global1.b, Struct_1(global1.b.a, vec2<u32>(u_input.b, global1.b.b.x), global1.b.d, global1.b.c), Struct_2(vec2<i32>(47970i, 2147483647i), Struct_1(global1.b.a, global1.b.a.xz, 5439u, 0u))), Struct_4(global2.x, global1.a.x, Struct_1(global1.b.a, u_input.a, global1.b.c, 88662u), Struct_1(vec4<u32>(1u, 0u, global1.b.b.x, u_input.a.x), vec2<u32>(43758u, u_input.b), u_input.b, u_input.a.x), Struct_2(global1.a, global1.b))).x, -22025i), Struct_5(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 799f), -419f, any(vec3<bool>(false, false, true)))), 759f), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2469f, 316f, 1649f, -855f) + vec4<f32>(-949f, -1000f, -2085f, 504f)))), Struct_4(global1.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-11396i, 0i, 1i), vec3<i32>(global1.a.x, 1i, 39673i)), global1.b, Struct_1(global1.b.a, vec2<u32>(0u, global1.b.b.x), global1.b.c, _wgslsmith_mult_u32(53498u, global1.b.b.x)), Struct_2(vec2<i32>(global1.a.x, global2.x) ^ global1.a, Struct_1(global1.b.a, vec2<u32>(u_input.b, 4294967295u), global1.b.a.x, 4294967295u)))), _wgslsmith_f_op_f32(-2448f + _wgslsmith_f_op_f32(ceil(1f))));
    global2 = ~func_1(func_1(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -868f), Struct_4(-global2.x, -13544i, func_3(vec2<i32>(23321i, global2.x), vec4<i32>(1870i, global1.a.x, global2.x, global1.a.x), Struct_5(global1.b, 1476f, Struct_3(vec4<f32>(1864f, 244f, -3119f, 623f)), Struct_4(global1.a.x, global2.x, Struct_1(vec4<u32>(1u, 75615u, u_input.b, global1.b.b.x), vec2<u32>(4294967295u, global1.b.c), 22421u, global1.b.d), Struct_1(global1.b.a, global1.b.a.xw, u_input.b, global1.b.a.x), Struct_2(global1.a, global1.b))), 370f).b, global1.b, func_3(vec2<i32>(global1.a.x, -7913i), vec4<i32>(global1.a.x, -1i, -1i, global2.x), Struct_5(Struct_1(global1.b.a, u_input.a, 4294967295u, u_input.b), 1000f, Struct_3(vec4<f32>(-593f, -885f, -827f, 454f)), Struct_4(0i, global1.a.x, Struct_1(vec4<u32>(73703u, global1.b.d, 4294967295u, u_input.b), u_input.a, global1.b.b.x, 5278u), Struct_1(vec4<u32>(u_input.b, 4294967295u, 16773u, 1u), vec2<u32>(4294967295u, 4294967295u), 4294967295u, 4294967295u), Struct_2(global1.a, global1.b))), 662f)), Struct_4(-45500i, -28783i, global1.b, Struct_1(global1.b.a, u_input.a, 0u, 4294967295u), Struct_2(vec2<i32>(20682i, 2147483647i), Struct_1(global1.b.a, vec2<u32>(global1.b.b.x, u_input.b), u_input.b, 4294967295u)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) - 1f)), Struct_4(func_3(global1.a, vec4<i32>(global1.a.x, 15747i, global2.x, -39657i) | vec4<i32>(-1i, 60672i, 2249i, global1.a.x), Struct_5(Struct_1(vec4<u32>(0u, 55818u, 1u, 29595u), vec2<u32>(u_input.a.x, global1.b.c), 1u, global1.b.d), -1066f, Struct_3(vec4<f32>(-1968f, -1004f, 421f, 1496f)), Struct_4(global2.x, global2.x, global1.b, Struct_1(vec4<u32>(global1.b.a.x, u_input.b, u_input.a.x, 74284u), global1.b.a.xz, u_input.a.x, u_input.a.x), Struct_2(vec2<i32>(global2.x, global2.x), Struct_1(vec4<u32>(global1.b.b.x, 4294967295u, global1.b.b.x, u_input.a.x), global1.b.b, global1.b.a.x, 49954u)))), _wgslsmith_f_op_f32(f32(-1f) * -103f)).a.x, global1.a.x, global1.b, Struct_1(vec4<u32>(global1.b.d, u_input.b, u_input.a.x, 35464u) >> (vec4<u32>(global1.b.a.x, 52013u, u_input.a.x, global1.b.a.x) % vec4<u32>(32u)), ~u_input.a, ~20892u, abs(31253u)), Struct_2(func_3(global1.a, vec4<i32>(global1.a.x, 2147483647i, global1.a.x, global2.x), Struct_5(Struct_1(global1.b.a, u_input.a, u_input.b, 0u), -262f, Struct_3(vec4<f32>(-512f, -301f, 1000f, 442f)), Struct_4(global1.a.x, global2.x, Struct_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b), vec2<u32>(global1.b.a.x, global1.b.a.x), u_input.a.x, 11007u), Struct_1(global1.b.a, u_input.a, u_input.a.x, 0u), Struct_2(vec2<i32>(global1.a.x, 1i), Struct_1(global1.b.a, u_input.a, u_input.a.x, 56427u)))), 1618f).a, Struct_1(global1.b.a, vec2<u32>(global1.b.a.x, global1.b.b.x), u_input.a.x, 57073u))), Struct_4(abs(-1770i) << (global1.b.c % 32u), ~global1.a.x & abs(global2.x), Struct_1(min(vec4<u32>(global1.b.c, 4294967295u, 1u, 0u), vec4<u32>(55262u, 4294967295u, global1.b.c, global1.b.c)), select(global1.b.b, vec2<u32>(0u, u_input.b), true), u_input.b | 48740u, ~u_input.a.x), func_3(~global1.a, min(vec4<i32>(-25463i, 2986i, 1i, 1i), vec4<i32>(-29444i, 24394i, -14157i, global1.a.x)), Struct_5(global1.b, 1114f, Struct_3(vec4<f32>(-1081f, 722f, 1000f, 691f)), Struct_4(-14722i, global1.a.x, Struct_1(global1.b.a, global1.b.a.wz, 0u, global1.b.a.x), global1.b, Struct_2(global1.a, Struct_1(vec4<u32>(0u, u_input.b, 4294967295u, 0u), vec2<u32>(39416u, global1.b.d), global1.b.c, 4294967295u)))), _wgslsmith_f_op_f32(-1000f * -951f)).b, func_3(vec2<i32>(0i, -39233i), reverseBits(vec4<i32>(-7388i, global2.x, global1.a.x, global2.x)), Struct_5(global1.b, -1058f, Struct_3(vec4<f32>(-1540f, -1244f, -1502f, -368f)), Struct_4(-2461i, 2147483647i, global1.b, Struct_1(vec4<u32>(29902u, global1.b.b.x, u_input.b, 4363u), u_input.a, u_input.a.x, 28507u), Struct_2(global1.a, global1.b))), _wgslsmith_f_op_f32(trunc(232f))))).zz;
    let var_0 = 2147483647i;
    global2 = vec2<i32>(func_2(~max(countOneBits(vec4<i32>(global1.a.x, 0i, global1.a.x, 0i)), vec4<i32>(global1.a.x, var_0, -2147483647i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, -474f, -1893f, -162f))), Struct_5(Struct_1(vec4<u32>(98852u, u_input.a.x, global1.b.a.x, u_input.b), ~vec2<u32>(55219u, global1.b.c), reverseBits(global1.b.b.x), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1038f, 1237f)) + _wgslsmith_f_op_f32(max(1425f, -1255f))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, -1857f, 1007f, 1384f))), Struct_4(47270i, ~var_0, global1.b, Struct_1(global1.b.a, vec2<u32>(global1.b.a.x, 52455u), global1.b.c, u_input.a.x), Struct_2(global1.a, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), vec2<u32>(u_input.b, global1.b.b.x), global1.b.a.x, u_input.b))))).x, _wgslsmith_dot_vec3_i32(~vec3<i32>(26223i, global1.a.x, global1.a.x) ^ -vec3<i32>(4238i, -1i, global1.a.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0, -23410i, global2.x), vec3<i32>(2147483647i, 8325i, global2.x))) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-44827i, global1.a.x), global1.a.x & -2147483647i), firstLeadingBit(_wgslsmith_mult_i32(global2.x, var_0))));
    let var_1 = 32538u;
    global1 = func_3(abs(global1.a), reverseBits(vec4<i32>(1i, func_3(vec2<i32>(-1i, -12747i), vec4<i32>(var_0, -15215i, var_0, var_0), Struct_5(Struct_1(vec4<u32>(26055u, 0u, global1.b.b.x, 1u), u_input.a, u_input.a.x, 0u), -1942f, Struct_3(vec4<f32>(-207f, 559f, -1758f, 194f)), Struct_4(var_0, global2.x, Struct_1(vec4<u32>(global1.b.b.x, 1u, global1.b.d, 49759u), global1.b.b, 39649u, 60674u), Struct_1(vec4<u32>(4294967295u, var_1, 1u, 4294967295u), vec2<u32>(4294967295u, global1.b.a.x), 1u, var_1), Struct_2(vec2<i32>(1i, -33379i), Struct_1(global1.b.a, u_input.a, 39113u, 1u)))), -546f).a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(3160i, global2.x, var_0), vec3<i32>(-19522i, 22694i, global1.a.x)), abs(~global1.a.x), i32(-1i) * -21902i)), Struct_5(func_3(_wgslsmith_div_vec2_i32(func_3(vec2<i32>(-1i, var_0), vec4<i32>(-1i, global2.x, global1.a.x, -1i), Struct_5(Struct_1(vec4<u32>(global1.b.b.x, var_1, 19826u, 13889u), vec2<u32>(u_input.b, var_1), u_input.b, global1.b.c), 1327f, Struct_3(vec4<f32>(2641f, 1000f, -708f, -473f)), Struct_4(15747i, global1.a.x, Struct_1(global1.b.a, u_input.a, var_1, global1.b.d), global1.b, Struct_2(global1.a, Struct_1(global1.b.a, vec2<u32>(var_1, var_1), 2484u, global1.b.b.x)))), 1653f).a, vec2<i32>(global2.x, 1i)), vec4<i32>(_wgslsmith_add_i32(global1.a.x, global1.a.x), 1i, abs(2147483647i), global2.x), Struct_5(func_3(global1.a, vec4<i32>(global1.a.x, -1i, global1.a.x, global2.x), Struct_5(global1.b, 1370f, Struct_3(vec4<f32>(-136f, 1509f, 401f, 1000f)), Struct_4(-10186i, global2.x, Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 4294967295u), u_input.a, var_1, 1u), global1.b, Struct_2(vec2<i32>(-19867i, var_0), global1.b))), -201f).b, -430f, Struct_3(vec4<f32>(-696f, -1695f, 1134f, -647f)), Struct_4(var_0, -2147483647i, Struct_1(global1.b.a, vec2<u32>(82648u, u_input.a.x), 28285u, u_input.a.x), Struct_1(vec4<u32>(global1.b.b.x, var_1, 4294967295u, 4294967295u), global1.b.a.zy, 4294967295u, global1.b.c), Struct_2(vec2<i32>(global2.x, 8900i), Struct_1(global1.b.a, vec2<u32>(global1.b.b.x, 7142u), global1.b.b.x, global1.b.c)))), 1185f).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(791f, _wgslsmith_f_op_f32(-446f + 230f))), Struct_3(vec4<f32>(1f, 1f, 1f, 1f)), Struct_4(20504i & ~global1.a.x, 21412i, global1.b, func_3(_wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(global1.a.x, 11228i)), abs(vec4<i32>(-40643i, -16312i, global2.x, var_0)), Struct_5(Struct_1(global1.b.a, vec2<u32>(global1.b.c, var_1), 0u, global1.b.c), -106f, Struct_3(vec4<f32>(-857f, 770f, -213f, -1415f)), Struct_4(-2147483647i, 39366i, global1.b, Struct_1(vec4<u32>(1u, u_input.b, global1.b.d, 63338u), vec2<u32>(global1.b.d, 1u), global1.b.c, u_input.a.x), Struct_2(global1.a, Struct_1(global1.b.a, vec2<u32>(u_input.b, 4294967295u), var_1, var_1)))), -991f).b, Struct_2(_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(0i, -93407i)), func_3(global1.a, vec4<i32>(2147483647i, global2.x, var_0, global1.a.x), Struct_5(Struct_1(global1.b.a, vec2<u32>(global1.b.c, u_input.b), global1.b.a.x, global1.b.c), 556f, Struct_3(vec4<f32>(189f, 758f, 673f, -1000f)), Struct_4(var_0, -40034i, Struct_1(vec4<u32>(var_1, 50133u, var_1, 60678u), vec2<u32>(u_input.a.x, 9483u), 20199u, 4294967295u), global1.b, Struct_2(global1.a, Struct_1(global1.b.a, vec2<u32>(31657u, var_1), global1.b.d, var_1)))), 2132f).b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-334f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1284f)) * _wgslsmith_f_op_f32(f32(-1f) * -323f))))));
    var var_2 = Struct_5(func_3(func_1(_wgslsmith_sub_i32(~0i, _wgslsmith_mult_i32(global2.x, global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1177f + 1131f))), Struct_4(_wgslsmith_clamp_i32(9171i, var_0, 1i), global2.x, Struct_1(vec4<u32>(global1.b.c, u_input.a.x, u_input.a.x, u_input.a.x), vec2<u32>(var_1, 1u), global1.b.a.x, 4294967295u), Struct_1(global1.b.a, global1.b.a.yy, u_input.b, var_1), Struct_2(global1.a, Struct_1(global1.b.a, global1.b.b, 4294967295u, 4294967295u))), Struct_4(~var_0, 1i, global1.b, func_3(vec2<i32>(var_0, global2.x), vec4<i32>(var_0, var_0, global1.a.x, global2.x), Struct_5(global1.b, -3411f, Struct_3(vec4<f32>(-506f, 146f, -238f, 1010f)), Struct_4(1i, global1.a.x, Struct_1(global1.b.a, global1.b.b, global1.b.a.x, global1.b.d), global1.b, Struct_2(vec2<i32>(var_0, global1.a.x), Struct_1(global1.b.a, vec2<u32>(var_1, 3759u), var_1, 8452u)))), 476f).b, Struct_2(global1.a, Struct_1(vec4<u32>(45255u, var_1, u_input.b, 4294967295u), vec2<u32>(4294967295u, 1u), 4294967295u, 22332u)))).yx, _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(global1.a.x), ~global1.a.x, 5695i, -2147483647i), reverseBits(vec4<i32>(11806i, -1i, var_0, -1i))), Struct_5(func_3(select(vec2<i32>(global1.a.x, global2.x), vec2<i32>(var_0, -19445i), vec2<bool>(true, false)), vec4<i32>(var_0, var_0, -16629i, -2147483647i) << (vec4<u32>(u_input.a.x, 6349u, 0u, 0u) % vec4<u32>(32u)), Struct_5(global1.b, -519f, Struct_3(vec4<f32>(132f, -1310f, -1079f, -1224f)), Struct_4(global2.x, 1i, Struct_1(global1.b.a, u_input.a, 10223u, u_input.b), global1.b, Struct_2(global1.a, Struct_1(vec4<u32>(19452u, var_1, u_input.a.x, 55946u), u_input.a, 1u, 31739u)))), -1000f).b, _wgslsmith_f_op_f32(-1f), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, 529f, 1000f, 1093f) + vec4<f32>(-299f, 1130f, 1003f, 1093f))), Struct_4(global2.x, global2.x, func_3(global1.a, vec4<i32>(var_0, global1.a.x, -8553i, 2147483647i), Struct_5(global1.b, 556f, Struct_3(vec4<f32>(834f, 620f, 1270f, 1000f)), Struct_4(0i, 34685i, global1.b, global1.b, Struct_2(vec2<i32>(-1i, -25902i), Struct_1(global1.b.a, global1.b.a.wx, u_input.a.x, 0u)))), 148f).b, global1.b, Struct_2(global1.a, Struct_1(global1.b.a, vec2<u32>(u_input.b, 4294967295u), 19596u, var_1)))), _wgslsmith_f_op_f32(-1f)).b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1841f, _wgslsmith_f_op_f32(f32(-1f) * -2002f)) * -243f), Struct_3(vec4<f32>(-1284f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-575f, -272f)))), -1375f, -1000f)), Struct_4(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0, -14550i, global1.a.x, -42452i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.x, -1i, global1.a.x, var_0), vec4<i32>(global1.a.x, var_0, global2.x, global2.x))), -global1.a.x, func_3(global1.a, -(~vec4<i32>(global2.x, -14568i, var_0, 72713i)), Struct_5(func_3(global1.a, vec4<i32>(2147483647i, 73844i, -22824i, -3857i), Struct_5(global1.b, 851f, Struct_3(vec4<f32>(1000f, -1161f, -580f, 586f)), Struct_4(-40582i, global2.x, Struct_1(global1.b.a, vec2<u32>(7748u, u_input.a.x), 0u, 58534u), Struct_1(vec4<u32>(global1.b.b.x, 4294967295u, global1.b.b.x, global1.b.a.x), vec2<u32>(13653u, 4294967295u), 0u, var_1), Struct_2(global1.a, global1.b))), 137f).b, _wgslsmith_f_op_f32(f32(-1f) * -1289f), Struct_3(vec4<f32>(-971f, 1206f, 792f, -906f)), Struct_4(-2147483647i, var_0, global1.b, Struct_1(vec4<u32>(global1.b.b.x, 4294967295u, 4294967295u, var_1), vec2<u32>(u_input.a.x, global1.b.c), global1.b.b.x, u_input.a.x), Struct_2(vec2<i32>(var_0, global1.a.x), Struct_1(global1.b.a, vec2<u32>(global1.b.b.x, global1.b.b.x), var_1, 4886u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))).b, func_3(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global1.a, vec2<i32>(0i, -2147483647i)), global1.a), countOneBits(firstTrailingBit(vec4<i32>(global2.x, 0i, -7280i, var_0))), Struct_5(func_3(global1.a, vec4<i32>(0i, global2.x, var_0, 0i), Struct_5(global1.b, 802f, Struct_3(vec4<f32>(1153f, -757f, 499f, 864f)), Struct_4(33397i, 2147483647i, Struct_1(vec4<u32>(39986u, 1u, 29788u, var_1), vec2<u32>(var_1, 4294967295u), 4294967295u, 4294967295u), Struct_1(global1.b.a, vec2<u32>(var_1, global1.b.c), 4294967295u, 1u), Struct_2(global1.a, Struct_1(vec4<u32>(var_1, 75831u, 12676u, global1.b.d), global1.b.b, var_1, global1.b.a.x)))), -527f).b, _wgslsmith_f_op_f32(sign(-858f)), Struct_3(vec4<f32>(-452f, 844f, 790f, -1367f)), Struct_4(global2.x, var_0, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, global1.b.a.x, var_1), vec2<u32>(var_1, 4294967295u), global1.b.a.x, u_input.a.x), Struct_1(vec4<u32>(u_input.a.x, var_1, u_input.b, 75084u), u_input.a, 15010u, 15134u), Struct_2(global1.a, global1.b))), _wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(-1088f * 561f))).b, func_3(vec2<i32>(global1.a.x, var_0), firstLeadingBit(select(vec4<i32>(var_0, -601i, global2.x, 77524i), vec4<i32>(var_0, 0i, global2.x, -10023i), false)), Struct_5(global1.b, -681f, Struct_3(vec4<f32>(355f, 1673f, 703f, 906f)), Struct_4(1i, global1.a.x, Struct_1(global1.b.a, u_input.a, var_1, 39845u), global1.b, Struct_2(global1.a, Struct_1(global1.b.a, vec2<u32>(var_1, 10119u), var_1, 38899u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1261f + -503f) * -1046f))));
    let var_3 = select(vec4<bool>(true, select(false, any(vec2<bool>(false, true)), true), true, false), vec4<bool>(!any(vec3<bool>(false, false, false)), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b - 1000f))) > var_2.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.a.x * var_2.b) * _wgslsmith_f_op_f32(f32(-1f) * -2540f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(1201f - -408f))), ~abs(~u_input.a.x) > ~max(~1u, 4294967295u));
    global0 = ~global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.c.a.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, 1000f))))), -(~func_2(~vec4<i32>(0i, 15412i, 0i, global2.x), _wgslsmith_f_op_f32(floor(var_2.b)), Struct_3(var_2.c.a), Struct_5(global1.b, -1318f, var_2.c, Struct_4(3276i, 0i, global1.b, Struct_1(vec4<u32>(64073u, 4294967295u, 4294967295u, global1.b.d), var_2.d.c.a.xy, 4439u, 45811u), Struct_2(var_2.d.e.a, Struct_1(global1.b.a, vec2<u32>(4294967295u, u_input.b), global1.b.d, 5062u))))).x));
}

