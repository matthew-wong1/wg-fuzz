struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1001f;

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = global2.x;
    var var_1 = i32(-1i) * -46450i;
    var var_2 = Struct_2(arg_1.a.a);
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1306f - _wgslsmith_f_op_f32(floor(-361f))), -165f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f - 879f)), _wgslsmith_f_op_f32(f32(-1f) * -482f))))));
    let var_4 = arg_0;
    return vec4<i32>(arg_0.a.b.x, 2147483647i, select(arg_0.a.b.x, 69839i, -1i < abs(max(-20404i, u_input.c))), arg_0.a.b.x);
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global2 = vec3<bool>(true, !(!arg_1 & true) & !all(vec2<bool>(true, global2.x)), true);
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1362f, -136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(select(2054f, 434f, false)), true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2183f, -1163f))), -1577f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, 623f, 1440f, 1135f))))));
    var var_1 = Struct_3(Struct_2(Struct_1(!select(vec3<bool>(false, true, arg_1), vec3<bool>(true, true, false), vec3<bool>(arg_1, true, true)), func_3(Struct_2(Struct_1(vec3<bool>(arg_1, true, arg_1), vec4<i32>(4876i, u_input.c, -2147483647i, u_input.c), vec4<bool>(global2.x, arg_1, true, false), vec2<bool>(true, true))), Struct_3(Struct_2(Struct_1(vec3<bool>(arg_1, true, false), vec4<i32>(-1i, -2147483647i, 23643i, u_input.c), vec4<bool>(arg_1, global2.x, arg_1, false), vec2<bool>(global2.x, false))), Struct_1(vec3<bool>(false, false, arg_1), vec4<i32>(u_input.c, u_input.c, 2147483647i, -2147483647i), vec4<bool>(false, global2.x, true, arg_1), vec2<bool>(false, false)), u_input.a.x, vec2<bool>(false, arg_1)), vec4<i32>(-37192i, -2147483647i, 1390i, u_input.c) | vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(global2.x, arg_1, global2.x, false), vec4<bool>(global2.x, true, true, false), true), vec4<bool>(global2.x, false, true, global2.x)), global2.xy)), Struct_1(!vec3<bool>(all(vec4<bool>(true, false, true, true)), true, !global2.x), _wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.c, u_input.c, u_input.c, -6388i) | vec4<i32>(u_input.c, -30045i, u_input.c, -19239i)), abs(func_3(Struct_2(Struct_1(vec3<bool>(false, global2.x, global2.x), vec4<i32>(-53658i, u_input.c, u_input.c, u_input.c), vec4<bool>(global2.x, arg_1, global2.x, false), global2.yx)), Struct_3(Struct_2(Struct_1(vec3<bool>(global2.x, true, global2.x), vec4<i32>(u_input.c, u_input.c, -32691i, u_input.c), vec4<bool>(global2.x, arg_1, global2.x, false), global2.xz)), Struct_1(vec3<bool>(false, arg_1, true), vec4<i32>(u_input.c, -46214i, u_input.c, u_input.c), vec4<bool>(true, true, global2.x, true), global2.xx), 1u, vec2<bool>(arg_1, global2.x)), vec4<i32>(u_input.c, u_input.c, u_input.c, -48308i), vec4<i32>(u_input.c, 1i, u_input.c, u_input.c)))), !(!vec4<bool>(false, arg_1, false, true)), !(!global2.xx)), 30085u & firstTrailingBit(u_input.b.x), !global2.yz);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), var_0.x);
    global1 = array<vec3<f32>, 5>();
    return global2.x;
}

fn func_1() -> Struct_1 {
    let var_0 = !(~(u_input.a.x & _wgslsmith_mult_u32(32571u, u_input.b.x)) <= u_input.a.x);
    let var_1 = ~(~(u_input.a.x | u_input.a.x)) != u_input.a.x;
    var var_2 = Struct_3(Struct_2(Struct_1(vec3<bool>(u_input.b.x != u_input.a.x, var_0, !global2.x), -vec4<i32>(-1i, 2147483647i, -39583i, u_input.c) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, -11286i, u_input.c), vec4<i32>(-2147483647i, 70568i, u_input.c, u_input.c)), vec4<bool>(global2.x, !global2.x, func_2(u_input.b.x, true), false), global2.xz)), Struct_1(select(vec3<bool>(true, !var_1, !global2.x), select(vec3<bool>(global2.x, global2.x, var_0), vec3<bool>(false, var_0, false), select(vec3<bool>(false, var_1, var_0), vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, var_1, true))), select(!vec3<bool>(global2.x, var_0, var_1), !vec3<bool>(var_0, true, var_1), !vec3<bool>(var_1, false, false))), _wgslsmith_add_vec4_i32(-max(vec4<i32>(1i, u_input.c, u_input.c, 49768i), vec4<i32>(u_input.c, -18990i, u_input.c, u_input.c)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, 0i), vec4<i32>(7529i, 13035i, u_input.c, -13115i)))), !select(vec4<bool>(true, true, var_1, true), !vec4<bool>(true, global2.x, global2.x, var_1), !vec4<bool>(true, false, var_1, false)), vec2<bool>(!global2.x, var_1 & true)), _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 12951u), u_input.b.wx), !vec2<bool>(all(vec4<bool>(true, var_1, true, global2.x)) == true, false));
    let var_3 = var_2.a.a;
    let var_4 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~(var_2.c ^ 26680u), var_2.c)), 5u)];
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(401f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1434f, -201f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f * -164f) * _wgslsmith_f_op_f32(floor(1000f)))) * -474f);
    var var_1 = ~(0i << (0u % 32u));
    var_1 = -(~19925i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) * -1085f))));
    let var_3 = true;
    var var_4 = func_1();
    var_2 = -1000f;
    var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(1u, ~(~0u))), _wgslsmith_dot_vec3_u32(max(u_input.b.wzx, u_input.a.zxz & u_input.a.xyx) & _wgslsmith_mod_vec3_u32(vec3<u32>(24459u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), u_input.a.wyx));
}

