struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: i32 = -48416i;

var<private> global2: array<vec2<bool>, 9>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_3(u_input.a.wz, arg_0, Struct_1(-arg_0.a), Struct_1(-arg_0.a));
    global2 = array<vec2<bool>, 9>();
    global1 = select(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 42107i), arg_1.a), i32(-1i) * -2147483647i), select(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), arg_0.a), _wgslsmith_add_i32(31570i, u_input.b)), var_0.b.a.x, all(vec2<bool>(true, true)) != any(vec3<bool>(false, true, true))), all(select(select(global2[_wgslsmith_index_u32(1u, 9u)], vec2<bool>(true, false), global2[_wgslsmith_index_u32(var_0.a.x, 9u)]), vec2<bool>(true, true), vec2<bool>(true, true)))) >> (global0[_wgslsmith_index_u32(u_input.a.x, 19u)] % 32u);
    let var_1 = arg_0;
    global1 = select(abs(59048i), -30467i << (var_0.a.x % 32u), !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true)));
    return vec2<f32>(-1734f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2() -> Struct_2 {
    global1 = -1i;
    var var_0 = Struct_1(max(vec2<i32>(~u_input.c, firstTrailingBit(-1i)) ^ vec2<i32>(abs(u_input.b), u_input.b), vec2<i32>(u_input.c, _wgslsmith_add_i32(u_input.b, u_input.b))));
    global1 = countOneBits(_wgslsmith_mult_i32(u_input.b, 66166i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-564f, 203f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a), Struct_1(var_0.a)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-688f, 676f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-128f)), -711f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, 1353f) + vec2<f32>(_wgslsmith_f_op_f32(1520f - 2537f), -339f))));
    global0 = array<u32, 19>();
    return Struct_2(vec2<bool>(false, !all(vec3<bool>(true, true, false))), Struct_1(vec2<i32>(-firstTrailingBit(var_0.a.x), _wgslsmith_mod_i32(u_input.c >> (u_input.a.x % 32u), var_0.a.x | var_0.a.x))), !all(vec3<bool>(false, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, false, true, false)))), Struct_1(select(var_0.a, vec2<i32>(_wgslsmith_mult_i32(-50830i, var_0.a.x), 36374i), true)), _wgslsmith_mult_vec4_i32(select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, 24839i, 34549i), vec4<i32>(var_0.a.x, -57889i, -5047i, 20742i)), vec4<i32>(-21475i, var_0.a.x, 1i, _wgslsmith_sub_i32(u_input.c, u_input.b)), 44374i != (var_0.a.x << (u_input.a.x % 32u))), vec4<i32>(-28756i << (u_input.a.x % 32u), var_0.a.x, _wgslsmith_clamp_i32(0i, 43959i, -13422i), var_0.a.x) << (u_input.a % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(74249u, 19u)], 19u)], 19u)];
    global0 = array<u32, 19>();
    var var_1 = Struct_3(~(~firstTrailingBit(vec2<u32>(u_input.a.x, 36231u))), arg_0.d, arg_0.d, arg_0.d);
    return Struct_3(var_1.a, Struct_1(select(func_2().e.zw, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.a.x, 68283i), vec2<i32>(u_input.b, var_1.b.a.x)), arg_0.e.xy), arg_0.c)), arg_0.d, func_2().d);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 19>();
    var var_0 = func_4(func_2());
    var var_1 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.a.x, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.a.x, ~37960u, u_input.a.x, 1u)), 19u)]);
    var var_2 = func_4(Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(~(arg_0.x | arg_0.x)), 9u)], func_4(Struct_2(vec2<bool>(arg_1, true), arg_2, true, Struct_1(arg_2.a), ~vec4<i32>(-1i, u_input.b, -2147483647i, 12501i))).b, all(!(!vec3<bool>(false, arg_1, true))), arg_2, select(abs(min(vec4<i32>(2147483647i, u_input.c, var_0.b.a.x, u_input.b), vec4<i32>(u_input.b, -2147483647i, u_input.c, var_0.c.a.x))), vec4<i32>(arg_2.a.x, -1307i, select(-1i, 1i, arg_1), firstTrailingBit(0i)), select(select(vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, true, false, true), false), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, arg_1, false)))));
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_2.a.x, 4294967295u), vec2<u32>(arg_0.x, 36889u) << (vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]) % vec2<u32>(32u)), var_2.a ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(var_2.a.x, 19u)])), vec2<u32>(_wgslsmith_add_u32(24143u, arg_0.x), 4294967295u), var_0.a), arg_0), Struct_1(vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(23001i, u_input.b, -2147483647i), vec3<i32>(1i, var_0.c.a.x, u_input.c)), arg_2.a.x))), arg_2, Struct_1(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-1i, -32670i), arg_2.a) | _wgslsmith_mod_vec2_i32(var_0.d.a, var_0.d.a))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(countOneBits(u_input.a.x));
    var var_1 = Struct_1(((vec2<i32>(u_input.c, -6936i) ^ firstLeadingBit(vec2<i32>(u_input.b, 69509i))) >> (vec2<u32>(12720u, u_input.a.x) % vec2<u32>(32u))) & vec2<i32>(firstLeadingBit(select(6525i, u_input.b, true)), -7597i));
    global0 = array<u32, 19>();
    var var_2 = func_1(u_input.a.xw, !(!((var_0 & u_input.a.x) < abs(var_0))), Struct_1(-vec2<i32>(var_1.a.x, abs(11265i))));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-76480i, _wgslsmith_add_i32(var_2.a.x, var_2.a.x))) >> ((firstTrailingBit(u_input.a.ww) | min(~u_input.a.xw, vec2<u32>(1785u, u_input.a.x))) % vec2<u32>(32u)));
    let var_4 = true;
    let var_5 = _wgslsmith_f_op_f32(705f - 1000f);
    var var_6 = func_4(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(min(func_2().b.a, func_2().d.a)), (-var_1.a.x >> (~1u % 32u)) > _wgslsmith_mod_i32(~0i, ~27454i), func_1(~abs(u_input.a.ww), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], 19u)], 11309u, 30255u) < max(var_0, u_input.a.x), Struct_1(var_1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.a.x, u_input.c, var_1.a.x, 0i), vec4<i32>(~10991i, 1i, var_1.a.x, var_3.a.x | u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(0u, ~(9675u & var_6.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_div_f32(var_5, var_5))));
}

