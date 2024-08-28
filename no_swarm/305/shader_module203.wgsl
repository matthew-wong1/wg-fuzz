struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = 1u;
    let var_1 = arg_2.a.x;
    let var_2 = arg_3.e;
    var_0 = countOneBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(24620u, 40127u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, var_2.a), vec2<u32>(4294967295u, 0u), arg_2.a) >> (~vec2<u32>(4294967295u, arg_0.a) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 4294967295u))));
    let var_3 = arg_3;
    return 9332u;
}

fn func_2() -> vec2<bool> {
    let var_0 = select(select(vec2<bool>(!all(vec2<bool>(true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, u_input.b > -1i), true), !vec2<bool>(all(vec3<bool>(false, true, false)), true), (-26734i << (_wgslsmith_mult_u32(1u, func_3(Struct_1(u_input.c), vec4<f32>(-629f, 367f, 742f, -748f), Struct_2(vec2<bool>(false, false), vec3<f32>(252f, -625f, 872f), 29021u, Struct_1(u_input.c), Struct_1(4294967295u)), Struct_2(vec2<bool>(true, false), vec3<f32>(457f, -1000f, -1775f), u_input.c, Struct_1(0u), Struct_1(57148u)))) % 32u)) > _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.e.x), u_input.e.x), ~u_input.a.x));
    var var_1 = Struct_1(4294967295u);
    var var_2 = Struct_1(_wgslsmith_mult_u32(u_input.c << (~4294967295u % 32u), u_input.c));
    var_1 = Struct_1(u_input.c);
    var_1 = Struct_1(~61206u);
    return var_0;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = !select(vec2<bool>(true, true), func_2(), select(vec2<bool>(false, u_input.b == 45643i), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_2().x | select(false, false, true)));
    let var_1 = vec2<bool>(!(func_2().x && !(false && var_0.x)), !var_0.x);
    let var_2 = !(!vec3<bool>(var_0.x, false, all(vec4<bool>(var_1.x, var_0.x, false, var_1.x))));
    var var_3 = Struct_2(select(vec2<bool>(arg_2 < arg_1, false), select(vec2<bool>(true, all(vec3<bool>(true, var_2.x, false))), var_2.zy, select(!var_2.zx, select(var_0, vec2<bool>(false, var_2.x), false), -2147483647i == u_input.d)), func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_2, 1286f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -524f, 621f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_2, 218f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(185f, -1011f, arg_1)))))), arg_3.a, arg_3, arg_3);
    var_3 = Struct_2(!vec2<bool>(true, select(all(vec3<bool>(true, var_0.x, var_3.a.x)), true, var_3.a.x)), _wgslsmith_f_op_vec3_f32(exp2(var_3.b)), 59398u, Struct_1(~_wgslsmith_mod_u32(33086u, var_3.d.a)), var_3.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(true, func_1(15068u, _wgslsmith_f_op_f32(f32(-1f) * -1424f), _wgslsmith_f_op_f32(f32(-1f) * -1502f), Struct_1(0u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1030f + -1000f), -2759f, -1189f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, 1520f, 1792f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 373f, -620f) - vec3<f32>(-1156f, -719f, -500f)))))), abs(1u), Struct_1(min(reverseBits(~u_input.c), _wgslsmith_mod_u32(u_input.c & 4309u, u_input.c << (71931u % 32u)))), Struct_1(firstTrailingBit(~1u) >> (reverseBits(u_input.c << (28192u % 32u)) % 32u)));
    let var_1 = Struct_1(~(~abs(firstLeadingBit(0u))));
    var_0 = Struct_2(vec2<bool>(func_1(34698u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) * _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1157f)))), Struct_1(~u_input.c)), !var_0.a.x | func_1(84491u, -469f, _wgslsmith_f_op_f32(floor(1035f)), var_1)), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.e.a, Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(50696u, var_0.e.a), 1u, ~_wgslsmith_clamp_u32(0u, 36624u, 32010u))), Struct_1(var_1.a));
    let var_2 = select(u_input.e, countOneBits(min(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -12689i, u_input.a.x), u_input.e), -u_input.a.wwz)), select(select(!(!vec3<bool>(true, var_0.a.x, var_0.a.x)), select(!vec3<bool>(var_0.a.x, true, var_0.a.x), select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(false, true, false), false), true), true), !(!select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a.x)), !select(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, var_0.a.x), true), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false))));
    let var_3 = -var_2.xx;
    let var_4 = Struct_1(~(~abs(var_0.d.a)));
    var var_5 = vec3<bool>(!var_0.a.x, var_0.a.x, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, var_3.x, abs(var_4.a));
}

