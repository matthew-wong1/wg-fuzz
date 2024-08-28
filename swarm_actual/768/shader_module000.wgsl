struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1458f;

var<private> global1: array<u32, 9> = array<u32, 9>(4294967295u, 58041u, 4294967295u, 4294967295u, 1u, 4294967295u, 17524u, 6126u, 1u);

var<private> global2: vec2<f32> = vec2<f32>(728f, -149f);

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<u32> {
    return u_input.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, global2.x, -369f, _wgslsmith_f_op_f32(f32(-1f) * -2638f))), firstLeadingBit(i32(-1i) * -(~8006i)));
    let var_1 = -26751i;
    global1 = array<u32, 9>();
    let var_2 = firstTrailingBit(firstTrailingBit(select(vec3<i32>(u_input.c, -58885i, 0i) >> (arg_3 % vec3<u32>(32u)), vec3<i32>(2147483647i, var_0.b, var_0.b), any(arg_0)) ^ (vec3<i32>(-1i) * -vec3<i32>(25364i, -33746i, -2147483647i))));
    var var_3 = Struct_1(var_0.a, -1i);
    return !(!arg_0.wz);
}

fn func_1() -> StorageBuffer {
    let var_0 = abs(min(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, global1[_wgslsmith_index_u32(91044u, 9u)], 1u, 0u)), (vec4<u32>(4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 9u)], u_input.b) << (vec4<u32>(global1[_wgslsmith_index_u32(31860u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)], 1u) % vec4<u32>(32u))) << (vec4<u32>(73454u, 31325u, 14451u, u_input.b) % vec4<u32>(32u))), vec4<u32>(~min(u_input.b, 33172u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13596u, 9u)], 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), func_2(Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(global2.x, global2.x, global2.x, -709f), u_input.c), -42997i, vec4<f32>(-949f, global2.x, 240f, -2182f), 543f), vec3<bool>(true, true, false))), 9u)], abs(u_input.d) >> (reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)]) % 32u), ~_wgslsmith_sub_u32(60307u, 2106u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 541f, 1205f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 673f, global2.x))))), 2147483647i);
    global1 = array<u32, 9>();
    var var_2 = Struct_2(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), func_3(vec4<bool>(true, true, false, true), true, var_0.x, u_input.a), vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(floor(533f)), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(-303f, 454f))), var_1.a.x), var_1.b), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1306f, 695f, 564f, var_1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1840f, 1042f, 1562f, 967f) * var_1.a)))), _wgslsmith_f_op_f32(round(var_1.a.x)));
    var var_3 = var_2.b;
    return StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(max(abs(vec2<i32>(u_input.c, var_1.b)), vec2<i32>(-29034i, 0i)), vec2<i32>(u_input.c, u_input.c)), abs(~vec2<i32>(var_1.b, -1i) | _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_3.b), vec2<i32>(var_2.b.b, -2147483647i)))), ~global1[_wgslsmith_index_u32(1u ^ u_input.b, 9u)], _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(~(~u_input.a.x), 9u)], reverseBits(var_0.x) ^ ~global1[_wgslsmith_index_u32(26141u, 9u)]), firstLeadingBit(~(~var_0.wy))), vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1255f)) * _wgslsmith_f_op_f32(select(-324f, 1261f, var_2.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))))), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 9u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, global2.x, 1666f, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1845f, global2.x, global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1813f, global2.x, global2.x, -661f)))))), countOneBits(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(-3612i, u_input.c))) & -35336i);
    global0 = -347f;
    let var_2 = Struct_2(vec2<bool>(!((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48068u, 9u)], 9u)] & 1u) <= 18588u), false), var_1, var_1.b, _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(max(var_1.a, _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(2685f, 295f, global2.x, var_1.a.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, _wgslsmith_f_op_f32(-var_2.e), -771f, _wgslsmith_f_op_f32(max(-520f, 275f)))))), -reverseBits(u_input.c));
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = func_1();
}

