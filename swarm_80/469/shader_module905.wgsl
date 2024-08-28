struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~(~(((arg_0.a.x ^ 6134u) >> (min(u_input.a, 1u) % 32u)) << (u_input.a % 32u)));
    var var_2 = arg_0;
    let var_3 = Struct_1(var_0.a);
    var_1 = var_3.a.x;
    return var_3;
}

fn func_3() -> i32 {
    let var_0 = false;
    var var_1 = func_2(Struct_1(vec4<u32>(u_input.a, 1u, ~(~0u), _wgslsmith_add_u32(firstTrailingBit(u_input.a), ~u_input.a))));
    var var_2 = var_1.a;
    let var_3 = 0i;
    var var_4 = vec4<bool>(var_0, var_0, var_0, var_0 || var_0);
    return var_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec3_i32(~(~vec3<i32>(max(arg_1, arg_1), arg_1, 24760i)), vec3<i32>(21717i, ~(~(-1i)), -1i));
    var var_1 = firstLeadingBit(max(arg_2.wxy, arg_2.wyy ^ (~vec3<u32>(arg_2.x, 49863u, 1u) & vec3<u32>(arg_2.x, arg_2.x, arg_2.x))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f - _wgslsmith_f_op_f32(-300f * -415f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-359f, -981f) * _wgslsmith_div_f32(1426f, 152f)) + -802f)));
    var_1 = vec3<u32>(arg_0.x, arg_0.x, var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(var_2, var_2)), 605f, var_2)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))));
    return _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2, arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, arg_2.x, u_input.a), arg_2)) << (_wgslsmith_sub_vec4_u32(arg_2, ~(~arg_2)) % vec4<u32>(32u)), min(arg_2, arg_2), ~_wgslsmith_mod_vec4_u32(arg_2, abs(~vec4<u32>(53314u, 63992u, u_input.a, 1943u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    let var_1 = func_2(arg_0);
    var var_2 = vec2<bool>(var_0, select(!arg_1, false, false));
    var var_3 = func_4(vec2<u32>(_wgslsmith_sub_u32(var_1.a.x, firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a))), ~_wgslsmith_mod_u32(48188u, var_1.a.x)), func_3(), _wgslsmith_mod_vec4_u32(func_2(func_2(arg_0)).a, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, 42138u, u_input.a, var_1.a.x) | arg_0.a, var_1.a ^ arg_0.a), countOneBits(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, 4294967295u)) ^ vec4<u32>(var_1.a.x, var_1.a.x, 21435u, 4294967295u))));
    var_3 = ~arg_0.a;
    return var_1;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(~arg_1.a.x, arg_1.a.x ^ 1u, select(4294967295u, arg_1.a.x, false), ~u_input.a)), select(arg_1.a, arg_1.a, vec4<bool>(false, true, true, !(arg_0.x != 2147483647i))));
    var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32((arg_1.a & vec4<u32>(u_input.a, 4294967295u, arg_1.a.x, var_0.x)) >> (_wgslsmith_sub_vec4_u32(arg_1.a, vec4<u32>(u_input.a, var_0.x, var_0.x, 59614u)) % vec4<u32>(32u)), arg_1.a), arg_1.a);
    let var_1 = Struct_1(arg_1.a);
    var var_2 = true & !(!any(vec4<bool>(false, true, true, true)));
    var var_3 = vec3<bool>(true, all(vec3<bool>(1u != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_1.a.wx), !select(false, true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))))), false);
    return func_2(func_1(func_1(func_2(arg_1), !var_3.x), var_3.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return -2147483647i;
}

fn func_7(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(1u, ~arg_1), arg_1, func_5(vec2<i32>(min(arg_0, arg_0), select(1i, arg_0, false)), Struct_1(vec4<u32>(arg_1, u_input.a, arg_1, 1u) >> (vec4<u32>(16363u, u_input.a, arg_1, u_input.a) % vec4<u32>(32u)))).a.x, u_input.a));
    let var_1 = ~arg_1;
    var var_2 = vec4<bool>(true, false, !(select(any(vec4<bool>(false, true, true, false)), true, true) & true), false);
    var_2 = select(vec4<bool>(!(!(!var_2.x)), true, any(var_2.xyy), var_2.x), !vec4<bool>(select(any(var_2.wz), var_2.x, var_2.x), !any(vec3<bool>(true, var_2.x, true)), !var_2.x, false), vec4<bool>(~arg_0 > _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 1i), -vec2<i32>(1i, arg_0)), true | any(!var_2.zz), all(var_2.xz), false));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-602f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(490f, 431f) - _wgslsmith_f_op_f32(round(1382f)))) * _wgslsmith_f_op_f32(floor(-183f)))));
    return Struct_1(~(~(~_wgslsmith_mod_vec4_u32(var_0.a, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_1(vec4<u32>(~13990u, u_input.a, 1u, u_input.a)), Struct_1(max(~vec4<u32>(u_input.a, 0u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), func_5(vec2<i32>(-1i) * -vec2<i32>(-44031i, 2147483647i), func_1(Struct_1(vec4<u32>(17883u, u_input.a, 1u, 76164u)), all(vec3<bool>(true, false, false))))), u_input.a);
    var var_1 = func_2(Struct_1(abs(func_1(func_7(1i, 46722u), true).a)));
    var var_2 = func_7(max(-2147483647i, 1i), 38812u | var_1.a.x);
    var var_3 = func_5(reverseBits(abs(vec2<i32>(1i, 1i))), Struct_1(vec4<u32>(~max(12355u, var_0.a.x), 4294967295u, _wgslsmith_div_u32(func_7(-14375i, var_2.a.x).a.x, abs(var_2.a.x)), u_input.a)));
    var_2 = Struct_1(var_0.a);
    let var_4 = ~vec2<i32>(-_wgslsmith_mod_i32(0i, 1i), -35940i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~((u_input.a >> (0u % 32u)) & reverseBits(var_2.a.x))));
}

