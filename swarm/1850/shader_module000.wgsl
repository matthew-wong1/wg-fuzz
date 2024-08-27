struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: f32;

var<private> global2: array<u32, 31>;

var<private> global3: i32 = -37661i;

var<private> global4: vec3<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    global2 = array<u32, 31>();
    let var_0 = Struct_3(Struct_1(arg_0), ~select(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0, -31152i, arg_0, arg_0)), vec4<i32>(arg_0, -17345i, -1i, 0i) << (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 18743u, 23690u, u_input.a) % vec4<u32>(32u))), -28552i, arg_1.x), Struct_1(1i), arg_0);
    let var_1 = Struct_1(-2147483647i);
    let var_2 = vec2<bool>(true || !any(vec2<bool>(true, true)), true);
    global0 = array<Struct_2, 32>();
    return Struct_3(var_0.c, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.a, arg_0, arg_0), vec3<i32>(-1i, var_0.c.a, 71774i), true), vec3<i32>(2147483647i, -1i, arg_0)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(11306u, 31u)], global4.x, 10197u), vec3<u32>(4294967295u, global4.x, u_input.a) ^ vec3<u32>(global4.x, global4.x, 4294967295u)) % 32u), var_0.d), var_0.a, ~_wgslsmith_div_i32(1i, ~0i));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(1u, 31u)], ~global4.x), ~1204u), 0u);
    global4 = vec3<u32>(11838u, _wgslsmith_mult_u32(global4.x, ~_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10734u, 31u)], 31u)], _wgslsmith_sub_u32(20702u, u_input.a))), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, ~(~1u)), ~(~u_input.a << (28727u % 32u))));
    var var_1 = func_2(-_wgslsmith_div_i32(select(-14819i, 20130i, false), i32(-1i) * -1i) | -abs(_wgslsmith_mod_i32(-2147483647i, -2147483647i)), vec4<bool>(true, true, true, true));
    return vec2<u32>(_wgslsmith_mod_u32(11920u << (_wgslsmith_add_u32(84777u, global2[_wgslsmith_index_u32(22814u | u_input.a, 31u)]) % 32u), (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1873u), 31u)] >> (~22493u % 32u)) ^ ~global2[_wgslsmith_index_u32(0u, 31u)]), ~(~u_input.a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> u32 {
    global4 = reverseBits(firstTrailingBit(select(~vec3<u32>(46722u, u_input.a, 2614u), vec3<u32>(0u, global4.x, global4.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))) >> (firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(global4.x & 83276u, min(1u, 1u)), firstTrailingBit(62156u), arg_0)) % vec3<u32>(32u));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -162f)), -324f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-618f, arg_2), vec2<f32>(-683f, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, arg_2))))))))));
    let var_1 = Struct_1(_wgslsmith_div_i32(-func_2(1i, vec4<bool>(true, true, true, true)).c.a, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-20603i, -1i, 0i), vec3<i32>(-20406i, 1i, -5421i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1260i, -2147483647i), vec2<i32>(43579i, -15002i))) << (_wgslsmith_mod_u32(countOneBits(u_input.a), arg_0) % 32u)));
    let var_2 = select(vec3<bool>(!all(vec2<bool>(true, true)), true, (countOneBits(arg_1) > ~0u) == true), vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true), vec3<bool>(all(vec3<bool>(var_1.a == 36193i, 50124u > global2[_wgslsmith_index_u32(1u, 31u)], false)), select(false || any(vec4<bool>(false, false, true, false)), true, _wgslsmith_f_op_f32(-arg_2) <= -396f), false));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1081f))))));
    return ~(~(~(~1u))) & arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec2<u32>(~_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(global4.x, 31u)]), ~global4.x), func_1()) >> (vec2<u32>(_wgslsmith_mult_u32(func_3(33027u, 4294967295u, -231f), 0u), ~137701u) % vec2<u32>(32u));
    let var_1 = func_2(-6948i, select(vec4<bool>(true, false, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), false, false, _wgslsmith_add_u32(21374u, global2[_wgslsmith_index_u32(0u, 31u)]) <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 12242u))), any(vec2<bool>(true, true))));
    let var_2 = firstTrailingBit(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(37751u, 31u)], 1u), vec2<u32>(u_input.a, var_0.x) << (global4.yy % vec2<u32>(32u)))));
    let var_3 = Struct_4(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u >> (countOneBits(u_input.a) % 32u), 31u)], var_0.x, ~0u, _wgslsmith_sub_u32(global4.x, var_0.x ^ global4.x)), vec2<f32>(_wgslsmith_f_op_f32(-259f - 1009f), _wgslsmith_div_f32(-627f, 489f)));
    global1 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-23652i, 0i), abs(vec2<i32>(-1i, 2147483647i)))), _wgslsmith_sub_i32(var_1.c.a, ~1i), ~(~var_2.x));
}

