struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(!(!vec4<bool>(!arg_0.x, !arg_0.x, true, select(arg_0.x, arg_0.x, false))));
    let var_1 = u_input.d.x;
    let var_2 = var_0.a.zyz;
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(select(select(select(select(var_0.a, var_0.a, var_0.a.x), select(var_0.a, var_0.a, var_0.a), false), vec4<bool>(arg_0.x, arg_0.x, !var_0.a.x, arg_0.x != var_2.x), false), select(!var_0.a, !var_0.a, vec4<bool>(true, var_0.a.x || var_2.x, arg_0.x, true)), vec4<bool>(!(false & var_2.x), !(!var_2.x), arg_0.x, _wgslsmith_f_op_f32(round(950f)) != _wgslsmith_f_op_f32(1051f + -1216f))));
    return vec2<bool>(true, true);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = u_input.a;
    let var_1 = -673f;
    var var_2 = arg_1.d.a.xzy;
    var_2 = vec3<bool>(arg_1.d.a.x, true, !(!(!arg_1.d.a.x)));
    var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(round(-625f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-655f * arg_1.e.x), arg_1.e.x)), true, var_2.x);
    return !arg_1.d.a;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f))));
    var var_1 = Struct_2(0u, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, firstLeadingBit(u_input.d.x)), u_input.d.wx, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(1400i, -7717i))) << (firstLeadingBit(u_input.c.xx) % vec2<u32>(32u)), func_2(!vec2<bool>(414f >= var_0, arg_0)), Struct_1(select(select(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), arg_0), vec4<bool>(arg_0, true, true, true), func_3(-1856i, Struct_2(4294967295u, u_input.b.xx, vec2<bool>(true, arg_0), Struct_1(vec4<bool>(true, false, arg_0, true)), vec3<f32>(-1522f, var_0, -314f)))), func_3(firstTrailingBit(-49021i), Struct_2(24358u, vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, true, arg_0)), vec3<f32>(-1000f, -251f, var_0))), func_3(-u_input.d.x, Struct_2(u_input.c.x, vec2<i32>(u_input.d.x, u_input.d.x), vec2<bool>(arg_0, arg_0), Struct_1(vec4<bool>(false, arg_0, true, true)), vec3<f32>(-1185f, var_0, 642f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1064f) - _wgslsmith_f_op_f32(round(var_0))))), var_0));
    let var_2 = countOneBits(~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a, 5026u), u_input.c.xx) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a, 52480u), vec2<u32>(_wgslsmith_mod_u32(var_1.a, var_1.a), 15793u & var_1.a)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(-1271f)), var_1.e.x, 112f), vec4<f32>(_wgslsmith_f_op_f32(-var_0), -292f, var_0, _wgslsmith_f_op_f32(exp2(var_0)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.e.x, var_0, -872f, _wgslsmith_f_op_f32(floor(226f))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0, -1155f)), _wgslsmith_f_op_f32(min(945f, var_1.e.x)), _wgslsmith_f_op_f32(max(1621f, var_1.e.x)), var_1.e.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_0, var_1.e.x, 1160f) * vec4<f32>(var_0, var_0, 1000f, var_1.e.x))))))));
    var_1 = Struct_2(min(u_input.a, 1u) << (1u % 32u), ~_wgslsmith_mult_vec2_i32(reverseBits(min(var_1.b, vec2<i32>(var_1.b.x, u_input.b.x))), vec2<i32>(u_input.b.x, 1i)), !select(func_3(21224i, Struct_2(4294967295u, u_input.b.zw, vec2<bool>(true, false), var_1.d, vec3<f32>(-434f, -127f, -216f))).ww, select(!var_1.c, vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, var_1.c.x), vec2<bool>(true, var_1.c.x), vec2<bool>(false, false))), vec2<bool>(true | arg_0, false)), var_1.d, vec3<f32>(var_0, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1080f)) * _wgslsmith_f_op_f32(ceil(-413f)))));
    return Struct_2(1u, select((vec2<i32>(932i, -4118i) ^ u_input.d.xz) >> (~var_2 % vec2<u32>(32u)), var_1.b, !select(vec2<bool>(arg_0, arg_0), !vec2<bool>(false, var_1.c.x), !var_1.d.a.x)), !var_1.c, var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_3.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, 283f, -1042f) * vec3<f32>(-1095f, -148f, -245f)))) - vec3<f32>(1505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2065f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    var var_1 = func_1(var_0.c.x).d;
    var var_2 = var_0;
    let var_3 = !any(select(var_2.d.a.zx, func_2(vec2<bool>(var_2.d.a.x, false)), !(!vec2<bool>(var_1.a.x, true))));
    var var_4 = Struct_3(select(var_0.b.x, 17781i, var_0.c.x) ^ -1i);
    var_1 = var_2.d;
    let var_5 = var_2.e.zy;
    var var_6 = abs(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_4.a, -2147483647i, var_0.b.x, -2147483647i)), ~(~u_input.d), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.b.x, -5530i, var_0.b.x, u_input.d.x), u_input.d, u_input.d << (vec4<u32>(54690u, 1u, 20248u, 4294967295u) % vec4<u32>(32u)))), firstLeadingBit(countOneBits(u_input.d)) >> (firstLeadingBit(~vec4<u32>(var_0.a, 4294967295u, var_0.a, var_0.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(select(var_2.e.x, -932f, false))), var_2.e.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1125f, -1601f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5.x, var_2.e.x))), _wgslsmith_f_op_f32(var_5.x * 1000f))));
}

