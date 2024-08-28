struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 10>;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(2147483647i, -57926i, 14932i), vec3<i32>(-1i, 3851i, 70959i), vec3<i32>(i32(-2147483648), -6453i, 18068i), vec3<i32>(0i, -24338i, 0i), vec3<i32>(-80762i, 2147483647i, -1i), vec3<i32>(-47935i, 11971i, 0i), vec3<i32>(-10670i, i32(-2147483648), 1i), vec3<i32>(28946i, -14168i, i32(-2147483648)), vec3<i32>(-43516i, 16020i, 1i), vec3<i32>(-16162i, 1i, -32871i), vec3<i32>(27031i, 46223i, -2693i), vec3<i32>(-7399i, i32(-2147483648), -29053i), vec3<i32>(-1i, 0i, 1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = abs(~global2[_wgslsmith_index_u32(~1u, 13u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1684f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(24761u, 10u)], 680f))), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b.x >> (u_input.a.x % 32u), 10u)])))))));
    global0 = (u_input.b.x < u_input.b.x) & !(740f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f * global1[_wgslsmith_index_u32(1u, 10u)]) * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
    var var_2 = ~min(select(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0.x), vec2<i32>(var_0.x, arg_0))), ~(~vec2<i32>(-1i, var_0.x)), vec2<bool>(var_0.x != arg_0, any(vec3<bool>(true, false, true)))), abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, 2147483647i), vec2<i32>(var_0.x, 0i))));
    global0 = true;
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3;
    global0 = false || (arg_3.b.c < arg_3.b.c);
    var var_1 = -(-50341i << (func_3(-26219i) % 32u));
    let var_2 = arg_3;
    let var_3 = all(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, var_2.d, arg_0.a), any(vec3<bool>(arg_0.a, var_2.d, false)))));
    return arg_3.c & arg_3.c;
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_2 {
    global1 = array<f32, 10>();
    global0 = true && any(select(vec3<bool>(false, true, false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), any(vec2<bool>(true, true)))));
    let var_0 = Struct_2(select(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1124f, arg_1)) <= -2652f, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true))));
    return var_0;
}

fn func_1() -> vec4<u32> {
    let var_0 = -53497i;
    global1 = array<f32, 10>();
    var var_1 = func_4(~(~(abs(1u) << (1u % 32u))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(func_2(Struct_2(true), Struct_2(true), var_0 ^ var_0, Struct_3(Struct_1(vec3<f32>(-1000f, 1109f, -1673f), u_input.a.x, var_0, u_input.a.x, -8623i), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(3223u, 10u)], -520f, -438f), 1u, var_0, 68380u, var_0), 1u, true)) ^ 1u, 10u)], _wgslsmith_f_op_f32(-1f))));
    var_1 = func_4(firstLeadingBit(firstTrailingBit(u_input.b.x) ^ ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(680f)) * global1[_wgslsmith_index_u32(~(firstLeadingBit(u_input.a.x) ^ ~u_input.b.x), 10u)]));
    global1 = array<f32, 10>();
    return vec4<u32>(~(~(~28515u)), 4294967295u, ~21887u, _wgslsmith_div_u32(37690u << (_wgslsmith_add_u32(~1u, _wgslsmith_add_u32(35343u, u_input.b.x)) % 32u), 32015u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 13>();
    var var_0 = ~(~select(~vec4<u32>(21789u, 4294967295u, 0u, 59999u), abs(vec4<u32>(u_input.a.x, 29007u, 50824u, u_input.b.x)) << (func_1() % vec4<u32>(32u)), true | any(vec2<bool>(true, false))));
    let var_1 = select(~global2[_wgslsmith_index_u32(abs(35340u), 13u)], _wgslsmith_mult_vec3_i32(vec3<i32>(-58388i, ~select(9662i, 0i, true), _wgslsmith_mult_i32(1i, -1229i)), global2[_wgslsmith_index_u32(func_1().x | var_0.x, 13u)]), !(!((var_0.x <= 52632u) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2347f, global1[_wgslsmith_index_u32(var_0.x, 10u)]))), -470f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28702u, 10u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2668u, 10u)])), 741f)), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 17127u, 0u), func_1(), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 4294967295u) | vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, var_0.x))) >> (reverseBits(~vec4<u32>(var_0.x, 1725u, 0u, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.x, _wgslsmith_mod_u32(26250u, u_input.a.x))), 10u)] * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)])))))), -(var_1.x | 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)] - global1[_wgslsmith_index_u32(40996u, 10u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(Struct_2(false), Struct_2(false), var_1.x, Struct_3(Struct_1(vec3<f32>(-1280f, -673f, global1[_wgslsmith_index_u32(1u, 10u)]), var_0.x, 2147483647i, u_input.a.x, -1i), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 747f, global1[_wgslsmith_index_u32(93349u, 10u)]), var_0.x, var_1.x, 4294967295u, var_1.x), var_0.x, false)), 10u)] + 2145f)))));
}

