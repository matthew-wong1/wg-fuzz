struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: vec3<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<f32>, 6>();
    var var_0 = max(_wgslsmith_mod_i32(u_input.a.x, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.b.x, u_input.b.x)), firstLeadingBit(u_input.b.x)))), arg_1.a.x);
    global0 = array<vec2<f32>, 6>();
    var_0 = _wgslsmith_mod_i32(i32(-1i) * -14326i, _wgslsmith_mult_i32(u_input.a.x, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(48028i, 20297i, 22497i), vec3<i32>(u_input.b.x, u_input.b.x, arg_1.a.x)))));
    var var_1 = Struct_1(vec3<i32>(~firstTrailingBit(select(2147483647i, arg_1.a.x, false)), u_input.b.x, ~reverseBits(arg_1.a.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u ^ arg_1.b, 4294967295u, firstLeadingBit(0u), arg_1.b)), vec4<u32>(_wgslsmith_mult_u32(4294967295u ^ arg_1.b, 0u), ~arg_1.b, 14345u, 4294967295u)), -731f);
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    let var_0 = abs(-u_input.a);
    global0 = array<vec2<f32>, 6>();
    let var_1 = vec4<bool>(arg_2, all(!select(vec2<bool>(true, arg_2), global1.xy, global1.x)), !(0u <= abs(arg_1)), !all(select(vec3<bool>(true, arg_2, false), !vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(global1.x, false, arg_2), vec3<bool>(global1.x, false, global1.x), false))));
    global0 = array<vec2<f32>, 6>();
    var var_2 = Struct_1(u_input.a.wzx << (_wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(15501u, arg_0, arg_0), vec3<u32>(arg_1, 0u, 9784u), var_1.xxx), abs(vec3<u32>(4294967295u, arg_1, arg_1)), false), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1, 0u), vec3<u32>(arg_1, arg_1, arg_0)), firstLeadingBit(vec3<u32>(arg_1, arg_0, arg_0))) % vec3<u32>(32u)), arg_0 << (arg_1 % 32u), 1f);
    return _wgslsmith_f_op_f32(var_2.c * var_2.c);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(~u_input.b.x, firstTrailingBit(min(firstTrailingBit(u_input.b.x), u_input.b.x ^ u_input.b.x)), ~u_input.a.x), ~37373u, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1117f + 207f)), _wgslsmith_f_op_f32(func_4(1u, func_3(60182u, Struct_1(u_input.a.zzy, 1u, 1000f)), false, vec4<i32>(u_input.b.x, -1i, -2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-847f))) - _wgslsmith_f_op_f32(max(953f, -1000f))), global1.x)));
    var var_1 = ~(_wgslsmith_div_u32(var_0.b, 22427u) >> (1u % 32u));
    var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.b, 29958u), ~var_0.b << (~_wgslsmith_mod_u32(firstLeadingBit(var_0.b), min(var_0.b, var_0.b)) % 32u));
    global0 = array<vec2<f32>, 6>();
    let var_2 = false;
    return Struct_1(~vec3<i32>(-1i, reverseBits(_wgslsmith_mult_i32(35567i, u_input.a.x)), min(_wgslsmith_clamp_i32(-19286i, -13718i, -2147483647i), ~var_0.a.x)), ~32393u, var_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    global1 = !vec3<bool>(!(arg_0.a.x == -1i), !((arg_1 > 1853i) && all(vec4<bool>(global1.x, false, global1.x, global1.x))), !(!global1.x));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-383f, -790f)))));
    var var_1 = arg_0;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_2.b, 0u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.b, var_1.b), vec2<u32>(34617u, 4294967295u), vec2<u32>(arg_0.b, 24934u)))), var_1.b), 778f);
    let var_3 = vec3<i32>(abs(countOneBits(var_1.a.x)), var_2.a.x, ~(~(~(-2147483647i))));
    return global1.yz;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = !select(arg_0, !vec4<bool>(false, u_input.a.x > u_input.b.x, true, select(global1.x, false, false)), global1.x);
    var var_1 = (all(func_5(func_2(), u_input.a.x, func_2())) & arg_0.x) || all(select(select(!vec2<bool>(global1.x, true), select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), vec2<bool>(arg_0.x, arg_0.x)), all(vec2<bool>(false, false))), vec2<bool>(false, arg_0.x), any(vec4<bool>(false, false, var_0.x, true)) || var_0.x));
    var_0 = !arg_0;
    var var_2 = func_2();
    global0 = array<vec2<f32>, 6>();
    return func_2();
}

fn func_6(arg_0: Struct_1) -> bool {
    global1 = vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f))) <= _wgslsmith_f_op_f32(func_4(~(~arg_0.b), ~38130u, !global1.x, vec4<i32>(u_input.a.x, ~u_input.b.x, arg_0.a.x, u_input.a.x))), global1.x);
    global0 = array<vec2<f32>, 6>();
    global1 = select(!vec3<bool>(true, false, !global1.x), !select(!select(vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, true)), vec3<bool>(all(vec4<bool>(false, global1.x, global1.x, true)), any(vec3<bool>(global1.x, false, false)), !global1.x), true), global1.x);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 6>();
    let var_0 = select(!vec4<bool>(select(any(vec2<bool>(global1.x, global1.x)), global1.x, true), global1.x, all(vec2<bool>(global1.x, true)), func_6(func_1(vec4<bool>(global1.x, true, global1.x, true), 1339f, vec2<u32>(49558u, 33177u)))), select(select(vec4<bool>(all(vec3<bool>(global1.x, global1.x, global1.x)), func_5(Struct_1(vec3<i32>(0i, 2147483647i, 0i), 24689u, 648f), u_input.b.x, Struct_1(vec3<i32>(1i, u_input.b.x, -55004i), 4294967295u, 1603f)).x, !global1.x, any(vec4<bool>(true, true, global1.x, global1.x))), select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false), !global1.x), false), select(select(select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, global1.x, false, false)), select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, global1.x, true, true), true), !vec4<bool>(global1.x, true, true, global1.x)), !vec4<bool>(global1.x, false, global1.x, true), false), vec4<bool>(_wgslsmith_add_i32(u_input.b.x, -1i) >= (u_input.a.x >> (1u % 32u)), select(global1.x, select(true, global1.x, global1.x), true), !(!global1.x), global1.x)), select(vec4<bool>(global1.x, true, false, false), !select(!vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, false, global1.x, false), !vec4<bool>(false, global1.x, false, global1.x)), vec4<bool>(true, true, true, global1.x)));
    global1 = var_0.zzz;
    global1 = select(select(!select(var_0.xzz, var_0.zxw, var_0.yyx), vec3<bool>(!var_0.x, global1.x, true), var_0.zzy), var_0.wzy, false);
    global1 = !var_0.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(~(-5888i), _wgslsmith_div_i32(-abs(1i), -min(-1i, _wgslsmith_mult_i32(1i, 0i))), -828f);
}

