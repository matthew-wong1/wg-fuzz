struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-937f - -162f), -760f, all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(137f * 344f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1235f)), _wgslsmith_f_op_f32(1152f - 779f)) + 754f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, 745f, 1000f)) + vec3<f32>(-727f, 931f, 108f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, -1410f, 873f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -669f, 600f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, -295f, 1729f)))));
    var var_1 = vec4<u32>(~(global0.x << (u_input.d % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.x, 0u, 1u), global0.x) % 32u), ~4294967295u, ~1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, ~4294967295u), countOneBits(select(1u, 47086u, false)))) & ~(vec4<u32>(firstTrailingBit(global0.x), u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0.x, global0.x)), 56821u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(39791u, global0.x, 54968u, 4294967295u), vec4<u32>(global0.x, global0.x, u_input.d, 1u)) % vec4<u32>(32u)));
    var var_2 = max(select(countOneBits(-1i), _wgslsmith_div_i32(~0i, -1i), select(true, any(vec4<bool>(false, true, false, true)), true)), u_input.c.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(77118u, 22578u, u_input.a & 0u, global0.x ^ 21712u), firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(55776u, 55516u, 4294967295u, global0.x), vec4<u32>(u_input.d, 0u, global0.x, global0.x)))) % 32u);
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)));
    return -895f;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = ~u_input.a;
    var var_2 = ~(~(~abs(arg_0.b.x) & _wgslsmith_dot_vec2_u32(~arg_0.a.d.zw, ~vec2<u32>(arg_0.b.x, 4294967295u))));
    var var_3 = !(!(!(!select(vec3<bool>(arg_1, arg_0.a.c, false), vec3<bool>(true, arg_1, arg_0.a.c), vec3<bool>(arg_0.a.c, false, arg_1)))));
    let var_4 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.a.e.zx, ~u_input.c.yx), abs(1i));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(-355i, var_4, arg_0.a.e.x), var_4) & 8024i;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    return Struct_2(Struct_1(min(u_input.a, 4294967295u), _wgslsmith_f_op_f32(-1851f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(min(-1345f, -464f)))), all(vec2<bool>(true, true)), ~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 11077u) ^ ~vec4<u32>(u_input.b, 14391u, u_input.a, u_input.d), vec3<i32>(~func_2(Struct_2(Struct_1(global0.x, arg_0.x, true, vec4<u32>(global0.x, 0u, 55220u, u_input.a), vec3<i32>(u_input.c.x, 2147483647i, 2147483647i)), vec3<u32>(global0.x, 47793u, 0u), vec2<f32>(-1075f, arg_0.x)), true), _wgslsmith_clamp_i32(-2147483647i, min(8140i, -1i), -12592i), u_input.c.x)), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(global0.x, 4294967295u, global0.x)), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(42749u, u_input.d, 4294967295u), vec3<u32>(global0.x, global0.x, u_input.a), vec3<u32>(global0.x, global0.x, 4294967295u)))), _wgslsmith_div_vec2_f32(arg_0.zz, arg_0.zz));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = 1i;
    var var_1 = arg_0.c.x;
    global0 = select(vec2<u32>(~_wgslsmith_clamp_u32(arg_0.b.x, countOneBits(0u), u_input.b & 45472u), reverseBits(global0.x)), ~vec2<u32>(abs(82574u), ~(u_input.a ^ 1u)), select(vec2<bool>(false, select(arg_3.x, arg_3.x | arg_0.a.c, any(arg_3))), select(arg_3.yx, arg_3.yz, false), true));
    var var_2 = true;
    let var_3 = -(i32(-1i) * -38542i);
    return vec3<u32>(arg_0.a.d.x, ~(~(~69013u)), 9799u) >> (arg_0.b % vec3<u32>(32u));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_2 {
    global0 = arg_1.yy;
    global0 = arg_1.yy;
    var var_0 = Struct_5(Struct_4(-26898i, vec3<u32>(1u, 1u, 1u), func_1(vec3<f32>(1f, 1f, 1f)).a.c, abs(~arg_1)));
    var_0 = Struct_5(var_0.a);
    var var_1 = _wgslsmith_div_vec4_u32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(960f, 1000f, -380f), vec3<f32>(-180f, 1497f, -926f))))).a.d << (max(~(~vec4<u32>(47724u, 0u, u_input.b, 60446u)), firstTrailingBit(~vec4<u32>(global0.x, var_0.a.b.x, 64554u, var_0.a.d.x))) % vec4<u32>(32u)), ~(~firstLeadingBit(~vec4<u32>(1u, arg_1.x, 4294967295u, 81329u))));
    return func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1127f)), -1155f, _wgslsmith_div_f32(-860f, 586f))))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> vec2<u32> {
    var var_0 = ~arg_1.a.d;
    var var_1 = arg_1.a.e.x;
    var var_2 = Struct_3(select(vec3<i32>(u_input.c.x & firstTrailingBit(-2147483647i), arg_2.x, 2147483647i), vec3<i32>(-arg_2.x, ~(-1i), arg_2.x ^ min(arg_1.a.e.x, u_input.c.x)), true), arg_1, arg_1.a, select(select(!vec3<bool>(arg_1.a.c, false, false), !select(vec3<bool>(arg_1.a.c, arg_1.a.c, true), vec3<bool>(arg_1.a.c, arg_1.a.c, false), vec3<bool>(false, arg_1.a.c, true)), !select(vec3<bool>(true, arg_1.a.c, arg_1.a.c), vec3<bool>(true, arg_1.a.c, false), vec3<bool>(true, false, false))), !vec3<bool>(!arg_1.a.c, all(vec2<bool>(arg_1.a.c, false)), arg_1.a.c), -165f <= _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(f32(-1f) * -153f))));
    var var_3 = -105f;
    var_3 = _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(func_3()));
    return vec2<u32>(4294967295u, 30166u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec2_u32(func_6(global0.x, func_5(u_input.c.yy << (vec2<u32>(global0.x, 0u) % vec2<u32>(32u)), func_4(func_1(vec3<f32>(-379f, -1000f, -1007f)), -3676i << (u_input.a % 32u), i32(-1i) * -33315i, vec3<bool>(false, true, false))), abs(~u_input.c.xx & vec2<i32>(-44428i, 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f) - _wgslsmith_f_op_f32(-139f * -574f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-100f, 364f)))), abs(func_5(u_input.c.zy, ~vec3<u32>(u_input.a, 0u, 1u) & ~vec3<u32>(global0.x, 14119u, u_input.b)).a.d.yx));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1700f * -157f) + 876f))));
    let var_1 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)));
    global0 = vec2<u32>(~(global0.x ^ firstLeadingBit(~19274u)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(2539u, u_input.a, u_input.b)), ~(~vec3<u32>(0u, u_input.a, 0u))));
    var var_2 = select(!(!(!var_1.x)), !var_1.x, all(vec3<bool>(true, true, true)) | false);
    var_2 = !(!func_5(-(u_input.c.zy & u_input.c.zx), abs(countOneBits(vec3<u32>(18792u, global0.x, 1u)))).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.b, ~(~global0.x) >> (~(~global0.x) % 32u)));
}

