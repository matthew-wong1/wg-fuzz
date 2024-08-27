struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: vec3<u32> = vec3<u32>(10535u, 12408u, 0u);

var<private> global2: vec3<i32> = vec3<i32>(-1i, 2147483647i, -62183i);

var<private> global3: array<bool, 8>;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(select(-1000f, -1701f, true))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f - 1265f) - _wgslsmith_f_op_f32(1845f * -1254f))))));
    global2 = firstTrailingBit(-(~vec3<i32>(global2.x, -20914i, u_input.c)));
    global4 = ~arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.yz)), 1u, var_0.x, ~u_input.a);
    var var_2 = global3[_wgslsmith_index_u32(var_1.e, 8u)];
    return -u_input.c;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec3<i32> {
    var var_0 = !(!(!(!select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(global1.x, 8u)]))));
    let var_1 = _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(2094f + arg_1), false));
    var var_2 = !(true || (1i > _wgslsmith_mod_i32(global2.x, 55767i)));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_sub_i32(global2.x << (_wgslsmith_mult_u32(arg_0.e ^ ~0u, ~_wgslsmith_sub_u32(global1.x, 4294967295u)) % 32u), u_input.c);
    return vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, min(u_input.b, global2.x), 29902i, -14367i), firstLeadingBit(vec4<i32>(var_4, var_4, global2.x, 0i))), func_3(true, abs(0u))), global2.x, u_input.b);
}

fn func_1() -> Struct_2 {
    global4 = 24403u;
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(629f))) + -1000f)))));
    global2 = abs(func_2(Struct_2(834f, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1308f, -470f) - vec2<f32>(1000f, -152f))), global1.x, 1f, 4294967295u), -577f));
    var var_1 = ~24401u;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1683f, 1285f)))), _wgslsmith_f_op_f32(select(421f, -665f, global3[_wgslsmith_index_u32(110048u, 8u)])))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1323f)), _wgslsmith_f_op_f32(1191f + -576f)))), _wgslsmith_div_u32(countOneBits(firstTrailingBit(u_input.a) << (_wgslsmith_mult_u32(14532u, global1.x) % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 7199u, 0u, u_input.a), vec4<u32>(global1.x, 1u, 1u, 66240u), global3[_wgslsmith_index_u32(global1.x, 8u)]), firstTrailingBit(vec4<u32>(4294967295u, global1.x, 0u, 8073u))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1244f))), 1776f)), global1.x);
    return global0[_wgslsmith_index_u32(21108u, 14u)];
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(-183f, func_1().b, arg_2.c, arg_2.a, u_input.a);
    var var_1 = 1u;
    var var_2 = -reverseBits(-(~vec4<i32>(global2.x, u_input.b, 0i, u_input.b)));
    var var_3 = ~(-_wgslsmith_mult_vec2_i32(-var_2.zz, vec2<i32>(1i, u_input.b))) | var_2.yz;
    var var_4 = func_1().b;
    return all(vec4<bool>(!(!select(global3[_wgslsmith_index_u32(arg_2.c, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(47819u, 8u)])), u_input.a == 1u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(3953u, u_input.a, 0u)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, arg_2.c), vec3<u32>(44626u, global1.x, 4294967295u)))), 8u)], global3[_wgslsmith_index_u32(global1.x, 8u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(481f, -618f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1303f, 333f) - vec2<f32>(1018f, -174f))), !func_4(36226i, vec2<i32>(global2.x, 1i), func_1(), Struct_1(vec2<f32>(-1072f, 1298f))))));
    global0 = array<Struct_2, 14>();
    var var_2 = 0u | abs(~(26639u & u_input.a));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~(1u << (~global1.x % 32u)), _wgslsmith_dot_vec4_u32((vec4<u32>(global1.x, 18233u, global1.x, u_input.a) & vec4<u32>(u_input.a, 4294967295u, 80536u, global1.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 18263u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, ~global1.x, u_input.a, u_input.a)), u_input.a), abs(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.x, 7595u, 1u, u_input.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, global1.x), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.a), vec4<u32>(~u_input.a, 0u, 1u, _wgslsmith_add_u32(u_input.a, u_input.a))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(u_input.a, 4294967295u)), u_input.a), ~6288u, 13952u), _wgslsmith_add_u32(1u, global1.x));
}

