struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1i, 1095f), Struct_1(-3410i, 1693f), Struct_1(35105i, 794f), Struct_1(-1i, -2383f), Struct_1(1i, -643f), Struct_1(i32(-2147483648), 138f), Struct_1(53623i, 342f), Struct_1(-26456i, 1024f), Struct_1(12071i, 1000f), Struct_1(0i, 599f), Struct_1(-7468i, 797f), Struct_1(2147483647i, -2002f), Struct_1(-4326i, 1733f), Struct_1(58995i, 1092f), Struct_1(-4152i, -1457f), Struct_1(i32(-2147483648), 952f), Struct_1(4699i, -805f), Struct_1(1i, -695f), Struct_1(35001i, -1000f), Struct_1(i32(-2147483648), 312f), Struct_1(0i, -1000f), Struct_1(45145i, -2409f), Struct_1(-52489i, 160f), Struct_1(1i, -1000f), Struct_1(-19062i, 315f), Struct_1(24449i, 2188f));

var<private> global2: f32 = -1987f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = select(select(!vec4<bool>(true, false, all(vec4<bool>(false, true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)), false), vec4<bool>(true, false, any(vec2<bool>(true, false)), true)), select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))))), vec4<bool>(all(vec2<bool>(true, true)) && all(vec3<bool>(true, true, true)), _wgslsmith_div_i32(~u_input.a.x, u_input.a.x) != -2147483647i, !(!(u_input.b >= 2147483647i)), !(!all(vec4<bool>(false, false, false, true)))), true);
    var var_1 = Struct_1(reverseBits(~(-1i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-371f, _wgslsmith_f_op_f32(max(597f, _wgslsmith_f_op_f32(1000f + 216f))), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1673f)) * -3937f))), var_0.x | ((true & var_0.x) && var_0.x))));
    var var_2 = Struct_1(var_1.a, var_1.b);
    let var_3 = ~vec3<i32>(firstTrailingBit(~(i32(-1i) * -20064i)), u_input.b, -var_1.a);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-770f, -790f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2.b)))))) < -910f;
    return vec2<bool>(_wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, u_input.c.x)), firstTrailingBit(u_input.c.xz)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), ~vec2<u32>(3218u, 14547u))) >= 1u, all(select(vec3<bool>(true, true, true), var_0.wxw, var_4)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = i32(-1i) * -3357i;
    let var_1 = func_3();
    var var_2 = Struct_1(19592i, _wgslsmith_f_op_f32(sign(-1157f)));
    var var_3 = Struct_1(_wgslsmith_mod_i32(max(0i, u_input.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(40239i, var_2.a, -35076i)), vec3<i32>(var_2.a, 6063i, -arg_0))), var_2.b);
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1668f, _wgslsmith_f_op_f32(ceil(120f))))));
    return select(~_wgslsmith_clamp_i32(arg_0, 2147483647i, ~abs(53431i)), 4964i, var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = !vec2<bool>(select(_wgslsmith_f_op_f32(1927f - arg_0.b) > _wgslsmith_f_op_f32(trunc(arg_1)), true, true), true);
    var var_1 = u_input.c.x;
    let var_2 = arg_0;
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(~func_2(-1i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-474f, -851f))), vec4<u32>(u_input.c.x, u_input.c.x, 27294u, 44736u) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))), abs(u_input.a.x << (4294967295u % 32u)) << (_wgslsmith_clamp_u32(firstTrailingBit(u_input.c.x), 59786u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u)) % 32u)), ~(-abs(787i & var_2.a)), -2147483647i);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1743f), arg_0.b, _wgslsmith_f_op_f32(arg_0.b * arg_0.b));
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    global1 = array<Struct_1, 26>();
    var var_0 = arg_2.x;
    global1 = array<Struct_1, 26>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) - -803f);
    let var_1 = arg_0;
    return 26332u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true | !any(vec3<bool>(true, true, true));
    let var_0 = vec2<bool>(true, !any(vec2<bool>(true, false)));
    global0 = false;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, ~min(vec2<u32>(12038u, u_input.c.x), vec2<u32>(1u, 16304u))), ~(~(~u_input.c.x))), 7813u, 4294967295u, func_4(Struct_1(func_1(Struct_1(u_input.b, -1110f), _wgslsmith_f_op_f32(trunc(-575f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -1133f)))), u_input.c.x, !var_0));
    global0 = ~u_input.a.x != -abs(1i);
    var var_2 = Struct_1(~u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1217f + 118f), _wgslsmith_f_op_f32(ceil(-263f)), var_0.x)) + _wgslsmith_f_op_f32(1f + -1212f))));
    let var_3 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, countOneBits(max(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -60605i, -5499i), ~_wgslsmith_mod_vec3_i32(u_input.a.zyx, vec3<i32>(-2147483647i, u_input.b, u_input.a.x)))), u_input.c, var_1.x);
}

