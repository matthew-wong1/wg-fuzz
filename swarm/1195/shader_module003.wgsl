struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1100f, -795f, -560f, -861f), vec4<f32>(1000f, -1507f, -1000f, -1247f), vec4<f32>(-535f, 1048f, 3350f, 809f), vec4<f32>(1481f, -1232f, 265f, 1758f), vec4<f32>(-542f, -195f, 827f, -2330f), vec4<f32>(-894f, -1305f, -1131f, -350f));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<bool>(false, true, false), -894f), Struct_2(vec3<bool>(false, false, false), -380f), Struct_2(vec3<bool>(true, true, false), 1000f), Struct_2(vec3<bool>(true, true, false), 854f), Struct_2(vec3<bool>(false, false, false), 234f), Struct_2(vec3<bool>(false, false, true), 906f), Struct_2(vec3<bool>(false, false, true), -822f), Struct_2(vec3<bool>(true, false, true), 545f), Struct_2(vec3<bool>(true, false, true), -284f), Struct_2(vec3<bool>(true, true, false), 599f), Struct_2(vec3<bool>(true, false, false), 973f), Struct_2(vec3<bool>(true, false, true), -533f), Struct_2(vec3<bool>(false, true, false), 946f), Struct_2(vec3<bool>(false, false, false), 2572f), Struct_2(vec3<bool>(false, true, false), 972f), Struct_2(vec3<bool>(false, false, true), 523f), Struct_2(vec3<bool>(true, true, true), 1022f), Struct_2(vec3<bool>(false, true, true), -758f), Struct_2(vec3<bool>(true, false, false), -1798f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -349f, 1546f) * vec3<f32>(-462f, -1000f, -147f)) - vec3<f32>(1038f, 1100f, 994f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1492f, -688f, -1404f)))))), ~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1170f, -1000f, -1000f))) * vec3<f32>(-1000f, 739f, 251f))))), true);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(round(-1000f)))), -589f);
    var var_2 = Struct_2(vec3<bool>(true, firstTrailingBit(_wgslsmith_mult_i32(1i, 1i)) >= countOneBits(-2147483647i), !(!var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)))))));
    var var_3 = Struct_1(var_0.a, u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1000f, var_2.b)))), var_0.c), all(var_2.a.xx));
    let var_4 = vec4<bool>(!var_2.a.x, var_3.d, true, !var_2.a.x != var_0.d);
    return abs(-abs(vec4<i32>(6683i, 1i, -1541i, i32(-1i) * -1283i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    global2 = array<Struct_2, 19>();
    let var_0 = arg_0;
    global1 = array<vec4<f32>, 6>();
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(1i), 1i, -2147483647i << (arg_0.b % 32u), ~37068i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1i, -355i, 2147483647i), func_3())), 0i);
}

fn func_1() -> Struct_1 {
    let var_0 = !(~1u > _wgslsmith_add_u32(~min(u_input.a.x, 21748u), u_input.a.x));
    var var_1 = vec2<f32>(379f, 1f);
    let var_2 = firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(-16290i, func_2(Struct_1(vec3<f32>(var_1.x, 584f, var_1.x), u_input.a.x, vec3<f32>(var_1.x, var_1.x, 2014f), true))) >> (~_wgslsmith_div_u32(27403u, u_input.a.x) % 32u), -1i, 2147483647i, _wgslsmith_dot_vec4_i32(max(-vec4<i32>(2147483647i, 1i, 0i, 2147483647i), vec4<i32>(9947i, 2147483647i, -1i, -1050i)), ~(-vec4<i32>(18647i, -2147483647i, -1i, 0i)))));
    global1 = array<vec4<f32>, 6>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f)), _wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(1231f * var_1.x))))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, var_1.x, 154f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1150f, -700f) - vec3<f32>(1000f, var_1.x, 1490f)), vec3<f32>(222f, 775f, var_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1200f, var_1.x, -599f) + vec3<f32>(-1000f, var_1.x, -324f))))), all(vec2<bool>(all(vec3<bool>(var_0, true, false)), (42027u << (u_input.a.x % 32u)) == u_input.a.x)));
    return Struct_1(var_3.c, firstLeadingBit(~(abs(4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(0u, var_3.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.a))) * vec3<f32>(-953f, _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(1000f - var_1.x)), -1000f)), 20364i != (_wgslsmith_add_i32(~var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1704i, var_2.x, var_2.x, var_2.x), vec4<i32>(0i, var_2.x, var_2.x, var_2.x))) & ~_wgslsmith_div_i32(0i, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec3<bool>(true, select(firstTrailingBit(var_0.b) > ~var_0.b, var_0.d, var_0.d), var_0.d), vec3<bool>(true, true, any(!select(vec2<bool>(false, var_0.d), global0[_wgslsmith_index_u32(1u, 18u)], var_0.d))), !var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-570f, -1842f)), var_0.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.c.x, 849f)) - var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1014f - var_0.c.x))), var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -813f), var_0.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1277f, -307f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x + -1598f)))))));
}

