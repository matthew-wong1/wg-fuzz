struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(~firstTrailingBit(vec3<i32>(select(u_input.a, u_input.a, true), 27404i, var_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(32184u, ~1u, ~arg_0.x), vec3<u32>(arg_1.x, firstTrailingBit(4294967295u), arg_0.x)), ~4294967295u), arg_1, select(vec4<bool>(all(vec3<bool>(true, false, false)) | false, all(vec3<bool>(true, false, false)) | true, true && all(vec3<bool>(false, true, true)), false), vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, any(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), true)));
    var var_2 = var_1;
    var var_3 = countOneBits(~abs(arg_0.x));
    var_3 = 1u;
    return -1i;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-15430i, u_input.a)), 2147483647i), -firstLeadingBit(vec3<i32>(77661i, 2147483647i, -2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, func_3(vec4<u32>(4294967295u, 8134u, 4294967295u, 4294967295u), vec2<u32>(1u, 0u)), _wgslsmith_add_i32(1i, u_input.a)), countOneBits(vec3<i32>(1i, u_input.a, u_input.a)))), vec2<u32>(1u, ~firstLeadingBit(_wgslsmith_add_u32(0u, 34497u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), abs(vec2<u32>(68058u, 1u)))), !vec4<bool>(select(all(vec4<bool>(false, false, false, true)), true, false), true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(1261f, -235f)) >= -304f));
    var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec3_i32(~var_0.a, max(vec3<i32>(19947i, -5299i, u_input.a), abs(vec3<i32>(var_0.a.x, var_0.a.x, -2147483647i))))), vec2<u32>(1u, 55668u), var_0.b | ~var_0.c, select(select(var_0.d, select(vec4<bool>(true, false, false, true), select(var_0.d, vec4<bool>(var_0.d.x, true, true, var_0.d.x), var_0.d), !var_0.d), !var_0.d.x && true), var_0.d, !(!vec4<bool>(false, var_0.d.x, var_0.d.x, true))));
    let var_1 = vec4<bool>(all(var_0.d), var_0.d.x, !(!var_0.d.x), all(vec3<bool>(!any(var_0.d), false, !(var_0.a.x == u_input.a))));
    var var_2 = arg_0;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0)) * arg_0), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, arg_0.x, var_2.x, var_2.x)) - arg_0), arg_0))) + _wgslsmith_f_op_vec4_f32(-arg_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(770f - arg_0.x), -1523f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f * 452f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2101f * _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec4<f32>(-443f, arg_0.x, arg_0.x, arg_0.x)))))), arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -833f)));
    let var_1 = Struct_1(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 65409i, u_input.a), firstLeadingBit(vec3<i32>(u_input.a, -1i, u_input.a)))), ~min(~select(vec2<u32>(27637u, 5622u), vec2<u32>(0u, 4294967295u), false), vec2<u32>(1u, 1u)), ~(~max(~vec2<u32>(1734u, 86540u), select(vec2<u32>(3672u, 34554u), vec2<u32>(41313u, 1u), false))), select(vec4<bool>(true, false, true, select(true, all(vec3<bool>(false, false, false)), true)), vec4<bool>(true, false, false, true), false));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = 1255f;
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -363f, -1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_1, -503f)))))));
    var_2 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(reverseBits(var_0) & _wgslsmith_div_i32(-1i, -2147483647i), ~_wgslsmith_div_i32(var_2.a.x, -35020i)), var_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, 57195i) >> (~vec2<u32>(var_2.c.x, 4294967295u) % vec2<u32>(32u)), var_2.a.yz)), var_2.b, abs(~select(firstTrailingBit(vec2<u32>(4294967295u, var_2.b.x)), vec2<u32>(var_2.c.x, 4294967295u), var_2.d.zz)), !vec4<bool>(any(var_2.d), var_2.d.x, var_2.d.x, !(u_input.a >= 0i)));
    var var_3 = var_2.c.x;
    var_2 = Struct_1(~(-var_2.a), abs(~var_2.c), var_2.c, !select(var_2.d, !vec4<bool>(true, false, var_2.d.x, false), select(vec4<bool>(true, true, var_2.d.x, var_2.d.x), select(vec4<bool>(var_2.d.x, var_2.d.x, true, var_2.d.x), var_2.d, var_2.d), !vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x))));
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1771f, -719f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, -1454f, 1879f) + vec3<f32>(var_1, var_1, -1073f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -727f), -1226f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), vec3<f32>(var_1, 1557f, var_1)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 471f, 167f))))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~(~6128u))), vec4<i32>((u_input.a << (var_2.b.x % 32u)) | (1i >> (~var_2.b.x % 32u)), ~var_0, _wgslsmith_div_i32(-35060i, _wgslsmith_add_i32(abs(30064i), 33020i)), -_wgslsmith_dot_vec2_i32(var_2.a.xy, var_2.a.yx)), abs(vec4<i32>(_wgslsmith_mult_i32(-var_2.a.x, _wgslsmith_sub_i32(var_2.a.x, 20020i)), abs(-2147483647i), var_0, func_1(vec3<f32>(-1000f, var_1, 1043f)).a.x ^ var_0)));
}

