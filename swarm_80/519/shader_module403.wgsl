struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(1i, 49412i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -7271i), vec3<i32>(18718i, -7551i, -28250i), vec3<i32>(i32(-2147483648), -11119i, 17988i), vec3<i32>(-15043i, 1i, -9718i), vec3<i32>(2147483647i, -29121i, 1i), vec3<i32>(-55142i, -18972i, i32(-2147483648)), vec3<i32>(11636i, 0i, -45101i), vec3<i32>(-55594i, 25067i, 22801i), vec3<i32>(53929i, -26201i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -42439i), vec3<i32>(-1i, -23228i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -2593i), vec3<i32>(-21474i, -1i, 2147483647i), vec3<i32>(-1i, 2147483647i, -25741i), vec3<i32>(-1i, -1i, -29839i), vec3<i32>(-1i, -33100i, 0i), vec3<i32>(21359i, 2173i, -1i), vec3<i32>(-1i, i32(-2147483648), -21146i), vec3<i32>(-1262i, -1i, -36913i), vec3<i32>(-30082i, 1i, 60224i), vec3<i32>(21089i, -23115i, 293i), vec3<i32>(47425i, 0i, 40934i));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(34972u, 0u, 37081u, 1u), vec4<u32>(8501u, 3467u, 10180u, 98u), vec4<u32>(0u, 15415u, 1u, 17583u), vec4<u32>(2072u, 37107u, 1u, 20232u));

var<private> global3: Struct_1 = Struct_1(1132f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(global1.zx, _wgslsmith_f_op_vec2_f32(step(global1.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, 866f) * global1.wz))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f)));
    var var_3 = arg_0.wwy;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-949f, var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, -1076f, arg_0.x)) - _wgslsmith_f_op_f32(global3.a - -1113f)) + -253f)));
    return Struct_1(1017f);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(trunc(-528f)), true))))) >= -1764f;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    global2 = array<vec4<u32>, 4>();
    global0 = array<vec3<i32>, 23>();
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    global2 = array<vec4<u32>, 4>();
    var var_2 = !vec3<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    var var_3 = Struct_1(-1178f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1481f)));
}

fn func_6(arg_0: vec2<bool>, arg_1: f32) -> vec3<i32> {
    global3 = Struct_1(func_4(func_2(vec4<bool>(select(arg_0.x, false, false), false, arg_0.x, select(arg_0.x, true, arg_0.x))), ~(~vec2<i32>(u_input.b.x, u_input.b.x)), vec2<u32>(u_input.a.x, countOneBits(75262u)) & (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 26449u), u_input.a) ^ u_input.a)).a);
    var var_0 = vec3<i32>(select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(41288i, 1i, -5116i, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1865i, -22208i, u_input.b.x))) << (96429u % 32u), reverseBits(u_input.b.x) & -u_input.b.x, arg_0.x), 4676i, 0i);
    let var_1 = Struct_1(213f);
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_1, 658f, 537f) + vec4<f32>(global3.a, arg_1, -800f, global3.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-644f, 760f, global3.a, global3.a) - vec4<f32>(arg_1, -1240f, 1009f, -483f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1807f, global1.x, var_1.a, 915f), vec4<f32>(153f, 291f, global1.x, -2134f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 369f, 1000f, -700f) + vec4<f32>(arg_1, global1.x, var_1.a, global3.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a, -1000f, arg_1, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1267f, arg_1, -360f, arg_1) * vec4<f32>(1242f, -114f, global3.a, global1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f + -1803f)), _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(var_1.a - 1394f), var_1.a))));
    let var_2 = !(!arg_0.x);
    return vec3<i32>(-2147483647i, var_0.x, -_wgslsmith_dot_vec2_i32(countOneBits(~var_0.yy), _wgslsmith_mod_vec2_i32(vec2<i32>(14779i, u_input.b.x), var_0.zx | vec2<i32>(var_0.x, u_input.b.x))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global3.a), -596f);
    var var_1 = func_6(select(!(!(!vec2<bool>(arg_1, true))), vec2<bool>(false, false), !vec2<bool>(u_input.a.x > u_input.a.x, true)), _wgslsmith_f_op_f32(func_5(func_4(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -1984f, -234f, global3.a) + vec4<f32>(-281f, 361f, 140f, arg_0)), func_2(vec4<bool>(true, arg_1, arg_1, arg_1))), u_input.b.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a, u_input.a) ^ u_input.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1134f)), Struct_1(var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, var_0.x, 909f, 934f) - vec4<f32>(-1000f, global3.a, 375f, 690f)))))));
    global3 = func_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, -1895f), _wgslsmith_div_f32(-378f, global3.a)))))), ~_wgslsmith_add_vec2_i32(reverseBits(countOneBits(vec2<i32>(28730i, -14718i))), vec2<i32>(var_1.x, -var_1.x)), vec2<u32>(0u, abs(u_input.a.x)));
    global0 = array<vec3<i32>, 23>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1053f))))));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1955f, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -806f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-282f, _wgslsmith_f_op_f32(259f - -793f))) * global1.x)));
    global3 = var_0;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, 1795f, -1090f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global1.x, global3.a, 301f) - vec4<f32>(global1.x, -1000f, -309f, global1.x)) - vec4<f32>(1391f, 568f, -627f, global1.x)) + vec4<f32>(-1565f, -1500f, _wgslsmith_f_op_f32(floor(global3.a)), _wgslsmith_f_op_f32(sign(2125f)))), any(vec3<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false)), false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-519f, global1.x, 1000f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, var_0.a, -111f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a + global1.x) - -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-245f, global1.x, false)))))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a, -1146f, -1000f, -392f)))) - vec4<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(f32(-1f) * -1201f), 1764f, func_4(var_0, u_input.b.zx, u_input.a).a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(607f, global3.a, global1.x, _wgslsmith_div_f32(161f, global3.a)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a, -2446f, 1311f, global1.x), vec4<f32>(var_0.a, 1893f, -467f, global3.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2057f, 437f, global3.a, global1.x), vec4<f32>(2166f, 1589f, 1138f, global1.x), true)))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(global1.x - var_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-681f + 812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f + var_0.a)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * -648f), _wgslsmith_f_op_f32(-1053f - global3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) ^ ~vec3<u32>(u_input.a.x, u_input.a.x, 1u), firstTrailingBit(vec3<u32>(0u, u_input.a.x, 9963u)) >> (~vec3<u32>(4294967295u, 8584u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.zx))));
}

