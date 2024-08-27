struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_4(any(!(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false))), min(~_wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(9606u, 55522u)), 1u), !select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), global1.x), true));
    var var_1 = ~max(~(u_input.a ^ 20101i), u_input.a);
    let var_2 = u_input.a ^ 0i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, -137f))));
    var_0 = Struct_4(!(!(true && global1.x)), ~(~0u), vec2<bool>(~_wgslsmith_mod_u32(56129u, 4294967295u) != var_0.b, all(vec2<bool>(select(global1.x, global1.x, var_0.a), true))));
    return vec4<u32>(max(~_wgslsmith_mult_u32(1u, 1u), countOneBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(23021u, 31233u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b, 36189u), vec3<u32>(111950u, 40714u, var_0.b))))), ~1u, ~(~(~var_0.b)), 1u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_clamp_u32(0u, countOneBits((arg_1.x | arg_1.x) & 1u), 0u);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x - 752f), arg_0.b.x));
    global1 = vec3<bool>((any(vec4<bool>(global1.x, true, arg_0.d.x, false)) && false) & false, !global1.x, arg_0.d.x);
    global1 = vec3<bool>(any(arg_2.b.xz), false, arg_0.d.x);
    let var_2 = Struct_2(vec3<i32>(firstTrailingBit(18253i), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -u_input.a), u_input.a), _wgslsmith_div_i32(arg_0.c.x, 1i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(arg_2.d)))), -vec2<i32>(20945i, -1i), global1.zz);
    return global1.x;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_4(!any(!vec4<bool>(global1.x, false, false, true)), ~(~7308u), vec2<bool>(select(!global1.x, func_4(Struct_2(vec3<i32>(2509i, 2147483647i, -47219i), vec4<f32>(1476f, -1000f, -448f, 1000f), vec2<i32>(arg_0, -2147483647i), global1.zx), func_3(), Struct_1(vec2<f32>(-214f, -1000f), vec3<bool>(global1.x, global1.x, global1.x), global1.x, vec4<f32>(-172f, 1814f, -397f, 208f), vec4<bool>(false, true, false, global1.x))), true), all(!global1.yz)));
    let var_1 = Struct_4(0i > -arg_0, min(var_0.b, ~reverseBits(76575u)), global1.yx);
    global0 = ~(~1u);
    var var_2 = var_1.b;
    let var_3 = Struct_2(firstLeadingBit(abs(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a), -u_input.a, firstLeadingBit(u_input.a)))), vec4<f32>(1f, -854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1283f))), -716f), min(vec2<i32>(~arg_0, arg_0), _wgslsmith_mod_vec2_i32(vec2<i32>(-45789i, u_input.a), firstTrailingBit(vec2<i32>(32305i, -1i)))) & abs(~vec2<i32>(u_input.a, -34719i)), !(!vec2<bool>(!var_0.c.x, any(vec3<bool>(true, global1.x, true)))));
    return -2147483647i;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = -1i;
    var var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a), abs(vec4<i32>(-66738i, 2147483647i, -5474i, var_0)), !global1.x) | vec4<i32>(-50258i, var_0 >> (86988u % 32u), -var_0, var_0)), vec4<i32>(func_2(-23258i), -25969i, _wgslsmith_div_i32(u_input.a, var_0) >> (~2011u % 32u), 0i));
    let var_2 = Struct_3(4294967295u);
    var var_3 = vec3<i32>(~(~(-20371i)), -(-min(0i, var_0) << (max(1u, ~arg_0.x) % 32u)), 0i);
    var_3 = ~vec3<i32>(abs(abs(_wgslsmith_div_i32(var_3.x, 14015i))), var_0, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.a, 0i), var_3.zy), max(var_3.yz, vec2<i32>(-2147483647i, -19603i))), -var_3.zy));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_2.a, 4294967295u, 0u, var_2.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.x, var_2.a, 49211u), vec4<u32>(var_2.a, var_2.a, 53588u, var_2.a)) % vec4<u32>(32u)), select(select(vec4<u32>(1u, 0u, arg_0.x, var_2.a), vec4<u32>(1u, 25912u, var_2.a, 0u), vec4<bool>(true, true, false, false)), vec4<u32>(37103u, 1u, var_2.a, var_2.a), vec4<bool>(false, false, true, global1.x)), !vec4<bool>(global1.x, global1.x, true, global1.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(90966u, 57804u, 4294967295u, arg_0.x), select(vec4<u32>(1u, 51646u, arg_0.x, var_2.a), vec4<u32>(14578u, 73356u, arg_0.x, arg_0.x), false)), vec4<u32>(firstLeadingBit(var_2.a), 1u, 4294967295u, arg_0.x))), arg_0.x, ~(~(~firstLeadingBit(4294967295u))), _wgslsmith_mod_u32(var_2.a, arg_0.x));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    global0 = arg_1;
    let var_0 = select(select(!vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(arg_2.d.x, true, (arg_0 != 1u) | true, any(vec4<bool>(true, true, false, false))), !select(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(true, global1.x, false, true), vec4<bool>(false, false, true, arg_2.d.x)), select(vec4<bool>(global1.x, true, true, true), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(arg_2.d.x, global1.x, global1.x, false)), true)), vec4<bool>(false, all(!vec4<bool>(global1.x, arg_2.d.x, true, false)), false == any(select(global1.yz, global1.xz, arg_2.d.x)), true), true);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-741f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.x))))), arg_2.b.x);
    let var_2 = var_0;
    let var_3 = ~32379u;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-805f))), arg_2.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, _wgslsmith_f_op_f32(-arg_2.b.x), -1047f)), u_input.a, arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(46217u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3298u, 0u, 1u, 45935u), vec4<u32>(54005u, 1u, 1u, 28847u)), ~vec4<u32>(47810u, 23805u, 52043u, 12332u)), firstTrailingBit(func_1(vec2<u32>(1u, 63141u), vec2<f32>(2691f, -681f)))), Struct_2(abs(~vec3<i32>(u_input.a, 0i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(abs(1547f)), -344f, 1426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-458f, -543f)) * -173f)), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(-610i, u_input.a, -742i), -vec3<i32>(u_input.a, 0i, u_input.a))), global1.yz));
}

