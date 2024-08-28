struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true, vec3<u32>(0u, 0u, 1u), vec2<u32>(13993u, 25352u), false);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-415f, 666f, 819f), true);

var<private> global2: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    return i32(-1i) * -17600i;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_5 {
    global0 = Struct_5(!arg_3.x, vec3<u32>(~74211u ^ _wgslsmith_mod_u32(~3833u, u_input.b.x ^ 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 73336u, u_input.b.x, global0.b.x), abs(vec4<u32>(1u, 24965u, 29747u, 77852u))), vec4<u32>(global0.c.x, global0.c.x, 0u, 4294967295u)), min(1u, firstTrailingBit(u_input.b.x))), vec2<u32>((global0.b.x >> (42502u % 32u)) << (((global0.c.x >> (88962u % 32u)) >> (1u % 32u)) % 32u), u_input.b.x << (39695u % 32u)), ~_wgslsmith_mod_i32(abs(-7897i), 1i) != ~arg_1);
    let var_0 = firstLeadingBit(func_3(arg_2.x, _wgslsmith_div_f32(global1.a.x, arg_0), _wgslsmith_f_op_vec3_f32(-global1.a)) | func_3(!global0.a, -316f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1391f, arg_0, global1.a.x))));
    var var_1 = Struct_5(all(select(!(!arg_2), !arg_3.yx, _wgslsmith_sub_u32(1u, global0.c.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.c.x, 4294967295u, 1u), vec4<u32>(1600u, global0.b.x, u_input.b.x, 39785u)))), firstLeadingBit(~vec3<u32>(~0u, u_input.b.x, 1u)), ~(~(~(vec2<u32>(16324u, u_input.b.x) | u_input.b.zy))), true);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, arg_0, -1000f) * vec3<f32>(global1.a.x, global1.a.x, global1.a.x)) - global1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, arg_0, global1.a.x) * vec3<f32>(arg_0, arg_0, arg_0)) + global1.a)), vec3<f32>(_wgslsmith_f_op_f32(trunc(658f)), -452f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1556f, global1.a.x, arg_3.x))))))), all(vec2<bool>(select(true, any(vec4<bool>(false, var_1.d, arg_2.x, global2.x)), arg_2.x), global1.b)));
    let var_2 = Struct_5(global1.b, _wgslsmith_sub_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global0.b.x, 4294967295u), vec3<u32>(u_input.b.x, 47701u, var_1.c.x))), _wgslsmith_sub_vec3_u32(u_input.b, ~u_input.b)), select(select(vec2<u32>(0u, 33101u) | vec2<u32>(global0.b.x, var_1.c.x), vec2<u32>(0u, var_1.c.x), arg_3.xy) & ~vec2<u32>(60913u, 1u), vec2<u32>(75245u, global0.b.x) | _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.x, 86434u), vec2<u32>(global0.c.x, 1u)), false), true);
    return Struct_5(var_1.a, var_1.b ^ (_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 29999u, 1u), var_2.b, vec3<bool>(var_1.a, true, global2.x)), var_1.b) >> (firstLeadingBit(var_2.b) % vec3<u32>(32u))), global0.c, all(vec4<bool>(!global1.b, var_2.c.x != _wgslsmith_add_u32(22466u, u_input.b.x), true, true)));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = ~global0.b.x;
    let var_2 = abs(u_input.c.x);
    let var_3 = Struct_2((firstTrailingBit(var_0.b) & min(vec3<u32>(var_1, 1u, 1u), vec3<u32>(arg_0.b.x, arg_0.c.x, arg_0.c.x))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global0.b << (var_0.b % vec3<u32>(32u)), abs(global0.b)), vec3<u32>(0u, 0u, reverseBits(0u))), _wgslsmith_div_f32(262f, -1194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(108f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 377f) - arg_2)))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2255f, 653f, arg_2), global1.a)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -769f, -357f), global1.a), global1.a, !vec3<bool>(global2.x, false, false)))))), any(vec2<bool>(false, !(global1.b || false))));
    return vec4<i32>(min(_wgslsmith_add_i32(var_2, ~1i), ~var_2), u_input.a, firstLeadingBit(-9365i & ~u_input.c.x), 0i);
}

fn func_1() -> vec2<bool> {
    var var_0 = vec2<i32>(u_input.c.x & ~(~(-u_input.a)), _wgslsmith_dot_vec4_i32(func_4(func_2(-379f, u_input.c.x, vec2<bool>(false, false), vec3<bool>(global2.x, true, global1.b)), true, _wgslsmith_f_op_f32(1118f * 1079f)), u_input.c | u_input.c) | countOneBits(u_input.c.x));
    let var_1 = ~u_input.b.x;
    var var_2 = Struct_5(!(_wgslsmith_sub_u32(0u, global0.c.x) >= _wgslsmith_sub_u32(global0.c.x, u_input.b.x)) && func_2(-1000f, _wgslsmith_dot_vec4_i32(vec4<i32>(-56460i, 44165i, var_0.x, -31913i), countOneBits(vec4<i32>(-31606i, var_0.x, u_input.a, -2147483647i))), select(!vec2<bool>(true, global1.b), !vec2<bool>(true, global2.x), all(vec4<bool>(true, global0.d, false, global1.b))), vec3<bool>(true, any(vec3<bool>(false, false, false)), true)).d, (global0.b & (_wgslsmith_sub_vec3_u32(vec3<u32>(32908u, 5137u, u_input.b.x), global0.b) >> (~u_input.b % vec3<u32>(32u)))) << (_wgslsmith_clamp_vec3_u32((vec3<u32>(0u, u_input.b.x, global0.b.x) ^ global0.b) | ~vec3<u32>(0u, var_1, var_1), abs(~global0.b), _wgslsmith_sub_vec3_u32(vec3<u32>(70737u, 0u, 0u), vec3<u32>(52922u, var_1, 1u) & vec3<u32>(global0.b.x, u_input.b.x, var_1))) % vec3<u32>(32u)), u_input.b.zx, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(var_1, global0.b.x, u_input.b.x, 20883u), ~vec4<u32>(var_1, global0.c.x, 4294967295u, 4294967295u) >> (vec4<u32>(64354u, global0.c.x, 67035u, 4294967295u) % vec4<u32>(32u))) < max(global0.c.x, ~1u));
    global0 = Struct_5(true, vec3<u32>(~1u | _wgslsmith_mod_u32(max(73278u, var_2.c.x), max(var_1, 36026u)), var_1, abs(var_2.b.x)), vec2<u32>(var_2.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, global0.c.x), u_input.b.zy)), all(vec3<bool>(u_input.c.x >= u_input.c.x, global1.b, !any(vec2<bool>(true, false)))));
    var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(878f - global1.a.x), _wgslsmith_f_op_f32(336f * global1.a.x), var_2.a)) + _wgslsmith_f_op_f32(round(381f)))), _wgslsmith_add_i32(max(var_0.x, _wgslsmith_mod_i32(1i, var_0.x)), reverseBits(i32(-1i) * -60263i)) & 0i, !select(select(vec2<bool>(var_2.a, true), select(vec2<bool>(global2.x, global0.d), vec2<bool>(false, global0.d), true), !vec2<bool>(global1.b, var_2.d)), select(!vec2<bool>(global0.a, global0.a), vec2<bool>(false, false), global2.x), global1.b), select(vec3<bool>(all(vec3<bool>(global1.b, true, global1.b)), global1.a.x >= _wgslsmith_f_op_f32(-global1.a.x), any(vec2<bool>(global1.b, true))), select(vec3<bool>(global0.c.x != 0u, true, var_2.d), select(!vec3<bool>(var_2.a, false, global0.a), !vec3<bool>(global0.d, var_2.a, global1.b), vec3<bool>(var_2.a, false, true)), false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, global2.x, true), false)));
    return select(!(!vec2<bool>(global2.x, false)), vec2<bool>(true, true), select(select(!select(vec2<bool>(global0.a, false), vec2<bool>(false, var_2.d), true), select(select(vec2<bool>(global0.d, var_2.a), vec2<bool>(var_2.d, true), vec2<bool>(global1.b, var_2.a)), select(vec2<bool>(true, global2.x), vec2<bool>(global1.b, false), global1.b), select(vec2<bool>(true, true), vec2<bool>(global0.a, global2.x), vec2<bool>(true, true))), !(!vec2<bool>(var_2.d, global0.d))), select(vec2<bool>(global1.a.x <= 150f, global2.x & var_2.d), vec2<bool>(any(vec3<bool>(var_2.a, var_2.a, true)), true), vec2<bool>(!global0.d, true)), select(vec2<bool>(var_2.a, false), !vec2<bool>(true, global1.b), vec2<bool>(all(vec4<bool>(true, var_2.a, var_2.a, var_2.d)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = func_2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))) + -1000f)), ~14796i, vec2<bool>(true, true), !(!select(!vec3<bool>(global1.b, true, global1.b), !vec3<bool>(global1.b, global2.x, false), global1.b)));
    var var_0 = !vec2<bool>(true, !all(vec4<bool>(true, global1.b, false, false)));
    var_0 = vec2<bool>(!(global1.b && !(global1.b && var_0.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(21702u, i32(-1i) * -(~1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-567f)))), vec3<u32>(~u_input.b.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 31506u), global0.b.xx), ~vec2<u32>(27735u, u_input.b.x)), global0.c.x));
}

