struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1116f, 672f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1283f)) - _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
    let var_1 = var_0;
    let var_2 = Struct_2(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let var_3 = Struct_2(select(vec2<bool>(1i != u_input.a, true), !var_2.a, var_2.a));
    let var_4 = -_wgslsmith_dot_vec2_i32(-(~u_input.d.zz), select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, -12591i), vec2<i32>(u_input.d.x, u_input.a)), -u_input.d.zy, all(vec2<bool>(var_3.a.x, true))) & reverseBits(vec2<i32>(u_input.d.x, 2147483647i)));
    return countOneBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(-var_4, min(u_input.d.x, 30161i)), var_4) << (_wgslsmith_sub_u32(4294967295u >> (_wgslsmith_mult_u32(arg_1, 19846u) % 32u), 14778u) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = vec4<i32>(-_wgslsmith_mod_i32(-(u_input.a | 33276i), 1i), -func_3(vec2<f32>(_wgslsmith_f_op_f32(max(898f, -825f)), _wgslsmith_f_op_f32(max(358f, 1002f))), (u_input.c.x ^ u_input.b.x) | ~0u, select(~u_input.b.xx, vec2<u32>(4294967295u, u_input.b.x) & vec2<u32>(u_input.c.x, u_input.b.x), true)), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(-32273i, u_input.a)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.d.yx), ~vec2<i32>(u_input.d.x, u_input.a)), 1i ^ ~u_input.a)), _wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, -6779i)), 1i));
    var var_2 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(324f, 2258f), _wgslsmith_f_op_f32(329f * -1795f), -197f), vec4<f32>(_wgslsmith_f_op_f32(-515f * -466f), _wgslsmith_f_op_f32(floor(1246f)), _wgslsmith_f_op_f32(-318f * 1000f), -887f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, 1709f, _wgslsmith_f_op_f32(select(-2757f, -319f, true)), _wgslsmith_f_op_f32(1431f * 576f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(256f, 1560f, 379f, -115f), _wgslsmith_f_op_vec4_f32(vec4<f32>(196f, 898f, 886f, 1788f) + vec4<f32>(-1378f, -1000f, 726f, -1382f))))))));
    let var_4 = ~(~(~(~u_input.c.x)));
    return Struct_1(var_3.x, -557f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.zzz)), !select(vec3<bool>(4294967295u == u_input.c.x, false, var_2.a.x), vec3<bool>(true, false == var_2.a.x, true), true));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(623f, 219f)), _wgslsmith_f_op_f32(var_0.a - -2000f))))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(679f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), 1539f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), var_0.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.b), -1000f, _wgslsmith_f_op_f32(max(var_0.b, -1373f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -408f, 580f, var_0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, var_0.c.x, var_0.c.x, var_0.c.x))))))));
    var_1 = _wgslsmith_f_op_f32(-var_2.x);
    return Struct_2(vec2<bool>(!any(!vec4<bool>(true, var_0.d.x, true, true)), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = countOneBits(u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b, -957f)));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(0i, -arg_2 | 24829i), _wgslsmith_add_i32(-4135i, firstTrailingBit(u_input.a)) >> (u_input.c.x % 32u), arg_2) ^ ~(~(-u_input.d));
    var var_4 = func_1();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec2<bool>(true, select(true, false, false) || true));
    var var_1 = func_4(Struct_1(-582f, _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1037f, -541f, -340f) + vec3<f32>(555f, -1000f, -108f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1608f, 400f, -605f))), vec3<bool>(true, true, !var_0.a.x)), func_1(), ~_wgslsmith_add_i32(_wgslsmith_div_i32(1i, u_input.d.x), select(_wgslsmith_add_i32(u_input.d.x, 0i), 17638i & u_input.a, !var_0.a.x)));
    var_1 = var_0;
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3199f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, 0u, 1u)), vec3<u32>(u_input.c.x, u_input.b.x, 1u)), _wgslsmith_div_u32(~reverseBits(u_input.b.x), 47243u)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-556f)), _wgslsmith_f_op_f32(f32(-1f) * -534f))), 1f));
}

