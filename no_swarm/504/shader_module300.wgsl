struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    let var_0 = all(!(!vec4<bool>(true, all(vec3<bool>(false, true, arg_0.a)), arg_0.a, true)));
    var var_1 = 15030i;
    var var_2 = Struct_3(arg_0, (_wgslsmith_clamp_u32(u_input.e.x, ~u_input.b.x, 4294967295u) >= u_input.d.x) | arg_0.a, countOneBits(vec4<u32>(~0u, countOneBits(~u_input.e.x), u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, firstTrailingBit(u_input.d.x), _wgslsmith_sub_u32(4294967295u, 2133u)))), u_input.d.x, Struct_1(select(u_input.e, firstTrailingBit(vec4<u32>(1u, u_input.a, 76776u, u_input.e.x)), select(select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(var_0, var_0, false, true), vec4<bool>(arg_0.a, var_0, true, true)), !vec4<bool>(false, var_0, true, var_0), vec4<bool>(arg_0.a, true, true, arg_0.a)))));
    var var_3 = u_input.b.x;
    var var_4 = Struct_3(Struct_2(false, countOneBits(vec4<i32>(-29324i << (var_2.e.a.x % 32u), _wgslsmith_dot_vec3_i32(arg_0.b.yxx, arg_0.b.zwz), u_input.c.x, _wgslsmith_clamp_i32(-2147483647i, arg_0.b.x, -2147483647i)))), any(vec3<bool>(!(arg_1.x == arg_1.x), true, true)), abs(vec4<u32>(u_input.a | var_2.c.x, u_input.b.x, var_2.e.a.x, _wgslsmith_clamp_u32(u_input.e.x, u_input.d.x, u_input.b.x)) | vec4<u32>(50258u >> (u_input.d.x % 32u), 1u, firstLeadingBit(24486u), ~0u)), 58933u, Struct_1(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_2.c.x, u_input.e.x, 34455u, 1u)), vec4<u32>(~58616u, ~4294967295u, _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_2.d, 66557u))), ~select(var_2.c, u_input.e, vec4<bool>(false, true, var_0, var_0)))));
    return 12191i;
}

fn func_2() -> i32 {
    global0 = func_3(Struct_2(all(vec4<bool>(true, true, false, u_input.b.x < u_input.a)), ~vec4<i32>(_wgslsmith_sub_i32(-1i, -1i), u_input.c.x, -u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, -778f, -150f, 426f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(176f, -412f, 1000f, 451f) * vec4<f32>(-560f, -1355f, 1000f, 369f))))));
    let var_0 = all(select(vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, true))), !vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(u_input.c.x >= u_input.c.x, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-145f)) + -2099f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, -1374f))))))));
    let var_2 = Struct_2(u_input.c.x >= u_input.c.x, max(~(~(~vec4<i32>(u_input.c.x, 47946i, 37265i, u_input.c.x))), vec4<i32>(firstLeadingBit(~1i), -341i, 2147483647i, abs(u_input.c.x))));
    var var_3 = Struct_2(var_0 | all(select(vec3<bool>(var_0, false, var_2.a), select(vec3<bool>(false, var_2.a, var_0), vec3<bool>(true, var_0, var_0), var_2.a), select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_2.a, true), false))), ~abs(-var_2.b));
    return _wgslsmith_mult_i32(0i, -3192i) & var_3.b.x;
}

fn func_1() -> f32 {
    global0 = _wgslsmith_mult_i32(0i, abs(~1i));
    global0 = -_wgslsmith_mult_i32(~u_input.c.x, ~(-u_input.c.x)) << (0u % 32u);
    var var_0 = vec2<bool>(true, !any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
    global0 = func_2();
    let var_1 = Struct_3(Struct_2(any(select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x))), ~((vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.d % vec4<u32>(32u))) & ~vec4<i32>(-10776i, u_input.c.x, -48691i, u_input.c.x))), !(var_0.x || (_wgslsmith_mult_u32(u_input.a, u_input.b.x) == max(u_input.d.x, 0u))), vec4<u32>(1u, 8057u, abs(~4294967295u), 57465u), ~firstLeadingBit(~(1u << (u_input.b.x % 32u))), Struct_1(u_input.d));
    return 1305f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.d, u_input.d), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(1u, 4294967295u, u_input.a, 89778u), u_input.e, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), select(max(vec4<u32>(u_input.d.x, 4294967295u, u_input.e.x, u_input.b.x), u_input.d), ~vec4<u32>(36573u, 4294967295u, u_input.b.x, 4294967295u), true))), abs(u_input.e));
    var var_1 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1883f, 616f)))) * _wgslsmith_f_op_f32(-1374f * -567f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -952f)));
    var var_2 = Struct_2(true, select(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 8360i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -51360i, u_input.c.x, u_input.c.x) >> (vec4<u32>(1u, u_input.a, 55326u, 35072u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 1i, -2501i, -38590i)), vec4<bool>(true, true, true, true)) >> (abs(~(u_input.d << (vec4<u32>(86719u, 74256u, u_input.a, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var_2 = Struct_2(false, var_2.b);
    var var_3 = 0u;
    let var_4 = _wgslsmith_sub_u32(~countOneBits(0u >> (u_input.d.x % 32u)), ~firstTrailingBit(u_input.b.x) << (_wgslsmith_mult_u32(65321u, 1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(1191f - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~var_2.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1153f, 230f, 621f) + vec3<f32>(847f, -100f, -1290f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1604f, 243f, 644f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(662f, 1466f, 528f), vec3<f32>(-111f, 1595f, 338f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, -1065f, 510f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, -453f, -409f)), vec3<bool>(var_2.a, false, any(vec2<bool>(var_2.a, var_2.a)))))));
}

