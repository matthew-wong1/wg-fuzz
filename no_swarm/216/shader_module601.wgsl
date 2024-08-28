struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 1068f;

var<private> global2: array<f32, 25>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec3<i32> {
    let var_0 = global0.a.a;
    var var_1 = vec4<u32>(~arg_1, _wgslsmith_mod_u32(var_0.x, ~43534u), _wgslsmith_sub_u32(1u, 1u), firstTrailingBit(508u));
    let var_2 = Struct_1(~_wgslsmith_add_vec3_u32(~(~var_1.xwy), _wgslsmith_div_vec3_u32(abs(var_1.zxz), select(vec3<u32>(global0.a.a.x, 4294967295u, 0u), var_1.yww, vec3<bool>(true, true, false)))));
    global1 = global2[_wgslsmith_index_u32(u_input.b, 25u)];
    var_1 = _wgslsmith_add_vec4_u32(~(select(vec4<u32>(0u, 58661u, u_input.b, 4768u), vec4<u32>(arg_1, var_1.x, 1u, 55874u), vec4<bool>(false, false, false, true)) | vec4<u32>(7792u, 12489u, var_1.x, global0.a.a.x)) << (~(~vec4<u32>(var_1.x, var_0.x, 1u, u_input.a) << (vec4<u32>(var_1.x, 18372u, global0.a.a.x, var_2.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(var_2.a.x, 86297u, select(0u & arg_1, 0u, true), countOneBits(~4294967295u)) << ((select(_wgslsmith_sub_vec4_u32(vec4<u32>(219u, var_1.x, 964u, 118498u), vec4<u32>(var_0.x, global0.a.a.x, 1u, 4294967295u)), vec4<u32>(34230u, 6294u, var_1.x, 11092u) >> (vec4<u32>(u_input.e.x, var_0.x, 1u, arg_1) % vec4<u32>(32u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)) | vec4<u32>(var_2.a.x, _wgslsmith_mod_u32(58522u, 1u), 53450u, var_2.a.x >> (u_input.b % 32u))) % vec4<u32>(32u)));
    return arg_0.xzy;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = -266f;
    let var_1 = select(func_3(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global0.b, u_input.d.x, u_input.c), vec4<i32>(global0.b, global0.b, global0.b, u_input.d.x)), ~vec4<i32>(0i, 45787i, 3085i, u_input.c)), firstTrailingBit(global0.b & 2147483647i), select(4446i >> (u_input.e.x % 32u), -38943i, true), _wgslsmith_div_i32(3778i, global0.c) >> (~0u % 32u)), 25172u), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.c, 11072i), ~global0.b, abs(18433i)), vec3<i32>(-30422i, ~u_input.d.x, -2147483647i)) & -vec3<i32>(-18060i, 1i, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-2147483647i, global0.c))), !all(vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, false)), true, 0u > arg_0)));
    var var_2 = -u_input.d;
    var var_3 = max(~min(select(vec4<u32>(4294967295u, global0.a.a.x, arg_0, global0.a.a.x), vec4<u32>(0u, arg_0, 1u, u_input.e.x), false), _wgslsmith_sub_vec4_u32(vec4<u32>(60844u, 50416u, u_input.a, global0.a.a.x), vec4<u32>(9788u, global0.a.a.x, global0.a.a.x, global0.a.a.x))) << (select(~countOneBits(vec4<u32>(global0.a.a.x, arg_0, u_input.a, global0.a.a.x)), abs(vec4<u32>(4670u, 0u, 1u, u_input.a)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), min(vec4<u32>(abs(402u), arg_0, reverseBits(arg_0), 1u) << (~_wgslsmith_div_vec4_u32(vec4<u32>(60407u, u_input.b, 49938u, 4294967295u), vec4<u32>(36951u, arg_0, u_input.b, 4294967295u)) % vec4<u32>(32u)), (vec4<u32>(1u, u_input.e.x, arg_0, global0.a.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, 64449u, u_input.a), vec4<u32>(arg_0, 40642u, global0.a.a.x, 15522u)) % vec4<u32>(32u))) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.a.a.x, 0u, global0.a.a.x), vec4<u32>(global0.a.a.x, 1u, global0.a.a.x, u_input.a), vec4<u32>(1u, arg_0, 4294967295u, arg_0))));
    let var_4 = ~global0.a.a << (min(global0.a.a, ~global0.a.a) % vec3<u32>(32u));
    return var_3.x;
}

fn func_1() -> vec2<bool> {
    let var_0 = vec3<u32>((~1u & (global0.a.a.x & abs(4294967295u))) & func_2(~u_input.a), _wgslsmith_mult_u32(countOneBits(~71376u), (1u | global0.a.a.x) | global0.a.a.x), 23698u);
    let var_1 = global0.a.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2[_wgslsmith_index_u32(1u, 25u)], -1136f))), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11306u, 25u)]), -1547f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 25u)])))))));
    let var_3 = -61429i;
    return select(vec2<bool>((_wgslsmith_mult_u32(global0.a.a.x, u_input.e.x) | var_0.x) == (~1u ^ u_input.a), false), select(vec2<bool>(true, false), vec2<bool>(!all(vec3<bool>(false, false, true)), false), vec2<bool>(true, true)), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(min(i32(-1i) * -1647i, -u_input.c), 64621i, ~global0.b);
    let var_1 = func_1();
    let var_2 = u_input.c;
    var var_3 = var_0;
    var var_4 = global0.a;
    var_4 = global0.a;
    global0 = Struct_2(Struct_1(~vec3<u32>(var_4.a.x, ~global0.a.a.x, global0.a.a.x)), 34466i, _wgslsmith_div_i32(min(u_input.c, i32(-1i) * -2147483647i), i32(-1i) * -1i));
    var var_5 = Struct_2(Struct_1(var_4.a ^ var_4.a), var_2, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(max(6839u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.x, 28175u, 39145u, 0u), vec4<u32>(91u, 1u, 227u, var_5.a.a.x))), 25u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_5.a.a.x, 25u)] + 1471f), _wgslsmith_f_op_f32(select(-1000f, -222f, false)))) + _wgslsmith_f_op_f32(1312f + _wgslsmith_f_op_f32(835f - global2[_wgslsmith_index_u32(16577u, 25u)])))), var_5.b);
}

