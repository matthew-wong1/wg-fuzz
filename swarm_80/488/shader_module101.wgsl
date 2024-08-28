struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(18055u, 3299u, 2410u), vec2<u32>(0u, 1u), -1502f), false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(arg_0, all(vec4<bool>(any(!vec4<bool>(global2.b, global2.b, global2.b, global2.b)), true, all(vec4<bool>(global2.b, true, true, global2.b)), !global2.b)));
    let var_1 = 422f;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(672f))))), -108f);
    global0 = array<Struct_3, 1>();
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(abs(u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), abs(2147483647i)), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_div_i32(abs(2147483647i), firstTrailingBit(1i)), _wgslsmith_div_i32(-1i, countOneBits(-12881i)), -16552i)), vec3<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i), false), vec3<i32>(33098i, -u_input.a.x, -u_input.a.x)), ~u_input.a.x, u_input.a.x >> (global2.a.b.x % 32u)));
    return !(!select(select(vec4<bool>(false, false, global2.b, global2.b), vec4<bool>(true, true, var_0.b, var_0.b), !vec4<bool>(global2.b, false, global2.b, false)), vec4<bool>(global2.b, var_0.b, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.b, var_0.b, var_0.b, var_0.b), vec4<bool>(global2.b, var_0.b, false, true), vec4<bool>(global2.b, global2.b, global2.b, var_0.b)), select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(var_0.b, true, false, true), vec4<bool>(false, var_0.b, false, global2.b)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<u32>(u_input.c.x, min(countOneBits(u_input.d), ~_wgslsmith_div_u32(u_input.c.x << (1u % 32u), 64155u)));
    let var_1 = global2.a.a;
    var var_2 = !(!select(!func_3(global2.a), vec4<bool>(global2.b, !global2.b, false || global2.b, global2.b), true));
    let var_3 = countOneBits(firstLeadingBit(var_0.x));
    var_0 = global2.a.a.yz;
    return func_3(global2.a);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.a;
    global0 = array<Struct_3, 1>();
    var var_1 = reverseBits(select(select(vec4<u32>(countOneBits(var_0.a.b.x), 6198u, ~2085u, 27382u), vec4<u32>(94663u ^ arg_1.a.a.b.x, var_0.a.b.x, var_0.a.a.x ^ 0u, 118511u), abs(-2147483647i) <= (arg_2 & 0i)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, 0u, global2.a.a.x), vec4<u32>(0u, 1u, var_0.a.a.x, var_0.a.a.x))), select(select(vec4<bool>(false, true, arg_1.a.b, arg_1.a.b), select(vec4<bool>(global2.b, var_0.b, true, false), vec4<bool>(true, false, arg_1.a.b, global2.b), arg_1.a.b), any(vec3<bool>(arg_1.a.b, true, false))), select(select(vec4<bool>(true, global2.b, true, arg_1.a.b), vec4<bool>(true, true, global2.b, arg_1.a.b), vec4<bool>(true, false, global2.b, false)), func_2(), !arg_1.a.b), func_3(var_0.a))));
    global2 = arg_1.a;
    var var_2 = _wgslsmith_mod_u32(var_1.x, ~30794u >> (~global2.a.b.x % 32u));
    return Struct_1(abs(vec3<u32>(55482u, var_0.a.b.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(var_1.x, u_input.c.x)))), ~(~vec2<u32>(var_0.a.b.x, var_0.a.b.x)), _wgslsmith_f_op_f32(floor(global2.a.c)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(global2.a.a.x, u_input.b), global2.a.a.x), 1u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 1u)];
    global2 = Struct_2(func_1(45890i, Struct_4(arg_1), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(14877i, var_0.a.x, 1i), vec3<i32>(1i, 0i, 50853i)), vec3<i32>(u_input.a.x, -8154i, u_input.a.x)), -2147483647i)), false);
    var_0 = global0[_wgslsmith_index_u32(select(arg_2.a.a.a.x >> (61880u % 32u), 0u, all(!func_2().wyy)), 1u)];
    global1 = arg_1.a.c;
    return Struct_3(firstTrailingBit(~(-vec2<i32>(7691i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, var_0.c.c)))), func_1(~var_0.a.x | (select(var_0.a.x, -32438i, global2.b) | firstLeadingBit(0i)), Struct_4(Struct_2(Struct_1(arg_1.a.a, vec2<u32>(1u, 4294967295u), arg_1.a.c), true)), _wgslsmith_clamp_i32(1i, select(33495i & arg_0, -1i, global2.b), -667i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1024f, 1344f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-665f - arg_2.a.a.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(349f * arg_3) + _wgslsmith_f_op_f32(arg_3 - -1156f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1215f - 529f), _wgslsmith_f_op_f32(-arg_1.a.c)))), 1459f));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    global1 = arg_1.x;
    let var_0 = Struct_3(vec2<i32>(1i, 22554i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1741f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + 1198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301f + func_4(arg_0.a.x, Struct_2(arg_0.c, true), Struct_4(Struct_2(arg_0.c, global2.b)), arg_0.d.x).d.x))), arg_0.c, _wgslsmith_f_op_vec4_f32(trunc(arg_0.d)));
    var var_1 = vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(464f)), -1259f, _wgslsmith_f_op_f32(-arg_1.x));
    global0 = array<Struct_3, 1>();
    var_1 = vec4<f32>(1350f, _wgslsmith_f_op_f32(var_1.x * -590f), -677f, 115f);
    return Struct_3(vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, arg_0.a), u_input.a.x), abs(~(-55045i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1724f))), -736f), Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(arg_0.c.a), vec3<u32>(global2.a.a.x, global2.a.b.x, global2.a.a.x)) & (reverseBits(global2.a.a) ^ vec3<u32>(u_input.d, var_0.c.a.x, 113913u)), _wgslsmith_div_vec2_u32(~(arg_0.c.b ^ vec2<u32>(1u, 32231u)), firstLeadingBit(~vec2<u32>(11966u, var_0.c.b.x))), _wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1514f)))), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    let var_1 = func_5(func_4(_wgslsmith_sub_i32(select(1i, -u_input.a.x, u_input.a.x != 1i), countOneBits(-2147483647i)), Struct_2(func_1(0i, Struct_4(Struct_2(Struct_1(global2.a.a, global2.a.a.yx, -435f), false)), abs(u_input.a.x)), false), Struct_4(Struct_2(Struct_1(var_0.a, u_input.c, -180f), true)), _wgslsmith_f_op_f32(round(global2.a.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 320f)), var_0.c), global2.a);
    let var_2 = var_1.a | ~countOneBits(select(u_input.a, u_input.a, !global2.b));
    var var_3 = func_3(Struct_1(~vec3<u32>(4294967295u, 8628u >> (u_input.c.x % 32u), abs(global2.a.b.x)), vec2<u32>(29678u, min(~36896u, 43708u)), _wgslsmith_f_op_f32(floor(-1570f))));
    var var_4 = !(!var_3.x);
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~0u, 1u ^ var_5, 9525u, 4294967295u), var_1.a.x, vec2<f32>(global2.a.c, var_1.b.x), _wgslsmith_f_op_f32(round(776f)));
}

