struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(68864u, 1u), vec2<u32>(1u, 9811u), vec2<u32>(0u, 0u), vec2<u32>(24657u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(22409u, 4294967295u), vec2<u32>(15436u, 14352u), vec2<u32>(20168u, 1u), vec2<u32>(26009u, 62752u), vec2<u32>(9384u, 4294967295u), vec2<u32>(30894u, 1u), vec2<u32>(0u, 16797u), vec2<u32>(6470u, 1u), vec2<u32>(132230u, 1u), vec2<u32>(1u, 2109u), vec2<u32>(79753u, 55381u), vec2<u32>(70125u, 2098u), vec2<u32>(49810u, 66532u), vec2<u32>(101599u, 28839u), vec2<u32>(4294967295u, 1872u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 2250u), vec2<u32>(18661u, 7739u), vec2<u32>(1u, 102407u), vec2<u32>(1u, 1u));

var<private> global2: Struct_2 = Struct_2(-14317i, false, Struct_1(109f, -1271f, vec4<u32>(4294967295u, 1u, 48455u, 47839u)));

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    let var_0 = 1249f;
    global4 = Struct_2(arg_1.x & global2.a, global3.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-110f - 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.c.b)) - _wgslsmith_f_op_f32(abs(arg_0.a)))), _wgslsmith_div_f32(global2.c.a, arg_0.b), vec4<u32>(u_input.b.x, ~global4.c.c.x & ~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2.c.c.yzw, u_input.b.wyx), global4.c.c.x), 0u)));
    var var_1 = 29438u;
    let var_2 = global2.c;
    let var_3 = Struct_2(_wgslsmith_add_i32(global2.a, ~_wgslsmith_dot_vec2_i32(~arg_1, vec2<i32>(1i, -5368i))), false, global2.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1856f * -1228f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(292f)))), _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(global4.c.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(~vec2<u32>(~(~u_input.c.x), ~(global0[_wgslsmith_index_u32(u_input.c.x, 13u)] ^ global2.c.c.x)));
    global2 = arg_0;
    global3 = !vec2<bool>(!(true && all(vec3<bool>(arg_0.b, arg_0.b, false))), all(!select(vec3<bool>(false, true, global3.x), vec3<bool>(global2.b, true, false), vec3<bool>(global3.x, true, false))));
    global1 = array<vec2<u32>, 25>();
    var var_1 = -arg_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1f, _wgslsmith_f_op_f32(floor(global2.c.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(60484u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 1u, global0[_wgslsmith_index_u32(1u, 13u)]), global2.c.c, ~global2.c.c)), ~reverseBits(vec2<i32>(u_input.a.x, -1i)))) - _wgslsmith_f_op_f32(step(global4.c.b, _wgslsmith_f_op_f32(trunc(global2.c.a)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = arg_0.c;
    global0 = array<u32, 13>();
    global3 = !select(!vec2<bool>(all(vec4<bool>(true, arg_0.b, global3.x, global3.x)), select(false, false, global4.b)), vec2<bool>(global4.b, all(vec4<bool>(global4.b, false, true, true))), true & any(vec4<bool>(true, global4.b, false, true)));
    var var_1 = global4.c.b;
    var var_2 = global4.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0)) - _wgslsmith_f_op_f32(func_3(arg_0.c, vec2<i32>(global2.a, global2.a)))) + -1757f), _wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(223f)))))), global2.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(-2147483647i, global4.b, Struct_1(_wgslsmith_f_op_f32(-global2.c.b), 117f, ~(global4.c.c ^ vec4<u32>(25060u, 43398u, global0[_wgslsmith_index_u32(1u, 13u)], 4294967295u)))), 621f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.c.x, 23788u), global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(global2.c.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27759u, 13u)], 13u)]) << (64782u % 32u)), 13u)]), 13u)]);
    var var_1 = vec4<i32>(global4.a, min(_wgslsmith_sub_i32(-2147483647i, select(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(37772i, -1i)), 20636i & global2.a, !global3.x)), u_input.d.x & -3951i), _wgslsmith_add_i32(2147483647i, ~(-1i)), (-1i | u_input.d.x) >> (u_input.c.x % 32u));
    let var_2 = -(~firstLeadingBit(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-13421i, global4.a, -29049i, global4.a)), -vec4<i32>(-11927i, 13788i, global2.a, -17816i))));
    var_0 = global2.c;
    var var_3 = ~vec2<i32>(var_1.x, firstLeadingBit(2147483647i));
    global3 = vec2<bool>(!any(!vec3<bool>(false, global2.b, global2.b)) || (all(vec3<bool>(global3.x, global2.b, global3.x)) != global2.b), global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b, global2.c.a, vec2<i32>(-1i, _wgslsmith_sub_i32(global2.a >> (_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global2.c.c.x, 13u)]) % 32u), var_3.x)));
}

