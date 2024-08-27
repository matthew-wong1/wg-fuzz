struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    var var_0 = !any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false)), vec2<bool>(true, true), true));
    var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-2265f)), _wgslsmith_f_op_f32(1422f * -231f), 2384f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1229f, -1613f, 2055f) - vec3<f32>(1560f, -1905f, 192f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, -518f, 769f) * vec3<f32>(-468f, -1684f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(185f, 655f, 342f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 642f, var_1.a.x) + vec4<f32>(-259f, -1649f, var_1.a.x, 605f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(max(-752f, var_1.a.x)), var_1.a.x, -1533f) - _wgslsmith_div_vec4_f32(vec4<f32>(-764f, 1411f, 818f, -521f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -467f))))));
    var var_3 = var_1;
    return var_1;
}

fn func_3() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-func_2().a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1022f, 566f) * 1183f), _wgslsmith_f_op_f32(f32(-1f) * -520f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1338f, 465f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1128f, var_0.x), vec3<f32>(var_0.x, -509f, 688f)) * vec3<f32>(-1154f, 371f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -515f, var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 475f, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(480f, -989f, 1715f)))))), true));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -654f), -120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(ceil(var_0.x))) * _wgslsmith_div_f32(-1553f, var_0.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, var_0.x, -639f)))), vec3<f32>(-794f, _wgslsmith_f_op_f32(f32(-1f) * -396f), var_0.x)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(-532f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(778f - _wgslsmith_f_op_f32(-var_0.x)))))), var_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.a.x)), -624f)), _wgslsmith_f_op_f32(f32(-1f) * -236f))));
    return func_2();
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(vec2<bool>(false, _wgslsmith_f_op_f32(-arg_0.a.x) < _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))), !vec2<bool>(select(true, u_input.a > u_input.a, true), false), !(all(vec4<bool>(true, false, true, false)) | select(all(vec3<bool>(true, true, false)), true, true)));
    var var_1 = func_2();
    var var_2 = func_3();
    let var_3 = min(1208u, ~1u << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(5718u, 62455u, 49071u), ~vec3<u32>(4294967295u, 1u, 1u)) | _wgslsmith_mod_u32(1u, min(1u, 2157u))) % 32u));
    var_1 = arg_0;
    return func_3();
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = func_2().a.x;
    var_0 = -550f;
    var var_1 = -select(min(vec3<i32>(u_input.a, u_input.a, reverseBits(u_input.a)), ~vec3<i32>(u_input.a, 2147483647i, -62391i)), vec3<i32>(u_input.a, ~35967i, reverseBits(u_input.a)), select(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x)), vec3<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), true && arg_0.x, true), !select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, arg_0.x))));
    let var_2 = arg_2.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~func_4(vec2<bool>(true, true), func_1(Struct_1(vec3<f32>(1721f, 972f, -1470f))), vec4<u32>(26036u, 0u, 0u, 94721u), Struct_1(vec3<f32>(-1003f, -1532f, -1000f)))));
    var var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(countOneBits(0u), 29400u ^ var_0.x) & _wgslsmith_add_vec2_u32(var_0.yw, ~abs(var_0.wy)), firstTrailingBit(~(~var_0.zx << (vec2<u32>(17630u, 0u) % vec2<u32>(32u)))));
    var_1 = vec2<u32>(~var_1.x, var_0.x);
    var var_2 = vec4<i32>(-1i) * -(~(-vec4<i32>(-47677i, 2147483647i, u_input.a, 4498i)) | vec4<i32>(countOneBits(-41884i), 561i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 40871i, u_input.a), vec4<i32>(u_input.a, u_input.a, 104439i, 48284i)), ~(-15695i)));
    var var_3 = ~abs(_wgslsmith_div_u32(max(21199u, var_0.x), 0u));
    let var_4 = func_1(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-526f, 630f, 150f), vec3<f32>(-508f, -125f, 198f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1314f, -955f, -899f))))));
    var_3 = var_0.x;
    var_2 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-57410i, 18535i, var_2.x, var_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_2.x, 16221i, var_2.x), vec4<i32>(44892i, var_2.x, u_input.a, u_input.a))), vec4<i32>(-31730i, 88256i, 1i, var_2.x) & abs(vec4<i32>(2147483647i, -2147483647i, 2147483647i, -6951i)), vec4<i32>(1i, 1i, -64142i, var_2.x) & (vec4<i32>(2147483647i, var_2.x, 47724i, u_input.a) >> (var_0 % vec4<u32>(32u)))) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(-8245i, firstTrailingBit(u_input.a), -1i, _wgslsmith_sub_i32(u_input.a, u_input.a)), ~firstTrailingBit(vec4<i32>(var_2.x, var_2.x, u_input.a, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~vec4<i32>(-3982i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 22657i), vec2<i32>(u_input.a, -18530i)), 2147483647i, min(u_input.a, min(2147483647i, var_2.x))));
}

