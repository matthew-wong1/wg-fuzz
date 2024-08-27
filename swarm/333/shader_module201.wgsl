struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: array<u32, 20> = array<u32, 20>(0u, 0u, 4294967295u, 1u, 17034u, 4294967295u, 4294967295u, 4294967295u, 1u, 6572u, 4294967295u, 49105u, 1735u, 18148u, 4294967295u, 0u, 67088u, 4294967295u, 4294967295u, 39711u);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(1u, vec4<bool>(true, true, false, true)), Struct_3(4294967295u, vec4<bool>(false, false, false, false)), Struct_3(4294967295u, vec4<bool>(true, false, false, true)), Struct_3(2635u, vec4<bool>(true, true, false, false)), Struct_3(4294967295u, vec4<bool>(true, false, false, true)), Struct_3(7473u, vec4<bool>(true, false, false, true)), Struct_3(4294967295u, vec4<bool>(true, true, false, false)), Struct_3(16856u, vec4<bool>(true, true, false, false)), Struct_3(0u, vec4<bool>(true, true, false, true)), Struct_3(4294967295u, vec4<bool>(true, true, true, false)), Struct_3(0u, vec4<bool>(false, false, false, false)), Struct_3(55657u, vec4<bool>(true, true, true, true)), Struct_3(4294967295u, vec4<bool>(false, true, true, true)), Struct_3(4294967295u, vec4<bool>(true, true, false, true)));

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global2 = array<Struct_3, 14>();
    let var_0 = select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), true, true || (global3.x > 0u)), vec4<bool>(!(0u >= global0[_wgslsmith_index_u32(74746u, 6u)]), true, any(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(~(~global3.x), 6u)] < ~0u));
    global1 = array<u32, 20>();
    let var_1 = Struct_2(34790u, Struct_1(vec2<bool>(true, true), 65619u, 1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(-1916f - -820f), _wgslsmith_f_op_f32(278f + -218f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(238f, 273f, 2195f, 1000f))))), true), var_0.zzz, vec4<u32>(global3.x, countOneBits(global3.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(64515u, 5440u, 9865u, 0u), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91661u, 6u)], 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19736u, 20u)], 20u)], 6u)], u_input.d))), ~29213u));
    global2 = array<Struct_3, 14>();
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_4) -> i32 {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(9341u, ~16927u), global1[_wgslsmith_index_u32(~1u, 20u)] | _wgslsmith_div_u32(arg_2.d.x ^ arg_3.a.a, arg_1.a.a));
    global0 = array<u32, 6>();
    global1 = array<u32, 20>();
    var var_1 = abs(func_3(u_input.c.x));
    let var_2 = arg_1.a.b.x;
    return ~_wgslsmith_mod_i32(-1i, ~_wgslsmith_add_i32(u_input.c.x, i32(-1i) * -2147483647i));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.c | firstTrailingBit(firstLeadingBit(vec4<i32>(-u_input.c.x, func_2(false, Struct_4(Struct_3(32369u, vec4<bool>(true, true, true, true))), Struct_2(4294967295u, Struct_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(16002u, 20u)], -487f, vec4<f32>(-1539f, -363f, 982f, -494f), true), vec3<bool>(true, true, false), vec4<u32>(global1[_wgslsmith_index_u32(62002u, 20u)], 44301u, 82028u, global3.x)), Struct_4(global2[_wgslsmith_index_u32(36754u, 14u)])), u_input.c.x, ~u_input.c.x)));
    let var_1 = !(!vec3<bool>(all(vec2<bool>(false, false)) || all(vec3<bool>(true, false, false)), false, true));
    let var_2 = u_input.b.zzw;
    global2 = array<Struct_3, 14>();
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~56046u, abs(u_input.a.x)), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 47936u), ~var_2.zx)), ~abs(var_2.x))), 14u)];
    return Struct_1(select(select(var_3.b.wy, var_1.yz, select(!var_1.yx, select(vec2<bool>(true, true), vec2<bool>(var_3.b.x, var_1.x), vec2<bool>(var_1.x, false)), var_1.x)), !select(vec2<bool>(true, true), var_1.xx, true), true), ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(49955u, var_3.a), 20u)], 6u)], _wgslsmith_div_u32(0u, 51199u), firstLeadingBit(4294967295u)) | ~countOneBits(28512u), _wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-943f + -365f), -3537f, 1f) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(1700f + _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_div_f32(_wgslsmith_div_f32(2295f, 571f), _wgslsmith_f_op_f32(step(1247f, 165f))), -626f)), var_3.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    global2 = array<Struct_3, 14>();
    var var_0 = u_input.c.x;
    var var_1 = !(!arg_1.a.x);
    let var_2 = global3.x | 24526u;
    var_0 = 7149i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.d.x, arg_0.c), _wgslsmith_div_f32(-103f, arg_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 14>();
    let var_0 = -u_input.c.xww;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_1(), func_1(), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.b.x, true), 6u)], 45156u), 6u)])))) - _wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1().d.x * _wgslsmith_f_op_f32(f32(-1f) * -556f))))));
    var var_2 = global2[_wgslsmith_index_u32(select(4294967295u, 53080u, any(vec4<bool>(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, false, false)), func_1().e))), 14u)];
    var var_3 = !var_2.b.zxz;
    let var_4 = 7601u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, u_input.c.x), vec3<i32>(-1i, u_input.c.x, 22782i)), min(max(var_0.x, 1i), 0i)), i32(-1i) * -28380i, 1i, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))));
}

