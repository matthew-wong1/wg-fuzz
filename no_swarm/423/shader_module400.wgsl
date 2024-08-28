struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1009f, vec3<f32>(1000f, 799f, 1823f)), Struct_1(-1000f, vec3<f32>(973f, 1531f, 289f)), Struct_1(-378f, vec3<f32>(-1253f, -1433f, -736f)), Struct_1(659f, vec3<f32>(864f, 1591f, 1750f)), Struct_1(1399f, vec3<f32>(407f, -1088f, -107f)), Struct_1(-248f, vec3<f32>(1676f, 1216f, -589f)), Struct_1(-729f, vec3<f32>(-1311f, -178f, 1180f)), Struct_1(1422f, vec3<f32>(1195f, 439f, -686f)), Struct_1(143f, vec3<f32>(624f, -990f, 667f)), Struct_1(1249f, vec3<f32>(397f, -1129f, -190f)), Struct_1(-460f, vec3<f32>(-836f, -581f, -552f)), Struct_1(3062f, vec3<f32>(-500f, -1074f, -1298f)), Struct_1(1000f, vec3<f32>(109f, -1023f, -954f)), Struct_1(-821f, vec3<f32>(160f, 1234f, 1000f)));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: vec2<i32>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global4 = !(!vec3<bool>(global4.x, true && !global4.x, (global1.b.x > global2.a) == global4.x));
    let var_0 = -156f;
    var var_1 = global3.x;
    let var_2 = -14162i > global3.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(959f * _wgslsmith_f_op_f32(-569f - _wgslsmith_f_op_f32(-global2.a))), global2.b);
    return u_input.a.x;
}

fn func_2() -> f32 {
    let var_0 = u_input.a;
    let var_1 = -(~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global3.x, -16955i), vec3<i32>(-2147483647i, -1i, -1i)) | -vec3<i32>(global3.x, 18884i, -14810i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global3.x, u_input.c), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, func_3(), 31997u, var_0.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 42750u, var_0.x), vec4<u32>(0u, u_input.d.x, 0u, u_input.a.x)), abs(vec4<u32>(13592u, 4294967295u, u_input.a.x, u_input.a.x)))) % 32u), _wgslsmith_mod_u32(min(32309u, 1u), var_0.x)), 14u)];
    global0 = array<Struct_1, 14>();
    let var_3 = ~firstLeadingBit(23615u);
    return global1.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.b))));
    global4 = vec3<bool>(any(vec3<bool>(global4.x, !(var_1.b.x <= arg_1.a), !all(vec4<bool>(false, true, true, global4.x)))), !all(!global4.xy), true);
    let var_2 = vec4<i32>(reverseBits(~(i32(-1i) * -30850i)), u_input.b, (i32(-1i) * -35579i) | abs(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(-38523i, u_input.c)))), global3.x);
    global3 = var_2.wx;
    return Struct_1(-423f, _wgslsmith_f_op_vec3_f32(-var_1.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>) -> bool {
    var var_0 = !global4.xz;
    global4 = !vec3<bool>(any(vec4<bool>(!global4.x, true, global4.x, arg_1.x)), global4.x, !var_0.x);
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(49038u, _wgslsmith_mod_u32(~u_input.a.x, firstTrailingBit(u_input.a.x))), 33446u), 7751u), 14u)];
    global1 = func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1034f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global1.a)))))), Struct_1(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1806f, 100f, global2.b.x)), vec3<f32>(673f, global2.b.x, global2.b.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1376f, global2.b.x, global1.b.x)))))), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + global2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.a)))))));
    var var_1 = ~(-_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-5525i, arg_0.x) ^ vec2<i32>(-2147483647i, global3.x)), -reverseBits(arg_0.yy)));
    return -arg_0.x != firstLeadingBit(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.b.zy - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1512f), global1.a) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(-655f)), global1.b.x)))));
    let var_1 = 1i;
    var var_2 = vec4<bool>(global4.x, func_1(min(min(vec4<i32>(4855i, -1i, global3.x, global3.x), vec4<i32>(35522i, global3.x, -38066i, u_input.c)) ^ vec4<i32>(var_1, global3.x, 1i, var_1), vec4<i32>(~var_1, 40402i, -u_input.b, -var_1)), !(!(!vec4<bool>(global4.x, global4.x, global4.x, true)))), global4.x, any(vec4<bool>(global4.x, !global4.x, true, all(select(vec3<bool>(global4.x, false, true), vec3<bool>(false, false, global4.x), global4.x)))));
    var var_3 = Struct_1(global2.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(-423f, _wgslsmith_f_op_f32(sign(-1000f)), 1629f), any(var_2.xxx))));
    let var_4 = var_3.b.x;
    let var_5 = -(~vec2<i32>(max(8622i, var_1), var_1 & _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, u_input.c, var_1), vec3<i32>(var_1, var_1, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(var_0.x, global1.b.x, -337f)))))))), var_1);
}

