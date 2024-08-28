struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-337f))), _wgslsmith_f_op_f32(-1101f + _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = Struct_1(all(vec4<bool>(!arg_1.a, !arg_1.a, any(select(vec2<bool>(arg_1.a, false), vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.a))), !(arg_0 <= var_0.x))), ~arg_1.b, arg_1.c | (arg_1.b.xz | _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 53370u), arg_1.b.yx | vec2<u32>(arg_1.b.x, u_input.a))));
    var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = Struct_1(!arg_1.a, ~vec3<u32>(abs(var_1.b.x), _wgslsmith_dot_vec2_u32(arg_1.c, arg_1.b.zz << (var_1.b.xx % vec2<u32>(32u))), arg_1.c.x), ~min(~(~vec2<u32>(arg_1.b.x, arg_1.c.x)), vec2<u32>(arg_1.b.x, 1u)));
    return min(abs(~_wgslsmith_div_u32(27319u, 1u) >> (0u % 32u)), arg_1.b.x);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1((_wgslsmith_f_op_f32(round(1f)) < _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, -1000f))) && true, countOneBits(~(~min(vec3<u32>(u_input.a, u_input.a, 29334u), vec3<u32>(0u, u_input.a, u_input.b)))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))));
    let var_1 = Struct_1(arg_1.x, ~var_0.b, var_0.c);
    let var_2 = var_0;
    let var_3 = Struct_1(select(all(arg_1.zy), any(!vec4<bool>(var_0.a, arg_1.x, arg_2.x, arg_1.x)) != true, arg_1.x), ~select(firstLeadingBit(vec3<u32>(4294967295u, 1u, var_2.c.x)), var_1.b, arg_1.wzz), ~reverseBits(~var_0.c));
    let var_4 = Struct_1(all(!vec2<bool>(false, var_2.a)) || false, var_1.b, (var_2.c & vec2<u32>(~var_0.b.x, var_0.b.x & 52584u)) | vec2<u32>(func_3(1000f, var_2) ^ 0u, _wgslsmith_add_u32(~56232u, 33661u)));
    return _wgslsmith_mult_u32(var_3.c.x, countOneBits(var_2.c.x) >> (var_2.b.x % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(select(vec2<bool>(false, 435f <= _wgslsmith_f_op_f32(-arg_1.x)), select(!vec2<bool>(arg_2.a, false), vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(arg_2.a, false)), vec2<bool>(any(vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), arg_2.a)), select(!select(select(vec2<bool>(arg_2.a, true), vec2<bool>(true, false), vec2<bool>(arg_2.a, false)), vec2<bool>(true, true), all(vec2<bool>(false, arg_2.a))), vec2<bool>(!arg_2.a, _wgslsmith_f_op_f32(sign(arg_1.x)) > arg_1.x), !select(vec2<bool>(arg_2.a, true), vec2<bool>(true, true), select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, false), false))), !(!select(!vec2<bool>(arg_2.a, true), vec2<bool>(true, true), !vec2<bool>(arg_2.a, arg_2.a))));
    let var_1 = arg_2;
    var_0 = vec2<bool>(true, true);
    var_0 = !select(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, true), !vec2<bool>(false, var_0.x)), !vec2<bool>(all(vec4<bool>(true, var_0.x, true, var_0.x)), any(vec2<bool>(arg_2.a, var_0.x))), any(select(vec2<bool>(true, true), !vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_0.x))));
    let var_2 = arg_1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x)));
    return Struct_1(var_1.a, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~9889u, 1u, 7275u), vec3<u32>(reverseBits(u_input.b), 0u, 39269u), var_1.b)), _wgslsmith_mult_vec2_u32(arg_2.b.zx, arg_2.c));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = func_4(-countOneBits(reverseBits(abs(vec2<i32>(-46273i, -22203i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1901f, 846f) * vec2<f32>(-1416f, 521f)), vec2<f32>(-393f, 903f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1147f, -1171f)))))), Struct_1(true | arg_1.x, _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(38927u), func_2(-2749f, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1), 33771u), vec3<u32>(~5453u, arg_0, arg_0)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, u_input.a)), min(vec2<u32>(8271u, 4294967295u), vec2<u32>(18112u, 91169u)))));
    var var_1 = vec4<bool>(true, false, any(select(select(!vec4<bool>(var_0.a, true, var_0.a, false), select(vec4<bool>(var_0.a, true, arg_1.x, false), vec4<bool>(true, false, var_0.a, var_0.a), true), any(vec4<bool>(arg_1.x, true, true, arg_1.x))), !vec4<bool>(var_0.a, var_0.a, var_0.a, true), all(select(vec4<bool>(var_0.a, false, arg_1.x, false), vec4<bool>(arg_1.x, true, true, arg_1.x), arg_1.x)))), var_0.a);
    var_1 = !(!vec4<bool>(true, false, any(select(vec4<bool>(var_1.x, false, var_0.a, arg_1.x), vec4<bool>(false, false, var_1.x, var_0.a), true)), var_0.a));
    var_1 = select(vec4<bool>(true, (1i ^ select(-62850i, 0i, arg_1.x)) > 2147483647i, true || !(!arg_1.x), any(!vec2<bool>(false, var_1.x))), !vec4<bool>(var_0.a, !select(var_0.a, var_0.a, arg_1.x), _wgslsmith_div_f32(1883f, 112f) >= _wgslsmith_f_op_f32(step(-624f, -507f)), false), any(!select(select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(false, true, false, var_1.x), arg_1.x), select(vec4<bool>(var_0.a, var_0.a, var_1.x, false), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, var_0.a, var_1.x, true)), select(false, true, false))));
    var_1 = !select(vec4<bool>(_wgslsmith_sub_u32(var_0.c.x, u_input.a) >= _wgslsmith_mod_u32(arg_0, 1u), true, all(var_1.yww), any(select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(true, var_0.a, true, arg_1.x), var_1.x))), select(vec4<bool>(var_1.x, true, true, true), !(!vec4<bool>(var_0.a, var_1.x, arg_1.x, var_1.x)), true), false);
    return select(false, !all(!var_1.zw), ((true & arg_1.x) | (_wgslsmith_f_op_f32(step(-457f, 469f)) == 466f)) || func_4(-vec2<i32>(1i, 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-598f + -2261f), _wgslsmith_f_op_f32(364f - 1280f)), func_4(vec2<i32>(7132i, -4213i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-980f, -1117f) - vec2<f32>(753f, 161f)), var_0)).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(func_1(64713u, vec2<bool>(true, true)), true, true), vec3<u32>(u_input.a, _wgslsmith_div_u32(abs(max(u_input.a, u_input.a)), u_input.a), ~u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(124403u, _wgslsmith_mult_u32(~0u, 0u ^ u_input.b)), vec2<u32>(0u, u_input.b), min(vec2<u32>(u_input.a, u_input.b >> (u_input.a % 32u)), vec2<u32>(~u_input.a, _wgslsmith_div_u32(1u, u_input.a)))));
    let var_1 = true;
    let var_2 = firstTrailingBit(_wgslsmith_div_u32(u_input.a, u_input.a));
    var var_3 = Struct_1(var_0.a, ~((max(var_0.b, var_0.b) & var_0.b) & abs(~var_0.b)), vec2<u32>(18745u, ~firstLeadingBit(u_input.b)));
    var_0 = Struct_1(true, firstTrailingBit(var_3.b), var_3.b.xx);
    var var_4 = !(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, false, true), var_1), !vec3<bool>(false, false, var_0.a), all(vec3<bool>(var_3.a, var_0.a, var_3.a))), !(!vec3<bool>(var_1, var_1, false)), !select(vec3<bool>(false, false, var_1), vec3<bool>(var_3.a, var_1, false), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_i32(-62915i, i32(-1i) * -1i) & (6196i << (_wgslsmith_add_u32(var_2, var_0.c.x) % 32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, _wgslsmith_mod_u32(39580u, var_3.b.x)), ~(~vec2<u32>(u_input.a, 4294967295u))) & reverseBits(vec2<u32>(func_4(vec2<i32>(-2147483647i, 17367i), vec2<f32>(-1192f, -219f), Struct_1(var_3.a, vec3<u32>(var_0.b.x, var_2, 64296u), var_3.b.zx)).b.x, 1u)), select(vec4<u32>(~4294967295u, func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(-138i, 47098i), vec2<i32>(-42266i, 1i), vec2<i32>(-8731i, -1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1182f)), func_4(vec2<i32>(-7862i, -1i), vec2<f32>(-2500f, 1129f), Struct_1(false, vec3<u32>(var_3.b.x, 106728u, 0u), vec2<u32>(51255u, 50064u)))).c.x, ~(~0u), var_0.c.x), vec4<u32>(u_input.b, 1u, countOneBits(1u), ~16578u) << (~vec4<u32>(var_2, var_3.c.x, u_input.a, 0u) % vec4<u32>(32u)), select(!(!vec4<bool>(var_4.x, true, var_3.a, false)), vec4<bool>(var_3.a, !var_1, false | var_4.x, all(var_4.yz)), true)));
}

