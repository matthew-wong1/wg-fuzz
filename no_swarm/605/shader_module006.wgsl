struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11>;

var<private> global1: vec2<i32> = vec2<i32>(8653i, -38864i);

var<private> global2: i32;

var<private> global3: vec3<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-510f, arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * arg_0.a.x)), -1000f))), Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(587f, -1351f))), _wgslsmith_f_op_f32(f32(-1f) * -1229f)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-638f, arg_0.a.x, arg_0.a.x))), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false))));
    global0 = array<Struct_5, 11>();
    var var_1 = Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, arg_0.a.x, arg_0.a.x, 705f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 539f, -687f, arg_0.a.x) - vec4<f32>(arg_0.a.x, arg_0.a.x, var_0.a.x, arg_0.a.x))), var_0.b.b, select(!vec4<bool>(var_0.b.c, var_0.b.a.x, var_0.b.e, true), vec4<bool>(true, true, true, true), all(var_0.b.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.b.b))))), true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1405f, 374f, arg_0.a.x) - vec3<f32>(var_0.a.x, 1000f, arg_0.a.x)) + arg_0.a.wxx))), !all(!select(vec2<bool>(true, var_0.b.c), vec2<bool>(true, var_0.b.e), false)));
    global3 = vec3<u32>(9113u, min(_wgslsmith_mod_u32(~(~global3.x), ~1u), min(_wgslsmith_div_u32(~1u, u_input.a), global3.x)), _wgslsmith_add_u32(37889u, countOneBits(_wgslsmith_mod_u32(global3.x, u_input.a))) >> (1u % 32u));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) + _wgslsmith_f_op_f32(-1075f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1103f, 946f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = !select(!arg_0.b.a.xy, vec2<bool>(arg_2.b.a.x, all(vec3<bool>(true, false, false))), all(!select(arg_2.b.a.zy, arg_2.b.a.xy, arg_0.b.a.zx)));
    let var_1 = arg_2;
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-global1.x, 0i), -24364i), firstLeadingBit(vec2<i32>(global1.x, -u_input.b)));
    let var_2 = 73351u;
    let var_3 = Struct_5(~vec3<u32>(41452u ^ var_2, _wgslsmith_mult_u32(var_2, 4294967295u), ~16221u) << (~vec3<u32>(~u_input.a, 4294967295u, 69111u) % vec3<u32>(32u)), Struct_3(vec4<f32>(-2058f, _wgslsmith_f_op_f32(arg_2.a.x - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(-709f, -312f, -405f, arg_0.a.x))))), 467f)), Struct_2(i32(-1i) * -min(global1.x, 0i), arg_0.b.a.yz, var_1.b, Struct_1(vec3<bool>(!arg_2.b.e, true, var_1.b.e), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * -970f), -1355f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1044f)), true, var_1.b.d, all(select(vec2<bool>(false, arg_0.b.a.x), vec2<bool>(false, arg_0.b.e), vec2<bool>(arg_2.b.e, var_1.b.c))))));
    return firstTrailingBit(vec2<i32>(u_input.b, var_3.c.a) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_3.a.x) ^ vec2<u32>(0u, 49405u), firstLeadingBit(vec2<u32>(global3.x, 10595u))), abs(_wgslsmith_clamp_vec2_u32(var_3.a.xz, vec2<u32>(4294967295u, global3.x), vec2<u32>(var_2, 4294967295u)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    global1 = (-(~func_2(Struct_4(vec4<f32>(-1025f, arg_0.x, -1657f, 1211f), Struct_1(vec3<bool>(false, false, true), vec4<f32>(879f, arg_0.x, arg_0.x, 982f), true, arg_0, false)), arg_0.x, Struct_4(vec4<f32>(-526f, arg_0.x, arg_0.x, -720f), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-349f, arg_0.x, arg_0.x, -383f), false, arg_0, true)))) ^ ~countOneBits(vec2<i32>(global1.x, global1.x))) >> (vec2<u32>(4541u, global3.x) % vec2<u32>(32u));
    let var_0 = 4294967295u;
    var var_1 = countOneBits(-(~vec3<i32>(1i, 1i, 1i)));
    global3 = ~(~(~(vec3<u32>(global3.x, u_input.a, 1u) << (vec3<u32>(u_input.a, 20528u, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(~33706u, _wgslsmith_dot_vec4_u32(vec4<u32>(70766u, 1u, 1u, global3.x), vec4<u32>(0u, global3.x, 1u, global3.x)), _wgslsmith_sub_u32(var_0, 1u)) % vec3<u32>(32u))));
    var var_2 = -1i;
    return vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -720f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, -1436f, -1242f) - vec3<f32>(135f, 325f, -670f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-603f, 638f, -297f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1606f, -380f, 950f), vec3<f32>(-1407f, -891f, -695f), vec3<bool>(true, true, false)))))))), true & (global1.x <= global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, 1525f, -1453f))))), all(vec3<bool>(true, select(true, false, false), true)) & (abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -615i), vec2<i32>(global1.x, -15132i))) < global1.x));
    let var_1 = _wgslsmith_div_u32(45623u, _wgslsmith_dot_vec4_u32(vec4<u32>(~69945u, 75776u, ~0u, 1u), vec4<u32>(61367u ^ global3.x, 14362u, 74483u, u_input.a)) >> (~select(0u, _wgslsmith_mod_u32(0u, 25213u), -371f == var_0.d.x) % 32u));
    global2 = firstTrailingBit(~global1.x);
    let var_2 = abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, -1i), -(vec4<i32>(2147483647i, u_input.b, 2147483647i, global1.x) ^ vec4<i32>(u_input.b, u_input.b, global1.x, u_input.b))));
    let var_3 = -512f;
    var var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(627f, 1386f, var_3, var_3)))), _wgslsmith_div_f32(var_0.d.x, -279f), var_3, var_3), Struct_1(vec3<bool>(var_0.c, true, all(var_0.a.zz)), _wgslsmith_f_op_vec4_f32(max(var_0.b, var_0.b)), var_0.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.d))), vec3<f32>(-292f, -772f, _wgslsmith_f_op_f32(-var_0.d.x)))), var_0.c));
    var var_5 = _wgslsmith_add_u32(var_1, 3447u);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1, 4294967295u, var_1, 35041u), vec4<u32>(46530u, 26462u, u_input.a, 65570u)) >> (vec4<u32>(~u_input.a, select(4294967295u, u_input.a, var_0.a.x), ~4294967295u, global3.x) % vec4<u32>(32u))), _wgslsmith_add_u32(firstLeadingBit(global3.x), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(383f)), _wgslsmith_f_op_f32(sign(var_4.b.b.x)))));
}

