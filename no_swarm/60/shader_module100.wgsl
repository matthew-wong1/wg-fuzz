struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, 1u), -1000f, vec2<f32>(-1373f, -755f))), Struct_4(Struct_2(vec3<u32>(58525u, 9362u, 1u), -1505f, vec2<f32>(-146f, 795f))), Struct_4(Struct_2(vec3<u32>(53314u, 2039u, 85414u), 1086f, vec2<f32>(-604f, -214f))), Struct_4(Struct_2(vec3<u32>(32491u, 4294967295u, 0u), -447f, vec2<f32>(428f, 1832f))), Struct_4(Struct_2(vec3<u32>(7040u, 51222u, 1u), 1040f, vec2<f32>(740f, -601f))), Struct_4(Struct_2(vec3<u32>(44756u, 18988u, 4294967295u), -179f, vec2<f32>(917f, 1216f))), Struct_4(Struct_2(vec3<u32>(72359u, 0u, 1u), 499f, vec2<f32>(1067f, 402f))), Struct_4(Struct_2(vec3<u32>(8083u, 1u, 4294967295u), -2513f, vec2<f32>(1312f, -619f))), Struct_4(Struct_2(vec3<u32>(1u, 55117u, 41328u), -582f, vec2<f32>(-1000f, 1296f))), Struct_4(Struct_2(vec3<u32>(1u, 0u, 28104u), -1000f, vec2<f32>(411f, 241f))), Struct_4(Struct_2(vec3<u32>(42433u, 0u, 27191u), -2381f, vec2<f32>(-1000f, -117f))), Struct_4(Struct_2(vec3<u32>(8259u, 20624u, 20626u), -466f, vec2<f32>(1224f, -1133f))), Struct_4(Struct_2(vec3<u32>(4294967295u, 1u, 59427u), -807f, vec2<f32>(1000f, 621f))), Struct_4(Struct_2(vec3<u32>(140171u, 4294967295u, 27388u), 184f, vec2<f32>(103f, 2878f))), Struct_4(Struct_2(vec3<u32>(0u, 1u, 36793u), 705f, vec2<f32>(1157f, -668f))), Struct_4(Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), 126f, vec2<f32>(-385f, -1892f))), Struct_4(Struct_2(vec3<u32>(4294967295u, 87694u, 56739u), -332f, vec2<f32>(1325f, 834f))), Struct_4(Struct_2(vec3<u32>(10828u, 1u, 4294967295u), 1237f, vec2<f32>(-394f, 181f))), Struct_4(Struct_2(vec3<u32>(36952u, 1u, 20231u), -556f, vec2<f32>(-549f, -489f))), Struct_4(Struct_2(vec3<u32>(1u, 37144u, 4294967295u), -806f, vec2<f32>(423f, 1000f))), Struct_4(Struct_2(vec3<u32>(0u, 5774u, 0u), 805f, vec2<f32>(-361f, -1326f))), Struct_4(Struct_2(vec3<u32>(6706u, 1u, 4294967295u), 1165f, vec2<f32>(1000f, -559f))), Struct_4(Struct_2(vec3<u32>(4294967295u, 22003u, 4294967295u), 295f, vec2<f32>(419f, 1034f))), Struct_4(Struct_2(vec3<u32>(37065u, 4294967295u, 4294967295u), 309f, vec2<f32>(559f, 607f))), Struct_4(Struct_2(vec3<u32>(0u, 20871u, 1u), -147f, vec2<f32>(437f, 1640f))), Struct_4(Struct_2(vec3<u32>(0u, 86187u, 4294967295u), -1155f, vec2<f32>(1000f, 1025f))), Struct_4(Struct_2(vec3<u32>(93787u, 0u, 50669u), -784f, vec2<f32>(486f, -1000f))), Struct_4(Struct_2(vec3<u32>(35325u, 19316u, 4294967295u), -217f, vec2<f32>(-341f, -565f))), Struct_4(Struct_2(vec3<u32>(16789u, 1u, 0u), -606f, vec2<f32>(-181f, 205f))), Struct_4(Struct_2(vec3<u32>(12304u, 0u, 1632u), 1000f, vec2<f32>(1715f, -1055f))), Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), -145f, vec2<f32>(504f, 475f))));

var<private> global1: i32 = 13483i;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> i32 {
    let var_0 = u_input.c;
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1044f - 1265f), u_input.d.x);
    return -26852i;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5) -> u32 {
    var var_0 = -3661i;
    global1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, -2147483647i), -(~abs(func_2(-670f, global0[_wgslsmith_index_u32(0u, 31u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(423f * -862f), 2712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a) - 729f), global2.x)));
    let var_2 = 15693u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    return var_2;
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = reverseBits(vec2<i32>(15182i, 2147483647i));
    var var_1 = -u_input.d.xy;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b, 58123u), ~u_input.a.x), 31u)];
    var var_3 = countOneBits(_wgslsmith_add_u32(0u, ~select(~var_2.a.a.x, 4294967295u ^ u_input.b, true)));
    var_1 = -(u_input.d.wx >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a.x, 715u)) % vec2<u32>(32u)));
    return select(select(!select(!vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), any(vec3<bool>(false, arg_0, arg_0))), !select(vec3<bool>(false, arg_0, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, false)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, false), arg_0)), !(!vec3<bool>(true, arg_0, arg_0))), vec3<bool>(!any(!vec3<bool>(true, arg_0, arg_0)), all(vec4<bool>(all(vec4<bool>(arg_0, false, true, arg_0)), arg_0, arg_0, true)), ~_wgslsmith_add_u32(var_2.a.a.x, 20145u) >= ~var_2.a.a.x), select(!vec3<bool>(arg_0, arg_0, select(true, arg_0, arg_0)), select(select(!vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, true), select(false, arg_0, true)), !select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, false)), select(vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0)))), vec3<bool>(all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), arg_0)), any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(747f, ~(-1i));
    let var_1 = global0[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(~reverseBits(4294967295u), func_1(vec2<u32>(36940u, 4294967295u), Struct_5(u_input.b, Struct_3(-2049f), vec3<u32>(68475u, u_input.a.x, 15598u), var_0.a)), ~u_input.a.x), u_input.b, all(func_3(false))), 31u)];
    global1 = var_0.b;
    let var_2 = select(~var_1.a.a.x, firstLeadingBit(~_wgslsmith_mult_u32(u_input.a.x, var_1.a.a.x) & ~(~1u)), (!any(vec3<bool>(false, true, true)) | select(true, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, false)))) | all(func_3(select(false, true, true))));
    global1 = _wgslsmith_mult_i32(max(_wgslsmith_mod_i32(u_input.c, -38317i), var_0.b), u_input.d.x);
    var var_3 = countOneBits(~30115u) >= (1u ^ _wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(var_2, 1u, 4294967295u, var_1.a.a.x)), vec4<u32>(16650u, u_input.a.x, var_2, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 1u, 39006u, 1u), ~vec4<u32>(8298u, 4294967295u, 25568u, 69083u))));
    var var_4 = Struct_3(global2.x);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a * var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -958f) + -1289f)), 823f);
    let var_5 = vec2<f32>(404f, _wgslsmith_f_op_f32(-433f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.a, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(max(192f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -2829f))))));
}

