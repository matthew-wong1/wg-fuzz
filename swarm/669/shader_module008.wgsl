struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(40851u, 104258u, 1u, 8121u), 7580u, vec4<bool>(false, true, true, false), 1090i, vec3<bool>(true, true, false));

var<private> global3: array<vec3<bool>, 4>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> vec4<u32> {
    let var_0 = 32382i;
    var var_1 = (vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, arg_1, 2147483647i, 2147483647i), vec4<i32>(global4.d, 0i, 0i, 29667i)), 59595i), arg_1) >> (u_input.b % vec3<u32>(32u))) << ((u_input.b ^ vec3<u32>(~(~arg_2), 31051u, ~firstLeadingBit(0u))) % vec3<u32>(32u));
    global2 = Struct_1(~global4.a, _wgslsmith_sub_u32(1u, arg_2) >> (0u % 32u), vec4<bool>(arg_1 == 88139i, !(global4.e.x && false) | false, arg_0, all(select(vec3<bool>(global2.e.x, global4.c.x, true), global2.c.zyx, vec3<bool>(global2.c.x, arg_0, arg_0)))), _wgslsmith_add_i32(~global2.d, i32(-1i) * -19907i), select(!select(select(global2.c.yxy, vec3<bool>(false, global4.c.x, true), true), vec3<bool>(false, false, false), vec3<bool>(true, false, global2.c.x)), !(!global3[_wgslsmith_index_u32(0u, 4u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.a.x, firstTrailingBit(1u)), 4u)]));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(990f * -825f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1926f * -1003f)) - _wgslsmith_f_op_f32(f32(-1f) * -1453f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1078f + 1018f))))), _wgslsmith_f_op_f32(min(-861f, -968f)));
    global3 = array<vec3<bool>, 4>();
    return abs(vec4<u32>(~reverseBits(arg_2), u_input.e, ~(abs(35221u) << (~global2.b % 32u)), u_input.b.x));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(abs(global4.a | global4.a) | func_3(all(global2.c), global0[_wgslsmith_index_u32(u_input.a, 4u)] | global0[_wgslsmith_index_u32(global4.b, 4u)], u_input.e), abs(_wgslsmith_sub_u32(79924u, 1u)) & func_3(true, -2147483647i, 0u).x, global2.c, global4.d, global2.c.xxy), _wgslsmith_add_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(global4.a.wy, vec2<u32>(1u, 22450u)), vec2<u32>(abs(global2.a.x), firstTrailingBit(global4.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 6592u)))));
    var var_1 = select(vec2<u32>(abs(~_wgslsmith_mult_u32(0u, 19238u)), ~(~37612u >> (arg_0 % 32u))), global4.a.wx, select(vec2<bool>(all(global2.e.zy), -global2.d < ~var_0.a.d), !select(vec2<bool>(global4.c.x, false), global4.c.zw, vec2<bool>(true, false)), vec2<bool>(all(var_0.a.c.zw), var_0.a.e.x)));
    var_1 = global4.a.wy & ~(global2.a.xz ^ _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global4.a.yw, var_0.b), global2.a.yw | global4.a.zx));
    var var_2 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_mult_u32(41077u, 14038u), _wgslsmith_dot_vec3_u32(global2.a.ywx, u_input.b), var_1.x, var_0.a.b) | select(global2.a, vec4<u32>(1u, global2.b, global2.a.x, 42944u), select(var_0.a.e.x, true, global4.e.x)), ~_wgslsmith_clamp_u32(~var_1.x, global4.a.x, func_3(true, -2147483647i, global4.a.x).x), select(vec4<bool>(var_0.a.c.x || global2.e.x, global2.c.x, true, true), !vec4<bool>(var_0.a.c.x, true, true, global2.c.x), global4.c), -26860i, select(vec3<bool>(false, !var_0.a.c.x, !global4.c.x), vec3<bool>(var_0.a.c.x, !var_0.a.e.x, true), vec3<bool>(any(vec2<bool>(false, global4.c.x)), true, true))), select(global2.a.zz, abs(~vec2<u32>(3512u, global2.a.x)), !(global0[_wgslsmith_index_u32(4294967295u, 4u)] <= 1i) | global2.e.x));
    let var_3 = Struct_1(abs(vec4<u32>(~4294967295u, 1u, 14822u, 29556u)), 1u, select(select(!var_2.a.c, select(select(global4.c, var_0.a.c, global4.e.x), vec4<bool>(false, true, true, var_0.a.c.x), vec4<bool>(global2.e.x, global4.c.x, var_0.a.e.x, var_2.a.e.x)), vec4<bool>(all(global4.c.zxy), global4.e.x, 0i != global2.d, select(var_2.a.c.x, var_2.a.c.x, var_0.a.e.x))), select(!select(vec4<bool>(false, global4.c.x, true, var_2.a.c.x), global4.c, true), vec4<bool>(true, var_2.a.c.x == var_2.a.e.x, var_2.a.c.x, all(vec3<bool>(global4.e.x, var_2.a.e.x, global2.e.x))), global4.c.x), all(vec2<bool>(true, true))), -global2.d, vec3<bool>(all(select(var_0.a.c, global4.c, vec4<bool>(var_2.a.e.x, true, var_2.a.c.x, true))) | !var_0.a.e.x, false, -_wgslsmith_mod_i32(-2932i, -3120i) != (global2.d | global0[_wgslsmith_index_u32(arg_0 << (4294967295u % 32u), 4u)])));
    return Struct_3(Struct_1(vec4<u32>(min(var_0.a.b, var_2.b.x), firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(17593u, var_3.b), vec2<u32>(27968u, var_3.b)), arg_0 | 1u) & global4.a, ~(~(~0u)), select(!global4.c, !vec4<bool>(global4.e.x, global2.c.x, false, var_2.a.c.x), true), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.d, 0i, -1i, var_2.a.d), vec4<i32>(23163i, global0[_wgslsmith_index_u32(1u, 4u)], -33144i, 0i)), -1i), !select(vec3<bool>(var_0.a.e.x, true, global4.c.x), var_0.a.e, vec3<bool>(global2.e.x, true, false))), max(var_3.a.xx, var_0.a.a.xz >> (abs(u_input.c) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = func_2(u_input.c.x);
    var_0 = Struct_3(var_0.a, vec2<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), global2.a.x)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a.x)))));
    global0 = array<i32, 4>();
    var var_2 = var_0.a;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 4>();
    var var_0 = abs(~(global2.a.wzw ^ vec3<u32>(global4.a.x, 30667u, global4.a.x))) << (select(firstTrailingBit(select(global2.a.zwz, select(vec3<u32>(u_input.b.x, 15640u, 4294967295u), vec3<u32>(u_input.c.x, global4.a.x, u_input.c.x), false), global2.e.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, global4.a.x ^ global2.a.x, reverseBits(u_input.c.x)), ~func_1(Struct_2(vec2<f32>(-305f, -2303f), 2147483647i, vec3<f32>(-1428f, -100f, 1517f)), Struct_2(vec2<f32>(367f, -798f), -1i, vec3<f32>(-1000f, -104f, -1000f)), -909f, Struct_2(vec2<f32>(862f, -2189f), -2147483647i, vec3<f32>(-724f, 403f, 790f)))), global2.e) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global4.b, 29570u, global4.a.x), global2.a), _wgslsmith_mult_u32(var_0.x, 21827u)), ~(~global4.b)), ~vec2<u32>(func_1(Struct_2(vec2<f32>(-1000f, 1000f), 1i, vec3<f32>(-632f, -774f, 1439f)), Struct_2(vec2<f32>(-1000f, 348f), global2.d, vec3<f32>(757f, -1344f, 382f)), -725f, Struct_2(vec2<f32>(-1167f, -1267f), global2.d, vec3<f32>(1020f, -475f, 883f))).x, firstTrailingBit(u_input.b.x))));
    let var_2 = select(func_2(u_input.e).a.b, global2.b, any(vec4<bool>(true, any(vec4<bool>(false, global4.c.x, false, true)), global4.c.x, true))) ^ 1u;
    var var_3 = any(vec3<bool>(!(!global4.c.x), true, all(select(global2.e, vec3<bool>(true, global4.c.x, true), false)) || global4.c.x));
    var_1 = 42599u;
    var var_4 = 29218u;
    var var_5 = global2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(true, global2.d, global2.a.x).x, _wgslsmith_f_op_f32(1100f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-629f, 645f)))))), global4.a.xw, global4.a.yxz);
}

