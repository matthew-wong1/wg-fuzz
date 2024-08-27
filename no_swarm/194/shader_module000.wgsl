struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 18> = array<f32, 18>(1781f, 970f, -346f, 1022f, 289f, 1209f, -129f, -304f, -265f, 586f, 122f, 144f, -643f, 2499f, -566f, 276f, -470f, 1086f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<i32>(-8584i, 15999i, 1i), false, -1000f), Struct_1(vec3<i32>(2147483647i, 1i, -1i), false, 668f), Struct_1(vec3<i32>(-1i, 15070i, i32(-2147483648)), true, -1251f), Struct_1(vec3<i32>(0i, -23574i, -17909i), true, 159f), Struct_1(vec3<i32>(32432i, 2186i, 2147483647i), false, -1000f), Struct_1(vec3<i32>(-38092i, 0i, 37735i), false, -197f), Struct_1(vec3<i32>(29037i, 2147483647i, -20483i), false, 105f), Struct_1(vec3<i32>(-38991i, i32(-2147483648), -1i), false, -312f), Struct_1(vec3<i32>(7115i, -8233i, -6056i), false, -1753f), Struct_1(vec3<i32>(-1i, 1i, 41767i), false, 1217f), Struct_1(vec3<i32>(-16668i, 1i, 2147483647i), false, -543f), Struct_1(vec3<i32>(57543i, -31858i, 1i), true, -703f), Struct_1(vec3<i32>(0i, 26622i, -1i), true, -119f), Struct_1(vec3<i32>(-1i, 35636i, 1i), true, -131f), Struct_1(vec3<i32>(2147483647i, 0i, -16559i), true, -1186f), Struct_1(vec3<i32>(4343i, 1i, 1i), false, -1321f), Struct_1(vec3<i32>(-1i, 29754i, -57808i), false, 1379f), Struct_1(vec3<i32>(39283i, 0i, -17460i), false, -804f), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), true, 2983f), Struct_1(vec3<i32>(0i, -1i, -9939i), false, 1126f), Struct_1(vec3<i32>(5709i, 1i, 6850i), true, 1000f), Struct_1(vec3<i32>(-82601i, -1i, -629i), true, -1089f), Struct_1(vec3<i32>(-56572i, 2147483647i, 9611i), false, 778f), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), false, -1645f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> bool {
    global2 = arg_1;
    global0 = vec3<i32>(60180i, ~arg_1.a.x, 1i);
    global1 = array<f32, 18>();
    let var_0 = Struct_1(~(max(-global2.a, global2.a) >> ((~vec3<u32>(u_input.b, 4294967295u, u_input.b) << (max(vec3<u32>(41662u, 4294967295u, 39479u), vec3<u32>(0u, 4294967295u, 50371u)) % vec3<u32>(32u))) % vec3<u32>(32u))), all(select(!(!vec4<bool>(true, true, true, global2.b)), !(!vec4<bool>(true, true, false, arg_1.b)), vec4<bool>(arg_1.b && arg_1.b, false, global2.b | false, true))), arg_0.x);
    let var_1 = _wgslsmith_mult_u32(~(select(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), any(arg_2)) >> (4294967295u % 32u)), ~reverseBits(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b, u_input.b))));
    return false || select((false || global2.b) || global2.b, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_3), vec3<bool>(arg_3, var_0.b, arg_1.b), true)), !var_0.b);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(all(!select(select(vec3<bool>(false, global2.b, global2.b), vec3<bool>(false, global2.b, false), false), vec3<bool>(global2.b, false, global2.b), false && global2.b)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -184f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, 1800f) * vec2<f32>(global2.c, global2.c))))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), u_input.b), 24u)], vec2<bool>(!(4294967295u > u_input.b), true), global2.b), all(select(select(!vec4<bool>(true, global2.b, global2.b, false), vec4<bool>(global2.b, global2.b, true, true), select(vec4<bool>(global2.b, true, global2.b, false), vec4<bool>(true, false, global2.b, global2.b), true)), !select(vec4<bool>(false, global2.b, false, false), vec4<bool>(true, global2.b, global2.b, global2.b), global2.b), vec4<bool>(true, true, global2.a.x == -2991i, false))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f))), 1477f, false));
    var var_2 = global3[_wgslsmith_index_u32(34287u, 24u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, var_1, global2.c));
    global2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(10773i, _wgslsmith_div_i32(-19482i, max(0i, u_input.a)), global2.a.x), vec3<i32>(-_wgslsmith_mod_i32(0i, u_input.a), _wgslsmith_sub_i32(1i, 0i), -var_2.a.x)), any(vec4<bool>(true, true, true, global2.b)), var_3.x);
    return Struct_1(vec3<i32>(u_input.a >> (min(_wgslsmith_div_u32(1u, u_input.b), 1u) % 32u), select(_wgslsmith_mult_i32(-var_2.a.x, ~(-1i)), -16787i, !global2.b != false), _wgslsmith_dot_vec3_i32(var_2.a & global2.a, abs(-var_2.a))), 37771i <= global0.x, global2.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = ~4294967295u;
    var var_1 = Struct_1(arg_2.a, arg_3, _wgslsmith_f_op_f32(floor(131f)));
    global1 = array<f32, 18>();
    global3 = array<Struct_1, 24>();
    global3 = array<Struct_1, 24>();
    return global3[_wgslsmith_index_u32(~min(u_input.b, u_input.b), 24u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> bool {
    let var_0 = ~global2.a.x <= 48753i;
    let var_1 = firstLeadingBit(u_input.b);
    global2 = func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~u_input.b << (select(56188u, 37742u, true) % 32u)), 42650u), 24u)], true, func_2(), (-36836i & _wgslsmith_dot_vec3_i32(-global2.a, global2.a | global2.a)) != -1i);
    var var_2 = vec4<i32>(global0.x, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(select(vec4<i32>(global0.x, 1i, 13572i, global0.x), vec4<i32>(u_input.a, u_input.a, global0.x, -15783i), vec4<bool>(true, true, var_0, true)), -vec4<i32>(global0.x, global2.a.x, global0.x, global2.a.x))), vec4<i32>(48962i, ~u_input.a, u_input.a, _wgslsmith_add_i32(-global2.a.x, global0.x))), -38482i, -1i);
    var var_3 = -1i;
    return _wgslsmith_div_i32(u_input.a, -7124i) > _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 18688i, -1i) | -var_2.zwz, global2.a), ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, u_input.a, 1i, global2.a.x), vec4<i32>(951i, global2.a.x, -1i, global0.x)), vec4<i32>(0i, global0.x, u_input.a, -34300i) | vec4<i32>(37587i, var_2.x, global2.a.x, 11989i)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(-1568f * 1108f)), _wgslsmith_div_f32(global2.c, global2.c)) - arg_3.c);
    global3 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(51517u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), u_input.b), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_2, arg_2), vec2<u32>(1u, 4294967295u), arg_1.yw) | vec2<u32>(1u, arg_2), vec2<u32>(arg_2, arg_2) << (vec2<u32>(4294967295u, 71904u) % vec2<u32>(32u)), vec2<u32>(arg_2, u_input.b)), ~vec2<u32>(~17815u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(arg_2, 0u, 37370u)))));
    global3 = array<Struct_1, 24>();
    global0 = vec3<i32>(arg_3.a.x, u_input.a, reverseBits(min(abs(_wgslsmith_mult_i32(-1i, 26174i)), 1i)));
    return StorageBuffer(vec4<f32>(arg_3.c, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~0u, 18u)])), _wgslsmith_f_op_f32(-global2.c), 235f), 0u & var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    global2 = global3[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_0 = Struct_1(max(vec3<i32>(21239i, min(2147483647i, _wgslsmith_mod_i32(-10045i, u_input.a)), -34794i), global2.a), global2.b, global2.c);
    var_0 = global3[_wgslsmith_index_u32(countOneBits(u_input.b), 24u)];
    let var_1 = _wgslsmith_f_op_f32(-2010f + var_0.c);
    let x = u_input.a;
    s_output = func_5(((var_0.a.x << ((u_input.b & u_input.b) % 32u)) & -_wgslsmith_sub_i32(36619i, 1i)) > (-_wgslsmith_mod_i32(25891i, var_0.a.x) | 42044i), vec4<bool>(_wgslsmith_add_i32(~4186i, _wgslsmith_mod_i32(-31322i, 1i)) == global0.x, !any(vec2<bool>(true, true)), func_1(!vec3<bool>(true, global2.b, var_0.b), vec3<f32>(var_0.c, -2063f, _wgslsmith_f_op_f32(global2.c - -716f))), any(vec3<bool>(true || var_0.b, true, true))), 4294967295u, Struct_1(~(vec3<i32>(-10283i, var_0.a.x, var_0.a.x) << ((vec3<u32>(42687u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 0u, 0u)) % vec3<u32>(32u))), any(!(!vec2<bool>(global2.b, false))), _wgslsmith_f_op_f32(exp2(var_0.c))));
}

