struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(false, true), 100622u, Struct_2(vec3<i32>(-38670i, 1435i, -1i), false, Struct_1(1u)), vec4<u32>(34614u, 0u, 0u, 12875u));

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec3_i32(max(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-6693i, 0i, u_input.b), vec3<i32>(0i, global0.c.a.x, u_input.a.x))), global0.c.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.a.x, reverseBits(u_input.a.x)), vec2<i32>(58739i, global0.c.a.x)), 1i, -48840i);
    global0 = Struct_4(vec2<bool>(global0.c.a.x >= ~(-10677i), any(!select(vec4<bool>(global0.a.x, global0.c.b, global0.a.x, true), vec4<bool>(true, false, false, global0.c.b), false))), select(38260u, _wgslsmith_add_u32(_wgslsmith_div_u32(64920u, 4294967295u), global0.b) | 70986u, global0.c.b), Struct_2(countOneBits(global0.c.a), global0.c.b, global0.c.c), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(firstLeadingBit(40629u), 1u << (global0.d.x % 32u)), global0.d.x, select(global0.b, _wgslsmith_div_u32(global0.d.x, global0.b), true)), ~(~vec4<u32>(4294967295u, global0.c.c.a, 91697u, global0.c.c.a))));
    var var_1 = global1[_wgslsmith_index_u32(global0.b >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(~global0.d.ywz, global0.d.zyz)) % 32u), 9u)];
    global1 = array<Struct_2, 9>();
    let var_2 = Struct_2(var_0.zyz, false, Struct_1(reverseBits(global0.c.c.a) | global0.c.c.a));
    return !all(vec2<bool>(true, true));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~arg_0.x;
    let var_1 = vec2<bool>(global0.c.b, global0.c.b);
    var var_2 = all(select(vec3<bool>(all(select(vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, global0.a.x))), !(global0.a.x | false), firstTrailingBit(global0.b) > arg_0.x), vec3<bool>(!func_3(), false, any(select(var_1, vec2<bool>(var_1.x, false), var_1.x))), select(select(vec3<bool>(false, true, var_1.x), select(vec3<bool>(global0.a.x, true, var_1.x), vec3<bool>(global0.a.x, global0.a.x, true), true), true), !vec3<bool>(global0.c.b, false, false), all(var_1))));
    let var_3 = global0.c.c;
    global0 = Struct_4(vec2<bool>(select(true, select(!var_1.x, true, any(vec3<bool>(true, global0.a.x, true))), any(!vec2<bool>(true, var_1.x))), true), 50414u, Struct_2(vec3<i32>(-1i) * -(~u_input.a), any(!vec3<bool>(true, true, global0.a.x)) | true, global0.c.c), global0.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1339f) * _wgslsmith_f_op_f32(f32(-1f) * -1217f)) - _wgslsmith_f_op_f32(f32(-1f) * -1679f)), 1f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec2<f32> {
    global0 = Struct_4(global0.a, firstLeadingBit(global0.d.x), Struct_2(-global0.c.a, true, global0.c.c), vec4<u32>(60444u, global0.c.c.a, 0u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 15871u, global0.d.x, global0.c.c.a), global0.d) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.d.x), global0.d.zy))));
    var var_0 = 18276u;
    let var_1 = _wgslsmith_mod_i32(firstTrailingBit(u_input.b), u_input.b);
    let var_2 = Struct_5(var_1 | -2147483647i, Struct_4(select(select(select(vec2<bool>(true, arg_0.x), vec2<bool>(false, true), vec2<bool>(global0.c.b, false)), vec2<bool>(true, arg_0.x), true), !(!global0.a), all(arg_0) | all(vec3<bool>(true, arg_0.x, false))), _wgslsmith_div_u32(_wgslsmith_mod_u32(98747u, global0.b) & 4294967295u, 19408u >> (1u % 32u)), global0.c, ~vec4<u32>(global0.c.c.a, global0.c.c.a, global0.c.c.a, global0.d.x) ^ vec4<u32>(global0.c.c.a, 1u, 1u, abs(global0.c.c.a))));
    let var_3 = var_2.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_1, arg_1, false)), !var_3.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_3.d.yz)) - _wgslsmith_f_op_f32(854f + _wgslsmith_div_f32(arg_1, arg_1)))));
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_2, 9>();
    var var_0 = global0.d.x ^ global0.c.c.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-737f, -731f) - vec2<f32>(977f, 342f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(901f, -765f) - vec2<f32>(-1771f, 476f))))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -724f), _wgslsmith_f_op_f32(-606f * 409f), 0u <= global0.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 1457f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(!select(vec3<bool>(true, false, global0.a.x), vec3<bool>(true, global0.c.b, true), vec3<bool>(global0.a.x, global0.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(global0.c.c.a, global0.d.x)))))))));
    let var_2 = Struct_1(global0.c.c.a);
    var_0 = global0.d.x;
    return Struct_4(select(!global0.a, vec2<bool>(select(false, !global0.a.x, any(vec4<bool>(global0.a.x, global0.c.b, global0.c.b, global0.c.b))), global0.c.a.x != firstTrailingBit(global0.c.a.x)), select(any(vec3<bool>(false, true, false)), u_input.a.x != global0.c.a.x, true) && global0.c.b), _wgslsmith_mod_u32(var_2.a, firstTrailingBit(76671u)), Struct_2(u_input.a, global0.a.x, var_2), ~global0.d);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = countOneBits(reverseBits(arg_3.x));
    var var_1 = ~1u;
    global0 = arg_2;
    let var_2 = vec3<bool>(global0.c.b, _wgslsmith_div_i32(u_input.b, u_input.a.x) > abs(global0.c.a.x), true);
    var var_3 = global0.c.c;
    return Struct_2(global0.c.a, !(!any(vec2<bool>(false, false)) & arg_2.c.b), Struct_1(0u));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~(vec2<u32>(~global0.d.x, arg_0.c.a) >> ((vec2<u32>(0u, 6473u) & global0.d.xw) % vec2<u32>(32u))) | global0.d.yw;
    let var_1 = true;
    global0 = func_1();
    let var_2 = func_1().c.c;
    global0 = Struct_4(func_1().a, 1u, func_5(false, select(select(select(vec3<bool>(false, true, arg_0.b), vec3<bool>(var_1, false, global0.c.b), vec3<bool>(var_1, true, true)), vec3<bool>(true, true, var_1), global0.a.x), !(!vec3<bool>(true, var_1, var_1)), vec3<bool>(true, any(global0.a), true & global0.c.b)), Struct_4(vec2<bool>(any(global0.a), arg_0.b), arg_0.c.a, func_1().c, _wgslsmith_add_vec4_u32(~vec4<u32>(78195u, global0.c.c.a, 4294967295u, 4294967295u), ~vec4<u32>(14391u, var_2.a, global0.c.c.a, arg_0.c.a))), _wgslsmith_div_vec4_u32(global0.d, global0.d ^ _wgslsmith_sub_vec4_u32(global0.d, global0.d))), countOneBits(global0.d));
    return Struct_2(u_input.a, false, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(global0.d, global0.d);
    global1 = array<Struct_2, 9>();
    let var_1 = Struct_1(global0.c.c.a);
    global0 = Struct_4(global0.a, _wgslsmith_dot_vec4_u32(global0.d, _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 33264u, 0u, 25842u), select(vec4<u32>(global0.b, var_0, 83398u, var_0), vec4<u32>(var_0, var_1.a, 0u, 0u), vec4<bool>(true, true, global0.c.b, global0.a.x))) ^ global0.d), func_6(func_5(false, select(select(vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(global0.c.b, true, global0.a.x), vec3<bool>(global0.c.b, true, global0.a.x)), vec3<bool>(true, true, true), true), func_1(), abs(_wgslsmith_sub_vec4_u32(global0.d, global0.d)))), global0.d);
    let var_2 = Struct_3(func_1().c.c, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.d.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 59350u), ~global0.d.ww)), _wgslsmith_mod_u32(var_1.a, var_1.a | (24425u | global0.b))), 9u)], global0.c.c, global1[_wgslsmith_index_u32(var_1.a, 9u)], ~var_0);
    var var_3 = var_1;
    var_3 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.a, ~var_1.a), ~(~global0.d.x) ^ var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1095f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(f32(-1f) * -240f)) - -411f), -1000f), abs(24694i), abs(~global0.d), _wgslsmith_mult_u32(0u, var_0 & ~var_2.c.a));
}

