struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<bool, 22>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<bool, 22>();
    let var_0 = ~_wgslsmith_dot_vec4_u32(~(arg_1.b & vec4<u32>(u_input.a.x, 48619u, arg_1.b.x, arg_1.b.x)), arg_1.b);
    var var_1 = arg_1;
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    return vec4<u32>(~12891u, 0u, var_1.d.x, reverseBits(countOneBits(_wgslsmith_add_u32(81756u, _wgslsmith_div_u32(var_1.d.x, arg_1.d.x)))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(Struct_2(Struct_1(vec3<i32>(firstLeadingBit(-83691i), ~u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(min(vec4<u32>(62228u, 73524u, 6349u, arg_0.x), vec4<u32>(16967u, 4294967295u, u_input.a.x, u_input.a.x)), vec4<u32>(24256u, 5154u, arg_0.x, 67091u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)), u_input.a), Struct_1(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b), func_3(vec3<bool>(false, true, true), Struct_1(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec4<u32>(12436u, 2759u, 1u, 0u), -326f, vec3<u32>(1u, 4294967295u, arg_0.x))) << (countOneBits(vec4<u32>(73511u, u_input.a.x, u_input.a.x, arg_0.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-266f, -494f)))), vec3<u32>(53194u, u_input.a.x, u_input.a.x) >> (~u_input.a % vec3<u32>(32u)))));
    global0 = array<vec2<f32>, 18>();
    let var_1 = Struct_3(firstLeadingBit(-max(i32(-1i) * -1i, ~u_input.b)), -636f);
    let var_2 = !vec4<bool>(false, true, all(vec2<bool>(true, true)), any(vec3<bool>(!global1[_wgslsmith_index_u32(arg_0.x, 22u)], global1[_wgslsmith_index_u32(37001u, 22u)] && true, -46349i > var_0.a.a.a.x)));
    let var_3 = !global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(var_0.a.b.b.x >> (u_input.a.x % 32u), ~arg_0.x)), 22u)];
    return min(1u, ~arg_0.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    let var_0 = !(!vec3<bool>(arg_1, all(arg_0), global1[_wgslsmith_index_u32(u_input.a.x, 22u)]));
    let var_1 = func_2(~(~u_input.a.yx));
    global1 = array<bool, 22>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(2001f)), 459f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(877f * 1976f))), all(var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1388f))), _wgslsmith_f_op_f32(floor(331f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))), vec4<bool>(select(arg_1, any(select(var_0, vec3<bool>(true, false, var_0.x), vec3<bool>(global1[_wgslsmith_index_u32(29578u, 22u)], arg_1, var_0.x))), u_input.b <= u_input.b), arg_1, arg_0.x, any(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], false, arg_1)))));
    global1 = array<bool, 22>();
    return var_2.x;
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    global1 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1987f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-692f + _wgslsmith_f_op_f32(ceil(2340f))), -1860f))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(9272i, -1i, u_input.b), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 36931i, 39542i), vec3<i32>(u_input.b, -10666i, u_input.b))), (~vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) & ~vec4<u32>(u_input.a.x, u_input.a.x, 27303u, 11063u)) ^ _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 111651u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(1080f * _wgslsmith_f_op_f32(var_0 * 278f)), vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u) & vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a), abs(u_input.a.x))), Struct_1(_wgslsmith_mult_vec3_i32(select(min(vec3<i32>(-47560i, -882i, u_input.b), vec3<i32>(2147483647i, -1i, 76226i)), -vec3<i32>(u_input.b, u_input.b, 34147i), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(6275u, 22u)], true)), -select(vec3<i32>(1i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i), global1[_wgslsmith_index_u32(4294967295u, 22u)])), ~(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 37202u))), arg_0.x, abs(~abs(u_input.a))));
    var_1 = Struct_2(var_1.a, Struct_1(vec3<i32>(var_1.b.a.x, select(select(var_1.b.a.x, var_1.a.a.x, global1[_wgslsmith_index_u32(1u, 22u)]), -24140i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), -1i), countOneBits(~var_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], true), global1[_wgslsmith_index_u32(1u, 22u)]))) + _wgslsmith_f_op_f32(min(-376f, _wgslsmith_f_op_f32(max(var_1.b.c, arg_0.x))))), firstLeadingBit(vec3<u32>(1u, 4294967295u, var_1.a.b.x)) | _wgslsmith_clamp_vec3_u32(u_input.a, var_1.a.d, select(vec3<u32>(31242u, u_input.a.x, var_1.b.d.x), u_input.a, global1[_wgslsmith_index_u32(4294967295u, 22u)]))));
    global1 = array<bool, 22>();
    return Struct_2(var_1.a, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(-768f, 1106f, _wgslsmith_f_op_f32(func_1(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(6896u, 22u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(68987u, u_input.a.x) | u_input.a.x, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f + 281f) - _wgslsmith_f_op_f32(max(807f, -1000f))) + -477f)));
    var_0 = Struct_2(var_0.b, Struct_1(firstTrailingBit(var_0.a.a ^ (vec3<i32>(-1i, 0i, var_0.b.a.x) << (var_0.a.d % vec3<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), u_input.a), func_2(firstLeadingBit(var_0.a.b.yy)), 4294967295u, 0u), -498f, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), var_0.b.d, u_input.a), var_0.a.b.yyz, max(vec3<u32>(45919u, var_0.b.b.x, 4294967295u), var_0.a.b.xwz))));
    var var_1 = Struct_3(~u_input.b << (1u % 32u), -516f);
    let var_2 = ~countOneBits(vec3<u32>(var_0.b.d.x, ~(~u_input.a.x), _wgslsmith_div_u32(9782u, ~6057u)));
    global0 = array<vec2<f32>, 18>();
    var var_3 = _wgslsmith_mult_i32(-u_input.b >> (var_0.a.b.x % 32u), u_input.b);
    var var_4 = var_0.b.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a), var_0.b.a.x, var_0.a.b);
}

