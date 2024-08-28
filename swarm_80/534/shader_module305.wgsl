struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec4<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(0u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(1u)), Struct_2(Struct_1(0u)));

var<private> global3: array<Struct_4, 17>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: Struct_3) -> bool {
    global0 = arg_2.a.d.x;
    global3 = array<Struct_4, 17>();
    global0 = -arg_2.a.d.x;
    var var_0 = vec4<i32>(arg_2.a.d.x | countOneBits(arg_2.a.d.x | abs(30626i)), 6082i, _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.a.a.x, 1i) & ~(-2147483647i), _wgslsmith_dot_vec2_i32(arg_2.a.d, abs(arg_2.a.a.zx))) & arg_2.a.d.x, ~max(_wgslsmith_dot_vec2_i32(arg_2.a.d >> (vec2<u32>(u_input.b.x, arg_0.c.a) % vec2<u32>(32u)), -arg_2.a.a.wy), _wgslsmith_dot_vec4_i32(arg_2.a.a, _wgslsmith_add_vec4_i32(arg_2.a.a, arg_2.a.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.d.yw - _wgslsmith_f_op_vec2_f32(arg_2.d.zx * vec2<f32>(arg_0.e, arg_2.a.b))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.d.wz), vec2<f32>(arg_2.a.b, arg_2.d.x))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e, arg_3.b), arg_2.d.xw, arg_2.e)) * arg_2.d.wz), vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(trunc(arg_3.b)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.d.yz * arg_2.d.yw) * arg_2.d.yz) + _wgslsmith_f_op_vec2_f32(-arg_2.d.yy))));
    return !((~arg_0.c.a | 0u) >= firstTrailingBit(_wgslsmith_clamp_u32(arg_2.c.x, arg_3.c.a, max(arg_1.x, u_input.c.x))));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = u_input.d;
    global3 = array<Struct_4, 17>();
    global2 = array<Struct_2, 4>();
    var var_1 = ~max(4294967295u, _wgslsmith_add_u32(u_input.a, ~select(4294967295u, u_input.c.x, arg_0.x)));
    var var_2 = 0i;
    return !vec3<bool>(func_3(Struct_3(Struct_2(Struct_1(var_0.x)), _wgslsmith_f_op_f32(800f + 843f), Struct_1(1u), 620f, _wgslsmith_f_op_f32(f32(-1f) * -2074f)), countOneBits(vec2<u32>(4294967295u, var_0.x)), Struct_5(Struct_4(vec4<i32>(2597i, -2147483647i, 1i, -2051i), 718f, var_0.x, vec2<i32>(-2147483647i, -2880i), Struct_3(global2[_wgslsmith_index_u32(66714u, 4u)], 905f, Struct_1(var_0.x), 809f, -1000f)), Struct_3(Struct_2(Struct_1(var_0.x)), 1465f, Struct_1(u_input.d.x), 1331f, 902f), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, 33863u, 51611u), vec4<u32>(u_input.b.x, 24046u, 24008u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, 482f, 315f, 805f)), arg_0.x), Struct_3(global2[_wgslsmith_index_u32(~4294967295u, 4u)], _wgslsmith_f_op_f32(f32(-1f) * -1139f), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(sign(-280f)), _wgslsmith_f_op_f32(-617f + 270f))), any(vec4<bool>(false, !arg_0.x, !arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, false)))), any(arg_0));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec3<i32> {
    let var_0 = select(select(select(func_2(!vec4<bool>(arg_1, arg_1, false, arg_1)), !func_2(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), any(!vec2<bool>(arg_1, false))), vec3<bool>(arg_1, arg_1, true), func_2(vec4<bool>(arg_1, true, false, false)).x | select(all(vec4<bool>(arg_1, true, arg_1, arg_1)), false || arg_1, any(vec2<bool>(true, arg_1)))), vec3<bool>(arg_1, false, true), !all(select(vec4<bool>(true, true, arg_1, false), !vec4<bool>(false, arg_1, arg_1, true), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(false, false, true, arg_1), vec4<bool>(false, arg_1, true, false)))));
    let var_1 = -1i;
    global0 = 7802i ^ var_1;
    let var_2 = Struct_5(Struct_4(_wgslsmith_mult_vec4_i32(-vec4<i32>(-28401i, 0i, var_1, var_1), vec4<i32>(var_1, 10246i, var_1, -2147483647i)) << (u_input.d % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(282f - _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(24319u, 4294967295u, u_input.b.x), u_input.c)), vec2<i32>(~(-var_1), _wgslsmith_clamp_i32(~34223i, -2147483647i, ~var_1)), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, countOneBits(49587u)), 4u)], _wgslsmith_f_op_f32(sign(arg_0.x)), Struct_1(u_input.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -182f))), -684f)), Struct_3(global2[_wgslsmith_index_u32(~u_input.c.x, 4u)], _wgslsmith_f_op_f32(arg_0.x - arg_0.x), Struct_1(u_input.a), _wgslsmith_f_op_f32(max(1672f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(1379f - -1722f)))), _wgslsmith_f_op_f32(-arg_0.x)), vec4<u32>(~_wgslsmith_mod_u32(firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(u_input.a, 4294967295u)), u_input.d.x, u_input.d.x, firstTrailingBit(1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1987f, arg_0.x, _wgslsmith_f_op_f32(329f + -855f), _wgslsmith_f_op_f32(1025f - arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), 1137f, -803f))), true);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(645f)), -150f);
    return vec3<i32>(23056i, var_1, firstTrailingBit(select(-1i ^ var_2.a.a.x, var_1, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, -1154f) + vec2<f32>(-559f, 835f)), true), firstLeadingBit(vec3<i32>(988i, -38619i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 20361i), vec2<i32>(-49390i, -1i))))));
}

