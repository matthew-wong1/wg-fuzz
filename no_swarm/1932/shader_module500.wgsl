struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_3(countOneBits(118056u), -1069f);
    var_0 = arg_0.b;
    var_0 = Struct_3(~1u >> (~firstTrailingBit(arg_0.b.a) % 32u), arg_0.b.b);
    let var_1 = countOneBits(abs(~u_input.a));
    var var_2 = select(select(vec3<bool>(arg_0.e.a.b, true, all(select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, false), arg_0.e.c))), vec3<bool>(!arg_0.e.c.x, all(select(vec3<bool>(arg_0.c, arg_0.e.c.x, false), vec3<bool>(true, true, arg_0.e.c.x), false)), any(vec4<bool>(true, true, true, false))), arg_0.e.a.b), !select(!select(vec3<bool>(true, arg_0.e.c.x, arg_0.c), vec3<bool>(false, true, arg_0.c), true), vec3<bool>(any(vec2<bool>(false, arg_0.e.c.x)), u_input.d.x != u_input.d.x, true), vec3<bool>(true, arg_0.c, arg_0.c & false)), (-u_input.d.x != ((2147483647i & arg_0.a.x) ^ (arg_0.a.x | arg_0.a.x))) || false);
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(-26862i, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<i32>(u_input.d.x, -1i, arg_0.x, u_input.d.x), Struct_3(4294967295u, arg_1.b.x), true, arg_1.b, arg_1))), true), arg_1.b, !arg_1.c);
    var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_1.b.x - arg_1.a.a)), -393f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(471f, arg_1.a.a), _wgslsmith_f_op_f32(-344f * -1645f), true))))), vec2<bool>(true, true));
    let var_1 = -countOneBits(arg_0.x);
    var_0 = arg_1;
    var_0 = arg_1;
    return _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, arg_0.x), vec4<i32>(-53661i, 0i, u_input.d.x, 0i)), -41023i >> (u_input.b.x % 32u), arg_0.x)) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-15397i, 38373i, var_1), vec3<i32>(u_input.d.x, var_1, var_1)) << (_wgslsmith_mod_u32(u_input.e.x, 6102u) % 32u), min(_wgslsmith_mult_i32(var_1, 17129i), firstTrailingBit(arg_0.x)), ~(-2786i)), u_input.d, u_input.d | u_input.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec3<u32> {
    let var_0 = -arg_1.x;
    var var_1 = vec3<i32>(44499i, -1i, var_0) ^ vec3<i32>(arg_1.x, select(_wgslsmith_mod_i32(-6317i >> (0u % 32u), -31482i), 1i, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))), -1i & u_input.d.x);
    var var_2 = Struct_2(Struct_1(arg_2, true), arg_0.yzw, select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), false));
    var var_3 = 15867u;
    var_1 = vec3<i32>(-2147483647i, ~_wgslsmith_mult_i32(53117i, _wgslsmith_mod_i32(func_2(vec2<i32>(4027i, arg_1.x), Struct_2(Struct_1(1059f, var_2.c.x), vec3<f32>(arg_0.x, arg_2, var_2.a.a), var_2.c)).x, -u_input.d.x)), 0i);
    return ~u_input.a.wyx;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1301f - -929f);
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.a.xzx, (~u_input.a.wwx & vec3<u32>(~u_input.a.x, min(u_input.c, u_input.a.x), 4294967295u)) & func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -168f, 902f, var_0)))), func_2(vec2<i32>(u_input.d.x, u_input.d.x) | vec2<i32>(u_input.d.x, -18453i), Struct_2(Struct_1(var_0, false), vec3<f32>(var_0, var_0, var_0), vec2<bool>(true, false))), var_0));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1833f + var_0), all(vec4<bool>(true, true, true, true)));
    var var_4 = firstTrailingBit(u_input.e.x);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0, var_3.a), _wgslsmith_f_op_f32(func_3(Struct_4(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i), Struct_3(4294967295u, var_0), !var_3.b, vec3<f32>(-1001f, var_3.a, 1116f), Struct_2(var_3, vec3<f32>(var_3.a, var_3.a, var_0), vec2<bool>(false, var_3.b))))))), 433f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-489f, _wgslsmith_div_f32(1285f, 2976f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(u_input.d.x, 40979i, 71097i, u_input.d.x), Struct_3(u_input.a.x, -1239f), false, vec3<f32>(1000f, -2099f, -1000f), Struct_2(Struct_1(1872f, true), vec3<f32>(-1264f, -279f, 1446f), vec2<bool>(true, true)))))))));
    var var_1 = Struct_3(1u, _wgslsmith_f_op_f32(var_0.x * 1000f));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * 397f), !(!any(vec4<bool>(true, true, false, true)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f - -296f) - _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1502f * _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), Struct_3(var_1.a, -1423f), true, vec3<f32>(953f, var_1.b, 100f), Struct_2(Struct_1(432f, false), vec3<f32>(var_1.b, 1000f, 548f), vec2<bool>(true, true)))))), all(vec2<bool>(false, true)) && false))), select(!vec2<bool>(false, all(vec3<bool>(false, false, false))), !vec2<bool>(u_input.e.x >= 4294967295u, true), !all(vec4<bool>(false, true, false, true))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -869f), 366f), vec3<f32>(var_2.b.x, var_0.x, 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(-var_1.b), 127f));
    let x = u_input.a;
    s_output = StorageBuffer(-6646i, u_input.a.wyz, var_1.b, firstTrailingBit(max(vec2<u32>(15560u, ~1u), ~u_input.e | u_input.a.wy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-169f, var_2.b.x, -690f), var_2.b))) - _wgslsmith_div_vec3_f32(var_2.b, _wgslsmith_f_op_vec3_f32(trunc(var_2.b)))), var_2.b, vec3<bool>(any(select(vec3<bool>(true, var_2.c.x, var_2.a.b), vec3<bool>(var_2.a.b, var_2.c.x, var_2.c.x), vec3<bool>(false, true, var_2.c.x))), false, (u_input.c & u_input.e.x) >= _wgslsmith_mod_u32(var_1.a, var_1.a)))));
}

