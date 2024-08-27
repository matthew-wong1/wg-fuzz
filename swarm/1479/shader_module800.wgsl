struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> bool {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_0 = firstTrailingBit(vec2<i32>(53134i, _wgslsmith_dot_vec2_i32(-vec2<i32>(23684i, arg_0.b), max(vec2<i32>(u_input.c, -6177i), vec2<i32>(arg_0.b, -76600i)))) | vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(3886i, 20761i, u_input.c, 0i), vec4<i32>(arg_0.b, 2147483647i, -1i, 8382i)), vec4<i32>(arg_0.b, -18202i, 7778i, 10280i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(18370i, arg_0.b), vec2<i32>(arg_0.b, u_input.c)))));
    var var_1 = vec4<i32>(countOneBits(max(-2147483647i | firstTrailingBit(-11359i), -1i)), min(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0, ~var_0), 0i), ~abs(17862i)), 17720i, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, 1i)), _wgslsmith_sub_i32(-27338i, _wgslsmith_mult_i32(_wgslsmith_add_i32(37157i, 6272i), countOneBits(u_input.c)))));
    let var_2 = arg_0;
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> bool {
    var var_0 = -vec3<i32>(0i, u_input.c, arg_1.x);
    let var_1 = !select(vec3<bool>(true, func_3(Struct_2(Struct_1(false, 1u, vec4<f32>(-584f, 499f, 630f, -896f)), arg_1.x), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(505f, global0[_wgslsmith_index_u32(arg_0.x, 21u)]) - vec2<f32>(global0[_wgslsmith_index_u32(52633u, 21u)], -1066f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]) <= _wgslsmith_div_f32(-1531f, global0[_wgslsmith_index_u32(0u, 21u)])), arg_2, !((u_input.b.x != u_input.a.x) && arg_2.x));
    var_0 = vec3<i32>(reverseBits(-(var_0.x & 1i)), -arg_1.x, -(~select(arg_1.x, 0i, true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-329f, global0[_wgslsmith_index_u32(0u, 21u)]) + _wgslsmith_f_op_f32(-321f + global0[_wgslsmith_index_u32(1981u, 21u)])))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.x, 21u)]))), abs(_wgslsmith_div_u32(reverseBits(1u), u_input.d.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(26060u, 21u)])) * global0[_wgslsmith_index_u32(~u_input.d.x, 21u)]), -591f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 21u)] + global0[_wgslsmith_index_u32(22725u, 21u)])))));
    let var_3 = _wgslsmith_add_u32(var_2.b, ~4294967295u & (~_wgslsmith_dot_vec2_u32(u_input.a, arg_0.yx) << (34080u % 32u)));
    return !arg_2.x;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    global0 = array<f32, 21>();
    var var_0 = !(!(!vec2<bool>(all(vec2<bool>(false, true)), func_2(vec4<u32>(4999u, u_input.d.x, u_input.b.x, 33122u), vec3<i32>(arg_0, arg_0, 2147483647i), vec3<bool>(true, false, false)))));
    let var_1 = reverseBits(~(~u_input.c));
    let var_2 = var_0.x;
    var var_3 = vec2<bool>(var_0.x, false || !var_0.x);
    return select(4294967295u, 1u, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_0 = u_input.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(75960u, u_input.a.x, ~select(12681u, u_input.a.x, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(24651u, func_1(7511i, vec4<i32>(u_input.c, -26635i, 2067i, u_input.c)), firstTrailingBit(u_input.a.x)), u_input.b.wxy, vec3<u32>(u_input.b.x & u_input.a.x, ~u_input.a.x, 5218u)));
    let var_1 = -vec2<i32>(1i, -_wgslsmith_mult_i32(u_input.c, 0i)) << (select(firstTrailingBit(vec2<u32>(~u_input.a.x, reverseBits(90433u))), u_input.a, any(vec3<bool>(true, true, true)) & all(vec3<bool>(false, false, false))) % vec2<u32>(32u));
    var_0 = ~func_1(firstLeadingBit(u_input.c), _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, 39386i, 1i), vec4<i32>(u_input.c, -34673i, var_1.x, u_input.c)), vec4<i32>(i32(-1i) * -19334i, _wgslsmith_div_i32(-36894i, u_input.c), u_input.c, -10599i), vec4<i32>(-21143i, -var_1.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i), var_1.x)));
    var var_2 = Struct_3(Struct_2(Struct_1(true, ~(~u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1264f, 383f, 1387f, -1256f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(36516u, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(2128u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])))), u_input.c), Struct_2(Struct_1(true, _wgslsmith_add_u32(min(u_input.a.x, 21514u), u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(30666u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 453f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 189f, -788f, global0[_wgslsmith_index_u32(13496u, 21u)])))), _wgslsmith_dot_vec4_i32(vec4<i32>(70853i, 2147483647i, u_input.c, 71055i) | -vec4<i32>(var_1.x, var_1.x, u_input.c, 48141i), select(vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.c, u_input.c, 43307i, 0i), false) >> (select(vec4<u32>(11710u, 4294967295u, u_input.a.x, u_input.d.x), u_input.b, vec4<bool>(true, true, false, true)) % vec4<u32>(32u)))), _wgslsmith_sub_i32(min(_wgslsmith_sub_i32(~(-36939i), u_input.c), -(-2147483647i >> (u_input.b.x % 32u))), var_1.x), !all(vec2<bool>(true, true)), vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec2<bool>(true, true)) || true, !select(true, func_2(u_input.b, vec3<i32>(u_input.c, u_input.c, 0i), vec3<bool>(true, false, true)), true), true || all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_add_u32(1u, abs(0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(var_2.a.a.c.ywy)));
}

