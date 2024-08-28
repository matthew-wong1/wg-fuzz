struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = select(select(vec2<bool>(true, arg_2.b.x), !select(vec2<bool>(false, true), vec2<bool>(false, arg_1.c.x), vec2<bool>(arg_2.a, false)), !vec2<bool>(arg_2.c.x, arg_1.a == true)), !(!arg_1.c), any(vec3<bool>(true, !any(vec4<bool>(true, true, true, arg_1.c.x)), (arg_0 >> (1u % 32u)) >= 23443u)));
    let var_1 = abs(abs(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-59931i, -2147483647i), vec2<i32>(-13389i, 9156i)) & ~(-5385i), ~(-64711i))));
    var_0 = arg_2.c;
    global2 = array<Struct_1, 28>();
    var var_2 = global0[_wgslsmith_index_u32(arg_0, 4u)];
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = !all(vec4<bool>(false && func_3(global3.x, Struct_1(false, vec3<bool>(false, false, true), vec2<bool>(true, false)), global1[_wgslsmith_index_u32(global3.x, 22u)]), true, true, true));
    var var_1 = ~(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-38770i, 7512i), 1i), _wgslsmith_add_vec2_i32(~vec2<i32>(853i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-23100i, -97245i), vec2<i32>(1952i, -22740i)))) << (global3.yy % vec2<u32>(32u)));
    global3 = u_input.a;
    var var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 22u)];
    var var_3 = Struct_1(_wgslsmith_mod_u32(~34669u, global3.x) < 1u, !vec3<bool>(false, false, !var_2.c.x), !var_2.b.zz);
    return vec3<bool>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~global3.x, ~12267u, _wgslsmith_div_u32(27499u, global3.x), u_input.d)) >= ~(_wgslsmith_sub_u32(u_input.b.x, u_input.e) ^ u_input.d), any(vec2<bool>(false, any(vec2<bool>(false, var_3.a)))) != !any(select(var_2.b, vec3<bool>(var_2.c.x, var_3.c.x, var_3.b.x), true)), true);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    global2 = array<Struct_1, 28>();
    let var_0 = Struct_1(all(select(arg_2, !(!arg_2), vec4<bool>(arg_1.c.x && arg_1.b.x, false, select(false, arg_2.x, arg_1.b.x), true || arg_2.x))), arg_1.b, !(!vec2<bool>(arg_1.c.x, true)));
    var var_1 = arg_2;
    var var_2 = reverseBits(vec3<i32>(1029i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-21439i, -1i, -15840i), _wgslsmith_mult_vec3_i32(-vec3<i32>(-49688i, -11267i, -1i), vec3<i32>(1i, 1i, 1i))), ~firstLeadingBit(1i >> (0u % 32u))));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-651f))) - 1290f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + 965f), 247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-403f, 1672f), _wgslsmith_f_op_f32(f32(-1f) * -715f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1663f, 1000f, var_1.x)) - _wgslsmith_f_op_f32(-381f * -278f)), -1755f, -423f))));
    return ~arg_0;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(11530u, Struct_1(true, !(!func_2()), vec2<bool>(false, false)), !(!vec4<bool>(true, arg_1, any(vec2<bool>(arg_1, arg_1)), arg_1)), ~27715u);
    let var_1 = countOneBits(-vec3<i32>(1i, 1i, 1i) >> (max(~(~vec3<u32>(u_input.e, u_input.a.x, 0u)), firstLeadingBit(global3.xwx)) % vec3<u32>(32u)));
    var var_2 = ~firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, 67624u, 17034u, u_input.c.x), vec4<u32>(u_input.a.x, 0u, 1u, u_input.b.x)), min(u_input.a, u_input.a))));
    let var_3 = global3.x;
    global1 = array<Struct_1, 22>();
    return Struct_1(arg_3.x > 3972u, select(vec3<bool>(all(vec4<bool>(true, arg_1, true, arg_2)), ~4294967295u < _wgslsmith_sub_u32(9706u, var_2.x), true & !arg_1), select(vec3<bool>(any(vec4<bool>(true, false, true, true)), arg_1, false), !vec3<bool>(true, arg_0, false), !(true & arg_2)), select(vec3<bool>(false, true, any(vec3<bool>(arg_0, false, arg_0))), !func_2(), arg_1)), select(select(vec2<bool>(!arg_2, false), func_2().xy, vec2<bool>(arg_0, func_2().x)), select(func_2().yy, vec2<bool>(true, true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(arg_2, true)))), vec2<bool>(true, !arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 22>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 4u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1588f * -1099f), -878f, _wgslsmith_f_op_f32(ceil(-347f)), -1000f)))));
    let var_2 = func_1(var_0.a, var_0.a, var_0.b.x, global3.wx >> (select(u_input.a.wx, u_input.a.zx, true) % vec2<u32>(32u)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.b, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, 23878u), vec3<u32>(0u, u_input.e, u_input.c.x), vec3<u32>(69980u, u_input.c.x, global3.x))), 77029u) >> (firstTrailingBit(max(~u_input.a.x, 0u) & global3.x) % 32u), 22u)];
    global1 = array<Struct_1, 22>();
    let var_4 = vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-36046i, -12353i), vec2<i32>(-1979i, -58866i), vec2<bool>(true, false))), vec2<i32>(firstLeadingBit(-46153i), ~0i)), -2147483647i, -(~(-13969i ^ _wgslsmith_clamp_i32(-2147483647i, 1i, 48040i))), countOneBits(abs(40885i)));
    var var_5 = var_4.x ^ var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

