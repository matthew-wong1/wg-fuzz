struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<vec2<u32>, 15>;

var<private> global2: array<f32, 23>;

var<private> global3: array<u32, 27> = array<u32, 27>(38193u, 4294967295u, 4294967295u, 24420u, 4294967295u, 0u, 1u, 33755u, 7382u, 0u, 9230u, 36153u, 1u, 67372u, 0u, 43315u, 9661u, 8592u, 73683u, 28390u, 0u, 12270u, 78482u, 0u, 26638u, 35046u, 49343u);

var<private> global4: vec4<i32> = vec4<i32>(-33778i, -2127i, 2147483647i, i32(-2147483648));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = select(select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(false, false, false)), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(7994u, 23u)] != global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45140u, 27u)], 23u)]))), select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, u_input.a > ~4294967295u, false | (-1i >= global4.x)), select(vec4<bool>(true, true, any(vec2<bool>(false, true)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 23u)] >= 336f), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), false), false), !vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), true));
    global1 = array<vec2<u32>, 15>();
    let var_1 = Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(465f))) - _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~u_input.a, 23u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)] - global2[_wgslsmith_index_u32(970u, 23u)])) - _wgslsmith_f_op_f32(-488f - _wgslsmith_f_op_f32(145f * -385f))), select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 15u)], vec2<u32>(1u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10290u, u_input.a, u_input.a), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], u_input.a, global3[_wgslsmith_index_u32(u_input.a, 27u)])), 27u)]), false)), -1i, 10944u, Struct_1(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)])))), -1145f, ~vec2<u32>(global3[_wgslsmith_index_u32(52094u, 27u)], 35204u)));
    let var_2 = ~(global3[_wgslsmith_index_u32(~(~1u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.c, 0u), vec4<u32>(u_input.a, u_input.a, 0u, 39741u)) % 32u), 27u)] & var_1.d.d.x);
    return vec4<u32>(35948u, countOneBits(~var_2 >> (~firstLeadingBit(u_input.a) % 32u)), 1u ^ global3[_wgslsmith_index_u32(countOneBits(~41002u), 27u)], ~(~var_2 & firstTrailingBit(4294967295u)) << (global3[_wgslsmith_index_u32(~reverseBits(23493u), 27u)] % 32u));
}

fn func_2() -> u32 {
    let var_0 = all(select(vec2<bool>(all(vec4<bool>(true, false, false, true)) | true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), -444f <= global2[_wgslsmith_index_u32(1u, 23u)]), false));
    var var_1 = func_3(-select(vec3<i32>(global4.x, -21297i, -1i), -vec3<i32>(global4.x, -2147483647i, 0i), !vec3<bool>(false, var_0, var_0)) | ~global4.ywz);
    let var_2 = Struct_1(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 23u)] * global2[_wgslsmith_index_u32(u_input.a, 23u)]))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 23u)] - -245f)) + _wgslsmith_f_op_f32(f32(-1f) * -1349f)), -653f, _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(firstTrailingBit(35241u), 15u)], ~global1[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)]));
    var var_3 = max(vec3<i32>(-1i) * -vec3<i32>(~global4.x, 0i, 16337i), -_wgslsmith_div_vec3_i32(~global4.xxx >> (~vec3<u32>(var_1.x, 0u, 20842u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.x, global4.x, global4.x), vec3<i32>(global4.x, 1i, var_2.a)), global4.wzy)));
    var var_4 = -_wgslsmith_mod_vec3_i32(countOneBits(abs(-global4.zxw)), ~_wgslsmith_mod_vec3_i32(global4.wxy, global4.zxx));
    return ~(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(~26137u, var_1.x << (var_1.x % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<bool> {
    return arg_1.xzy;
}

fn func_1() -> vec2<u32> {
    let var_0 = func_4(Struct_2(Struct_1(-global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 23u)] * global2[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_2(), 23u)]), vec2<u32>(~6962u, 6359u)), ~47220i & global4.x, ~(~(~u_input.a)), Struct_1(2147483647i, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a, 23u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(5972u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], global3[_wgslsmith_index_u32(7473u, 27u)], 1u), ~vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], 48336u, global3[_wgslsmith_index_u32(1u, 27u)], 4294967295u)), 23u)], reverseBits(global1[_wgslsmith_index_u32(4294967295u, 15u)]) | ~vec2<u32>(40245u, 23410u))), vec4<bool>(false, any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)] == global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12154u, 27u)], 23u)], false, true, true))));
    return global1[_wgslsmith_index_u32(90161u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -(~(-(vec4<i32>(global4.x, 41582i, -60710i, global4.x) & vec4<i32>(global4.x, -2147483647i, global4.x, 1i)))) >> (~max(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 45296u)), ~vec4<u32>(0u, 40797u, u_input.a, global3[_wgslsmith_index_u32(1u, 27u)])) % vec4<u32>(32u));
    global3 = array<u32, 27>();
    var var_0 = func_1();
    var var_1 = 462f;
    global1 = array<vec2<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 23u)], global2[_wgslsmith_index_u32(905u, 23u)], -159f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1115f, 986f, global2[_wgslsmith_index_u32(0u, 23u)])))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1016u, 23u)]))), _wgslsmith_f_op_f32(f32(-1f) * -509f), 1171f), func_4(Struct_2(Struct_1(-35034i, global2[_wgslsmith_index_u32(var_0.x, 23u)], -132f, vec2<u32>(4294967295u, 39268u)), global4.x ^ -28576i, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(36737u, 27u)], 1u), Struct_1(-61857i, global2[_wgslsmith_index_u32(1u, 23u)], 111f, global1[_wgslsmith_index_u32(0u, 15u)])), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2[_wgslsmith_index_u32(5173u, 23u)])))), global4.x, _wgslsmith_mult_u32(42166u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3[_wgslsmith_index_u32(115011u, 27u)], 1u, 0u, 11869u)), ~vec4<u32>(1216u, var_0.x, u_input.a, 0u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a), vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(0u, 27u)], 1u, u_input.a))), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), vec4<u32>(6718u, 4294967295u, var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42890u, 27u)], 27u)])) & vec4<u32>(~u_input.a, countOneBits(var_0.x), firstLeadingBit(u_input.a), _wgslsmith_mod_u32(var_0.x, 1515u))));
}

