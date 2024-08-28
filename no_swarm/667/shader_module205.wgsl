struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    let var_0 = 10529u;
    var var_1 = arg_2;
    let var_2 = Struct_3(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-398f)) * arg_0.b), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.e.a.a, _wgslsmith_mult_vec3_u32(global2.c.a, global2.e.a.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 17858u, 0u) << (vec3<u32>(0u, global0.x, arg_1.a.x) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_2, global2.e.a.a.x, 4294967295u)))), ~abs(~vec3<i32>(0i, u_input.c.x, -30898i)), vec4<i32>(arg_1.c.x, arg_1.c.x, select(~arg_0.d.c.x, -40151i, arg_0.e.b.x), global2.e.a.c.x)), Struct_1(arg_0.e.a.a, _wgslsmith_mult_vec3_i32(~max(global2.c.b, arg_0.d.c.zyx), ~vec3<i32>(arg_0.e.a.c.x, 39942i, global2.d.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_0.d.c.x, -38881i, ~0i), vec4<i32>(global2.e.a.c.x, ~(-48049i), _wgslsmith_mult_i32(arg_0.d.c.x, -1i), _wgslsmith_sub_i32(-15913i, arg_0.d.c.x)))), Struct_2(global2.d, global2.e.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, var_2.b))))))))));
    let var_4 = Struct_2(Struct_1(~arg_1.a, ~var_2.e.a.c.yzy, vec4<i32>(var_2.e.a.c.x, var_2.e.a.c.x, arg_1.b.x, 111i)), var_2.e.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b, arg_0.a, global2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.x, -1099f, global2.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -428f, 409f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(402f - global2.a), _wgslsmith_f_op_f32(302f + var_2.b), -681f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2.b, -734f) * _wgslsmith_div_vec3_f32(vec3<f32>(1722f, 594f, -218f), vec3<f32>(var_2.b, global2.b, var_3.x)))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = -(~arg_0.c.c >> (vec4<u32>(global2.e.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 119919u, 424u), abs(vec3<u32>(1u, 4294967295u, arg_0.d.a.x))), abs(arg_0.d.a.x), 1u) % vec4<u32>(32u)));
    var var_1 = global2.d.c;
    var var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global2.a, global2.b), vec3<f32>(-231f, 593f, 227f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(68096u, 4u)], global2.e.a, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-630f, arg_0.b, -170f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b, arg_0.a, global2.a), vec3<f32>(-1013f, global2.a, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, 1998f, arg_0.a))))));
    var var_4 = var_1.x;
    return select(vec4<bool>(true, true, true, false), !vec4<bool>(!(var_3.x <= 303f), any(arg_1), false, any(select(vec4<bool>(true, true, arg_0.e.b.x, false), vec4<bool>(false, false, arg_2.x, true), arg_0.e.b.x))), false);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(10766u, abs(28431u)))), 4u)];
    var var_1 = Struct_3(global2.b, global2.a, var_0.d, Struct_1(~(~vec3<u32>(global2.c.a.x, global2.e.a.a.x, global2.e.a.a.x)), ~vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.b.x), 2147483647i, -u_input.b.x), var_0.e.a.c), Struct_2(var_0.e.a, arg_0.wz));
    var var_2 = Struct_1(~global2.c.a, min(-vec3<i32>(0i, u_input.b.x ^ -2147483647i, -var_1.e.a.b.x), firstTrailingBit(vec3<i32>(-var_1.d.c.x, var_0.e.a.c.x | global2.c.c.x, u_input.b.x))), vec4<i32>(_wgslsmith_div_i32(0i, select(select(u_input.c.x, 2147483647i, var_1.e.b.x), min(u_input.b.x, -9378i), true)), u_input.b.x, var_0.d.c.x, _wgslsmith_div_i32(0i, -1i)));
    global2 = global3[_wgslsmith_index_u32(1u, 4u)];
    global1 = 2147483647i;
    return var_0.e;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = global2.d.c;
    return func_4(vec4<bool>(false, arg_0, any(func_2(global3[_wgslsmith_index_u32(~global0.x, 4u)], vec3<bool>(global2.e.b.x, arg_1.x, true), global2.e.b)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(126f * -852f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1483f + global2.a) * global2.b)), Struct_1(~_wgslsmith_mult_vec3_u32(global2.e.a.a, _wgslsmith_div_vec3_u32(global2.d.a, vec3<u32>(0u, 24537u, global0.x))), vec3<i32>(u_input.c.x, u_input.b.x, ~(-global2.e.a.b.x)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.a)), Struct_1(vec3<u32>(abs(global0.x), 0u, global0.x), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.a), ~(-2147483647i)), global2.e.a.c.x, 1i), -(~(~vec4<i32>(-2147483647i, global2.e.a.c.x, 0i, u_input.c.x)))), func_1(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 0u) < (~global2.c.a.x ^ _wgslsmith_mod_u32(global2.e.a.a.x, 24041u)), vec4<bool>(~global0.x != ~1u, true, !global2.e.b.x, !global2.e.b.x)));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.b) * _wgslsmith_f_op_f32(global2.a + global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + -187f)), Struct_1(vec3<u32>(global0.x, 0u, 8298u), func_4(vec4<bool>(global2.e.b.x, true, true, global2.e.b.x)).a.c.wyz, ~vec4<i32>(-5316i, global2.c.c.x, 4979i, -2147483647i)), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.x, global2.e.a.a.x), global2.e.a.a), abs(global2.d.b), vec4<i32>(u_input.c.x, global2.c.b.x, global2.e.a.b.x, 2147483647i)), func_1(!global2.e.b.x, func_2(global3[_wgslsmith_index_u32(0u, 4u)], vec3<bool>(true, global2.e.b.x, true), vec2<bool>(global2.e.b.x, global2.e.b.x)))), Struct_1(~vec3<u32>(60684u, 20402u, 0u), global2.e.a.c.wxy, ~(-vec4<i32>(u_input.c.x, u_input.c.x, global2.e.a.b.x, u_input.a))), global2.e.a.a.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(-1726f + -541f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)) - _wgslsmith_f_op_f32(global2.b + global2.b))), Struct_1(~global2.d.a | global2.d.a, global2.d.b, select(-min(vec4<i32>(u_input.a, global2.d.b.x, -15203i, global2.c.c.x), vec4<i32>(0i, u_input.a, -2147483647i, u_input.c.x)), global2.e.a.c, vec4<bool>(false, global2.e.b.x, true | global2.e.b.x, !global2.e.b.x))), Struct_1(vec3<u32>(30997u, global2.c.a.x, ~func_4(vec4<bool>(global2.e.b.x, global2.e.b.x, global2.e.b.x, true)).a.a.x), vec3<i32>(-1i, -1i, 1i), ~global2.e.a.c), func_4(!vec4<bool>(true, global2.e.a.b.x >= u_input.a, global2.e.b.x, global2.e.b.x)));
    global3 = array<Struct_3, 4>();
    global0 = countOneBits(vec2<u32>(~func_1(global2.e.b.x, vec4<bool>(true, true, global2.e.b.x, global2.e.b.x)).a.a.x, 31811u));
    var var_0 = 1u | ~global2.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-255f, global2.e.a.b, countOneBits(func_4(vec4<bool>(!global2.e.b.x, true, !global2.e.b.x, !global2.e.b.x)).a.a.yz));
}

