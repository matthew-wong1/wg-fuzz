struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 24> = array<i32, 24>(2147483647i, 0i, 0i, 2147483647i, -1i, 30873i, i32(-2147483648), -36225i, 7780i, i32(-2147483648), -4593i, 13012i, 18375i, 25191i, -6572i, 1i, i32(-2147483648), -30483i, 25221i, -47828i, 0i, 0i, -1i, 0i);

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(86117u, 1u), vec2<u32>(65326u, 4294967295u), vec2<u32>(4294967295u, 28247u), vec2<u32>(45236u, 4294967295u), vec2<u32>(4294967295u, 2759u), vec2<u32>(8512u, 29668u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 40723u), vec2<u32>(8253u, 50911u), vec2<u32>(22987u, 4294967295u), vec2<u32>(10973u, 4294967295u), vec2<u32>(0u, 46797u), vec2<u32>(18454u, 4294967295u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_sub_i32(-2220i, global1[_wgslsmith_index_u32(select(4294967295u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(43468u, 0u, arg_3), vec3<u32>(1u, 1u, u_input.a))), true), 24u)]), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f + 190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1009f))), -464f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2629f, 134f, 211f) * vec3<f32>(1035f, -1000f, -681f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f - -860f)) * _wgslsmith_f_op_f32(ceil(-424f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(535f, -461f)))), _wgslsmith_f_op_f32(1318f * -1504f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1652f, 207f))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = abs(arg_2.a.a);
    global2 = array<vec2<u32>, 13>();
    var var_1 = 2147483647i;
    var var_2 = arg_2.a.c.a.x;
    var var_3 = abs(max(vec4<i32>(~arg_2.a.a, _wgslsmith_mod_i32(-10485i, arg_0.a), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 24u)], -2147483647i), -1i), reverseBits(vec4<i32>(-37685i, global0.x, 2147483647i, 0i)))) >> (vec4<u32>(u_input.a, ~(~u_input.a), 0u, reverseBits(~1u)) % vec4<u32>(32u));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x & -(-2147483647i | global0.x), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_0.c.x, 24u)], abs(select(arg_2.a.a, -18049i, arg_0.b.x))), firstTrailingBit(global0.x), ~select(arg_1.a, -8725i, !arg_0.b.x)), abs(vec4<i32>(_wgslsmith_sub_i32(-2147483647i ^ var_3.x, arg_0.a), global0.x, var_3.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 24u)])), vec4<i32>(0i, arg_0.a, abs(-1i) ^ arg_0.a, ((var_3.x | global1[_wgslsmith_index_u32(u_input.c.x, 24u)]) | _wgslsmith_mult_i32(0i, -2147483647i)) << (u_input.b.x % 32u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = func_2(true, firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(~4294967295u, 24u)], -2147483647i), ~_wgslsmith_mult_i32(-11270i, 1i), reverseBits(~1i), 0i)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 2147483647i, global0.x), vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], 8827i, global1[_wgslsmith_index_u32(0u, 24u)])), firstLeadingBit(vec3<i32>(global0.x, 0i, global0.x))) >> (select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u) & vec3<u32>(54721u, u_input.a, u_input.b.x), ~vec3<u32>(u_input.c.x, u_input.a, u_input.a)), vec3<u32>(9410u, u_input.c.x, u_input.b.x) << (~vec3<u32>(73181u, 17451u, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true)) % vec3<u32>(32u)), u_input.c.x);
    global2 = array<vec2<u32>, 13>();
    let var_1 = Struct_1(var_0.c.a);
    global2 = array<vec2<u32>, 13>();
    global2 = array<vec2<u32>, 13>();
    return func_2(!(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.x, var_0.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, global0.x), vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))) == abs(1i)), -(~(~vec4<i32>(var_0.a, -21032i, global1[_wgslsmith_index_u32(4294967295u, 24u)], -23099i))) ^ func_3(Struct_4(global0.x, select(vec2<bool>(true, false), vec2<bool>(true, false), false), ~vec4<u32>(u_input.a, 1u, 4294967295u, 75499u)), func_2(arg_0.x <= var_1.a.x, _wgslsmith_sub_vec4_i32(vec4<i32>(2778i, 0i, 49933i, var_0.a), vec4<i32>(-1i, global0.x, -2147483647i, -37824i)), vec3<i32>(1i, global0.x, -2147483647i) ^ vec3<i32>(var_0.a, var_0.a, 67048i), reverseBits(u_input.c.x)), Struct_3(Struct_2(var_0.a, var_0.c, Struct_1(var_0.c.a), var_0.d))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 19425i, 1i)), -vec3<i32>(var_0.a, -2147483647i, 1i)), ~(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 37572u, u_input.c.x), vec4<u32>(u_input.a, 73006u, 4294967295u, u_input.a))) & 115326u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 24>();
    let var_0 = firstLeadingBit(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 13u)]);
    global0 = vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x & var_0.x, 56532u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(41623u, 4294967295u, u_input.b.x, 0u), ~vec4<u32>(125585u, u_input.a, 35222u, var_0.x)) % 32u), 24u)]), 42575i, -50636i);
    var var_1 = Struct_3(func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2288f, -132f))), -190f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1036f + 1000f) * _wgslsmith_f_op_f32(-var_1.a.b.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1605f + var_1.a.b.a.x) * _wgslsmith_f_op_f32(exp2(var_1.a.b.a.x)))), var_1.a.b.a.x, _wgslsmith_f_op_f32(max(-225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))))), ~(-1i), global0.zx);
}

