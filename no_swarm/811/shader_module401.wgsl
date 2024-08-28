struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1135f))), arg_0, true)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, 2010f))), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 44820u, 40366u), vec3<u32>(0u, 7551u, 1u)) | reverseBits(0u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(82643u, 1u), vec2<u32>(47409u, 20622u)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1854f, 171f, arg_0.x, 1099f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-240f, -822f, arg_0.x, 1398f), vec4<f32>(arg_0.x, -594f, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2789f, var_0.b.x, arg_0.x) + vec4<f32>(1651f, arg_0.x, var_0.b.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-517f, var_0.b.x, 978f, arg_0.x), vec4<f32>(-230f, arg_0.x, -805f, -1431f))), vec4<bool>(true, true, true, false))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-566f, 1198f, var_0.b.x, arg_0.x) * vec4<f32>(920f, arg_0.x, 189f, 728f)))))), 12626i);
    var var_2 = Struct_2(min(~(-select(var_0.a, vec4<i32>(u_input.d, 2147483647i, 2147483647i, var_1.c), false)), abs(select(u_input.a, vec4<i32>(u_input.d, var_0.a.x, var_1.c, 32600i), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(791f, arg_0.x))));
    var_2 = var_0;
    var_2 = var_0;
    return (reverseBits(u_input.d) | firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.a.x, 41710i), var_2.a.x))) > max(-1i, max(_wgslsmith_sub_i32(-33392i, 1i), var_1.c));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = arg_1.b.yw;
    let var_1 = var_0.x;
    var var_2 = select(!vec2<bool>(func_3(vec2<f32>(var_0.x, -207f)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), select(false, u_input.a.x <= arg_1.c, true)), vec2<bool>(true, false)), all(vec2<bool>(false | all(vec2<bool>(false, true)), !all(vec2<bool>(true, false)))));
    let var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(67263u, arg_1.a, arg_1.a), vec3<u32>(arg_1.a, 3532u, 0u) | vec3<u32>(4294967295u, 1u, 0u)) | arg_1.a, arg_1.b, countOneBits(-_wgslsmith_add_i32(-2147483647i, reverseBits(22000i))));
    var_2 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true)), vec2<bool>(var_2.x, false), all(vec4<bool>(false, var_2.x, var_2.x, var_2.x)))));
    return _wgslsmith_mod_u32(10411u, var_3.a) >> (abs(8501u) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = arg_1.x;
    let var_2 = firstTrailingBit(func_2(~(~4294967295u), arg_0, Struct_2(vec4<i32>(var_0.c, -29340i, -2147483647i, 4322i), arg_0.b.yz)) & var_0.a);
    return Struct_2(select(_wgslsmith_add_vec4_i32(-u_input.a, vec4<i32>(0i, var_0.c, -41258i, u_input.d) << (vec4<u32>(19651u, 1u, 6221u, var_0.a) % vec4<u32>(32u))), u_input.a, select(arg_0.a < var_0.a, arg_2.x, false)) | u_input.a, arg_0.b.zx);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_4(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, abs(1u)), vec2<u32>(func_2(20276u, arg_1, Struct_2(vec4<i32>(-2147483647i, -1617i, u_input.d, 1i), arg_1.b.zz)), 45221u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-795f, arg_1.b.x, arg_1.b.x, arg_1.b.x) - _wgslsmith_f_op_vec4_f32(exp2(arg_1.b)))), 2147483647i ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -17111i, arg_1.c, 0i), u_input.a))), vec3<bool>(arg_0.x && (_wgslsmith_mult_u32(arg_1.a, 0u) == 40954u), !func_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.x, arg_1.b.x)))), arg_0.x), vec4<bool>(47555u <= func_2(~arg_1.a, arg_1, Struct_2(u_input.a, arg_1.b.xx)), false, arg_0.x, arg_0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(floor(723f))))), var_0.b.x, 601f));
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, arg_1.c), -19687i, i32(-1i) * -2147483647i, ~var_0.a.x), vec4<i32>(var_0.a.x, 47812i, u_input.b.x, 2147483647i) << (~vec4<u32>(1u, arg_1.a, 4294967295u, arg_1.a) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(0i, 33747i, -55921i, 2147483647i))) >> (~vec4<u32>(~0u, 4294967295u, 26694u, _wgslsmith_div_u32(42015u, arg_1.a)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, arg_1.b.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0.b.x), _wgslsmith_div_vec2_f32(arg_1.b.wz, var_1.yx)))));
    var_0 = Struct_2(vec4<i32>(~var_2.a.x, var_2.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(min(u_input.c, u_input.c), 0i, -9948i | arg_1.c), 3870i), -countOneBits(-6185i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(step(var_1.xz, _wgslsmith_f_op_vec2_f32(sign(var_2.b)))))));
    let var_3 = arg_1;
    return func_4(Struct_1(39279u, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * 1687f), _wgslsmith_f_op_f32(exp2(var_2.b.x)), var_3.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_1.x, var_0.b.x, var_0.b.x) - var_3.b)), _wgslsmith_dot_vec4_i32(~var_0.a, var_0.a)), !(!vec3<bool>(0u <= var_3.a, !arg_0.x, false)), select(!select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, false), arg_0.x), vec4<bool>(true, false, true, arg_0.x), select(arg_0.x, false, false)), vec4<bool>(true, false, true != func_3(vec2<f32>(var_3.b.x, -1236f)), !(!arg_0.x)), vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) & true, any(select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, arg_0.x, true, arg_0.x))), func_2(0u, var_3, Struct_2(var_2.a, var_3.b.wz)) != (arg_1.a >> (23215u % 32u)), all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~u_input.a.x, 1i);
    var var_1 = func_1(!select(vec2<bool>(any(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), !any(vec2<bool>(true, true))), Struct_1(max(~(~0u), 6359u), vec4<f32>(-167f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1441f)), _wgslsmith_div_f32(-1014f, -166f))), -599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-791f * -1533f))), var_0.x));
    var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.zz), var_1.a.wx | u_input.a.yy)), -vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, 6098i), _wgslsmith_div_i32(var_0.x, var_0.x))), abs(func_4(Struct_1(~22320u, vec4<f32>(var_1.b.x, -1000f, var_1.b.x, var_1.b.x), ~var_1.a.x), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), var_1.a.x != -44376i), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))).a.yw));
    var var_2 = ~select(4012u, select(~(~14878u), 1u, 2147483647i < -var_1.a.x), min(1u, 1u) == min(~35001u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16848u, 116u), vec3<u32>(0u, 4294967295u, 1091u))));
    var var_3 = 1i;
    let var_4 = -var_1.a.x;
    var_2 = ~countOneBits(firstLeadingBit(76537u));
    var var_5 = true;
    var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 1u, 1u) & vec3<u32>(1u, _wgslsmith_sub_u32(1u, select(0u, 91325u, true)), abs(~1u)), u_input.b.zz);
}

