struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    var var_0 = global0[_wgslsmith_index_u32(~(~arg_2.e.d), 1u)];
    var var_1 = Struct_3(vec4<u32>(70300u, _wgslsmith_div_u32(~(~82093u), _wgslsmith_sub_u32(arg_2.d, 21317u)), arg_2.e.d, max(0u, _wgslsmith_add_u32(0u | arg_2.d, firstTrailingBit(1u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1148f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.e, -228f))), select(select(select(!vec2<bool>(arg_2.e.c, arg_2.e.c), vec2<bool>(arg_2.e.c, arg_2.e.c), select(vec2<bool>(arg_2.e.c, true), vec2<bool>(arg_2.e.c, false), arg_2.e.c)), select(!vec2<bool>(arg_2.e.c, arg_2.e.c), !vec2<bool>(arg_2.e.c, true), arg_2.e.c && true), true), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(arg_2.e.c, true), true)), arg_2.e.c), select(vec2<bool>(arg_2.e.c || true, arg_2.e.c), select(select(vec2<bool>(arg_2.e.c, true), vec2<bool>(true, arg_2.e.c), true), !vec2<bool>(arg_2.e.c, arg_2.e.c), true), select(!vec2<bool>(arg_2.e.c, arg_2.e.c), !vec2<bool>(false, arg_2.e.c), select(vec2<bool>(true, true), vec2<bool>(arg_2.e.c, arg_2.e.c), true)))));
    var var_2 = arg_2.e;
    return var_1.a.x;
}

fn func_2() -> u32 {
    global0 = array<vec2<f32>, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1300f)))) - vec2<f32>(-334f, -1000f)));
    let var_1 = vec2<u32>(1u, 1u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(func_3(var_0.x, var_0.x, Struct_2(global0[_wgslsmith_index_u32(var_1.x, 1u)], 1i, vec2<f32>(1589f, -398f), var_1.x, Struct_1(vec3<i32>(u_input.a.x, -13231i, u_input.a.x), vec4<f32>(-1597f, var_0.x, var_0.x, var_0.x), false, 4294967295u, var_0.x))), ~var_1.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(18166u, 49120u), 0u, _wgslsmith_add_u32(34968u, var_1.x))), 1u)]), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, var_1.x), 1u)] + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-286f, var_0.x), vec2<f32>(var_0.x, var_0.x))) * vec2<f32>(205f, -868f)))), var_1.x, Struct_1(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(-32839i, u_input.b.x, -546i)) & vec3<i32>(-9533i, 8033i, u_input.a.x), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 27445i, 14390i), vec3<i32>(2983i, -1i, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-26200i, u_input.b.x, 1i), vec3<i32>(u_input.a.x, -53371i, u_input.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -471f))), var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, -577f))), _wgslsmith_f_op_f32(-var_0.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), var_1.x < 4294967295u)), ~(countOneBits(56176u) & select(4294967295u, var_1.x, true)), 330f));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(func_3(_wgslsmith_div_f32(-504f, var_0.x), -263f, var_2)), 1u)];
    return 1u;
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(-305f));
    let var_1 = ~_wgslsmith_add_i32(min(u_input.a.x, _wgslsmith_add_i32(-5530i | u_input.a.x, _wgslsmith_sub_i32(-2147483647i, arg_1))), arg_1);
    global0 = array<vec2<f32>, 1>();
    var var_2 = vec2<bool>(true, true);
    var var_3 = vec3<u32>(~_wgslsmith_sub_u32(abs(1u), _wgslsmith_add_u32(firstTrailingBit(22725u), 12098u)), func_2(), 0u);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, u_input.b.x) >> (max(vec2<u32>(1082u, var_3.x), vec2<u32>(1u, 80410u)) % vec2<u32>(32u)), -vec2<i32>(-2147483647i, arg_1)), -_wgslsmith_div_i32(var_1, var_1), var_1, ~_wgslsmith_add_i32(var_1, i32(-1i) * -2147483647i)) ^ -reverseBits(vec4<i32>(-13883i, u_input.b.x, firstTrailingBit(10642i), -60293i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(func_1(2844f, select(u_input.a.x & 2147483647i, abs(_wgslsmith_mult_i32(2147483647i, u_input.a.x)), true)), ~reverseBits(~(~vec4<i32>(59782i, 0i, -7775i, -16453i))));
    let var_1 = 4294967295u;
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -974f)) + 887f), _wgslsmith_div_f32(-1000f, 658f)), _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(var_0.x, -21922i, 14774i)), -var_0.yxx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(49439u, 1u)]))), countOneBits(13280u) & var_1, Struct_1(var_0.wyx, vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1839f * 127f) - _wgslsmith_f_op_f32(1000f * -255f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2200f - -1000f), 1f)), 709f), select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), all(vec4<bool>(true, true, false, true)), true), ~(~countOneBits(5622u)), _wgslsmith_f_op_f32(-1000f * -2460f)));
    let var_3 = ~abs(vec2<u32>(0u, ~_wgslsmith_sub_u32(3498u, 1u)));
    var var_4 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d, 1u, 4294967295u, 0u), vec4<u32>(var_1, 0u, var_1, 37456u)), reverseBits(vec4<u32>(var_1, var_3.x, 121806u, var_3.x))), ~(vec4<u32>(var_2.e.d, var_3.x, var_3.x, var_1) & ~vec4<u32>(4294967295u, 1u, var_2.e.d, var_3.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 10647u, 135097u, var_1)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_2.e.d, 73629u, 0u, var_2.e.d), vec4<u32>(34066u, 1u, var_2.e.d, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(7804u, var_2.e.d, var_1, var_2.e.d), vec4<u32>(4294967295u, var_2.d, 63057u, 7961u))), _wgslsmith_div_vec4_u32(max(vec4<u32>(var_2.d, 1u, 57135u, 44801u), vec4<u32>(69612u, var_2.e.d, 97859u, var_3.x)), select(vec4<u32>(31238u, 4294967295u, var_1, var_2.e.d), vec4<u32>(var_3.x, 23020u, var_2.d, 73187u), vec4<bool>(true, false, true, var_2.e.c))))), 1u)], vec2<bool>(true, true));
    let var_5 = var_4.a.wzw;
    let var_6 = min(select(~min(i32(-1i) * -1i, -2147483647i), abs(var_2.e.a.x), true), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(8081u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1357f * var_2.e.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(trunc(var_2.e.e)))), Struct_2(global0[_wgslsmith_index_u32(var_3.x, 1u)], -24886i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, var_4.b.x) + vec2<f32>(1036f, -224f)), var_1, var_2.e)), ~var_1, firstLeadingBit(17502u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-292f, var_4.b.x)) * _wgslsmith_f_op_f32(trunc(689f))))));
}

