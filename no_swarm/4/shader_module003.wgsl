struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(710f, 4294967295u, vec4<u32>(46560u, 1u, 4987u, 4345u));

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<u32, 12>;

var<private> global3: array<u32, 8> = array<u32, 8>(0u, 0u, 33549u, 48530u, 4294967295u, 0u, 25570u, 23548u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(global1[_wgslsmith_index_u32(global0.c.x, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~(63468u & global3[_wgslsmith_index_u32(u_input.c, 8u)])), 2u)], !(select(global1[_wgslsmith_index_u32(1u, 2u)], false, false) & global1[_wgslsmith_index_u32(0u << (global2[_wgslsmith_index_u32(39580u, 12u)] % 32u), 2u)]), u_input.d.x <= -56446i);
    let var_1 = Struct_1(1000f, ~53892u, firstLeadingBit(global0.c));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), global3[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(48912u, 8u)], var_1.b, 41323u, 23557u), vec4<u32>(u_input.a, var_1.b, 0u, 30877u)), u_input.a)), 8u)], select(vec4<u32>(_wgslsmith_dot_vec4_u32(global0.c, ~var_1.c), firstTrailingBit(abs(global3[_wgslsmith_index_u32(0u, 8u)])), u_input.c, _wgslsmith_dot_vec4_u32(global0.c, var_1.c)), global0.c, select(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 4294967295u), 2u)] || true, false)));
    return ~43293u;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = Struct_1(-1879f, u_input.c, global0.c);
    let var_0 = ~abs(global0.b);
    global2 = array<u32, 12>();
    var var_1 = false;
    global1 = array<bool, 2>();
    return Struct_1(_wgslsmith_f_op_f32(select(global0.a, 424f, !global1[_wgslsmith_index_u32(func_3(), 2u)])), firstLeadingBit(40174u), reverseBits(~(~abs(vec4<u32>(global2[_wgslsmith_index_u32(20702u, 12u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], 44603u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(0u, ~select(_wgslsmith_mult_u32(~4294967295u, global0.c.x), 83419u, false));
    var var_1 = u_input.b.yzz;
    global0 = func_2(global2[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(select(var_1.x, u_input.b.x, global1[_wgslsmith_index_u32(arg_3.b, 2u)]), var_1.x ^ 11960i), ~6075i), vec2<i32>(var_1.x, -1i)));
    global3 = array<u32, 8>();
    global0 = func_2(abs(firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(36168u, 0u), 8u)] & arg_2.b)), -2147483647i);
    return func_2(arg_0.b, var_1.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> StorageBuffer {
    global0 = func_4(Struct_1(arg_1.a, 1u & _wgslsmith_clamp_u32(4294967295u, 26381u, _wgslsmith_mod_u32(4294967295u, arg_1.c.x)), global0.c), func_2(abs(~global3[_wgslsmith_index_u32(u_input.c, 8u)]) >> (33824u % 32u), ~u_input.d.x), func_2(abs(arg_1.c.x) & 0u, _wgslsmith_mult_i32(u_input.d.x, ~u_input.d.x) << (abs(~3048u) % 32u)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-320f)), _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -268f))), global1[_wgslsmith_index_u32(u_input.a, 2u)])), u_input.a, vec4<u32>(global3[_wgslsmith_index_u32(~0u, 8u)], reverseBits(~arg_1.c.x), arg_1.c.x, firstTrailingBit(firstLeadingBit(41066u)))));
    global2 = array<u32, 12>();
    global1 = array<bool, 2>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, -415f), vec2<f32>(430f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-180f, global0.a), vec2<f32>(arg_1.a, -422f), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, global0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-391f, -563f), _wgslsmith_f_op_f32(f32(-1f) * -1161f))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-783f)), 224f, global1[_wgslsmith_index_u32(1u, 2u)] & global1[_wgslsmith_index_u32(16638u, 2u)]))) + -702f), _wgslsmith_mod_u32(global0.c.x, 129345u), _wgslsmith_mult_vec4_u32(~func_4(Struct_1(global0.a, global2[_wgslsmith_index_u32(global0.b, 12u)], vec4<u32>(global2[_wgslsmith_index_u32(25953u, 12u)], 47020u, global0.c.x, global0.b)), func_2(global2[_wgslsmith_index_u32(arg_1.c.x, 12u)], arg_0.x), func_2(1u, u_input.d.x), arg_1).c, _wgslsmith_mod_vec4_u32(~(~arg_1.c), reverseBits(vec4<u32>(u_input.c, 65661u, global3[_wgslsmith_index_u32(global0.c.x, 8u)], u_input.a)))));
    return StorageBuffer(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(6342u, arg_1.c.x, global0.b)), global0.c.zyy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(global0.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f))))), 1u, countOneBits(global0.c));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(422f)), 2191f))), u_input.a, global0.c);
    global1 = array<bool, 2>();
    let var_2 = vec2<bool>(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~abs(countOneBits(7194u)), 12u)], 8u)], 2u)], true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) - -951f)) * 388f) - -609f);
    let x = u_input.a;
    s_output = func_1(-u_input.b.xxy, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1165f + 537f))), 27991u, ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global0.c.x, 8u)], 46130u, var_1.b, global2[_wgslsmith_index_u32(global0.b, 12u)]), var_1.c))));
}

