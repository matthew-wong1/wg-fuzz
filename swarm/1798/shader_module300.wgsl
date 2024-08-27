struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-1i, 1i, 0i), vec3<i32>(-33730i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 42770i), vec3<i32>(-1i, 2147483647i, -2141i), vec3<i32>(i32(-2147483648), -7222i, 1i), vec3<i32>(-60104i, 39086i, i32(-2147483648)), vec3<i32>(-68783i, -1i, 45023i), vec3<i32>(-1i, 69686i, 1i), vec3<i32>(3811i, -1i, 1i), vec3<i32>(-7405i, 1i, i32(-2147483648)), vec3<i32>(-62284i, 0i, -48201i), vec3<i32>(25709i, i32(-2147483648), -13896i), vec3<i32>(1i, -9761i, 19935i));

var<private> global1: array<i32, 28>;

var<private> global2: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-25146i, -1i, -22853i, 31047i), vec4<i32>(0i, 44174i, 13196i, 20029i), vec4<i32>(0i, 1i, -25769i, 1i), vec4<i32>(-30039i, -68812i, 0i, 0i), vec4<i32>(-1i, 0i, -27272i, 1i), vec4<i32>(11640i, 1i, 2147483647i, -15076i), vec4<i32>(2147483647i, 1i, 4331i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_1(-1060f, arg_1);
    var var_1 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1365f, 1332f)), _wgslsmith_f_op_f32(-arg_1))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(round(var_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f * 2054f) - -103f) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a, -1199f)))))));
    let var_2 = ~76915u;
    let var_3 = Struct_2(var_1.b, var_1.b, -1000f);
    let var_4 = reverseBits(vec2<i32>(min(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(1i, u_input.e.x)), -20714i ^ global1[_wgslsmith_index_u32(3317u, 28u)]), u_input.b.x), 13427i));
    return min(select(vec4<u32>(7477u, min(70190u, 78051u), var_2, 1158u), (u_input.c << (u_input.c % vec4<u32>(32u))) ^ u_input.c, (4294967295u <= var_2) & true) | vec4<u32>(var_2, abs(countOneBits(20400u)), min(min(83u, 1u), _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(var_2, 38644u))), u_input.c.x & 62232u), reverseBits(vec4<u32>(~var_2, min(~u_input.a.x, u_input.c.x), _wgslsmith_mod_u32(var_2 >> (31632u % 32u), ~var_2), 27249u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(reverseBits(~func_3(arg_0.x, _wgslsmith_f_op_f32(round(573f)))), ~(~u_input.c));
    global1 = array<i32, 28>();
    var var_1 = Struct_1(-477f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) * _wgslsmith_f_op_f32(-arg_0.x)))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~var_0), 28u)];
    global2 = array<vec4<i32>, 7>();
    return _wgslsmith_add_u32(20436u, 46897u);
}

fn func_1() -> i32 {
    var var_0 = vec4<i32>(-global1[_wgslsmith_index_u32(u_input.d, 28u)] | ~(i32(-1i) * -u_input.b.x), _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), u_input.b.x << (_wgslsmith_add_u32(func_2(vec3<f32>(664f, 746f, 180f), -992f, global2[_wgslsmith_index_u32(u_input.d, 7u)]), max(13471u, u_input.a.x)) % 32u), select(4609i, u_input.b.x, true & any(vec4<bool>(true, true, false, true)))), _wgslsmith_dot_vec3_i32(-global0[_wgslsmith_index_u32(u_input.c.x << (1u % 32u), 13u)], _wgslsmith_mult_vec3_i32(vec3<i32>(34576i, 30366i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), global0[_wgslsmith_index_u32(countOneBits(67551u), 13u)]) ^ global0[_wgslsmith_index_u32(44424u, 13u)]), 2147483647i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f * _wgslsmith_f_op_f32(f32(-1f) * -350f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-537f, 807f)) + _wgslsmith_f_op_f32(step(-966f, 2840f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f))))), 718f);
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1246f))))), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -619f) * 924f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1701f)) - var_1.b)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-506f))))), var_1.b), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1823f, -1458f))), _wgslsmith_f_op_f32(min(var_1.b, -964f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b - -782f), _wgslsmith_f_op_f32(min(var_1.b, var_1.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-367f - 658f))), var_1.a))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.c + var_1.b), _wgslsmith_div_f32(589f, 902f));
    return 8440i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 7>();
    let var_0 = -20380i;
    global1 = array<i32, 28>();
    let var_1 = vec2<u32>(u_input.c.x, (24049u & u_input.a.x) ^ min(u_input.c.x, u_input.a.x));
    global0 = array<vec3<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(func_1(), -func_1()), ~vec2<u32>(4294967295u, 75967u), u_input.d, countOneBits(_wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_1.x, var_1.x), u_input.c)), u_input.c)), vec3<u32>(~20970u, var_1.x, 1u) ^ min(firstLeadingBit(vec3<u32>(u_input.a.x, 64980u, u_input.c.x)), u_input.c.wyz));
}

