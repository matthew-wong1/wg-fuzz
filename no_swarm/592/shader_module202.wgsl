struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(23275u, 0u, 0u, 12086u);

var<private> global1: array<Struct_5, 29>;

var<private> global2: Struct_4 = Struct_4(0u, Struct_3(-1523f, -1i, Struct_2(-1293f, vec4<bool>(true, true, true, true), vec2<f32>(430f, 382f), Struct_1(-2882f, 654f, -416f, 1436f)), vec4<u32>(55138u, 13489u, 65185u, 1u)), vec2<f32>(-709f, -1831f), Struct_2(1000f, vec4<bool>(true, false, true, true), vec2<f32>(656f, -1000f), Struct_1(1283f, -1108f, 281f, -871f)), 0u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_4 {
    let var_0 = global2.b.d.yz;
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(global2.e, 66521u, 0u, 1u), global2.b.d);
    var var_1 = Struct_1(arg_1.d, -698f, _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)), arg_1.c));
    var var_2 = vec2<u32>(~(u_input.c >> (7033u % 32u)), global2.b.d.x);
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b + arg_1.b))) != _wgslsmith_f_op_f32(-271f - -1071f), 15676u <= var_0.x);
    return Struct_4(~29318u, Struct_3(_wgslsmith_f_op_f32(-global2.b.c.d.d), arg_0, global2.d, reverseBits(min(global2.b.d, vec4<u32>(global0.x, 1u, 51729u, var_2.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-430f, global2.d.c.x))) + global2.b.c.c))), Struct_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(var_1.c))), select(select(!global2.d.b, select(global2.b.c.b, vec4<bool>(global2.b.c.b.x, false, true, var_3.x), global2.d.b), u_input.b.x <= -18307i), vec4<bool>(true, true, true, true), !(arg_2 && arg_2)), vec2<f32>(1032f, -618f), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c))), var_1.d, _wgslsmith_f_op_f32(trunc(global2.d.c.x)), global2.b.c.a)), firstLeadingBit(var_0.x) & min(~(global2.e >> (global2.b.d.x % 32u)), global2.b.d.x));
}

fn func_3() -> f32 {
    let var_0 = func_2(countOneBits(174i), Struct_1(_wgslsmith_f_op_f32(sign(global2.b.a)), _wgslsmith_f_op_f32(-global2.b.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)), global2.b.a), true).d;
    global2 = func_2(global2.b.b, func_2(max(0i, global2.b.b), func_2(-2147483647i ^ (u_input.b.x ^ -10854i), global2.b.c.d, !any(var_0.b.xw)).b.c.d, !((1i << (global2.b.d.x % 32u)) >= (-1i ^ global2.b.b))).b.c.d, all(select(select(!global2.d.b, vec4<bool>(var_0.b.x, false, global2.b.c.b.x, true), false), global2.d.b, !func_2(global2.b.b, var_0.d, global2.d.b.x).b.c.b)));
    global2 = Struct_4(global2.a, global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.c.x))), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(820f - 928f)))), global2.d, ~select(4294967295u, 1u, var_0.b.x));
    global0 = global2.b.d ^ countOneBits(vec4<u32>(~30211u, countOneBits(global0.x), global0.x << (39390u % 32u), global2.a) ^ global2.b.d);
    var var_1 = (u_input.b.x ^ ~firstLeadingBit(2147483647i)) < 0i;
    return _wgslsmith_f_op_f32(max(1258f, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.c.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.c)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = arg_2;
    let var_1 = vec4<bool>(global2.d.b.x, any(!select(!vec2<bool>(true, global2.d.b.x), global2.d.b.xz, func_2(global2.b.b, Struct_1(global2.b.c.c.x, 748f, global2.c.x, 508f), global2.d.b.x).d.b.zz)), true, any(global2.b.c.b.zzx));
    global1 = array<Struct_5, 29>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.c.x) + func_2(arg_1, func_2(_wgslsmith_add_i32(arg_1, u_input.b.x), func_2(u_input.b.x, global2.b.c.d, true).b.c.d, all(vec2<bool>(var_1.x, var_1.x))).b.c.d, (u_input.c > global2.b.d.x) & all(var_1)).c.x), _wgslsmith_f_op_f32(393f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -887f))));
    let var_3 = func_2(-_wgslsmith_dot_vec2_i32(-(~u_input.b), vec2<i32>(abs(u_input.a), global2.b.b)), Struct_1(_wgslsmith_f_op_f32(-339f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(596f)))), -1158f, 478f, -1000f), !var_1.x);
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(~global2.e, arg_3.x << (global2.a % 32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0.x), ~global0.zz, ~vec2<u32>(global0.x, var_3.a))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = global2.b.c.b;
    global1 = array<Struct_5, 29>();
    let var_1 = false;
    global2 = func_2(~global2.b.b, global2.d.d, all(!select(vec3<bool>(var_0.x, true, global2.d.b.x), vec3<bool>(var_0.x, global2.d.b.x, global2.d.b.x), var_0.yxw)) & (_wgslsmith_div_u32(global0.x, global0.x) <= ~global0.x));
    var var_2 = global1[_wgslsmith_index_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3()), global2.d.d.a, -798f), firstLeadingBit(~(~(-2663i))), !(!any(var_0.wz)) | global2.d.b.x, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global2.b.d.x, 46331u, ~51032u, 74723u)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.xw, global0.xw), ~global2.b.d.x), ~31082u, 63552u, global0.x))), 29u)];
    return var_2.a.c;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> vec4<u32> {
    global0 = global2.b.d;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global2.b.c.c.x), -798f)), _wgslsmith_f_op_f32(global2.b.a * -498f));
    global1 = array<Struct_5, 29>();
    global0 = global2.b.d;
    global1 = array<Struct_5, 29>();
    return ~vec4<u32>(14533u, ~global2.a, 4294967295u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(vec4<u32>(31352u, u_input.c, ~45364u, 4294967295u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(~global2.b.d), global2.b.d), func_5(false, func_1(vec3<f32>(263f, global2.b.c.d.c, global2.d.c.x)), (-292f <= global2.c.x) || global2.b.c.b.x, Struct_3(global2.c.x, u_input.b.x | -23834i, Struct_2(global2.c.x, global2.d.b, vec2<f32>(global2.d.d.c, global2.d.c.x), Struct_1(global2.d.a, global2.c.x, 403f, global2.d.d.d)), global2.b.d))));
    let var_0 = global2.d.b.ywy;
    let var_1 = Struct_5(global2.b, vec4<bool>(true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec3<i32>(global2.b.b, global2.b.b, global2.b.b)) > (global2.b.b | firstLeadingBit(1i)), !((false & var_0.x) | true), all(global2.d.b)), global0.x, ~_wgslsmith_clamp_u32(u_input.c, ~(~85074u), global0.x));
    let var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(486f, func_2(~var_1.a.b, global2.d.d, any(var_1.a.c.b.yzx)).d.d.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global2.b.c.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, -457f))), var_0.xy)))));
}

