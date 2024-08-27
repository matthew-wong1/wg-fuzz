struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1((~(~vec3<u32>(28191u, u_input.a, u_input.a)) | max(~vec3<u32>(u_input.a, 15876u, u_input.a), vec3<u32>(u_input.a, 19804u, u_input.a))) << ((vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), firstLeadingBit(u_input.a)) | abs(~vec3<u32>(0u, 91234u, u_input.a))) % vec3<u32>(32u)), countOneBits(u_input.a));
    var var_1 = var_0.a;
    var_0 = Struct_1(_wgslsmith_add_vec3_u32(var_0.a, _wgslsmith_div_vec3_u32(select(reverseBits(vec3<u32>(69411u, u_input.a, var_1.x)), _wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(u_input.a, 0u, var_1.x)), true), select(abs(var_0.a), var_0.a, vec3<bool>(true, true, true)))), abs(89927u));
    let var_2 = Struct_1(var_0.a, ~4294967295u);
    let var_3 = firstTrailingBit(2147483647i);
    return ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_1.x, u_input.a, 38902u), vec4<u32>(43102u, 1u, var_2.b, 4294967295u))), 50711u, var_0.a.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(func_3(), 1u);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-257f))))))));
    var var_2 = _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -1i, -39709i), -1i)) << (u_input.a % 32u);
    var_1 = 166f;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(vec2<bool>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, select(21104i, 1i, true)) > 48105i, true));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 63440u), func_3().yz), ~u_input.a | _wgslsmith_sub_u32(arg_2.b, arg_0.a.x)), vec2<u32>(13395u & _wgslsmith_mod_u32(var_0.a.x, var_0.b), ~_wgslsmith_div_u32(var_0.a.x, arg_1)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, arg_1), ~u_input.a), 43196u));
    let var_2 = arg_0.b;
    var var_3 = reverseBits(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(24560i, -2147483647i, 1i)), select(-vec3<i32>(1i, 1i, 3923i), reverseBits(vec3<i32>(-21362i, -2147483647i, 0i)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))) ^ -26200i);
    var_0 = arg_0;
    return func_2(!(!vec2<bool>(all(vec4<bool>(false, true, true, true)), true)));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    var var_1 = Struct_1(vec3<u32>(~_wgslsmith_mod_u32(max(0u, arg_0.b), arg_0.a.x ^ 0u), 26155u, u_input.a), firstLeadingBit(arg_0.a.x) >> (arg_0.a.x % 32u));
    var_0 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-1f));
    let var_2 = true;
    var_0 = _wgslsmith_f_op_f32(arg_1 + 1385f);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(arg_1))))), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1645f, 1154f, 564f, -1630f) - vec4<f32>(-1000f, -464f, 335f, 261f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, -410f, -1365f, -2515f))))));
    let var_1 = var_0.x;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_1))) * var_0.x), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_0.x)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f * -750f) + var_0.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(select(-1158f, 1000f, arg_0.x)), _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.wzw), var_0.xzy))))) - _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_1(vec3<u32>(1u, u_input.a, 132189u), ~u_input.a), (u_input.a ^ 1u) >> (29361u % 32u), func_2(arg_0)), -1870f)));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(850f)) - _wgslsmith_f_op_f32(sign(var_2.x)))), var_0.x, 1570f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, 233f, -1630f)), _wgslsmith_f_op_vec3_f32(floor(var_0.ywy)), all(vec4<bool>(false, arg_0.x, false, arg_0.x))))));
    return countOneBits(arg_1.x) | -43265i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((_wgslsmith_add_i32(-1i >> (u_input.a % 32u), ~518i) != ~_wgslsmith_add_i32(41574i, -2147483647i)) || (0i >= func_1(vec2<bool>(true, true), ~vec2<i32>(-1i, -2147483647i)))) | ((abs(~u_input.a) ^ abs(abs(u_input.a))) < u_input.a);
    let var_1 = ~abs(_wgslsmith_div_i32(0i, ~0i));
    var_0 = true;
    let var_2 = 469f;
    let var_3 = select(vec4<i32>(-2147483647i, -var_1, var_1, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, 19112i), 62372i)), ~abs(vec4<i32>(-var_1, -var_1, -23977i, var_1)), any(vec2<bool>(true, true)) != !all(vec3<bool>(true, true, true)));
    var_0 = !(u_input.a < u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1648f)), ~select(vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, u_input.a, u_input.a), ~select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, 62838u), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, var_2 < var_2, true)));
}

