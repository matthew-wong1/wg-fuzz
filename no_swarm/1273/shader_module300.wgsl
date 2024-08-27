struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(vec3<bool>(any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), any(vec3<bool>(true, true, true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), any(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, 454f, 224f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, 1000f, -1000f))))));
    let var_1 = var_0.c;
    var_0 = Struct_2(vec3<bool>(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.b, var_0.b, true, var_0.b), false)), true, false), true, var_0.c);
    var var_2 = Struct_2(!(!var_0.a), any(vec4<bool>(all(vec3<bool>(true, var_0.a.x, var_0.b)), 4294967295u > u_input.b.x, !var_0.a.x, any(vec3<bool>(var_0.b, true, var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(exp2(var_1.a)))) * _wgslsmith_f_op_vec3_f32(-var_1.a))));
    var_2 = Struct_2(vec3<bool>(select(~0u >= u_input.d.x, !var_2.b, ~u_input.b.x >= ~48279u), var_0.b, true), true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.x + _wgslsmith_div_f32(var_2.c.a.x, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f * 805f)), var_0.c.a.x)));
    return _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(~u_input.d, u_input.b.ww)), vec2<u32>(u_input.b.x, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 17320u, u_input.d.x), u_input.b << (vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.b.x) % vec4<u32>(32u))))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~1u;
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(7265u, 4294967295u, 17838u, var_0), vec4<u32>(u_input.b.x, var_0, 55957u, 4294967295u)), 46025u), u_input.d.x) << (0u % 32u), var_0, countOneBits(u_input.d.x));
    var_1 = func_3();
    var var_2 = 323f;
    var var_3 = max(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(41064u, 3324u, 0u, u_input.b.x)), ~u_input.b), ~(var_0 ^ 22666u)) ^ ~1u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_1() -> Struct_2 {
    return Struct_2(vec3<bool>(true, true, true), true, func_2());
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = func_1();
    let var_1 = 0u;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(max(vec4<i32>(arg_1.x, u_input.c, 15172i, -3783i), vec4<i32>(2147483647i, -2147483647i, u_input.a, arg_1.x))) | vec4<i32>(0i, -1i, arg_1.x, 1i), vec4<i32>(u_input.c, arg_1.x, select(arg_1.x, -1i, false) ^ 0i, ~(i32(-1i) * -3687i))), arg_1.x | countOneBits(u_input.c), u_input.e, (i32(-1i) * -69642i) << (var_1 % 32u));
    var_0 = func_1();
    var_0 = Struct_2(vec3<bool>(true, any(func_1().a.xy), all(select(func_1().a, vec3<bool>(var_0.a.x, arg_0.a.a.x, arg_0.b.x), vec3<bool>(arg_2.x, true, false)))), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, u_input.c, 14342i), ~vec4<i32>(var_2.x, 14373i, arg_1.x, -1i))) == u_input.e, func_1().c);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_3(func_1(), vec2<bool>(true, false)), firstLeadingBit(-(~vec2<i32>(u_input.e, 0i))), select(vec3<bool>(true, all(vec2<bool>(false, true)), u_input.b.x < 0u), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), func_4(Struct_3(Struct_2(vec3<bool>(true, true, true), false, func_2()), !func_4(Struct_3(Struct_2(vec3<bool>(false, true, false), true, Struct_1(vec3<f32>(1293f, 152f, 859f))), vec2<bool>(true, true)), vec2<i32>(u_input.e, u_input.a), vec3<bool>(true, false, true)).a.yx), abs(~(vec2<i32>(u_input.c, u_input.a) ^ vec2<i32>(30418i, 0i))), vec3<bool>(true, true, true)).a.xy);
    var var_1 = var_0;
    var_1 = Struct_3(func_1(), vec2<bool>(true & (true || var_1.b.x), -(u_input.c ^ u_input.e) == -1i));
    let var_2 = Struct_3(Struct_2(vec3<bool>(all(vec4<bool>(false, false, true, var_0.b.x)) && all(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), any(!vec2<bool>(true, var_1.a.a.x)), !func_1().b), select(var_0.b.x, !var_0.b.x, _wgslsmith_f_op_f32(var_1.a.c.a.x + 1008f) > _wgslsmith_f_op_f32(-458f * -1819f)), var_1.a.c), func_1().a.yz);
    var var_3 = select(!(!select(vec4<bool>(var_2.b.x, var_2.a.b, true, true), !vec4<bool>(var_1.b.x, true, var_1.b.x, var_0.a.a.x), true)), select(!(!select(vec4<bool>(var_1.b.x, true, false, true), vec4<bool>(false, var_0.b.x, var_1.a.a.x, var_1.a.a.x), var_2.b.x)), select(vec4<bool>(var_1.b.x, true, var_2.b.x, true), !select(vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(false, var_0.a.b, var_2.b.x, var_1.b.x), true), select(vec4<bool>(true, var_2.b.x, var_2.a.a.x, var_2.b.x), !vec4<bool>(false, var_0.a.b, var_1.b.x, var_0.b.x), select(vec4<bool>(var_1.b.x, false, var_1.a.b, true), vec4<bool>(var_2.a.b, true, true, false), true))), false), !vec4<bool>((var_0.b.x || var_0.b.x) && var_2.a.b, !(!var_0.a.a.x), !var_0.b.x, var_2.b.x));
    var_1 = var_2;
    var_1 = Struct_3(var_2.a, !(!func_1().a.xx));
    var_1 = var_0;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, 1u), reverseBits(0u)), vec2<u32>(u_input.b.x, 43249u), countOneBits(vec2<u32>(u_input.b.x, 4294967295u))) >> (vec2<u32>(u_input.b.x, max(u_input.d.x, u_input.d.x)) % vec2<u32>(32u)), vec3<i32>(2147483647i, abs(-45583i >> (u_input.d.x % 32u)) | (0i >> (u_input.d.x % 32u)), -38751i), ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, u_input.d.x), vec2<u32>(1u, 0u), vec2<u32>(1847u, 4294967295u))), vec3<u32>(reverseBits(18802u & _wgslsmith_sub_u32(1u, u_input.d.x)), ~_wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 14076u)), select(_wgslsmith_dot_vec3_u32(u_input.b.zzw, _wgslsmith_add_vec3_u32(u_input.b.zzw, vec3<u32>(u_input.b.x, 1u, 1u))), u_input.d.x, var_2.a.c.a.x >= _wgslsmith_f_op_f32(-var_0.a.c.a.x))));
}

