struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    var var_0 = firstTrailingBit(-firstLeadingBit(vec3<i32>(u_input.a.x >> (u_input.e % 32u), ~u_input.a.x, i32(-1i) * -68426i)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, -609f, 403f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, -820f, -361f) * vec3<f32>(2411f, 668f, -1601f))))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 0u);
    var_0 = -abs(vec3<i32>(max(-var_0.x, -22876i), firstTrailingBit(0i), _wgslsmith_mod_i32(42007i, ~var_0.x)));
    var var_2 = u_input.a.x;
    let var_3 = ~45936u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1074f)))) * _wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(490f, -934f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) * -423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) - _wgslsmith_f_op_f32(-1516f - 670f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, 1956f, -1259f))))), vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), select(true, true, select(true, true, false)) || false), u_input.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -140f, -2326f, 1240f), vec4<f32>(var_0.a.x, 381f, -1446f, var_0.a.x), var_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, -1156f, 464f, -112f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(307f, 1071f, -1045f, -120f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, -1177f, var_0.a.x, 185f))))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(var_0.a))), _wgslsmith_f_op_vec3_f32(floor(var_1.yzx)), true))), var_0.b, 1u);
    var var_2 = -279f;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, ~(-(~u_input.a.x)), select(countOneBits(-u_input.b.x), u_input.d.x, u_input.a.x != countOneBits(-7780i)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(12673i, u_input.a.x)), -15583i)), ~(~(-(vec4<i32>(u_input.b.x, u_input.d.x, u_input.a.x, -64086i) >> (vec4<u32>(38696u, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(137f))) + _wgslsmith_f_op_f32(func_1()))), var_1.x));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(993f + 803f)), -189f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-178f + 670f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-770f, -2414f, 569f), vec3<f32>(540f, 398f, -619f), arg_0)))))), select(!select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), any(vec3<bool>(arg_0, true, false))), select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0), true || (false & arg_0)), any(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), true)))), countOneBits(u_input.c.x) ^ ~1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, _wgslsmith_f_op_f32(-357f + var_0.a.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), var_0.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1904f, var_0.a.x, -371f, -1000f) + vec4<f32>(var_0.a.x, var_0.a.x, -207f, -1000f)) * vec4<f32>(var_0.a.x, -731f, var_0.a.x, -258f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(905f, var_0.a.x) + 1f), var_0.a.x, 755f, _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(-955f - var_0.a.x))))));
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.a + var_0.a), vec3<f32>(-1250f, var_1.x, var_1.x), !vec3<bool>(false, true, var_2.b.x)))))), var_0.b, _wgslsmith_mult_u32(firstLeadingBit(1u), 29421u));
    return _wgslsmith_div_f32(var_1.x, var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~u_input.d.x ^ -2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f + 802f) - -1000f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1479f, 594f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1159f, -294f) - vec2<f32>(1236f, -768f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, -1489f)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(true, false, false)))), 498f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -726f))), vec2<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 1075f), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = _wgslsmith_sub_u32(~(_wgslsmith_div_u32(1u, ~1u) ^ u_input.c.x), 38005u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_mult_i32(u_input.b.x, var_0), _wgslsmith_f_op_f32(floor(-1560f)), _wgslsmith_add_vec3_u32(~(~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(1u, 30259u, u_input.c.x))), ~reverseBits(vec3<u32>(var_3, var_3, u_input.c.x))));
}

