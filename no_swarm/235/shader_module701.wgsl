struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: array<u32, 2> = array<u32, 2>(4294967295u, 0u);

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

var<private> global2: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-506f, -1536f), vec2<f32>(-587f, 431f), vec2<f32>(2836f, -110f), vec2<f32>(1000f, -1623f), vec2<f32>(741f, 112f), vec2<f32>(266f, -1721f), vec2<f32>(763f, 1000f), vec2<f32>(-1177f, -1321f), vec2<f32>(376f, 1157f), vec2<f32>(-1269f, 1000f), vec2<f32>(217f, -1259f), vec2<f32>(1406f, -986f), vec2<f32>(1067f, 341f), vec2<f32>(-540f, 3377f), vec2<f32>(619f, 1014f), vec2<f32>(2519f, -1583f), vec2<f32>(723f, -2235f), vec2<f32>(-273f, -895f), vec2<f32>(-1049f, 1169f), vec2<f32>(1302f, 426f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global0 = array<u32, 2>();
    global2 = array<vec2<f32>, 20>();
    global0 = array<u32, 2>();
    let var_0 = -101f;
    global1 = reverseBits(vec2<i32>(_wgslsmith_add_i32(countOneBits(-1i), 26457i), global1.x)) & abs(abs(u_input.c.xx));
    return global1.x | -14988i;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_4(~abs(-9649i), Struct_2(~arg_1), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, abs(arg_2.x)), firstLeadingBit(-7437i)) << (~arg_1.zyy % vec3<u32>(32u)));
    global0 = array<u32, 2>();
    global2 = array<vec2<f32>, 20>();
    let var_1 = !vec3<bool>(false, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)), false);
    global1 = (vec2<i32>(-1i) * -countOneBits(vec2<i32>(31865i, global1.x))) >> ((_wgslsmith_div_vec2_u32(~var_0.b.a.xx, (arg_1.zw << (arg_1.yy % vec2<u32>(32u))) >> (firstLeadingBit(arg_1.zz) % vec2<u32>(32u))) << (arg_1.xx % vec2<u32>(32u))) % vec2<u32>(32u));
    return 32576i;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_4(reverseBits(func_4(_wgslsmith_mult_i32(global1.x, func_3()), ~vec4<u32>(0u, arg_2.x, global0[_wgslsmith_index_u32(0u, 2u)], 37281u), firstTrailingBit(vec3<i32>(-2842i, arg_3.x, arg_3.x)) | vec3<i32>(global1.x, 22566i, arg_3.x))), Struct_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0, 4294967295u, u_input.a, 22286u)), min(~vec4<u32>(arg_2.x, 4294967295u, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(77826u, 4294967295u, 5817u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(68107u, 2u)], arg_0, 153877u))))), (vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(u_input.c.yxy, arg_3.zzz)) | ~u_input.c.zww);
    let var_1 = vec4<bool>(all(arg_1), all(!select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, true))) | all(vec4<bool>(false, false, all(vec3<bool>(true, arg_1.x, arg_1.x)), false)), any(!select(vec4<bool>(false, true, false, arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, false), !vec4<bool>(arg_1.x, false, arg_1.x, true))), !arg_1.x);
    var var_2 = _wgslsmith_sub_i32(arg_3.x, u_input.c.x);
    let var_3 = all(var_1);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-494f, _wgslsmith_f_op_f32(trunc(-693f)), any(select(vec4<bool>(true, false, var_3, false), var_1, var_1.x)))))), _wgslsmith_f_op_f32(floor(-420f)));
    return var_4.x;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = ~(global1.x ^ (49670i << (max(arg_0 ^ u_input.b, arg_0) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(669f, -941f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1173f, _wgslsmith_f_op_f32(1356f - 1923f), true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~0u, select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<u32>(4294967295u, 1u), u_input.c)))));
    global2 = array<vec2<f32>, 20>();
    let var_2 = ~vec3<u32>(countOneBits(~firstLeadingBit(37179u)), max(13485u, _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(arg_0, 2u)], firstTrailingBit(85548u))), global0[_wgslsmith_index_u32(23386u, 2u)]);
    global2 = array<vec2<f32>, 20>();
    return -25817i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(~func_1(u_input.a), Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<u32>(91735u, u_input.b, 10582u, 4294967295u) << (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)], 0u, 4294967295u) % vec4<u32>(32u)))), vec3<i32>(-1i) * -u_input.c.yxw));
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f * 585f)), _wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(select(1000f, -776f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1116f + 1215f), _wgslsmith_f_op_f32(ceil(178f)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, var_2, var_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1540f, var_2, var_2) * vec3<f32>(-899f, -1398f, -1441f))), select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, false, var_1), !vec3<bool>(var_1, var_1, true))))));
}

