struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 0u);

var<private> global1: array<Struct_1, 13>;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> vec3<i32> {
    global0 = vec4<u32>(8916u, u_input.b.x, global0.x, 1u) | (vec4<u32>(_wgslsmith_mult_u32(~0u, global0.x), ~_wgslsmith_mod_u32(1u, u_input.b.x), firstLeadingBit(reverseBits(44231u)), ~u_input.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.d.x, global0.x), vec4<u32>(global0.x, u_input.a, 22511u, global0.x))) & firstLeadingBit((vec4<u32>(u_input.d.x, u_input.b.x, 1u, 4294967295u) | vec4<u32>(4294967295u, global0.x, u_input.b.x, global0.x)) << (abs(vec4<u32>(global0.x, u_input.b.x, global0.x, global0.x)) % vec4<u32>(32u))));
    var var_0 = _wgslsmith_f_op_f32(ceil(275f));
    var var_1 = !arg_1.a.b && ((_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(global0.yxy, u_input.d)) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38070u, 30396u), u_input.d)) > 1u);
    var_1 = !arg_1.a.b;
    let var_2 = !(!vec2<bool>(true, arg_1.a.b & all(vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b))));
    return vec3<i32>(-max(u_input.c.x, _wgslsmith_mult_i32(25403i, u_input.c.x)), arg_0.x, 23713i);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = global2.x;
    let var_1 = (vec3<i32>(~(-9758i), -40113i, -25096i) ^ _wgslsmith_mult_vec3_i32(func_3(vec4<i32>(u_input.c.x, -55294i, 29007i, u_input.c.x) >> (vec4<u32>(global0.x, 95916u, 0u, u_input.a) % vec4<u32>(32u)), Struct_2(global1[_wgslsmith_index_u32(global0.x, 13u)]), _wgslsmith_div_i32(27516i, -2147483647i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x)))), -u_input.c.xzw & abs(vec3<i32>(u_input.c.x, u_input.c.x, -45130i)))) << ((vec3<u32>(~u_input.b.x, ~abs(u_input.d.x), u_input.b.x) & global0.yww) % vec3<u32>(32u));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, 1242f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -965f) * vec2<f32>(-137f, global2.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 961f) * vec2<f32>(-1211f, global2.x))) + vec2<f32>(-174f, _wgslsmith_f_op_f32(floor(global2.x)))))), !vec2<bool>(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0)), true)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-153f + 820f), _wgslsmith_f_op_f32(trunc(569f)), -193f, _wgslsmith_f_op_f32(abs(1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1362f, global2.x, global2.x, -550f) + vec4<f32>(global2.x, global2.x, 709f, global2.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 447f, 926f, global2.x), vec4<f32>(-250f, -620f, 582f, global2.x))))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-2147483647i), var_1.x | u_input.c.x), -18304i, func_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, 8162i), vec4<i32>(-1i, 9412i, 0i, var_1.x)), -vec4<i32>(var_1.x, u_input.c.x, 1i, var_1.x), firstLeadingBit(vec4<i32>(var_1.x, u_input.c.x, 47743i, 14234i))), Struct_2(global1[_wgslsmith_index_u32(71520u, 13u)]), select(0i, u_input.c.x, all(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(139f, -537f), vec2<f32>(-112f, -304f)) * vec2<f32>(global2.x, global2.x))).x), any(select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(true, arg_0, false), true)) && !(var_1.x != var_1.x), all(vec4<bool>(all(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), false)), arg_0, true, all(vec2<bool>(false, arg_0)))), _wgslsmith_mod_u32(abs(0u), 4294967295u));
    var var_3 = Struct_1(-select(select(var_1.zz, u_input.c.yx, false), _wgslsmith_div_vec2_i32(var_1.zz | vec2<i32>(-2147483647i, -2147483647i), -vec2<i32>(-37630i, var_2.b)), vec2<bool>(true, true)), 4294967295u > ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 29124u, var_2.e, var_2.e), vec4<u32>(0u, 1u, 4294967295u, 113022u)));
    return Struct_2(Struct_1(~select(vec2<i32>(u_input.c.x, -12562i), vec2<i32>(var_2.b, u_input.c.x), false), !all(!vec4<bool>(true, true, var_2.d, arg_0))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    return func_2(arg_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.zx, vec2<f32>(-750f, _wgslsmith_f_op_f32(-435f - -922f))))));
    global1 = array<Struct_1, 13>();
    let var_0 = arg_0.a;
    global2 = arg_1.xx;
    global1 = array<Struct_1, 13>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_1.x, _wgslsmith_f_op_f32(step(-258f, global2.x)), global2.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(332f, arg_1.x, global2.x, global2.x), vec4<f32>(902f, arg_1.x, 742f, -125f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1812f, 1277f, arg_1.x), vec4<f32>(1421f, -2079f, 912f, arg_1.x)))))), min(~arg_0.a.a.x, -22474i), _wgslsmith_f_op_f32(-arg_1.x) >= arg_1.x, arg_2.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(785f, global2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1337f, -1148f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, global2.x, global2.x)), vec3<f32>(global2.x, global2.x, 682f), vec3<bool>(false, true, true)))), false, vec4<bool>(!any(vec3<bool>(false, true, false)), false, true, select(all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1000f, _wgslsmith_f_op_f32(-global2.x))))), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, !all(vec2<bool>(true, false)), !all(vec4<bool>(true, true, true, true))));
    var var_1 = vec2<i32>(u_input.c.x, -4024i >> ((~7639u & _wgslsmith_mult_u32(5245u >> (global0.x % 32u), 49100u)) % 32u));
    let var_2 = vec4<bool>(true, true, true, true);
    global1 = array<Struct_1, 13>();
    var_1 = u_input.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.zx, u_input.c.yw, vec2<i32>(u_input.c.x >> (var_0.e % 32u), var_1.x | var_1.x)), vec2<i32>(max(-var_1.x, max(-1i, -31547i)), var_0.b)), var_0.a.yyz, firstLeadingBit(u_input.a & global0.x));
}

