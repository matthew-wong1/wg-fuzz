struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = select(!select(vec2<bool>(arg_1.d < -24303i, arg_2.x), !(!vec2<bool>(arg_0.x, global0.x)), true), arg_0.zz, !vec2<bool>(!arg_2.x, arg_1.b));
    var_0 = vec2<bool>(false, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1618f, 830f, 471f, -1450f) * vec4<f32>(-358f, arg_1.c, arg_1.c, arg_1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.c, arg_1.c)), 931f, -260f, -1187f)))));
    let var_2 = max(-15611i, abs(arg_1.d));
    var_0 = arg_2.yz;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f * var_1.x)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(1696f * arg_3.c);
    global1 = array<vec4<bool>, 8>();
    let var_1 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_3.c)), 146f)), var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0.x, arg_2, arg_3.b), Struct_1(var_1.a, true, -778f, arg_3.e.x, arg_3.e), vec4<bool>(arg_2, false, arg_2, global0.x))), _wgslsmith_f_op_f32(-arg_1.x)))))), 2147483647i, ~vec4<i32>(var_1.d, min(2147483647i, _wgslsmith_mod_i32(var_1.d, 240i)), ~(-arg_3.d), -24620i));
    let var_3 = arg_0.x;
    return arg_1.x;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = firstLeadingBit((firstLeadingBit(arg_3.e.zxy) & countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(7254i, -2147483647i, arg_3.e.x), vec3<i32>(arg_3.e.x, arg_3.d, arg_3.d)))) >> (abs(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, u_input.a.x))) % vec3<u32>(32u)));
    global1 = array<vec4<bool>, 8>();
    var var_1 = select(var_0.zz, -var_0.yy, select(select(vec2<bool>(arg_3.b & arg_0, false), select(!vec2<bool>(arg_3.b, true), vec2<bool>(global0.x, false), arg_3.b), global0.x), select(!vec2<bool>(global0.x, arg_3.b), select(vec2<bool>(arg_0, false), select(vec2<bool>(global0.x, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), arg_0), !arg_3.b), true));
    global0 = !(!select(!(!vec2<bool>(arg_3.b, false)), vec2<bool>(any(vec3<bool>(arg_3.b, true, arg_0)), true), select(arg_0, true, arg_2.x != 1111f)));
    var var_2 = arg_3;
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global0 = func_4(arg_0.x, vec3<f32>(-649f, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<f32>(_wgslsmith_f_op_f32(-554f - -1000f), _wgslsmith_f_op_f32(round(-438f)), _wgslsmith_f_op_f32(-466f + 799f), 448f), global0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1396f, 1502f)), false, _wgslsmith_f_op_f32(-635f + -1710f), countOneBits(4887i), abs(vec4<i32>(6715i, -13947i, 0i, -1i))))), -986f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1484f, _wgslsmith_f_op_f32(ceil(-1212f)), _wgslsmith_div_f32(255f, -1356f), -1230f) - vec4<f32>(_wgslsmith_f_op_f32(-631f - -304f), -1259f, _wgslsmith_f_op_f32(238f + 1000f), _wgslsmith_f_op_f32(func_2(vec4<bool>(false, arg_0.x, arg_0.x, global0.x), vec4<f32>(-1000f, 1106f, 1225f, -1650f), true, Struct_1(vec2<f32>(2025f, 1826f), arg_0.x, -705f, 0i, vec4<i32>(-23101i, 0i, -1i, 56763i)))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1001f, 292f), vec2<f32>(-240f, -464f))) * vec2<f32>(-279f, -1044f))), arg_0.x | !(!global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(max(-209f, 1103f))), _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.x, arg_0.x, arg_0.x), Struct_1(vec2<f32>(-903f, 677f), global0.x, -1000f, -2147483647i, vec4<i32>(21808i, 1i, 15869i, 2410i)), vec4<bool>(global0.x, global0.x, true, arg_0.x))), false)), ~(-1i), ~(firstTrailingBit(vec4<i32>(28563i, 0i, -7926i, -46393i)) ^ firstTrailingBit(vec4<i32>(-144i, -8451i, -1i, -2147483647i)))));
    var var_0 = all(vec2<bool>(!global0.x, true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 1000f) * vec2<f32>(-1000f, 474f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1451f, 1000f), vec2<f32>(671f, -323f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, 123f)))), true, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1215f, 1633f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, -547f))), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1160f), 42185i, -firstLeadingBit(vec4<i32>(-1i, -31088i, -1i, 4925i))), global1[_wgslsmith_index_u32(~u_input.a.x, 8u)])), 1i, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, ~0i), select(vec3<i32>(-1i, 2147483647i, -2147483647i), vec3<i32>(-22477i, -44191i, -13428i), vec3<bool>(global0.x, true, global0.x)) & ~vec3<i32>(-58509i, -1i, -4745i)), abs(-2147483647i), -1i, _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, -1i), vec4<i32>(25717i, 32535i, 2147483647i, -17600i))), vec4<i32>(countOneBits(22810i), ~(-179i), 0i, 1i))));
    var_0 = var_1.b;
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), -125f), !global0.x, var_1.a.x, var_1.e.x, vec4<i32>((firstTrailingBit(var_1.e.x) >> (0u % 32u)) ^ -_wgslsmith_dot_vec3_i32(var_1.e.yzy, vec3<i32>(2147483647i, -1i, 36947i)), -38832i, ~(var_1.d << (1u % 32u)), var_1.e.x));
    return u_input.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f - arg_0.x) + -1077f) - arg_2.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.c, arg_1.c, _wgslsmith_f_op_f32(arg_2.c - -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(636f * arg_1.c), 664f, arg_2.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.c, 298f) * vec3<f32>(arg_0.x, arg_1.c, 318f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.x, -381f, arg_0.x), vec3<f32>(-1062f, 621f, 1200f))), vec3<f32>(-1166f, -941f, arg_2.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.b, arg_2.b, arg_2.b), arg_2, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), 966f), _wgslsmith_f_op_f32(-arg_1.c))));
    global1 = array<vec4<bool>, 8>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy) + _wgslsmith_f_op_vec2_f32(var_1.yx + arg_1.a)), arg_1.a)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(796f + _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_1.b, true, false), Struct_1(var_1.zz, true, arg_0.x, arg_1.e.x, vec4<i32>(arg_1.d, -4514i, arg_1.d, -9467i)), global1[_wgslsmith_index_u32(~46077u, 8u)]))) * arg_0.x), ~(-6315i) ^ arg_1.d, arg_2.e);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-741f + -358f))) * -279f))) * -939f);
    return func_4(all(select(select(select(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global0.x), global1[_wgslsmith_index_u32(1u, 8u)], any(vec2<bool>(arg_1.b, var_2.b))), select(vec4<bool>(arg_1.b, true, false, false), global1[_wgslsmith_index_u32(~u_input.a.x, 8u)], var_2.b), false)), _wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1, vec3<f32>(var_1.x, -839f, 909f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(630f, var_2.a.x, arg_1.a.x) - var_1) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1284f, -679f, 1323f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, arg_2.a.x, 786f, -821f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, arg_2.a.x, -716f, -164f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2384f, -645f, -400f, 1189f)))), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(40600u, 8u)], vec4<f32>(2188f, -258f, 512f, 1065f), arg_2.b, Struct_1(vec2<f32>(arg_1.a.x, 1122f), global0.x, arg_1.a.x, 2147483647i, vec4<i32>(14495i, arg_1.e.x, var_2.d, var_2.e.x)))), _wgslsmith_f_op_f32(var_1.x * var_1.x), -1211f, _wgslsmith_f_op_f32(f32(-1f) * -978f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, arg_2.c, arg_2.a.x, 1365f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-814f, -607f, arg_1.a.x, -149f), vec4<f32>(888f, var_2.c, -471f, -198f))))), arg_2).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, -685f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1234f, -2454f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-121f, -2447f), vec2<f32>(918f, -623f), global0.x))), func_1(vec2<bool>(global0.x, global0.x)) > u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-515f)))), 0i, vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(1065f, -1094f)), -1323f), global0.x, 640f, -1i, vec4<i32>(~0i, 0i, 1i, min(1i, -2147483647i)))), global0.x);
    let var_0 = ~_wgslsmith_dot_vec4_u32((min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) | ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 63551u)) >> (firstLeadingBit(abs(vec4<u32>(0u, 14150u, 4294967295u, 2306u))) % vec4<u32>(32u)), ~min(vec4<u32>(8845u, u_input.a.x, 1u, u_input.a.x) << (vec4<u32>(26257u, u_input.a.x, 1u, 15100u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(42932u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(72950u, u_input.a.x, 1u, 4294967295u))));
    let var_1 = countOneBits(~reverseBits(1u));
    global1 = array<vec4<bool>, 8>();
    global0 = func_4(func_4(global0.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(696f, 366f, 2060f))))))), vec4<f32>(-1154f, _wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(abs(-212f))), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1074f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(1650f)), -1308f), global0.x, _wgslsmith_f_op_f32(abs(1000f)), -1i, vec4<i32>(-1i, 22843i, 0i, -2147483647i) << (vec4<u32>(u_input.a.x, var_0, u_input.a.x, 1u) % vec4<u32>(32u)))).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(864f, 1075f, -926f), vec3<f32>(2074f, -1000f, 895f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(378f, -1015f, 285f) - vec3<f32>(-175f, -221f, 2556f))), _wgslsmith_div_vec3_f32(vec3<f32>(835f, 141f, -2531f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, -417f, 795f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-611f, -862f, _wgslsmith_f_op_f32(f32(-1f) * -1017f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0.x, global0.x, false), Struct_1(vec2<f32>(1236f, -264f), true, 851f, -2147483647i, vec4<i32>(0i, -4813i, 86166i, -1i)), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), 1f, _wgslsmith_f_op_f32(1000f - 1045f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f), -415f), _wgslsmith_f_op_f32(495f - -947f), 446f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-243f, _wgslsmith_div_f32(1375f, 331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f * 806f)), true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1734f, -1180f) + vec2<f32>(-536f, -479f)))), false, _wgslsmith_f_op_f32(abs(1590f)), 21036i, vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = !func_4(global0.x, vec3<f32>(109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f + 110f) - _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(f32(-1f) * -1528f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), -247f, -357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2129f, -757f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1624f))), 70123i, ~(-vec4<i32>(1i, 0i, 2147483647i, 21102i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(229f + -143f))) + 1f), _wgslsmith_f_op_f32(-704f + -1128f)), vec4<i32>(1i, 1i, 1i, 1i), vec3<f32>(449f, _wgslsmith_f_op_f32(select(-861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f - -1642f)), !(global0.x | true))), -2189f));
}

