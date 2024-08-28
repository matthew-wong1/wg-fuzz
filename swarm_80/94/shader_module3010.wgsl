struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 22> = array<f32, 22>(-113f, 286f, 1216f, -1000f, 202f, 687f, -723f, -648f, -1764f, -1531f, 1838f, 151f, -155f, 844f, 209f, -875f, -517f, 1630f, 639f, -389f, 1444f, -248f);

var<private> global2: array<bool, 12> = array<bool, 12>(true, false, false, true, false, false, false, false, true, false, true, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(2834f, -875f), global1[_wgslsmith_index_u32(6968u, 22u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x & 1u, 22u)], -456f))));
    global2 = array<bool, 12>();
    var var_1 = Struct_2(Struct_1(max(~var_0.a.a, abs(-vec3<i32>(u_input.a, var_0.a.a.x, -18209i)))), arg_2, Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~var_0.a.a, ~vec3<i32>(var_0.a.a.x, global0.x, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, 0i), _wgslsmith_sub_vec3_i32(var_0.a.a, var_0.a.a)))), _wgslsmith_f_op_f32(-1f), ~((_wgslsmith_sub_vec2_u32(u_input.b.yz, u_input.b.yz) ^ ~vec2<u32>(u_input.c.x, 4294967295u)) | u_input.b.xy));
    let var_2 = _wgslsmith_f_op_f32(305f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 22u)] - -1204f), -192f))))));
    return arg_1.zy;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<i32> {
    let var_0 = func_3(-1i, !select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_0), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 12u)], true, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_0)), false), !(!vec3<bool>(arg_0, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)])), true), Struct_1(~(~(-vec3<i32>(-24986i, u_input.a, global0.x)))));
    var var_1 = select(var_0.x, false, var_0.x);
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 12u)];
    return firstTrailingBit(~vec3<i32>(global0.x, u_input.a, global0.x)) & (vec3<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(global0.x, -3000i), ~u_input.a), abs(u_input.a) ^ (i32(-1i) * -1i)) | ~min(vec3<i32>(global0.x, 1i, 0i), vec3<i32>(1i, -1i, u_input.a)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(~abs(max(max(vec3<i32>(0i, global0.x, 0i), vec3<i32>(-2147483647i, -1008i, u_input.a)), vec3<i32>(u_input.a, -23436i, 1i))));
    global2 = array<bool, 12>();
    let var_1 = ~(((~vec4<u32>(4294967295u, 47589u, u_input.b.x, 0u) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (vec4<u32>(~u_input.c.x, u_input.c.x >> (4294967295u % 32u), 1u & u_input.c.x, _wgslsmith_mod_u32(u_input.b.x, 118088u)) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(75206u, u_input.b.x, u_input.b.x, 20273u), vec4<u32>(1u, 22110u, 60390u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 44511u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 43782u), vec4<u32>(4294967295u, 4984u, u_input.c.x, u_input.b.x))) % vec4<u32>(32u)));
    global0 = reverseBits(abs(func_2(!all(vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 12u)], global2[_wgslsmith_index_u32(11947u, 12u)], global2[_wgslsmith_index_u32(var_1.x, 12u)], true)), _wgslsmith_f_op_f32(f32(-1f) * -315f))));
    let var_2 = (vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-59545i, 11229i, global0.x, 2147483647i) & vec4<i32>(2147483647i, u_input.a, var_0.a.x, -2147483647i), ~vec4<i32>(-78199i, var_0.a.x, var_0.a.x, global0.x))) >> (max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_1.x, var_1.x, u_input.c.x), abs(var_1)), u_input.c.x, abs(~15516u), var_1.x), firstTrailingBit(~var_1 & _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 4294967295u, u_input.b.x, 35816u), var_1))) % vec4<u32>(32u));
    return _wgslsmith_mult_i32(max(-23862i, countOneBits(~(1i >> (var_1.x % 32u)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, countOneBits(-8895i)), (var_0.a | var_2.xyz) >> ((vec3<u32>(83406u, 4294967295u, 33220u) & vec3<u32>(var_1.x, var_1.x, 26714u)) % vec3<u32>(32u))), (~(-1i) | u_input.a) & -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<u32>(u_input.c.x, firstLeadingBit(136372u), 1u) >> (_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(28710u, 583u, 0u)), ~(u_input.c << (vec3<u32>(4294967295u, 13076u, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = array<f32, 22>();
    let var_1 = _wgslsmith_mult_i32(select(~global0.x, _wgslsmith_sub_i32(1i, func_1()), false), 21421i);
    var var_2 = Struct_1(~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_1, global0.x), vec3<i32>(20559i, 1i, var_1)) | abs(vec3<i32>(0i, u_input.a, 3992i))));
    global2 = array<bool, 12>();
    let var_3 = Struct_2(Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, 46085i), vec3<i32>(global0.x, -1i, -2147483647i)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.c.x), 1u)), 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)]), vec2<u32>(4294967295u, select(select(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), ~u_input.c.x, false), 0u, any(vec2<bool>(false, true)) || (-545f == global1[_wgslsmith_index_u32(u_input.c.x, 22u)]))));
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, global1[_wgslsmith_index_u32(~(~select(18462u, u_input.c.x, true)), 22u)]);
}

