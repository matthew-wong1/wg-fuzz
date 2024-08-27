struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: vec2<u32> = vec2<u32>(1u, 14771u);

var<private> global1: array<Struct_5, 12>;

var<private> global2: array<u32, 13>;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> vec4<i32> {
    global1 = array<Struct_5, 12>();
    global0 = vec2<u32>(global2[_wgslsmith_index_u32(15979u, 13u)], u_input.e.x >> (1u % 32u));
    var var_0 = Struct_2(firstLeadingBit(vec3<i32>(arg_0, -2147483647i, 27407i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-2573f + _wgslsmith_f_op_f32(sign(-2137f))), -384f, 239f), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1130f, 1000f), vec2<f32>(-874f, 1112f), arg_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, -1231f))))), vec4<i32>(-2147483647i, ~2960i, ~(i32(-1i) * -1i), -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 0i), arg_2 << (vec2<u32>(1047u, u_input.e.x) % vec2<u32>(32u)))));
    var var_1 = global1[_wgslsmith_index_u32(~max(global0.x, u_input.e.x), 12u)];
    global0 = u_input.e.yx;
    return vec4<i32>(~(-67671i) ^ firstTrailingBit(2147483647i), 45387i, -10969i, var_1.b.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_4 {
    global2 = array<u32, 13>();
    var var_0 = _wgslsmith_mod_u32(global0.x, 94700u);
    var var_1 = _wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(trunc(1f)));
    global3 = 1f;
    var var_2 = Struct_2(-((-vec3<i32>(2147483647i, 36049i, u_input.b.x) << (~u_input.e % vec3<u32>(32u))) | (-vec3<i32>(u_input.c, u_input.a, -2147483647i) << (~vec3<u32>(u_input.e.x, 4294967295u, global0.x) % vec3<u32>(32u)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-207f, 167f, -1000f), vec3<f32>(-198f, -622f, -540f), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(142f, -619f, -131f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1484f, -205f, -472f))))), true, vec2<f32>(_wgslsmith_f_op_f32(sign(-344f)), _wgslsmith_f_op_f32(trunc(-206f)))), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(~arg_1, u_input.a, u_input.b.x, ~(-53527i))), func_3(u_input.a, true, u_input.b), max(vec4<i32>(firstTrailingBit(16503i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, arg_1)), abs(-16367i), _wgslsmith_add_i32(-16366i, 1i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, i32(-1i) * -10061i, 23581i))));
    return Struct_4(Struct_3(Struct_2(~vec3<i32>(var_2.a.x, arg_1, -42854i), var_2.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, arg_1, var_2.c.x), vec4<i32>(arg_1, arg_1, -60105i, -27442i))), Struct_2(~vec3<i32>(u_input.c, 0i, u_input.c), var_2.b, firstTrailingBit(func_3(2147483647i, var_2.b.b, u_input.b)))), var_2.a.zx);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a.a.b.a.x * 2241f);
    var var_1 = func_2(abs(~firstTrailingBit(abs(vec2<u32>(global0.x, 36026u)))), 24859i);
    var var_2 = arg_1.a.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 719f), _wgslsmith_f_op_f32(arg_1.a.b.b.c.x - var_0)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.a.b.b.c.x))))) - 1280f) == _wgslsmith_f_op_f32(821f * -1813f);
    let var_4 = select(select(select(select(!vec3<bool>(true, arg_1.a.b.b.b, false), vec3<bool>(var_2.b.b, var_1.a.a.b.b, false), var_3 & var_3), select(vec3<bool>(var_2.b.b, false, false), vec3<bool>(true, var_2.b.b, var_2.b.b), true), var_3), vec3<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, arg_1.a.a.b.b)), any(!vec4<bool>(true, false, arg_1.a.a.b.b, var_2.b.b))), vec3<bool>(any(vec4<bool>(true, var_2.b.b, true, false)), 11439u < arg_0.x, true)), !select(!vec3<bool>(true, false, var_2.b.b), select(select(vec3<bool>(var_2.b.b, false, false), vec3<bool>(true, var_1.a.b.b.b, true), var_1.a.b.b.b), !vec3<bool>(var_1.a.b.b.b, arg_1.a.b.b.b, true), vec3<bool>(false, false, var_2.b.b)), false), select(!(!vec3<bool>(arg_1.a.a.b.b, var_2.b.b, true)), vec3<bool>(var_2.b.b || !arg_1.a.a.b.b, true, true), false));
    return arg_1.a.a;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = func_2(~select(u_input.e.xz, u_input.e.zx, vec2<bool>(true, true)) | _wgslsmith_sub_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], 4294967295u) | vec2<u32>(global0.x, u_input.e.x), vec2<u32>(25752u, 1u)), u_input.c).a.a.b;
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.a.x, 1102f)), arg_1.a.a.b.c.x)) * _wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(f32(-1f) * -952f)))), var_0.c.x, !(~arg_0 >= u_input.d)));
    global2 = array<u32, 13>();
    let var_1 = vec2<i32>(arg_1.a.a.c.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(arg_3.b.a.x, -20728i)), _wgslsmith_mult_i32(i32(-1i) * -1i, -u_input.b.x)), -(~abs(arg_3.b.c.x)), arg_1.a.a.a.x));
    global2 = array<u32, 13>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(847f)) + _wgslsmith_f_op_f32(-arg_3.b.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(~2915u | global0.x, Struct_4(Struct_3(Struct_2(vec3<i32>(u_input.a, 2147483647i, -1i), Struct_1(vec3<f32>(2316f, 630f, 644f), true, vec2<f32>(949f, 374f)), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.b.x)), func_1(vec4<u32>(30882u, 1u, 7684u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)]), Struct_4(Struct_3(Struct_2(vec3<i32>(-20730i, -39829i, 31563i), Struct_1(vec3<f32>(-1144f, 1812f, 1162f), false, vec2<f32>(816f, 1657f)), vec4<i32>(u_input.a, -2147483647i, u_input.c, u_input.c)), Struct_2(vec3<i32>(1i, u_input.c, -2147483647i), Struct_1(vec3<f32>(-857f, -1006f, 264f), false, vec2<f32>(-1255f, -321f)), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.c))), vec2<i32>(-40403i, u_input.c)), vec3<i32>(u_input.b.x, u_input.b.x, 0i), -701f)), ~vec2<i32>(0i, 56174i)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.d), u_input.e.yx), ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25674u, global0.x, 50916u), vec3<u32>(u_input.d, 23808u, global0.x))), func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.xy, vec2<u32>(22140u, 4294967295u)), ~u_input.e.zz), 2147483647i).a))));
    var var_0 = firstTrailingBit(select((i32(-1i) * -1i) & ~u_input.c, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(52964i, u_input.c, -26478i, 2147483647i)) & firstTrailingBit(vec4<i32>(u_input.c, 0i, u_input.c, u_input.a)), vec4<i32>(u_input.b.x, 0i, u_input.c, u_input.a & u_input.c)), true | all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = Struct_3(func_2(~(~vec2<u32>(4294967295u, 59736u)), u_input.a).a.a, Struct_2(-func_3(69138i << (global2[_wgslsmith_index_u32(u_input.d, 13u)] % 32u), all(vec3<bool>(true, false, false)), ~u_input.b).xxx, Struct_1(vec3<f32>(1f, 1423f, 306f), !(0u > global0.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1207f, -220f), vec2<f32>(1000f, -547f))))), -(vec4<i32>(-1i, 0i, u_input.a, u_input.c) | vec4<i32>(0i, 0i, 1i, -36571i)) ^ reverseBits(vec4<i32>(u_input.a, u_input.b.x, 2147483647i, u_input.c) >> (vec4<u32>(global2[_wgslsmith_index_u32(23119u, 13u)], 3239u, 20644u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = var_1.b.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.b.x ^ var_1.b.a.x), i32(-1i) * -1i);
}

