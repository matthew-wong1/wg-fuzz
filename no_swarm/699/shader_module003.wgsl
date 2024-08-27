struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1058f, -488f), 13870i, false, -1i, true);

var<private> global3: u32 = 4294967295u;

var<private> global4: vec4<f32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.yw, vec2<f32>(global2.a.x, 827f)) + _wgslsmith_f_op_vec2_f32(global4.yz * global4.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, 310f), vec2<f32>(global2.a.x, 566f))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, 180f) + _wgslsmith_f_op_vec2_f32(min(global4.zx, vec2<f32>(1614f, -534f)))), _wgslsmith_f_op_vec2_f32(global4.zw + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -847f) * vec2<f32>(global4.x, 1843f)))))), 1i, all(select(!select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global2.c, true, global2.c, true)), select(!vec4<bool>(false, global1.x, global1.x, true), !vec4<bool>(true, false, global1.x, true), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, false, global2.e, global1.x), vec4<bool>(global1.x, global1.x, true, false))), global1.x)), min(-15142i, _wgslsmith_div_i32(u_input.b.x, -1i)), all(select(!select(vec4<bool>(false, false, global1.x, true), vec4<bool>(false, global2.c, false, global1.x), false), vec4<bool>(global2.e, global1.x & false, global2.c || global1.x, global1.x), global1.x)));
    return u_input.a.yy;
}

fn func_2() -> Struct_1 {
    var var_0 = select(_wgslsmith_div_vec2_u32(firstTrailingBit(func_3(vec2<u32>(u_input.a.x, 5348u))), func_3(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 31174u), u_input.d))), max(select(firstLeadingBit(~vec2<u32>(1u, 5520u)), func_3(u_input.a.zz) << (abs(u_input.a.xx) % vec2<u32>(32u)), !(global2.e | true)), ~abs(vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(u_input.d, 2098u) % vec2<u32>(32u)))), !select(select(!vec2<bool>(global2.e, global1.x), !vec2<bool>(global2.e, global2.e), true), vec2<bool>(select(global1.x, true, global2.e), true), select(select(vec2<bool>(false, global2.e), vec2<bool>(false, false), vec2<bool>(global2.e, false)), vec2<bool>(true, false), false)));
    var_0 = func_3(vec2<u32>(countOneBits(max(var_0.x, u_input.d)), abs(var_0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -888f, global4.x, global2.a.x) * vec4<f32>(global2.a.x, global2.a.x, 739f, global2.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1340f, global4.x, global2.a.x, 158f) + vec4<f32>(-274f, global2.a.x, global2.a.x, -427f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global2.a.x, 169f, global4.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1134f, global4.x)), 1000f, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(trunc(379f))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f - global2.a.x) - 1064f), -660f), firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(16382i, 33682i, u_input.c.x)), ~(-vec3<i32>(global2.b, -9160i, u_input.e.x)))), !global2.c, _wgslsmith_mod_i32(firstTrailingBit(31093i), u_input.b.x), false);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = func_2();
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(174f)) - _wgslsmith_f_op_f32(f32(-1f) * -771f)), arg_0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.zz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(963f, global4.x))))), u_input.b.x, all(vec2<bool>(true, true)), u_input.c.x, _wgslsmith_div_u32(reverseBits(1u), abs(91937u)) > u_input.d);
    global1 = vec2<bool>(all(!(!(!vec2<bool>(var_0.c, true)))), !all(vec4<bool>(false & global2.e, any(vec3<bool>(var_0.e, global1.x, false)), false, true)));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_div_i32(-12212i, global2.d);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -824f)))), -abs(i32(-1i) * -1i), any(vec3<bool>(!any(vec2<bool>(false, true)), any(vec4<bool>(false, false, global1.x, true)), any(vec3<bool>(global2.e, true, global2.c)))), 48036i, func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global4.x)), vec2<f32>(_wgslsmith_f_op_f32(799f - global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -522f))))));
    global3 = u_input.a.x;
    var var_1 = vec4<i32>(var_0.d, -1i, ~u_input.c.x, _wgslsmith_dot_vec2_i32((-u_input.e.zy & vec2<i32>(0i, -1i)) ^ -vec2<i32>(-34315i, u_input.e.x), _wgslsmith_add_vec2_i32(abs(max(vec2<i32>(55119i, global2.d), vec2<i32>(21191i, var_0.d))), ~u_input.e.xz)));
    var_1 = -firstLeadingBit(u_input.b);
    var var_2 = countOneBits(select(4294967295u, ~1u, global1.x));
    let var_3 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-global4.x));
    global3 = _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(~51842u, 4873u) & u_input.a.x, ~4294967295u);
    global1 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.c), true), !vec2<bool>(global2.e, true), select(vec2<bool>(true, var_0.c), vec2<bool>(false, global2.e), false)), select(select(!vec2<bool>(false, global2.e), !vec2<bool>(global1.x, global2.e), select(vec2<bool>(true, false), vec2<bool>(var_0.c, false), vec2<bool>(false, global1.x))), vec2<bool>(select(false, var_0.c, true), true), true), !(-267f >= global2.a.x));
    let var_4 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(global2.d, u_input.c.x), ~reverseBits(vec2<i32>(-1i, 10509i) << (u_input.a.yx % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(func_2().a.x - global4.x), 1000f, var_4.x, _wgslsmith_f_op_f32(min(1100f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, -335f, _wgslsmith_f_op_f32(-169f * global2.a.x), _wgslsmith_f_op_f32(exp2(global4.x)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(trunc(global4.x)), -1000f, -613f)))), 104553u, u_input.d | u_input.d);
}

