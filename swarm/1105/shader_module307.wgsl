struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, false, false, false, false, true, false, true, false, true, false, false, false, false, false, false, true, false, false, false, false, false);

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = true;
    var var_1 = select(u_input.b.zxx, -vec3<i32>(firstLeadingBit(-2952i), reverseBits(~1i), -arg_0.c >> (~31870u % 32u)), !arg_1.a.x);
    let var_2 = arg_1.d;
    global0 = array<bool, 22>();
    var var_3 = ~min(max(vec4<u32>(arg_0.d.x, 50223u, min(arg_0.d.x, 18175u), _wgslsmith_dot_vec2_u32(global2.d, u_input.e)), arg_1.b), abs(abs(reverseBits(vec4<u32>(1u, arg_1.b.x, 1u, 4294967295u)))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(min(select(u_input.a << (arg_1.b % vec4<u32>(32u)), u_input.a, !vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2, 22u)], false)), u_input.b), select(vec4<i32>(5255i, var_1.x, -2147483647i, -1i), ~vec4<i32>(global2.b, 1i, 1i, u_input.c.x), select(vec4<bool>(false, arg_1.c.x, arg_1.c.x, global0[_wgslsmith_index_u32(arg_0.d.x, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 22u)], false, global0[_wgslsmith_index_u32(29150u, 22u)], true), vec4<bool>(true, false, true, arg_1.a.x))) << (((arg_1.b | vec4<u32>(4294967295u, 0u, 0u, 1u)) | (vec4<u32>(4294967295u, 4294967295u, global2.d.x, 4294967295u) << (arg_1.b % vec4<u32>(32u)))) % vec4<u32>(32u))), vec4<i32>(~2147483647i, arg_1.d.a, -62479i, ~(-1i) << ((abs(arg_0.d.x) & global2.d.x) % 32u)));
}

fn func_2() -> vec3<bool> {
    let var_0 = select(vec2<bool>(!global0[_wgslsmith_index_u32(global2.d.x | countOneBits(4294967295u), 22u)], !any(!vec4<bool>(false, global0[_wgslsmith_index_u32(global2.d.x, 22u)], global0[_wgslsmith_index_u32(6548u, 22u)], global0[_wgslsmith_index_u32(6148u, 22u)]))), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.e.x, 22u)]);
    global0 = array<bool, 22>();
    var var_1 = max(vec2<i32>(-(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-12226i, -12166i)) | -global2.b), global2.c), u_input.a.zx);
    global2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(349f * -1107f)), global2.a.x), global2.a.x, 1040f, _wgslsmith_div_f32(260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(min(29780i, global2.c), 20226i, u_input.b.x, 0i << (global2.d.x % 32u)), u_input.b), _wgslsmith_mod_vec4_i32(reverseBits(u_input.b), max(u_input.a, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(global2.c, u_input.b.x, -17636i, var_1.x))))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -1000f))), u_input.a.x, var_1.x, u_input.e), Struct_4(vec3<bool>(true, true, true), _wgslsmith_mod_vec4_u32(vec4<u32>(55475u, 0u, global2.d.x, global2.d.x), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 1u)), !vec3<bool>(var_0.x, true, var_0.x), Struct_3(-1i)), 1u) >> (((global2.d.x | ~u_input.d) | ~(~39457u)) % 32u), firstTrailingBit(_wgslsmith_sub_vec2_u32(~(vec2<u32>(global2.d.x, global2.d.x) | vec2<u32>(global2.d.x, u_input.e.x)), ~vec2<u32>(u_input.e.x, u_input.d))));
    var_1 = u_input.c;
    return select(vec3<bool>(false, any(!(!vec3<bool>(var_0.x, false, true))), _wgslsmith_f_op_f32(-global2.a.x) < -585f), !select(select(!vec3<bool>(global0[_wgslsmith_index_u32(56971u, 22u)], true, global0[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), true), global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(true, true, true), select(true, var_0.x, global2.c == 1i)), all(!(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(global0[_wgslsmith_index_u32(global2.d.x, 22u)], var_0.x, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(47068u, 22u)], false, var_0.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_5) -> Struct_1 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f + _wgslsmith_f_op_f32(f32(-1f) * -528f)));
    var var_1 = Struct_4(arg_0, _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(abs(38206u), arg_1, ~arg_1, 0u)), max(vec4<u32>(global2.d.x, global2.d.x, abs(34901u), arg_1), select(vec4<u32>(4294967295u, u_input.d, 18044u, 43020u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 63212u, 0u, u_input.d), vec4<u32>(global2.d.x, 11165u, 4294967295u, 1u)), arg_0.x))), select(vec3<bool>(true, true, true && global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(func_2().x, !all(vec4<bool>(true, arg_0.x, arg_0.x, false)), !(!global0[_wgslsmith_index_u32(19999u, 22u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 22u)], false, true, global0[_wgslsmith_index_u32(global2.d.x, 22u)])) | true), Struct_3(global2.b));
    global0 = array<bool, 22>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.a)))))), -28348i, i32(-1i) * -global2.c, global2.d);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = 1u;
    global0 = array<bool, 22>();
    let var_1 = Struct_3(-(0i ^ -(~u_input.c.x)));
    var var_2 = Struct_2(u_input.e, true, Struct_1(global2.a, -33364i, -2147483647i, vec2<u32>(~abs(global2.d.x), 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -936f, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x - 1479f))), _wgslsmith_mult_i32(~(~(-3049i)), global2.b), 0i, reverseBits(vec2<u32>(global2.d.x ^ global2.d.x, ~u_input.e.x))), func_4(!func_2(), ~_wgslsmith_mult_u32(u_input.e.x, abs(u_input.d)), _wgslsmith_f_op_vec2_f32(select(global2.a.wy, global2.a.xw, !vec2<bool>(global0[_wgslsmith_index_u32(41654u, 22u)], false))), Struct_5(select(!global0[_wgslsmith_index_u32(4294967295u, 22u)], !global0[_wgslsmith_index_u32(u_input.e.x, 22u)], all(vec3<bool>(global0[_wgslsmith_index_u32(global2.d.x, 22u)], false, false))))));
    let var_3 = global2.d.x << (_wgslsmith_mult_u32(~global2.d.x, _wgslsmith_clamp_u32(func_4(vec3<bool>(true, global0[_wgslsmith_index_u32(global2.d.x, 22u)], true), var_2.e.d.x, vec2<f32>(1681f, 1951f), Struct_5(false)).d.x, 1u, var_2.c.d.x) >> (var_2.c.d.x % 32u)) % 32u);
    return ~(var_2.a.x << (~(~_wgslsmith_clamp_u32(27056u, 4294967295u, 1u)) % 32u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_5((min(-37411i, select(1i, global2.c, global0[_wgslsmith_index_u32(0u, 22u)])) >> (1u % 32u)) <= -22283i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x)) + 2007f);
    let var_2 = Struct_3(min(global2.b, global2.b));
    global1 = array<vec3<u32>, 14>();
    let var_3 = arg_1.c;
    return Struct_3(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x));
    global1 = array<vec3<u32>, 14>();
    var var_1 = func_5(global1[_wgslsmith_index_u32(u_input.e.x, 14u)], Struct_2(vec2<u32>(global2.d.x, ~func_1(2147483647i)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(global2.d.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false), func_2(), true)), func_4(vec3<bool>(false, any(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.d.x, 22u)], global0[_wgslsmith_index_u32(65064u, 22u)], true)), !global0[_wgslsmith_index_u32(0u, 22u)]), (25250u << (u_input.d % 32u)) >> (global2.d.x % 32u), vec2<f32>(1176f, -430f), Struct_5(!global0[_wgslsmith_index_u32(0u, 22u)])), func_4(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 22u)], !global0[_wgslsmith_index_u32(u_input.e.x, 22u)], !global0[_wgslsmith_index_u32(u_input.e.x, 22u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global2.d.x, u_input.d), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(0u, 14u)], vec3<u32>(39105u, u_input.d, global2.d.x))), global2.a.zz, Struct_5(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 22u)])), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.a, global2.a, vec4<bool>(global0[_wgslsmith_index_u32(global2.d.x, 22u)], false, true, global0[_wgslsmith_index_u32(global2.d.x, 22u)])))), 12984i << (global2.d.x % 32u), _wgslsmith_dot_vec3_i32(u_input.a.zwz, _wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, -2147483647i), u_input.a.xyz)), global2.d)));
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.e, _wgslsmith_div_vec2_u32(~firstTrailingBit(u_input.e), firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(global2.d, global2.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.e.x, 79224u, firstLeadingBit(u_input.e.x), global2.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, var_2.x, 78286u), vec4<u32>(global2.d.x, global2.d.x, u_input.e.x, 110407u))), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(sign(func_4(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global2.d.x, 22u)], global0[_wgslsmith_index_u32(8383u, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)], true), false), abs(1u), _wgslsmith_f_op_vec2_f32(global2.a.wy - vec2<f32>(global2.a.x, var_0)), Struct_5(true)).a.x))), vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(var_1.a), -31470i), i32(-1i) * -var_1.a, reverseBits(firstLeadingBit(_wgslsmith_sub_i32(global2.c, -2205i))), -min(12515i, -u_input.c.x)), (_wgslsmith_mult_u32(func_1(var_1.a), global2.d.x) | abs(~var_2.x)) >> (~_wgslsmith_clamp_u32(~global2.d.x, firstLeadingBit(4294967295u), reverseBits(0u)) % 32u));
}

