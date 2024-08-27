struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1000f, 1111f, 1000f, -687f, 1000f, -1505f, 238f, 1722f, -295f);

var<private> global1: array<bool, 28> = array<bool, 28>(true, false, true, true, false, true, true, true, true, false, true, true, false, false, true, false, true, false, true, false, false, true, false, false, true, true, true, false);

var<private> global2: array<u32, 19> = array<u32, 19>(85176u, 20334u, 8427u, 27867u, 29311u, 1u, 5285u, 0u, 35257u, 1u, 35118u, 0u, 30665u, 0u, 57760u, 0u, 0u, 86905u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_1(72497u);
    return u_input.c.x;
}

fn func_2(arg_0: Struct_4) -> vec3<f32> {
    global1 = array<bool, 28>();
    global0 = array<f32, 9>();
    var var_0 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(11694u, ~u_input.b), 19u)], 9u)];
    var var_1 = firstLeadingBit(-arg_0.a.x);
    let var_2 = reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-1i, u_input.a)), _wgslsmith_sub_vec2_i32(arg_0.a ^ vec2<i32>(u_input.d, arg_0.a.x), arg_0.a)), abs(arg_0.a)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) * global0[_wgslsmith_index_u32(88142u, 9u)]), global0[_wgslsmith_index_u32(~func_3(533f, vec3<f32>(-1381f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 9u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95338u, 19u)], 9u)]), Struct_4(vec2<i32>(26576i, -2147483647i))) >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)) % 32u), 9u)], global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 19u)]), 9u)]) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 9u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 9u)] + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53003u, 19u)], 9u)])), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 19u)] >> (4294967295u % 32u), 9u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64773u, 19u)], 19u)], 9u)] + global0[_wgslsmith_index_u32(78773u, 9u)]), -1010f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(988f, 1118f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 9u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(386f, -547f, 1000f), vec3<f32>(-970f, -1000f, global0[_wgslsmith_index_u32(40290u, 9u)])))), !(true & global1[_wgslsmith_index_u32(841u, 28u)]))))));
}

fn func_1() -> u32 {
    global2 = array<u32, 19>();
    global2 = array<u32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(45349u, 9u)]), vec3<f32>(1765f, global0[_wgslsmith_index_u32(29367u, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)]))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1748f), 1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(7419u, 9u)]))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(vec2<i32>(89726i, u_input.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(758f, global0[_wgslsmith_index_u32(u_input.b, 9u)], 481f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, global0[_wgslsmith_index_u32(1482u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]))))))));
    let var_1 = vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 28u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 28u)], false)), any(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(806u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(70564u, 28u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 28u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13349u, 19u)], 28u)], true))))));
    global1 = array<bool, 28>();
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(~func_1()), 28u)];
    global0 = array<f32, 9>();
    global1 = array<bool, 28>();
    let var_1 = vec3<u32>(min(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37768u, 8955u, 0u, global2[_wgslsmith_index_u32(51890u, 19u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(5623u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5104u, 19u)], 19u)], u_input.b)), 19u)], u_input.c.x), 1u), 4294967295u, abs(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 19u)])) & ~max(vec3<u32>(max(1u, global2[_wgslsmith_index_u32(u_input.c.x, 19u)]), _wgslsmith_div_u32(68158u, 4294967295u), ~0u), min(~vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60536u, 19u)], 19u)], u_input.b), select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33350u, 19u)], 19u)], 60275u, 7731u), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 19u)], 10236u), global1[_wgslsmith_index_u32(u_input.b, 28u)])));
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~var_1.x, ((vec4<u32>(u_input.b, var_1.x, 72854u, 109869u) >> (~vec4<u32>(global2[_wgslsmith_index_u32(1196u, 19u)], 4294967295u, var_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 19u)]) % vec4<u32>(32u))) << (min(select(vec4<u32>(var_1.x, 0u, 4294967295u, global2[_wgslsmith_index_u32(11377u, 19u)]), vec4<u32>(var_1.x, var_1.x, u_input.b, 4294967295u), global1[_wgslsmith_index_u32(1u, 28u)]), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 33776u)) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(~88154u, ~4294967295u, var_1.x, ~4259u), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 5440u, global2[_wgslsmith_index_u32(1u, 19u)]) | vec4<u32>(1u, var_1.x, 1u, 28898u))), -vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.d, -1057i, 29349i), -vec4<i32>(u_input.a, u_input.a, -1i, -38723i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.d, 0i), vec3<i32>(u_input.a, -1i, u_input.a) | vec3<i32>(2147483647i, 15234i, u_input.a)), -_wgslsmith_sub_i32(u_input.d, u_input.a), -69249i), u_input.a);
}

