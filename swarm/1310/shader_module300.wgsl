struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1223f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(100f), Struct_1(1291f), reverseBits(vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_f32(trunc(1562f))), arg_0), arg_0, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(-2147483647i, 0i), -18700i)), true), 238f, all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true))), vec4<bool>((u_input.b != u_input.a) != all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)), false), ((u_input.b ^ u_input.a) & ~u_input.b) != u_input.a));
    global0 = -730f;
    let var_1 = var_0.a.a;
    global0 = 1f;
    global0 = var_1.b.a;
    return reverseBits(~(-var_1.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(-596f), Struct_1(303f), vec3<i32>(1i, 1i, 1i) | ~vec3<i32>(firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-26621i, 1i), vec2<i32>(62645i, 32441i)), 1i), Struct_1(-769f), Struct_1(440f));
    var var_1 = var_0.d;
    var var_2 = max(func_3(Struct_1(var_1.a)), max(vec3<i32>(-(var_0.c.x >> (2616u % 32u)), var_0.c.x, _wgslsmith_add_i32(8820i, -72748i)), reverseBits(vec3<i32>(2147483647i & var_0.c.x, _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(-1i, 1128i, -2147483647i)), _wgslsmith_mult_i32(2147483647i, -1i)))));
    var var_3 = var_2.x;
    let var_4 = Struct_2(Struct_1(1000f), var_0.b, var_0.c, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))), Struct_1(-760f));
    return ~min(arg_1, arg_1);
}

fn func_1() -> i32 {
    let var_0 = abs(select(~func_2(vec4<f32>(2589f, -504f, 2439f, -119f), vec3<u32>(u_input.a, 45653u, u_input.b), -1283f), ~select(vec3<u32>(u_input.b, 74291u, 4294967295u), vec3<u32>(98903u, 84196u, u_input.a), vec3<bool>(true, false, true)), any(vec4<bool>(false, false, false, false))) | ~firstLeadingBit(select(vec3<u32>(12817u, 1u, 0u), vec3<u32>(1u, 2584u, u_input.b), true)));
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f - -401f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(845f, 434f, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-500f))))))));
    let var_1 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1313f))), Struct_1(_wgslsmith_f_op_f32(sign(-207f))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4301i, -16349i, 48592i), vec4<i32>(-17364i, 3574i, -31554i, 37953i)), _wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_mult_i32(-47365i, -44441i)), Struct_1(_wgslsmith_f_op_f32(-144f * 440f)), Struct_1(1126f)), Struct_1(_wgslsmith_f_op_f32(abs(-1493f))), 1i, all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), 689f, true, vec4<bool>((func_2(vec4<f32>(2414f, 665f, -2017f, -263f), var_0, 749f).x & var_0.x) != 4294967295u, any(vec4<bool>(false, false, true, true)) || true, true, false));
    global0 = 418f;
    return -855i;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(-66405i, 1i, 0i), ~(i32(-1i) * -2147483647i)), ~(~vec2<i32>(11405i << (arg_2 % 32u), min(15094i, -1i))));
    var var_1 = 11409u;
    let var_2 = vec4<u32>(countOneBits(1u), ~(~_wgslsmith_add_u32(~u_input.a, ~arg_2)), u_input.b, ~arg_2);
    var_0 = max(0i, ~1i);
    var var_3 = 388f;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(_wgslsmith_div_f32(-912f, _wgslsmith_f_op_f32(floor(arg_1.x)))), -vec3<i32>(~27936i, ~0i, 1i), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-764f)), _wgslsmith_f_op_f32(f32(-1f) * -376f)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(408f)), -2151f)))), Struct_1(_wgslsmith_f_op_f32(309f * 635f)), 1i, all(select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0))) & true);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_0.a.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(615f + arg_1.x), -387f) + arg_0.a.b.a)) * 366f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(-218f));
    global0 = _wgslsmith_f_op_f32(func_5(func_4(abs(-15058i) > min(func_1(), -1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1465f)) * _wgslsmith_div_f32(755f, -525f)), _wgslsmith_f_op_f32(-132f + -1000f), _wgslsmith_f_op_f32(1f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1801f)), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, -361f, 1218f)), ~(~abs(~vec4<u32>(1u, 4294967295u, 74120u, 20271u)))));
    let var_0 = any(!(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true)));
    global0 = -1004f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(-23485i, _wgslsmith_mult_i32(1i, func_3(Struct_1(561f)).x))), ~vec4<u32>(select(u_input.b, ~u_input.a, var_0), 0u, 1u, ~u_input.b), countOneBits((_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1789i, 0i, -7692i), vec4<i32>(1i, -2147483647i, -1i, 31301i)) >> ((u_input.b << (4294967295u % 32u)) % 32u)) ^ -68732i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(2843f)), _wgslsmith_f_op_f32(f32(-1f) * -236f)))));
}

