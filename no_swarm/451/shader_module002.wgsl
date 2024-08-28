struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32> = vec3<f32>(1413f, 948f, -192f);

var<private> global2: Struct_2;

var<private> global3: vec2<bool>;

var<private> global4: array<u32, 29> = array<u32, 29>(1u, 1u, 4294967295u, 1u, 1u, 0u, 16308u, 35738u, 8496u, 12586u, 2937u, 1u, 84472u, 0u, 0u, 0u, 0u, 47567u, 1u, 0u, 7642u, 1u, 1u, 1908u, 4294967295u, 64129u, 4294967295u, 1u, 3240u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    global3 = select(vec2<bool>(global3.x, arg_1), !vec2<bool>(true, select(true, arg_1, true)), vec2<bool>(_wgslsmith_div_u32(77409u, global2.a) <= u_input.b, true));
    let var_0 = Struct_1(arg_0.a, (0i << (((u_input.b | 11211u) ^ firstTrailingBit(1u)) % 32u)) << ((global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(u_input.b, 29u)] >> (0u % 32u)), 29u)] ^ 13242u) % 32u));
    global2 = Struct_2(~(select(~u_input.b, abs(global4[_wgslsmith_index_u32(u_input.b, 29u)]), true) >> (_wgslsmith_div_u32(~u_input.b, 4294967295u) % 32u)));
    global0 = Struct_2(global2.a);
    var var_1 = Struct_2(1u);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.yxz), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a.xxz)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, global1.x, -1354f), vec3<f32>(-431f, arg_0.a.x, -948f)), _wgslsmith_f_op_vec3_f32(select(var_0.a.xyy, vec3<f32>(-501f, -844f, global1.x), global3.x)), vec3<bool>(true, arg_1, arg_1)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 999f, -1713f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, 144f, arg_1.x))))), u_input.e.x);
    let var_1 = arg_0;
    let var_2 = var_0.a.x;
    var var_3 = var_0;
    global4 = array<u32, 29>();
    return countOneBits(~min(~_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.e), 1i));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = Struct_2(~6509u);
    var var_0 = Struct_1(arg_0.a, firstTrailingBit(func_4(Struct_2(6280u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(arg_0, global3.x)), arg_0.a.yww)), !(!vec2<bool>(false, global3.x)), vec3<bool>(true | arg_1.x, !global3.x, arg_1.x))));
    global2 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(16515u, 11278u ^ (u_input.b & 2507u)), 530u));
    let var_1 = var_0.a;
    var var_2 = abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, u_input.c.x, var_0.b), vec4<i32>(2147483647i, var_0.b, -2147483647i, var_0.b)), _wgslsmith_add_i32(u_input.c.x, -17477i)), _wgslsmith_mult_i32(var_0.b, u_input.d)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, arg_0.a.x, -1649f, global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, var_1.x)), _wgslsmith_f_op_f32(454f + 998f), _wgslsmith_div_f32(-860f, arg_0.a.x), 1000f))), 29384i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = 2147483647i;
    let var_1 = func_2(arg_0, !select(select(!vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(false, false, false), vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, global3.x, false)), vec3<bool>(false, false, false)), vec3<bool>(global3.x, true, true), false), reverseBits(vec2<i32>(reverseBits(_wgslsmith_mod_i32(u_input.e.x, arg_0.b)), select(select(u_input.e.x, arg_0.b, global3.x), u_input.c.x, true))));
    let var_2 = Struct_2(~global2.a);
    let var_3 = var_1;
    var var_4 = global3.x;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a.x))))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.x - 2210f))))), _wgslsmith_f_op_f32(-var_3.a.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(select(1u, max(max(global4[_wgslsmith_index_u32(~4294967295u, 29u)], global2.a), global4[_wgslsmith_index_u32(countOneBits(14420u) >> (~global2.a % 32u), 29u)]), !all(vec4<bool>(true, true, true, true))));
    global4 = array<u32, 29>();
    let var_1 = _wgslsmith_div_i32(-(~_wgslsmith_div_i32(-1i, func_2(Struct_1(arg_0, -1305i), vec3<bool>(arg_1, true, arg_1), u_input.c.yz).b)), _wgslsmith_div_i32(0i << (0u % 32u), 2147483647i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, 723f, 1386f, -1618f), vec4<f32>(-1094f, arg_0.x, global1.x, arg_0.x))) + _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(1000f, 1252f, global1.x, -1194f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(~func_2(Struct_1(vec4<f32>(global1.x, global1.x, global1.x, arg_0.x), u_input.a), vec3<bool>(false, global3.x, global3.x), vec2<i32>(-1i, -11460i)).b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 23212i), max(u_input.c, vec3<i32>(u_input.e.x, 1i, u_input.d)))), select(~vec2<i32>(1i, 1i), u_input.c.zz, any(vec2<bool>(false, false)))));
    global2 = Struct_2(countOneBits(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(global4[_wgslsmith_index_u32(56883u, 29u)], var_0.a, var_0.a, global0.a), vec4<u32>(var_0.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 29u)], 29u)], u_input.b, 11601u)), ~abs(vec4<u32>(4294967295u, 0u, u_input.b, var_0.a)))));
    return Struct_1(var_2.a, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-736f, global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(round(1041f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, -839f, global1.x, 1644f)) * vec4<f32>(-799f, 1000f, 897f, 279f)), all(vec3<bool>(global3.x, global3.x, global3.x)))) - _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<f32>(global1.x, global1.x, global1.x, -891f), -u_input.d), Struct_2(~global0.a), Struct_2(_wgslsmith_div_u32(7401u, 16698u))))), global3.x);
    var var_1 = var_0.a.x;
    var var_2 = Struct_2(u_input.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_0.a, -32498i), Struct_2(global0.a), Struct_2(0u))).x)))) + var_0.a.x);
    let var_4 = Struct_2(~(0u << (0u % 32u)));
    let var_5 = firstLeadingBit(0u);
    let var_6 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.d, 2147483647i), min(min(u_input.e.x, 34430i) >> (4294967295u % 32u), u_input.a << ((36791u << (1u % 32u)) % 32u)) ^ u_input.c.x);
}

