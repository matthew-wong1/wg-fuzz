struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 19>;

var<private> global2: array<f32, 27> = array<f32, 27>(1706f, 613f, 910f, 1000f, 107f, -644f, 1093f, 703f, -453f, 125f, 587f, 633f, 2017f, 1254f, -623f, 807f, -222f, 196f, -376f, 814f, -1433f, -253f, 1289f, -663f, 546f, 130f, -1683f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<i32> {
    return ~(~vec3<i32>(u_input.b.x, -1i, arg_0.a.x));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    global2 = array<f32, 27>();
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(~u_input.c, vec4<i32>(u_input.c.x, ~u_input.c.x | ~1i, _wgslsmith_add_i32(u_input.c.x >> (2828u % 32u), -1i), _wgslsmith_dot_vec3_i32(func_3(Struct_2(u_input.c.wzx), Struct_1(u_input.c), vec4<i32>(1i, u_input.b.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.a, 19u)], u_input.d.x, global1[_wgslsmith_index_u32(0u, 19u)])), vec3<i32>(-46037i, u_input.b.x, u_input.b.x)))));
    return any(select(select(select(select(vec2<bool>(arg_0.x, false), arg_0, vec2<bool>(arg_0.x, arg_0.x)), arg_0, !arg_0), arg_0, var_0.a.x != -u_input.c.x), arg_0, vec2<bool>(true, all(vec4<bool>(false, arg_0.x, false, false)))));
}

fn func_1() -> i32 {
    global1 = array<u32, 19>();
    var var_0 = func_2(select(vec2<bool>(-2147483647i != u_input.c.x, u_input.c.x <= 69118i), vec2<bool>(false, false), false)) | (!func_2(vec2<bool>(true, true)) & false);
    let var_1 = u_input.d.ww;
    var_0 = !(!any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, false, false), true)));
    let var_2 = 564f;
    return _wgslsmith_mult_i32(u_input.c.x << (~(~(4294967295u ^ var_1.x)) % 32u), 2147483647i);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(-19313i, u_input.b.x) & u_input.c.ww)) & vec2<i32>(~2147483647i >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65201u, 19u)] << (u_input.d.x % 32u), 19u)] % 32u), 1i));
    var var_1 = select(abs(countOneBits(u_input.c.yy)), var_0, select(all(select(!vec4<bool>(false, true, arg_0, true), !vec4<bool>(arg_0, arg_0, arg_0, true), false)), arg_0 && all(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, false, true, true), true)), !all(vec3<bool>(false, arg_0, arg_0))));
    var var_2 = vec2<f32>(arg_2, -231f);
    global2 = array<f32, 27>();
    global1 = array<u32, 19>();
    return Struct_2(abs(~vec3<i32>(_wgslsmith_sub_i32(var_1.x, 1026i), 2147483647i, -21687i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(true, func_1(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1200f + _wgslsmith_f_op_f32(step(192f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30673u, 19u)], 27u)])))))), Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, -23074i, u_input.c.x, 1i), countOneBits(max(vec4<i32>(9601i, -1i, -58229i, u_input.b.x), u_input.c)))), true);
    let var_1 = firstTrailingBit(abs(~global1[_wgslsmith_index_u32(~80377u, 19u)]));
    var_0 = Struct_3(Struct_2(select(-u_input.c.zwx, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(0i, u_input.c.x, 1i)), vec3<i32>(u_input.c.x, 52170i, 1i)), select(select(vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, true, true), vec3<bool>(false, true, var_0.c)), vec3<bool>(true, var_0.c, false), var_0.c))), var_0.b, true);
    var_0 = Struct_3(var_0.a, var_0.b, true);
    let var_2 = var_0.a;
    let var_3 = Struct_1(vec4<i32>(55902i, _wgslsmith_add_i32(~u_input.c.x, i32(-1i) * -1i) | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.x, 63491i, -40749i, var_2.a.x), vec4<i32>(var_0.b.a.x, var_2.a.x, 17649i, 1i)), -vec4<i32>(-33678i, 0i, -2147483647i, -2147483647i)), var_0.a.a.x, var_2.a.x << (43019u % 32u)));
    let var_4 = ~global1[_wgslsmith_index_u32(0u, 19u)];
    var var_5 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-12824i, var_2.a.x), u_input.b), -22356i), -vec4<i32>(~0i, var_3.a.x, _wgslsmith_sub_i32(var_2.a.x, u_input.b.x), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 27u)] - _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)))) + global2[_wgslsmith_index_u32(var_4, 27u)]), _wgslsmith_clamp_vec3_i32(select(-(~vec3<i32>(var_3.a.x, u_input.c.x, -7898i)), ~var_3.a.zwx, vec3<bool>(true | var_0.c, var_0.c, all(vec3<bool>(var_0.c, true, var_0.c)))), _wgslsmith_mult_vec3_i32(-(u_input.c.www << (vec3<u32>(global1[_wgslsmith_index_u32(var_1, 19u)], var_4, global1[_wgslsmith_index_u32(0u, 19u)]) % vec3<u32>(32u))), vec3<i32>(~8340i, firstTrailingBit(2147483647i), var_0.b.a.x)), countOneBits(firstTrailingBit(var_5.a.zwz))), 0i, vec4<u32>(u_input.a, var_4, _wgslsmith_div_u32(u_input.a, var_1), select(global1[_wgslsmith_index_u32(0u ^ var_1, 19u)], min(u_input.a, 5652u), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_1, 27u)])) <= _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_4, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]))));
}

