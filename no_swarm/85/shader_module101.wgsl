struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(13334i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(57103i), Struct_1(-55730i), Struct_1(-1i), Struct_1(-1i), Struct_1(-18704i), Struct_1(7654i), Struct_1(-1i), Struct_1(10488i), Struct_1(10905i), Struct_1(1i), Struct_1(-34496i), Struct_1(41473i));

var<private> global2: f32 = -1184f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> bool {
    global0 = array<bool, 1>();
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let var_0 = u_input.c.yw << (vec2<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x)) % vec2<u32>(32u));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_add_i32(arg_1.a, ~_wgslsmith_dot_vec4_i32(u_input.c ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 43036i, u_input.a.x, u_input.a.x), u_input.c, u_input.c), u_input.c));
    var_0 = abs(~_wgslsmith_dot_vec4_i32(select(u_input.c, u_input.c, true), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(2147483647i, u_input.a.x, -54918i, arg_1.a)) ^ -u_input.c));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, arg_1.a | arg_1.a);
    var var_2 = reverseBits(select(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, u_input.b.x, 4294967295u), vec4<u32>(19856u, arg_2, arg_2, 20480u)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_2, 17957u, arg_2, u_input.b.x)), vec4<u32>(37409u, _wgslsmith_sub_u32(12154u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, arg_2), vec3<u32>(arg_2, 17554u, 20099u)), ~19116u)), select(select(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(108568u, 1u)], false, arg_0), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(81840u, 1u)], arg_0, false, arg_0), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], arg_0, true)), !vec4<bool>(false, arg_0, arg_0, true)), !(!vec4<bool>(false, arg_0, global0[_wgslsmith_index_u32(51966u, 1u)], false)), true)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-207f)), _wgslsmith_f_op_f32(ceil(835f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - -2313f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1277f, 229f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-979f))), -687f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, 809f, _wgslsmith_f_op_f32(func_4(func_3(arg_0, vec3<f32>(690f, 642f, -825f), -10422i), arg_0, 1u))));
    let var_1 = _wgslsmith_add_vec3_u32(select(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(80289u, u_input.b.x, u_input.b.x), vec3<u32>(21777u, u_input.b.x, u_input.b.x))), min(abs(~vec3<u32>(1u, u_input.b.x, u_input.b.x)), ~(vec3<u32>(1u, 20952u, u_input.b.x) | vec3<u32>(0u, 16545u, u_input.b.x))), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true), vec3<bool>(global0[_wgslsmith_index_u32(12372u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true), false))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 30416u) & firstTrailingBit(vec3<u32>(8250u, 15682u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 9947u, u_input.b.x), vec3<u32>(u_input.b.x, 37263u, u_input.b.x)) & firstLeadingBit(vec3<u32>(u_input.b.x, 25325u, 35419u))) ^ abs(vec3<u32>(max(0u, u_input.b.x), u_input.b.x, ~u_input.b.x)));
    global0 = array<bool, 1>();
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 22906i), u_input.a));
    return var_1.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = ~(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x), vec3<i32>(0i, 48381i, u_input.a.x)), ~firstLeadingBit(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x))) << (vec3<u32>(u_input.b.x, ~(~4294967295u), 33229u << (func_2(global1[_wgslsmith_index_u32(46008u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], Struct_1(-1i), global1[_wgslsmith_index_u32(0u, 15u)]) % 32u)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 15>();
    var_0 = firstTrailingBit(vec3<i32>(-1i, _wgslsmith_div_i32(min(u_input.a.x, u_input.a.x ^ u_input.c.x), i32(-1i) * -var_0.x), ~(~35017i)));
    let var_1 = Struct_1(var_0.x);
    let var_2 = abs(u_input.a.x);
    return (countOneBits(max(_wgslsmith_div_vec3_i32(vec3<i32>(-12639i, var_1.a, 2147483647i), vec3<i32>(-2147483647i, var_0.x, 5457i)), ~u_input.c.xzx)) | -u_input.c.zww) >> ((vec3<u32>(u_input.b.x, 42110u, 20267u) & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x) & ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(4294967295u, u_input.b.x, 20231u) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = 348f;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_2 = 478f;
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~49355u, ~(~_wgslsmith_sub_u32(0u, 0u)) ^ u_input.b.x, ~67567u), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = func_5(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], _wgslsmith_div_vec3_i32(vec3<i32>(1i ^ _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~0i, -u_input.c.x), func_1()));
    var var_2 = Struct_1(-u_input.c.x);
    let var_3 = Struct_1(-56234i);
    var var_4 = _wgslsmith_mult_vec4_u32(abs(countOneBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u))), countOneBits(~countOneBits(vec4<u32>(u_input.b.x, 36797u, 12576u, 4294967295u)))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b.x, ~(~6041u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 25168u, u_input.b.x), ~(vec4<u32>(32667u, 1u, 13031u, 46476u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 20743u, u_input.b.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    global2 = -1304f;
    var_1 = Struct_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, var_3, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1039f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-214f, -160f) * _wgslsmith_f_op_f32(-228f - -1170f)))), 4294967295u);
}

