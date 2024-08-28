struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = -arg_0.a;
    let var_1 = Struct_1(arg_0.b.a, arg_0.b.b);
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(615f)))))), _wgslsmith_f_op_f32(arg_0.b.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) - arg_0.b.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(854f, arg_0.b.a, arg_0.b.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.a, 841f, 1307f, -1150f)))), vec4<f32>(_wgslsmith_f_op_f32(103f - var_1.a), _wgslsmith_f_op_f32(arg_0.b.a + var_1.a), _wgslsmith_div_f32(var_1.a, arg_0.b.a), var_1.a)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(u_input.b.yy ^ u_input.b.zy, Struct_1(-944f, vec4<u32>(28324u, 37773u, 0u, u_input.a.x)))))));
    let var_2 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x ^ u_input.c, 1u, 4294967295u)), firstLeadingBit(~vec4<u32>(u_input.c, ~u_input.c, max(u_input.a.x, 0u), ~15804u)));
    return Struct_1(-1000f, reverseBits(var_2));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = true;
    let var_1 = arg_0;
    let var_2 = true;
    let var_3 = Struct_2(~_wgslsmith_sub_vec2_i32(u_input.b.yx, -min(vec2<i32>(u_input.b.x, -22720i), vec2<i32>(u_input.b.x, 50784i))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-703f, arg_0.a))))), vec4<u32>(~(~u_input.c), 4294967295u, reverseBits(88743u), arg_0.b.x)));
    var var_4 = var_3;
    return var_3;
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = ~9248u;
    var var_1 = Struct_2(u_input.b.zz, arg_0.b);
    var var_2 = countOneBits(firstLeadingBit(var_1.a));
    var var_3 = u_input.a.x;
    let var_4 = arg_0;
    return var_1.b.b.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, select(false, false, true), 4294967295u >= arg_0), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b.x != _wgslsmith_add_i32(-1i, 2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(false, false))), (4294967295u == arg_3.x) & true), all(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, all(vec3<bool>(true, false, false))))), !vec3<bool>(arg_1 > 51878i, false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false))));
    var var_1 = vec3<bool>(var_0.x & any(vec2<bool>(true, var_0.x || true)), var_0.x, all(select(vec3<bool>(var_0.x, false, arg_3.x <= arg_3.x), var_0, select(var_0, var_0, false))));
    var var_2 = select(func_4(Struct_1(-1020f, firstTrailingBit(arg_2)), any(!vec4<bool>(true, false, false, var_1.x))).b.b << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2, arg_2, arg_2), vec4<u32>(35145u, u_input.a.x, u_input.a.x, 74185u)), ~arg_2) % vec4<u32>(32u)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1324f, 599f)))) < -1525f);
    var var_3 = func_2();
    var var_4 = _wgslsmith_clamp_vec2_u32(~min(reverseBits(var_3.b.zw), vec2<u32>(1u, _wgslsmith_clamp_u32(33606u, 0u, 9621u))), ~vec2<u32>(func_2().b.x, arg_3.x), var_2.xy);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(u_input.b.x, arg_1), Struct_1(613f, arg_2)))).x * _wgslsmith_f_op_f32(trunc(var_3.a))) * _wgslsmith_f_op_f32(f32(-1f) * -741f))), var_3.b);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = 2147483647i;
    return func_6(_wgslsmith_mod_u32(func_5(func_4(func_2(), true)), func_5(func_4(Struct_1(996f, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 60215u)), true))), arg_0.x, vec4<u32>(u_input.a.x, u_input.a.x, min(~(~11764u), ~6757u), u_input.a.x), u_input.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, -2147483647i)), select(abs(abs(u_input.b.zx)), -(~u_input.b.zy), !all(vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1526f))), ~(~(~vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c)))));
    let var_1 = func_1(vec2<i32>(select(var_0.a.x, ~var_0.a.x, any(vec2<bool>(true, false))), -(2147483647i | u_input.b.x)) ^ u_input.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-66451i, -1i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.x, 13679i)), -(vec4<i32>(var_0.a.x, u_input.b.x, var_0.a.x, 1i) & vec4<i32>(-1i, u_input.b.x, u_input.b.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.a, var_0.b.a)))))));
}

