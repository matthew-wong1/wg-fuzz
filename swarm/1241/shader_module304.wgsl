struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(0i, -220i), vec2<i32>(-10445i, 1i), vec2<i32>(17356i, 19826i), vec2<i32>(i32(-2147483648), -50487i), vec2<i32>(2147483647i, 1i), vec2<i32>(-52412i, 11749i), vec2<i32>(0i, 49675i), vec2<i32>(1i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-67593i, -22174i), vec2<i32>(0i, -25319i), vec2<i32>(62470i, -39655i), vec2<i32>(2147483647i, 16113i), vec2<i32>(-1i, 7725i), vec2<i32>(0i, 0i), vec2<i32>(-27792i, -69505i), vec2<i32>(6532i, 1i), vec2<i32>(1i, 1i), vec2<i32>(-1i, -32792i), vec2<i32>(-17623i, 0i), vec2<i32>(1i, 17752i), vec2<i32>(10157i, 10687i), vec2<i32>(-1i, 59144i));

var<private> global1: u32 = 1u;

var<private> global2: array<bool, 15>;

var<private> global3: bool;

var<private> global4: array<f32, 2> = array<f32, 2>(871f, 1822f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_u32(u_input.a, u_input.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-454f)) + _wgslsmith_f_op_f32(-401f - arg_0.x)), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-571f - arg_0.x), -780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(var_0, 2u)])))))));
    global1 = _wgslsmith_sub_u32(21481u >> (_wgslsmith_sub_u32(10592u, _wgslsmith_add_u32(firstLeadingBit(var_0), 4294967295u)) % 32u), var_0);
    let var_2 = Struct_2(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0, 0u, 36402u), vec4<u32>(u_input.e.x, 33540u, var_0, var_0), vec4<u32>(var_0, u_input.e.x, 4294967295u, 1u))) >> (_wgslsmith_div_vec4_u32(reverseBits(reverseBits(vec4<u32>(4294967295u, 36910u, var_0, 1u))), ~(~vec4<u32>(4294967295u, 0u, 0u, u_input.a))) % vec4<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(~u_input.e.x, u_input.b.x, 27798u)));
    global2 = array<bool, 15>();
    return min(var_2.b.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(16863u, 4623u), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~var_2.a.wx, ~vec2<u32>(0u, 4294967295u)), vec2<u32>(~1u, ~4294967295u))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(~(~vec4<u32>(30259u, ~u_input.b.x, u_input.e.x, 1u << (u_input.b.x % 32u))), select(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), func_3(vec4<f32>(global4[_wgslsmith_index_u32(0u, 2u)], global4[_wgslsmith_index_u32(8338u, 2u)], global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(u_input.b.x, 2u)]), -57390i, Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(34600u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)])))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 27635u, 58239u), vec3<u32>(u_input.a, u_input.a, u_input.b.x)) >> (u_input.b.x % 32u)), ~(~min(u_input.e, vec3<u32>(u_input.a, u_input.a, u_input.e.x))), select(vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(77067u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], true)), true, false), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 15u)], true, true | global2[_wgslsmith_index_u32(21379u, 15u)]), vec3<bool>(true, true, !global2[_wgslsmith_index_u32(34683u, 15u)]))));
    var var_1 = firstTrailingBit(firstTrailingBit(reverseBits(~abs(0u))));
    var var_2 = select(u_input.e, firstLeadingBit(u_input.e), global2[_wgslsmith_index_u32(var_0.b.x, 15u)]);
    let var_3 = Struct_4(vec3<bool>(firstLeadingBit(var_0.a.x) != u_input.b.x, any(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(19618u, 15u)], global2[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], true, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 15u)], false)), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], false, false), global2[_wgslsmith_index_u32(49321u, 15u)]), true)), all(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_2.x, 15u)]), global2[_wgslsmith_index_u32(16753u, 15u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 15u)], true, global2[_wgslsmith_index_u32(0u, 15u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 15u)], false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)]))))), Struct_1(select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 15u)], false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(103385u, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)], global2[_wgslsmith_index_u32(var_0.a.x, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(8662u, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)], global2[_wgslsmith_index_u32(var_0.b.x, 15u)])), true), !select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 15u)], global2[_wgslsmith_index_u32(41684u, 15u)], global2[_wgslsmith_index_u32(var_2.x, 15u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_2.x, 15u)]), true), any(vec4<bool>(true, true, true, true)))));
    var var_4 = !select(!vec4<bool>(all(vec2<bool>(true, var_3.a.x)), true, global2[_wgslsmith_index_u32(~u_input.a, 15u)], any(var_3.a.xz)), !(!select(vec4<bool>(true, false, var_3.a.x, false), vec4<bool>(var_3.b.a.x, false, var_3.a.x, true), global2[_wgslsmith_index_u32(17103u, 15u)])), true);
    return Struct_2(var_0.a, vec3<u32>(select(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.e.x, u_input.a)), var_2.x, global2[_wgslsmith_index_u32(45190u, 15u)]), u_input.e.x, ~(u_input.e.x << (~u_input.b.x % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_4(vec3<bool>(all(select(vec2<bool>(arg_1, false), arg_2.yx, true)), true, any(!select(arg_2, arg_2, arg_2))), Struct_1(!vec3<bool>(global2[_wgslsmith_index_u32(46413u, 15u)], any(arg_2.wx), arg_2.x)));
    global3 = true;
    global4 = array<f32, 2>();
    var var_1 = firstTrailingBit(~(-1i));
    let var_2 = 881f;
    return all(select(!select(arg_2, !vec4<bool>(true, arg_2.x, false, true), arg_2), select(select(select(arg_2, arg_2, global2[_wgslsmith_index_u32(arg_0.a.x, 15u)]), arg_2, all(vec4<bool>(var_0.a.x, arg_1, true, global2[_wgslsmith_index_u32(386u, 15u)]))), vec4<bool>(any(var_0.b.a), var_0.a.x, var_0.b.a.x, true), !arg_2), arg_2));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~reverseBits(u_input.e.x), 23u)];
    var var_1 = Struct_3(select(vec4<bool>(!global2[_wgslsmith_index_u32(~0u, 15u)], func_4(func_2(), all(vec4<bool>(false, global2[_wgslsmith_index_u32(5221u, 15u)], false, arg_0.a.x)), !vec4<bool>(true, arg_0.b.a.x, false, global2[_wgslsmith_index_u32(0u, 15u)]), func_2()), all(!arg_0.b.a.xx), arg_0.a.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 15u)], any(arg_0.b.a), true, arg_0.b.a.x), global2[_wgslsmith_index_u32(6930u, 15u)] == (u_input.b.x != 0u)), true, func_2(), vec3<i32>(_wgslsmith_div_i32(u_input.d.x, var_0.x), ~0i >> (u_input.b.x % 32u), -u_input.c.x));
    global1 = 0u;
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.c.x, u_input.c.x);
    global3 = all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(min(4294967295u, u_input.a), 15u)], true || global2[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(42280u, u_input.b.x)), 15u)], true), true), select(vec2<bool>(true, !global2[_wgslsmith_index_u32(u_input.a, 15u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(43950u, 15u)]), func_1(Struct_4(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(19054u, 15u)]), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(47320u, 15u)], global2[_wgslsmith_index_u32(115692u, 15u)], false)))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(46870u, 15u)]), vec2<bool>(true, false), true)), global2[_wgslsmith_index_u32(32710u, 15u)] & global2[_wgslsmith_index_u32(~u_input.a, 15u)]), false));
    global2 = array<bool, 15>();
    global1 = ~_wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.e.x, u_input.a))), vec2<u32>(1u, 1u));
    global1 = ~u_input.a ^ u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(var_0.x & 1i), -41740i), ~_wgslsmith_div_u32(~max(u_input.a, u_input.a), min(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~u_input.e.x, 2u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 2u)] - global4[_wgslsmith_index_u32(u_input.e.x, 2u)])), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, countOneBits(u_input.a)), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(71413u, 2u)] * global4[_wgslsmith_index_u32(u_input.e.x, 2u)]) - global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.a), 2u)]), global4[_wgslsmith_index_u32(~(u_input.e.x >> (u_input.a % 32u)), 2u)])));
}

