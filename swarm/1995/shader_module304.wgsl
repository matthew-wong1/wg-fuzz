struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33916u, 53968u, 17988u, 8888u);

var<private> global1: vec4<u32> = vec4<u32>(47441u, 38365u, 4294967295u, 1u);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = firstLeadingBit(vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(1u >> (1u % 32u), global0.x)), global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 1u), _wgslsmith_clamp_u32(83066u, global0.x, global0.x), 0u), countOneBits(~vec3<u32>(global0.x, 0u, 4294967295u))), global0.x));
    global2 = 50086i;
    let var_0 = Struct_2(u_input.a < u_input.b.x, Struct_1(_wgslsmith_f_op_f32(select(-2022f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) * _wgslsmith_f_op_f32(f32(-1f) * -430f)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(313f)), _wgslsmith_f_op_f32(f32(-1f) * -1809f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(770f, 850f) - vec2<f32>(-230f, 750f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(165f, -581f) - vec2<f32>(-1237f, -2168f)), true))), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), any(vec4<bool>(true, false, false, false))))), firstTrailingBit(u_input.a), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f + -360f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-106f, 1583f), vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-254f, -256f), vec2<f32>(686f, -190f))))), !(!any(vec3<bool>(true, true, true)))));
    let var_1 = Struct_2(false, var_0.b, var_0.c, Struct_1(378f, var_0.b.b, (_wgslsmith_f_op_f32(-3221f * 1029f) >= _wgslsmith_f_op_f32(-var_0.b.a)) | (u_input.e != 77823u)));
    var var_2 = !(!select(select(select(vec4<bool>(var_1.a, var_0.b.c, var_0.b.c, var_1.d.c), vec4<bool>(var_1.a, var_1.b.c, var_0.b.c, var_0.d.c), vec4<bool>(false, false, var_0.b.c, var_0.b.c)), select(vec4<bool>(false, var_1.d.c, true, var_0.a), vec4<bool>(var_1.b.c, var_0.d.c, true, var_0.d.c), vec4<bool>(var_1.b.c, var_1.a, true, var_1.a)), true), !vec4<bool>(var_1.b.c, true, var_1.b.c, false), !vec4<bool>(false, var_0.d.c, var_0.a, true)));
    return _wgslsmith_dot_vec2_i32(~u_input.b.xz, firstTrailingBit(abs(u_input.b.wy)));
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = global1.xy;
    global2 = -func_3();
    global2 = firstTrailingBit(~u_input.b.x >> (max(19691u, _wgslsmith_mult_u32(global0.x, u_input.d.x)) % 32u));
    global0 = ~(~vec4<u32>(0u, firstTrailingBit(u_input.c), ~1u, 4294967295u));
    global0 = ((countOneBits(~vec4<u32>(u_input.e, 753u, 16977u, u_input.d.x)) ^ vec4<u32>(~global1.x, 1u, ~var_0.x, 8223u)) >> (vec4<u32>(~select(global0.x, 1u, arg_0), ~(~3381u), global1.x, 62270u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(countOneBits(global1.x), global1.x, ~0u, ~var_0.x), select(~(~vec4<u32>(global1.x, 524u, 4294967295u, global1.x)), vec4<u32>(40331u ^ global1.x, _wgslsmith_mult_u32(var_0.x, 0u), u_input.c, _wgslsmith_dot_vec2_u32(global0.yz, u_input.d.yx)), select(!vec4<bool>(false, arg_0, false, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, false, false, false), arg_0), !vec4<bool>(arg_0, arg_0, true, false))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1237f - arg_1) * _wgslsmith_f_op_f32(arg_1 - arg_1)) + arg_1) - 652f), _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1() -> Struct_2 {
    global0 = vec4<u32>(~firstTrailingBit(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, ~global1.x), 4294967295u), vec4<u32>(~global1.x & _wgslsmith_dot_vec2_u32(u_input.d.zx, global0.wx), ~global1.x ^ global0.x, abs(~u_input.d.x), firstTrailingBit(48170u))), u_input.d.x ^ ~_wgslsmith_add_u32(global1.x, ~u_input.e), 4294967295u);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(abs(153f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))), 1i, Struct_1(_wgslsmith_f_op_f32(round(-1000f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1001f))), 1562f), all(vec4<bool>(true, true, true, true))));
    let var_1 = vec4<f32>(525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.d.a, 802f)))) + -1823f), 296f, var_0.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1654f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1801f, var_1.x, true)), _wgslsmith_f_op_f32(sign(var_0.d.a)))))), select(all(vec4<bool>(var_0.d.c, var_0.d.c, var_0.d.c, var_0.d.c)), any(vec4<bool>(var_0.d.c, false, var_0.d.c, true)), select(false, any(vec2<bool>(var_0.d.c, false)), true)))) * -588f);
    var var_3 = var_0.d.c;
    return Struct_2(any(vec4<bool>(var_0.d.c, var_0.d.c, true, var_0.d.b.x < _wgslsmith_f_op_f32(-var_0.d.a))), var_0.d, ~abs(select(u_input.a, _wgslsmith_mult_i32(-15451i, var_0.c), all(vec3<bool>(var_0.d.c, false, var_0.d.c)))), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_4(_wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(func_2(false, var_0.b.b.x))), var_0.d.b.x, var_0.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.b.x * var_0.b.b.x))) - _wgslsmith_f_op_f32(-var_0.d.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) + _wgslsmith_f_op_f32(sign(var_0.d.a))), -597f), true));
    var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1534f, _wgslsmith_f_op_f32(-var_0.d.a), !(!var_0.d.c))), 265f), var_0.b.b.x, -2147483647i, Struct_1(_wgslsmith_f_op_f32(sign(var_1.d.a)), _wgslsmith_f_op_vec2_f32(var_1.d.b - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_0.b.b, var_0.b.b)), _wgslsmith_f_op_vec2_f32(exp2(var_0.b.b))))), (func_1().b.a <= -390f) & true));
    let var_2 = any(vec3<bool>(!var_1.d.c, !(-2147483647i < _wgslsmith_clamp_i32(-2147483647i, -8607i, var_0.c)), any(vec2<bool>(true, false))));
    var var_3 = var_1.d.c;
    let var_4 = _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x))) == 848f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_i32(~u_input.a, _wgslsmith_div_i32(-2147483647i, 1i)), 24022i), ~0u, u_input.b, var_0.d.a);
}

