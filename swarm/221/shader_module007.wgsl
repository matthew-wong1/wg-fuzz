struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = -(reverseBits(1i) << ((max(_wgslsmith_mult_u32(arg_0.b, 4294967295u), abs(0u)) & _wgslsmith_add_u32(~u_input.a, 36354u)) % 32u));
    global1 = array<bool, 4>();
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)] & u_input.b.xx), abs(1u)), u_input.a)), 4u)];
    var_1 = abs(~u_input.a | _wgslsmith_mod_u32(~1u, 4294967295u)) >= ~reverseBits(arg_1);
    global1 = array<bool, 4>();
    return _wgslsmith_sub_u32(51837u, abs(arg_1));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0.x;
    let var_1 = ~arg_1.x;
    let var_2 = vec4<u32>(~(~u_input.b.x), ~47055u, var_1, 4294967295u | max(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 40039u, 17235u) & u_input.b, ~vec3<u32>(arg_2, 1u, u_input.a))));
    global0 = array<vec2<u32>, 29>();
    var_0 = firstLeadingBit(arg_0.x);
    return Struct_2(abs(17649i ^ _wgslsmith_sub_i32(countOneBits(arg_0.x), ~27143i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(962f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1369f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f + -436f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-985f, -646f, -1235f), vec3<f32>(437f, 233f, 174f))))), select(1u, 21488u, select(global1[_wgslsmith_index_u32(var_2.x, 4u)], true, global1[_wgslsmith_index_u32(9583u, 4u)])) << (~func_3(Struct_1(vec3<f32>(297f, 1019f, 221f), 4294967295u), u_input.b.x) % 32u)), arg_2);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_2(arg_2.a ^ -1i, vec3<f32>(-622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-114f)))) * _wgslsmith_f_op_f32(min(arg_2.b.x, -2575f))), _wgslsmith_f_op_f32(round(var_0.c.a.x))), var_0.c, var_0.c.b);
    let var_1 = arg_2.d;
    var_0 = arg_2;
    global0 = array<vec2<u32>, 29>();
    return _wgslsmith_f_op_f32(-arg_2.b.x);
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u | ~u_input.a, 4u)];
    global0 = array<vec2<u32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(select(1094f, _wgslsmith_f_op_f32(func_4(true, global1[_wgslsmith_index_u32(1u, 4u)], func_2(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 32792i, 9471i, 8509i), vec4<i32>(2147483647i, 0i, 4629i, 1i))), vec4<u32>(max(u_input.b.x, 22365u), u_input.b.x, 39956u | u_input.a, u_input.b.x), ~(~u_input.b.x), any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(41876u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), 2147483647i)), any(vec3<bool>(true, true, true))));
    var var_2 = ~abs(-vec3<i32>(1i, 1i, -21558i));
    global1 = array<bool, 4>();
    return select(_wgslsmith_sub_i32(abs(45219i), countOneBits(select(-2147483647i, var_2.x, all(vec3<bool>(true, global1[_wgslsmith_index_u32(51575u, 4u)], true))))), -13689i, all(vec2<bool>(select(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(1u, 4u)]) >= u_input.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-(~(9128i | func_1())), 5604i);
    let var_1 = i32(-1i) * -23289i;
    let var_2 = vec2<i32>(20644i, var_1);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false, true)), global1[_wgslsmith_index_u32(13380u, 4u)] != true, Struct_2(var_1, vec3<f32>(808f, 450f, 866f), Struct_1(vec3<f32>(724f, -1399f, 1267f), u_input.b.x), u_input.b.x), 1i)))), 1f, _wgslsmith_f_op_f32(232f + _wgslsmith_f_op_f32(f32(-1f) * -223f)));
    let var_4 = -393f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_3.yy)) * var_3.yy) - vec2<f32>(_wgslsmith_div_f32(-1000f, var_3.x), -333f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xz), var_3.zx)));
}

