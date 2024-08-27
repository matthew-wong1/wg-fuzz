struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> bool {
    var var_0 = firstLeadingBit(firstTrailingBit(firstTrailingBit(vec3<i32>(-37888i, 12734i, -6273i))) ^ vec3<i32>(_wgslsmith_div_i32(u_input.b, 0i), -2147483647i, select(arg_1, 51742i, false))) ^ vec3<i32>(arg_0.b, -2147483647i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(13202i, -2147483647i), vec2<i32>(-58247i, -2147483647i)), arg_0.b));
    var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, _wgslsmith_mult_i32(min(u_input.b, 4251i), u_input.b), -1i), vec3<i32>(~select(var_0.x, var_0.x, true), _wgslsmith_mult_i32(arg_1, var_0.x) << (reverseBits(u_input.a) % 32u), -15968i));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(1996i, -62629i), -arg_1, -(1i | (-2147483647i << (u_input.a % 32u))) << (1u % 32u));
    global0 = ~(~(~u_input.c));
    var_0 = -select(vec3<i32>((u_input.b << (8354u % 32u)) | -var_0.x, _wgslsmith_add_i32(arg_1, 45433i), -min(0i, 11136i)), vec3<i32>(arg_1, abs(~0i), select(firstTrailingBit(-1i), min(arg_0.b, -1i), any(vec4<bool>(false, false, arg_0.c.x, arg_0.c.x)))), arg_0.c.x);
    return arg_0.c.x;
}

fn func_2() -> f32 {
    let var_0 = countOneBits(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(19223u, 50922u) % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, u_input.a)))));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(var_0.x), ~u_input.a), u_input.c), 4294967295u, 4294967295u, abs(~(u_input.a | var_0.x))), vec4<bool>(all(vec3<bool>(true, select(true, true, true), all(vec3<bool>(true, true, false)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), !(!func_3(Struct_1(vec4<bool>(false, false, true, false), 28132i, vec2<bool>(false, true)), 1i, vec2<f32>(1097f, 280f))), all(vec3<bool>(false, false, false)) || !any(global1[_wgslsmith_index_u32(68503u, 2u)])));
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(var_1.a), _wgslsmith_clamp_vec4_u32(~var_1.a, ~var_1.a, var_1.a & var_1.a) | ~(var_1.a >> (var_1.a % vec4<u32>(32u)))), select(min(~vec4<u32>(35914u, var_1.a.x, 0u, var_0.x), firstTrailingBit(var_1.a)), reverseBits(vec4<u32>(var_0.x, u_input.a, var_1.a.x, u_input.a)), false) ^ _wgslsmith_mult_vec4_u32(~var_1.a | (var_1.a ^ vec4<u32>(0u, 45030u, var_0.x, var_1.a.x)), vec4<u32>(~var_0.x, var_1.a.x, var_0.x >> (27200u % 32u), _wgslsmith_mod_u32(36399u, u_input.a))));
    var var_3 = Struct_1(!vec4<bool>(false, true, var_1.b.x, !(!var_1.b.x)), u_input.b, vec2<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(var_1.a.x, 0u, false), _wgslsmith_mult_u32(0u, u_input.a), 108189u << (1u % 32u)), 2u)]), var_1.b.x));
    global0 = var_1.a.x;
    return 123f;
}

fn func_1() -> i32 {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f), -536f)), !all(vec3<bool>(true, true, true)));
    global0 = ~(~(u_input.c ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(78361u, 140910u, 10721u), vec3<u32>(u_input.c, 4294967295u, u_input.c))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, 1u), ~vec3<u32>(u_input.c, u_input.a, u_input.c))), u_input.c), 2u)];
    return 2982i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)))));
    var var_1 = var_0;
    var var_2 = select(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, func_1(), _wgslsmith_clamp_i32(u_input.b, -1i, u_input.b)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-14448i, -16912i, u_input.b), vec3<i32>(-1i, u_input.b, -28677i))), _wgslsmith_div_vec3_i32(max(~vec3<i32>(22197i, 2147483647i, u_input.b), vec3<i32>(~0i, u_input.b << (u_input.c % 32u), _wgslsmith_add_i32(u_input.b, -1i))), vec3<i32>(2147483647i, u_input.b, select(countOneBits(2147483647i), -1i, true))), false);
    var_1 = -1560f;
    let var_3 = Struct_1(select(global1[_wgslsmith_index_u32(4294967295u, 2u)], vec4<bool>(true, func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 2u)], var_2.x, vec2<bool>(true, false)), 26971i | var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), ~4294967295u > ~u_input.c, true), true), _wgslsmith_mod_i32(~u_input.b, ~(-29565i)), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), select(false, false, false))), select(vec2<bool>(true, false), vec2<bool>(false, u_input.b < var_2.x), select(any(global1[_wgslsmith_index_u32(1u, 2u)]), any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, false)))), !(!(var_0 > var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(2147483647i << (u_input.c % 32u)) | -min(var_3.b, 2147483647i), reverseBits(-11873i)));
}

