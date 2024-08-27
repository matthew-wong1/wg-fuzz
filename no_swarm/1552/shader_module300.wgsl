struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<bool>(false, true, false, false), 401f), Struct_2(vec4<bool>(false, false, false, true), -658f), Struct_2(vec4<bool>(true, false, true, false), -501f), Struct_2(vec4<bool>(true, false, false, true), 1000f), Struct_2(vec4<bool>(false, false, false, false), 872f), Struct_2(vec4<bool>(true, true, true, false), 949f));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(30912u, 0u), -6452i), Struct_1(vec2<u32>(1u, 1u), 0i), Struct_1(vec2<u32>(64595u, 70589u), -1i));

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(17742u, 99116u), Struct_2(vec4<bool>(true, true, false, true), -787f), 1u, vec2<f32>(856f, -551f), Struct_1(vec2<u32>(0u, 4294967295u), 2147483647i));

var<private> global4: Struct_2 = Struct_2(vec4<bool>(false, false, true, true), 1000f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = 796f;
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_1(firstTrailingBit(~u_input.a) << (select(vec2<u32>(~1u, _wgslsmith_sub_u32(4294967295u, global3.e.a.x)), ~vec2<u32>(0u, global3.a.x), func_2(1i)) % vec2<u32>(32u)), -2147483647i);
    global1 = array<Struct_1, 3>();
    global2 = array<vec3<u32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2110f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b, arg_1) * _wgslsmith_f_op_f32(-global3.d.x)))));
    return var_0.b;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = select(global3.b.a.wzy, vec3<bool>(true, 1518f < _wgslsmith_f_op_f32(-global4.b), !global3.b.a.x), select(arg_1.a.xww, !vec3<bool>(global3.b.a.x, !global3.b.a.x, true), select(select(vec3<bool>(true, true, true), !global4.a.zxz, 1000f == global3.d.x), vec3<bool>(global3.b.a.x, !global4.a.x, true), vec3<bool>(true, global3.b.a.x, false))));
    let var_1 = global3.b.a.x;
    global1 = array<Struct_1, 3>();
    var var_2 = arg_1.a.wz;
    var var_3 = max(~vec2<u32>(~(~4294967295u), _wgslsmith_clamp_u32(u_input.a.x, ~22667u, ~41231u)), _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a & (global3.a | global3.e.a)), _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(9022u, 4294967295u)), select(~vec2<u32>(52772u, 1u), ~vec2<u32>(4294967295u, 61900u), all(vec2<bool>(arg_1.a.x, false))))));
    return Struct_2(vec4<bool>(true, global3.b.a.x, !select(true, true, any(vec2<bool>(var_0.x, false))), any(vec4<bool>(var_2.x, !var_0.x, true, true))), _wgslsmith_f_op_f32(2278f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, -766f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = global3.b;
    return Struct_3(abs(vec2<u32>(~1u, ~28904u)), global0[_wgslsmith_index_u32(1u, 6u)], ~_wgslsmith_div_u32(_wgslsmith_sub_u32(select(u_input.a.x, arg_1.e.a.x, var_0.a.x), ~arg_1.a.x), _wgslsmith_div_u32(u_input.a.x, 4294967295u) | _wgslsmith_sub_u32(64682u, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(global3.d - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d)) + _wgslsmith_f_op_vec2_f32(-global3.d))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, ~(~9613u)) >> (~_wgslsmith_div_u32(max(39043u, 4294967295u), 0u | arg_1.e.a.x) % 32u), 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global3 = func_4(func_3(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(169f, global3.d.x, global3.b.b, -654f) + vec4<f32>(-860f, global3.d.x, global4.b, -175f)), _wgslsmith_f_op_f32(floor(-186f)), firstTrailingBit(vec2<i32>(global3.e.b, 2147483647i))) << (global3.a.x % 32u), Struct_2(!(!vec4<bool>(false, global3.b.a.x, false, var_0)), _wgslsmith_f_op_f32(global3.b.b + 555f)), _wgslsmith_sub_u32(global3.e.a.x, 4294967295u) ^ _wgslsmith_add_u32(~global3.e.a.x, 1u), firstLeadingBit(global3.e.b) | min(-2147483647i, global3.e.b)), Struct_3(~reverseBits(u_input.a), Struct_2(!global3.b.a, _wgslsmith_f_op_f32(619f + 1974f)), global3.c | _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.b, _wgslsmith_f_op_f32(min(242f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(select(global4.b, 1167f, global4.a.x)), -537f))), Struct_1(select(u_input.a ^ u_input.a, ~u_input.a, func_3(-27478i, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 1u, 8448i).a.zz), -2147483647i)), Struct_1(vec2<u32>(global3.c, min(~u_input.a.x, global3.e.a.x)), _wgslsmith_mod_i32(1i, global3.e.b) ^ (~global3.e.b << (~u_input.a.x % 32u))), _wgslsmith_add_i32(~abs(global3.e.b), _wgslsmith_mod_i32(46973i, 1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.d.x, global4.b, global3.b.b))) * vec3<f32>(-1000f, 1688f, global4.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2388f, global3.b.b, -326f)))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, -1220f, global4.b), vec3<f32>(_wgslsmith_f_op_f32(-global3.b.b), global3.d.x, _wgslsmith_f_op_f32(985f * 287f)), global3.b.a.x)))));
    let var_2 = -1i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_4(Struct_2(vec4<bool>(false, global4.a.x, global3.b.a.x, true), 1400f), Struct_3(u_input.a, Struct_2(vec4<bool>(var_0, false, var_0, var_0), global4.b), u_input.a.x, var_1.yx, global1[_wgslsmith_index_u32(global3.a.x, 3u)]), global3.e, global3.e.b).c, _wgslsmith_mod_u32(global3.e.a.x, 80637u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(31118u, 31u)], global2[_wgslsmith_index_u32(global3.c, 31u)]), 31u)]) % 32u);
    global4 = func_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, var_2), vec2<i32>(-1i, global3.e.b) & vec2<i32>(var_2, var_2)), -(~vec2<i32>(76796i, 2147483647i))), -39579i, var_2), global3.b, 0u, ~(~global3.e.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(global3.e.a, reverseBits(_wgslsmith_dot_vec2_u32(u_input.a ^ vec2<u32>(global3.a.x, u_input.a.x), u_input.a)));
}

