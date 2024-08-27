struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 12>;

var<private> global2: array<i32, 30>;

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(~(vec2<u32>(64284u, 0u) >> (firstTrailingBit(vec2<u32>(arg_2.a.x, u_input.b.x)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(1u), _wgslsmith_sub_u32(32033u, arg_1)), vec2<u32>(1u, ~arg_2.a.x)), (arg_2.a & _wgslsmith_sub_vec2_u32(~arg_2.a, min(arg_3.c.ww, vec2<u32>(u_input.b.x, 41462u)))) >> (vec2<u32>(arg_2.a.x, ~(~4294967295u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> vec2<bool> {
    global0 = true;
    let var_0 = !select(select(select(!vec2<bool>(false, arg_0.a.x), arg_3.a, !arg_2), vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_3.d, 12u)], arg_1.a.x, arg_2)))), vec2<bool>(true, false), arg_3.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1004f)));
    global1 = array<bool, 12>();
    var var_2 = ~vec4<u32>(1u, 1u, 1u, max(46959u, 1u | func_3(arg_1.a.x, 1u, Struct_1(arg_1.e.a), arg_1).x));
    return var_0;
}

fn func_2() -> bool {
    global3 = countOneBits(1i);
    var var_0 = Struct_2(func_4(Struct_2(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), ~abs(u_input.c), vec4<u32>(~108981u, 31734u, _wgslsmith_div_u32(0u, 29410u), ~u_input.b.x), (u_input.b.x ^ 0u) ^ 70916u, Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, true))), u_input.c, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.b.x, 21269u), ~vec4<u32>(u_input.c.x, u_input.a, 1u, 58552u)), u_input.b.x, Struct_1(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], u_input.b.x, Struct_1(u_input.c), Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), u_input.b, vec4<u32>(u_input.c.x, 22101u, u_input.c.x, 29388u), 1u, Struct_1(u_input.b))))), !any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])), Struct_2(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 12u)]), u_input.b, ~(~vec4<u32>(4294967295u, u_input.c.x, u_input.a, 40833u)), _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.a)), Struct_1(~vec2<u32>(4294967295u, 70913u)))), u_input.c | _wgslsmith_clamp_vec2_u32(firstTrailingBit(abs(vec2<u32>(u_input.b.x, u_input.c.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(u_input.c.x, 1u)), reverseBits(vec2<u32>(u_input.b.x, 84097u) ^ u_input.b)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.c.x)), vec4<u32>(28858u, 11671u, 1u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(58925u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, u_input.a, 0u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 43223u, u_input.c.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, 36856u, u_input.a)) % vec4<u32>(32u)))), 1u, Struct_1(vec2<u32>(u_input.b.x, ~(~u_input.b.x))));
    global1 = array<bool, 12>();
    let var_1 = var_0.c;
    var var_2 = ~(_wgslsmith_dot_vec3_u32(min(abs(var_1.yxy), select(var_0.c.zwx, var_1.yzw, vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 12u)], true))), _wgslsmith_clamp_vec3_u32(var_1.wyy ^ var_0.c.xxw, min(vec3<u32>(var_1.x, var_1.x, 60106u), vec3<u32>(34726u, 32347u, 1u)), var_0.c.xwz)) | max(~(var_0.d & 1u), ~_wgslsmith_mult_u32(4294967295u, 0u)));
    return false;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global3 = u_input.d;
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, -1647f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-122f, -287f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(405f, 1426f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(508f * 1105f), -483f)))));
    global2 = array<i32, 30>();
    let var_2 = !(func_2() && true);
    return Struct_2(select(!select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<bool>(false, arg_0)), select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec2<bool>(arg_0, false), vec2<bool>(var_2, true)), vec2<bool>(true, var_2)), !select(func_4(Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.b.x, 48481u, 1u), 13260u, Struct_1(vec2<u32>(61801u, u_input.c.x))), Struct_2(vec2<bool>(arg_0, arg_0), u_input.c, vec4<u32>(u_input.a, u_input.b.x, u_input.a, 24990u), 24485u, Struct_1(u_input.b)), global1[_wgslsmith_index_u32(0u, 12u)], Struct_2(vec2<bool>(true, false), u_input.c, vec4<u32>(4294967295u, 0u, u_input.a, 64984u), 3699u, Struct_1(vec2<u32>(u_input.a, u_input.c.x)))), vec2<bool>(global1[_wgslsmith_index_u32(18728u, 12u)], var_2), select(vec2<bool>(true, true), vec2<bool>(true, arg_0), true)), global1[_wgslsmith_index_u32(1u, 12u)]), abs(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c.x), ~u_input.b.x)) | _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(~u_input.b.x, u_input.c.x & 1u)), vec4<u32>(u_input.b.x, 0u, _wgslsmith_mult_u32(select(u_input.b.x, 4294967295u, true), _wgslsmith_mod_u32(u_input.c.x, 1u)) >> ((~u_input.c.x ^ 1u) % 32u), _wgslsmith_div_u32(func_3(true, u_input.b.x, Struct_1(vec2<u32>(90503u, 4294967295u)), Struct_2(vec2<bool>(true, arg_0), vec2<u32>(u_input.a, u_input.c.x), vec4<u32>(u_input.b.x, 23930u, u_input.c.x, u_input.b.x), 4294967295u, Struct_1(u_input.b))).x, select(u_input.b.x, 0u, false))), firstLeadingBit(4294967295u), Struct_1(abs(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(61100u, u_input.b.x), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec4_u32(var_0.c, ~var_0.c));
}

