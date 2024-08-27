struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29980u;

var<private> global1: array<vec4<u32>, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<bool> {
    global0 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(~min(u_input.c.x, 23997u), 4294967295u), ~_wgslsmith_sub_u32(~u_input.b.x, ~abs(1u)));
    global1 = array<vec4<u32>, 22>();
    var var_0 = Struct_4(vec4<bool>(any(!(!vec3<bool>(arg_1.a, arg_1.a, false))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-52591i, 43521i, 0i)), -vec3<i32>(arg_3.x, arg_0.b, u_input.a)) > arg_3.x, all(!select(arg_0.c, arg_0.c, arg_0.c)), true), !(!(!vec2<bool>(false, arg_2.a))), arg_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(833f, -230f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 228f), vec2<f32>(arg_2.b.a, 430f), arg_0.c.x))), vec2<f32>(_wgslsmith_div_f32(707f, 351f), 1869f)))));
    var_0 = Struct_4(!var_0.a, select(var_0.a.zw, select(arg_0.c.xz, select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, arg_2.a), all(vec4<bool>(true, arg_1.a, true, false))), true), vec2<bool>(arg_1.a, !(!arg_1.a))), var_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.a, var_0.c.a))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(var_0.d))))));
    let var_1 = vec2<i32>(1222i, ~(-(_wgslsmith_clamp_i32(u_input.d, arg_0.b, u_input.d) ^ 1i)));
    return var_0.a;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = !func_3(arg_0, Struct_2(true, arg_0.a.b), Struct_2(!(u_input.b.x < 1u), arg_0.a.b), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, 2147483647i, 29192i), vec4<i32>(1i, -1i, u_input.a, arg_0.b), vec4<i32>(52327i, u_input.a, -2147483647i, u_input.d))));
    let var_1 = Struct_4(!func_3(arg_0, Struct_2(true, arg_0.a.b), arg_0.a, -(~vec4<i32>(u_input.a, -41271i, u_input.d, u_input.d))), vec2<bool>(arg_0.a.b.a > _wgslsmith_f_op_f32(min(-1285f, _wgslsmith_f_op_f32(f32(-1f) * -999f))), !(arg_0.a.a & false)), arg_0.a.b, vec2<f32>(arg_0.a.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.a - 1000f) + -241f)))));
    let var_2 = true | var_1.a.x;
    global0 = u_input.e.x;
    var var_3 = arg_0.a;
    return var_0.x && !var_3.a;
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global0 = u_input.e.x;
    let var_0 = -select(~(~u_input.d), ~countOneBits(-2147483647i) >> (u_input.b.x % 32u), !func_2(Struct_3(arg_0.a, u_input.a, arg_0.c)));
    global1 = array<vec4<u32>, 22>();
    var var_1 = arg_0.b;
    return vec3<u32>(~4294967295u, ~u_input.e.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~abs(_wgslsmith_dot_vec3_u32(func_1(Struct_3(Struct_2(false, Struct_1(-1037f)), -4711i, vec3<bool>(true, false, true))) ^ vec3<u32>(u_input.c.x, u_input.b.x, 25297u), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.e.x), vec3<u32>(u_input.b.x, 57482u, 4294967295u)))));
    var var_0 = ~(vec4<u32>(_wgslsmith_sub_u32(1u, ~u_input.e.x), ~17725u, 4294967295u, ~firstTrailingBit(77817u)) & ~(~select(vec4<u32>(u_input.b.x, u_input.c.x, u_input.e.x, u_input.e.x), vec4<u32>(4454u, 1u, u_input.b.x, u_input.b.x), vec4<bool>(true, false, true, true))));
    global0 = 5126u;
    let var_1 = select((1f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(388f))))) && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)))), true, 0u >= ~var_0.x);
    let var_2 = abs(-_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-2147483647i, u_input.a, u_input.d, u_input.a)), vec4<i32>(1i, u_input.d, ~u_input.d, -2147483647i)));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u << (var_0.x % 32u)), reverseBits(u_input.c.x), reverseBits(0u), var_0.x), ~vec4<u32>(_wgslsmith_div_u32(~u_input.e.x, ~var_0.x), _wgslsmith_mult_u32(u_input.b.x, ~var_0.x), u_input.e.x >> (_wgslsmith_mult_u32(4294967295u, 1u) % 32u), ~reverseBits(4543u)));
    let var_4 = ~(-10824i);
    var var_5 = Struct_4(!select(vec4<bool>(var_1, any(vec4<bool>(var_1, var_1, true, true)), false, false), !(!vec4<bool>(var_1, var_1, true, true)), vec4<bool>(var_1, func_3(Struct_3(Struct_2(false, Struct_1(155f)), 3731i, vec3<bool>(var_1, var_1, true)), Struct_2(false, Struct_1(-1182f)), Struct_2(var_1, Struct_1(-521f)), var_2).x, var_1, true)), select(select(select(!vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), vec2<bool>(true, var_1)), var_1), vec2<bool>(func_3(Struct_3(Struct_2(var_1, Struct_1(-355f)), -146i, vec3<bool>(true, var_1, var_1)), Struct_2(true, Struct_1(-511f)), Struct_2(var_1, Struct_1(1217f)), var_2).x, true), !func_3(Struct_3(Struct_2(true, Struct_1(285f)), -10976i, vec3<bool>(true, true, false)), Struct_2(var_1, Struct_1(653f)), Struct_2(true, Struct_1(2117f)), vec4<i32>(-1i, -46810i, var_4, 0i)).x), select(vec2<bool>(any(vec3<bool>(var_1, false, var_1)), all(vec3<bool>(false, false, var_1))), !(!vec2<bool>(false, var_1)), !all(vec4<bool>(true, false, false, var_1))), !(false & func_3(Struct_3(Struct_2(var_1, Struct_1(535f)), -40432i, vec3<bool>(var_1, var_1, var_1)), Struct_2(var_1, Struct_1(-1618f)), Struct_2(var_1, Struct_1(709f)), var_2).x)), Struct_1(_wgslsmith_f_op_f32(-540f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1047f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-178f, -2789f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1164f, -714f) + vec2<f32>(-1380f, -328f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(_wgslsmith_div_i32(u_input.d, var_2.x) ^ -var_2.x)), ~49557u << (min(~max(var_3, 0u), var_3) % 32u), _wgslsmith_mult_u32(~(_wgslsmith_add_u32(41295u, u_input.c.x) ^ _wgslsmith_mod_u32(var_3, var_0.x)), ~_wgslsmith_dot_vec2_u32(~u_input.b, ~u_input.b)));
}

