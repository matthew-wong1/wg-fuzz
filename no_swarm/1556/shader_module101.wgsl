struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27978u, 44763u, 13419u);

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(1008f, 1176f);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 700f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) * 1143f), -776f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + _wgslsmith_f_op_f32(f32(-1f) * -896f)));
    var var_1 = arg_3;
    var var_2 = arg_0.x;
    return !var_1.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = select(select(arg_0.c.x, all(vec2<bool>(!arg_0.a.x, true)), false), arg_0.c.x, arg_0.a.x);
    global0 = vec3<u32>(~(arg_0.d ^ ~(~36114u)), 1u, u_input.b.x);
    global0 = vec3<u32>(global0.x, ~_wgslsmith_clamp_u32(arg_0.d, ~(~arg_0.d), 1u), abs(arg_0.d & _wgslsmith_dot_vec2_u32(u_input.b.yy, _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 8016u), vec2<u32>(global0.x, 41596u)))));
    global1 = firstLeadingBit(-13965i);
    global1 = -2147483647i;
    return arg_0.a.yz;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: f32) -> u32 {
    global0 = vec3<u32>(_wgslsmith_add_u32(u_input.b.x, global0.x), 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(66025u, 62275u) | _wgslsmith_mult_u32(arg_2, u_input.b.x), arg_2));
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3, arg_3, 570f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3, arg_3, -1139f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f))), 580f, Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-508f, 1084f, arg_3, -259f), vec4<f32>(1290f, -719f, arg_1, arg_1), false)))), vec4<bool>(true, true, true, true), 89945u, ~arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_1, 1870f, 1010f) + vec4<f32>(-262f, arg_1, 242f, arg_1)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, arg_1, arg_3, 194f), vec4<f32>(arg_3, 494f, -1882f, -1639f))))))), vec4<bool>(all(func_3(Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(505f, arg_1, 565f, 1000f), vec4<bool>(false, false, true, false), 0u, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 75869i, 34010i), vec3<i32>(arg_0, 1268i, 12953i)))), true, false, !(all(vec2<bool>(true, true)) | false)), arg_2, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(-arg_0, i32(-1i) * -78209i)), min(~(-2147483647i), arg_0 >> (global0.x % 32u))));
    let var_1 = vec4<u32>(arg_2, _wgslsmith_mult_u32(max(var_0.d, reverseBits(_wgslsmith_add_u32(global0.x, 1u))), abs((1u >> (1u % 32u)) | _wgslsmith_div_u32(var_0.d, arg_2))), 1u, global0.x);
    let var_2 = Struct_1(select(select(func_2(_wgslsmith_f_op_vec4_f32(-var_0.b), arg_1, 1240f, var_0), !(!vec4<bool>(true, var_0.c.x, var_0.a.x, var_0.a.x)), var_0.a.x), !select(func_2(vec4<f32>(1440f, 1135f, 1148f, 449f), arg_1, -1000f, var_0), func_2(var_0.b, -465f, 615f, var_0), !var_0.a), var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-arg_3), var_0.b.x, var_0.b.x)))), vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))) < 1000f, false, true, var_0.c.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 38658u, arg_2) >> (var_1 % vec4<u32>(32u)), vec4<u32>(u_input.b.x, var_1.x, 60820u, global0.x)) & ~abs(4294967295u)) >> (71480u % 32u), arg_0);
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-14353i & abs(arg_0)), _wgslsmith_mult_i32(i32(-1i) * -1i, abs(~39703i))), ~var_2.e);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(4128u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, 1u), 35962u), firstTrailingBit(abs(u_input.a))) << (u_input.b.yxw % vec3<u32>(32u)), max(reverseBits(vec3<u32>(func_1(4227i, -1000f, u_input.a, -1229f), u_input.a, select(u_input.b.x, 1u, false))), vec3<u32>(global0.x, 1u, reverseBits(39561u) ^ _wgslsmith_clamp_u32(u_input.a, global0.x, 16909u))));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -829f);
    global1 = _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(-abs(1i), 1i & (28452i << (u_input.a % 32u)), 60032i)), i32(-1i) * -1i);
    global0 = u_input.b.xwx | ~(~(~vec3<u32>(48718u, 44452u, 19893u)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -850f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1065f, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) + vec2<f32>(var_0, 949f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 186f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1133f, -345f))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-101f + 1f), vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(36617i, 15123i, -25828i, 71154i)), vec4<i32>(22796i, 17926i, -10244i, -63263i)) & countOneBits(abs(-1i)), -(~1i), select(30815i, select(abs(29194i), -17998i, any(vec2<bool>(false, true))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))), 1u, -select(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(64924i, -1i), vec2<i32>(-54579i, 19930i))), select(firstTrailingBit(vec3<i32>(-1419i, -16496i, 2147483647i)), select(vec3<i32>(-40098i, -91002i, -35825i), vec3<i32>(0i, 54796i, 310i), vec3<bool>(true, false, false)), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
}

