struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<vec2<u32>, 8>;

var<private> global2: Struct_2;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = -global2.a.x;
    global2 = Struct_2(global2.a, firstLeadingBit(-countOneBits(abs(global2.a.x))), 1u);
    var var_1 = vec2<f32>(-438f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - arg_2.x))));
    return 52661u;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(vec4<u32>(~func_3(~arg_1, select(arg_0, arg_0, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1643f, 102f, 535f, 1909f) + vec4<f32>(1449f, 285f, 144f, 882f))), ~23009u, reverseBits(6564u), min(~global2.c | (1u ^ arg_1), arg_1)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-544f))) - _wgslsmith_f_op_f32(f32(-1f) * -1715f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1900f))))))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(max(global2.c, 4294967295u), select(var_0.a.x, global2.c, arg_0.x)), 4294967295u) & u_input.a, var_0.a.x);
    let var_3 = _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(global0[_wgslsmith_index_u32(0u, 17u)], firstTrailingBit(_wgslsmith_sub_i32(arg_2.x & global2.a.x, -1i)), -(-1i << (_wgslsmith_mult_u32(arg_1, 2406u) % 32u))));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-838f))));
    return !arg_0.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec4<u32> {
    global3 = all(!(!vec4<bool>(all(vec4<bool>(false, arg_0, true, arg_0)), u_input.a > 4294967295u, func_2(vec3<bool>(arg_1, arg_0, false), 0u, vec3<i32>(global2.b, global0[_wgslsmith_index_u32(0u, 17u)], -1i)), arg_0)));
    global3 = !all(!vec2<bool>(true, global2.c > 1u));
    var var_0 = _wgslsmith_f_op_f32(floor(157f));
    global0 = array<i32, 17>();
    var var_1 = Struct_2(-global2.a, _wgslsmith_mod_i32(21366i, _wgslsmith_div_i32(-(~global2.b), 2016i)), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(abs(1u) | u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]));
    return vec4<u32>(_wgslsmith_mult_u32(abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(37327u, 4294967295u, var_1.c, 12003u), vec4<u32>(var_1.c, global2.c, u_input.a, var_1.c)))), _wgslsmith_dot_vec4_u32(vec4<u32>(64836u, 0u, global2.c, var_1.c) & ~vec4<u32>(u_input.a, 26467u, var_1.c, 4294967295u), ~vec4<u32>(0u, global2.c, var_1.c, 5550u) | ~vec4<u32>(u_input.a, u_input.a, 57927u, u_input.a))), firstLeadingBit(4294967295u), var_1.c, abs(0u ^ select(_wgslsmith_mod_u32(var_1.c, var_1.c), ~0u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a << (((~vec4<u32>(0u, global2.c, u_input.a, u_input.a) >> (func_1(true, false) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(4294967295u, 40464u), u_input.a, global2.c, min(global2.c, 102140u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~1i & global2.b)), u_input.a);
    var var_0 = ~u_input.a << (func_3(u_input.a, !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) % 32u);
    var var_1 = Struct_1(abs(max(~func_1(false, false), ~vec4<u32>(0u, 0u, 85425u, u_input.a))));
    let var_2 = select(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), vec4<bool>(true, true, true, true), select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, func_2(vec3<bool>(true, true, false), global2.c, global2.a.zzw), true), vec4<bool>(func_2(vec3<bool>(false, true, true), u_input.a, vec3<i32>(2147483647i, -2948i, u_input.b)), all(vec3<bool>(true, true, false)), true, true), func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(var_1.a.x, 2133u, false), vec3<i32>(0i, global2.b, global2.b) & global2.a.yzy)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))));
    var var_3 = global2.a.zz | firstTrailingBit(vec2<i32>(~global0[_wgslsmith_index_u32(~58044u, 17u)], ~max(0i, u_input.b)));
    let var_4 = var_2.x;
    var var_5 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~global2.c, _wgslsmith_sub_u32(global2.c, 48208u), 26370u) ^ ~var_1.a.wyw, vec3<u32>(4294967295u, 1u, ~(~1u | u_input.a)));
    let var_6 = Struct_1(~(~_wgslsmith_sub_vec4_u32(var_1.a >> (vec4<u32>(38510u, 4294967295u, 48526u, 46628u) % vec4<u32>(32u)), var_1.a)));
    var_5 = _wgslsmith_clamp_vec3_u32(func_1(all(vec4<bool>(false, false, var_2.x & var_2.x, any(vec2<bool>(var_4, var_4)))), all(!(!var_2.ywx))).zyx, var_6.a.zww, var_1.a.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, ~_wgslsmith_clamp_vec2_u32((var_1.a.zx ^ vec2<u32>(var_5.x, 0u)) ^ vec2<u32>(var_6.a.x, 4294967295u), _wgslsmith_sub_vec2_u32(var_5.yy, global1[_wgslsmith_index_u32(u_input.a, 8u)]) | abs(vec2<u32>(var_1.a.x, var_5.x)), ~select(global1[_wgslsmith_index_u32(var_1.a.x, 8u)], vec2<u32>(4294967295u, 42242u), vec2<bool>(true, var_4))), global2.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f * 715f) - -534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1429f - -482f))))));
}

