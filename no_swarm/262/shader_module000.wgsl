struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = arg_3.wx;
    return vec3<bool>(arg_3.x, any(!select(arg_3, !vec4<bool>(true, true, var_0.x, false), arg_2)), arg_2);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = select(select(!select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), !arg_0), select(vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, false)), all(vec4<bool>(true, arg_0, arg_0, true)), false), select(vec3<bool>(true, false, false), func_3(439f, 304f, arg_0, vec4<bool>(arg_0, arg_0, true, arg_0)), func_3(-300f, -661f, true, vec4<bool>(true, true, true, false))), any(vec2<bool>(true, true))), !(!select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, true, false)))), select(select(vec3<bool>(true, true, true), func_3(-499f, 755f, false, vec4<bool>(false, arg_0, arg_0, arg_0)), true), !vec3<bool>(false, func_3(-635f, -808f, true, vec4<bool>(arg_0, true, false, arg_0)).x, arg_0), select(vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), any(vec4<bool>(true, true, true, arg_0)), !arg_0), vec3<bool>(true, true, true), true)), !all(!vec4<bool>(arg_0, arg_0, true, arg_0)));
    var var_1 = Struct_4(vec3<f32>(1213f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1254f - -256f))))), 2258f));
    var var_2 = Struct_1(min(_wgslsmith_mod_i32(i32(-1i) * -1i, select(-1i, 1i, arg_0)), 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, -(-2147483647i << (u_input.a.x % 32u)), firstTrailingBit(-80089i) ^ -1i)), true, var_1.a.zz);
    var_1 = Struct_4(var_1.a);
    var_2 = Struct_1(var_2.b, 22912i, arg_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -518f)))))))));
    return Struct_2(~(-abs(vec2<i32>(var_2.a, var_2.b))), ~(-7247i));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = all(vec4<bool>(all(vec4<bool>(true, false, false, true)) && any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), false, !any(vec2<bool>(true, true)), false & all(func_3(2227f, -1548f, false, vec4<bool>(true, false, true, true)).xz)));
    var var_1 = _wgslsmith_sub_vec3_u32(~select(~(vec3<u32>(u_input.b, u_input.b, 1u) >> (u_input.a % vec3<u32>(32u))), u_input.a, select(func_3(-802f, 121f, var_0, vec4<bool>(true, false, var_0, true)), !vec3<bool>(false, false, var_0), any(vec4<bool>(false, true, var_0, var_0)))), u_input.a);
    var_1 = reverseBits(~firstTrailingBit(vec3<u32>(var_1.x, var_1.x, 0u) << (vec3<u32>(u_input.b, u_input.b, 3380u) % vec3<u32>(32u))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - -1468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1134f, -381f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1122f))), -602f);
    let var_3 = var_0 | any(vec2<bool>(true, var_0));
    return !(!select(!select(vec4<bool>(var_0, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(!vec4<bool>(true, false, false, var_0), vec4<bool>(false, var_0, var_0, var_3), select(vec4<bool>(var_0, var_3, true, true), vec4<bool>(false, false, var_3, var_0), vec4<bool>(true, true, var_3, true))), !select(vec4<bool>(false, var_0, var_3, true), vec4<bool>(false, var_0, var_0, var_3), false)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(func_4(func_2(select(!arg_1.c, true, true))));
    let var_1 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    let var_2 = abs(_wgslsmith_add_i32(1i, -2147483647i));
    return !(!(!select(vec2<bool>(false, false), !vec2<bool>(false, var_1.a.x), select(vec2<bool>(var_1.a.x, var_0.a.x), vec2<bool>(arg_1.c, true), var_1.a.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(vec2<bool>(true, true), func_1(Struct_3(vec4<bool>(true, false, true, false)), Struct_1(0i, 2147483647i, false, vec2<f32>(908f, -754f))), u_input.a.x <= 0u), vec2<bool>(true, true), true), vec2<bool>(all(func_1(Struct_3(vec4<bool>(false, false, true, true)), Struct_1(41640i, 2147483647i, true, vec2<f32>(786f, 1747f)))), all(vec4<bool>(true, true, false, true))), true), vec2<bool>(all(vec2<bool>(true, true)), true | select(true, false, true)), true && func_4(Struct_2(-vec2<i32>(17416i, -2147483647i), 1i)).x);
    let var_1 = Struct_3(vec4<bool>(any(select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), var_0.x), var_0.x)), !(!var_0.x != true), all(vec2<bool>(!var_0.x, all(vec4<bool>(true, false, true, var_0.x)))), all(!vec4<bool>(true, var_0.x, true, var_0.x)) != false));
    var_0 = vec2<bool>(false, var_0.x);
    var_0 = !func_4(Struct_2(vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i), ~3514i), -2147483647i)).xz;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1810f, -828f, 739f) + vec3<f32>(788f, 612f, 835f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - 836f), _wgslsmith_f_op_f32(f32(-1f) * -1832f), -935f))));
    var var_3 = Struct_1(~_wgslsmith_add_i32(1i, 0i), firstLeadingBit(_wgslsmith_clamp_i32(min(17664i, -6466i), 1i, 1i)) & 0i, func_4(Struct_2(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 20870i)), countOneBits(-1i))).x, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(694f)))), var_2.a.x));
    var_0 = var_1.a.yw;
    var_3 = Struct_1(var_3.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i >> (1u % 32u), ~var_3.a), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_3.a, 2742i), 1i), -(~15717i))), !var_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a.xy, vec2<f32>(var_2.a.x, 775f)), vec2<f32>(585f, var_3.d.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(197f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.d.x)))))));
    var var_4 = vec3<i32>(var_3.a, var_3.a, abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.d.x)) * _wgslsmith_div_f32(var_3.d.x, 791f)))), u_input.a.x, min(u_input.a.xz, _wgslsmith_sub_vec2_u32(min(u_input.a.yy, u_input.a.yz), ~vec2<u32>(u_input.b, 0u))), ~(-_wgslsmith_sub_vec2_i32(var_4.yz, ~vec2<i32>(20520i, var_4.x))), var_3.b);
}

