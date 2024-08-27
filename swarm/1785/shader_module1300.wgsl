struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-267f, -1072f)), vec4<u32>(61357u, 4294967295u, 0u, 41932u), vec4<bool>(false, false, false, false), vec3<u32>(1u, 12136u, 4294967295u));

var<private> global1: array<u32, 31> = array<u32, 31>(1u, 43071u, 12836u, 4294967295u, 41656u, 1u, 4294967295u, 0u, 61458u, 83856u, 4294967295u, 0u, 17915u, 0u, 1u, 4294967295u, 4294967295u, 1u, 14544u, 0u, 1u, 6672u, 4294967295u, 4294967295u, 17789u, 4294967295u, 4294967295u, 4294967295u, 44743u, 0u, 16653u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> vec2<u32> {
    global0 = Struct_2(Struct_1(global0.a.a), vec4<u32>(global1[_wgslsmith_index_u32(~4294967295u, 31u)], abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 27106u), arg_1.d.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 13463u, 117775u), vec3<u32>(47434u, 1u, 0u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 4294967295u), ~arg_1.d.b.wy) << (firstTrailingBit(arg_1.a | 1u) % 32u), 4294967295u), !select(!select(vec4<bool>(arg_0, false, arg_1.d.c.x, arg_1.d.c.x), arg_1.d.c, vec4<bool>(true, arg_0, true, arg_0)), vec4<bool>(any(vec2<bool>(arg_0, false)), global0.c.x && arg_1.d.c.x, select(false, arg_1.d.c.x, arg_0), !arg_0), select(select(arg_1.d.c.x, false, false), all(global0.c.zxw), !arg_0)), u_input.c.yzw);
    global1 = array<u32, 31>();
    global0 = arg_1.d;
    global0 = Struct_2(global0.a, vec4<u32>(1u, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(78680u, countOneBits(arg_1.a)), 31u)], _wgslsmith_clamp_u32(~countOneBits(0u), u_input.c.x, u_input.a), global0.b.x), !(!(!select(vec4<bool>(true, false, true, global0.c.x), arg_1.d.c, vec4<bool>(true, arg_1.d.c.x, false, arg_1.d.c.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(54843u, 31u)], 4309u, 27697u, u_input.a), vec4<u32>(0u, 1u, arg_1.d.d.x, u_input.c.x)) | (global0.b | global0.b), vec4<u32>(_wgslsmith_div_u32(133560u, global0.d.x), ~global1[_wgslsmith_index_u32(2743u, 31u)], _wgslsmith_mult_u32(global0.b.x, global1[_wgslsmith_index_u32(global0.d.x, 31u)]), 16360u)), 4294967295u, 15019u));
    var var_0 = 503f;
    return ~arg_1.d.b.zx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    let var_0 = true;
    return ~func_3(true, Struct_3(~0u, Struct_1(vec2<f32>(-204f, arg_1.a.x)), -19292i, Struct_2(Struct_1(vec2<f32>(global0.a.a.x, arg_2)), vec4<u32>(global1[_wgslsmith_index_u32(global0.d.x, 31u)], u_input.a, 104770u, 2199u) >> (u_input.c % vec4<u32>(32u)), vec4<bool>(global0.c.x, true, false, false), vec3<u32>(global1[_wgslsmith_index_u32(global0.d.x, 31u)], u_input.a, global0.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1918f, 295f) * vec2<f32>(global0.a.a.x, arg_0.a.x)))), arg_1.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2(global0.a, abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, global0.b.x, global0.b.x) ^ _wgslsmith_clamp_vec4_u32(arg_3.b, u_input.c, vec4<u32>(global0.d.x, 20359u, 0u, global0.b.x)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(127532u, 31u)], u_input.a, 625u), u_input.c, global0.b)))), vec4<bool>((!arg_0.x | false) | (abs(global0.b.x) <= firstTrailingBit(global0.b.x)), !((arg_1 && true) || all(vec2<bool>(arg_0.x, arg_0.x))), (u_input.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(11324i, 2147483647i, u_input.b))) | (global0.c.x | arg_3.c.x), true), ~_wgslsmith_mult_vec3_u32(u_input.c.xyy, vec3<u32>(~31228u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(14129u, 31u)], 67188u), 1u)));
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(arg_2, 26262i), 35318i, _wgslsmith_clamp_i32(arg_2, u_input.b, 1i));
    let var_1 = 1u;
    let var_2 = min(arg_3.d.xx, func_2(arg_3.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_3.a.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, -1457f)))), _wgslsmith_f_op_f32(sign(-266f))));
    global0 = arg_3;
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_u32(13397u, var_0.d.x);
    let var_2 = var_0.b.x;
    let var_3 = func_1(vec2<bool>(!(var_0.c.x & true), any(vec3<bool>(all(vec4<bool>(true, false, false, arg_1.c.x)), true, !global0.c.x))), true, u_input.b, Struct_2(var_0.a, arg_0.b | ~(~vec4<u32>(18375u, arg_0.b.x, global1[_wgslsmith_index_u32(37914u, 31u)], 61597u)), !select(func_1(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_1.c.x, 11221i, Struct_2(Struct_1(arg_1.a.a), vec4<u32>(var_0.b.x, arg_0.b.x, arg_0.d.x, 0u), vec4<bool>(false, false, arg_0.c.x, true), u_input.c.zwx)).c, var_0.c, false || global0.c.x), _wgslsmith_div_vec3_u32(~vec3<u32>(var_2, global1[_wgslsmith_index_u32(global0.d.x, 31u)], 79881u), global0.b.zwz)));
    var var_4 = -min(~(-vec3<i32>(1i, -1i, u_input.b)), -reverseBits(vec3<i32>(1i, 1i, u_input.b))) | (~vec3<i32>(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, 27536i), vec4<i32>(0i, u_input.b, 2147483647i, u_input.b)), 0i) >> (u_input.c.wzx % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-1000f - 1678f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1264f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.a.x + -329f))), _wgslsmith_f_op_f32(func_4(func_1(vec2<bool>(true, global0.c.x), false, 1i, Struct_2(global0.a, vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(global0.d.x, 31u)], u_input.c.x, 4294967295u), global0.c, u_input.c.xxy)), func_1(vec2<bool>(global0.c.x, false), true, -1i, Struct_2(global0.a, vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(0u, 31u)], u_input.a), global0.c, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13862u, 31u)], 31u)], global0.b.x, 15645u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + _wgslsmith_f_op_f32(-global0.a.a.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) * _wgslsmith_f_op_f32(-var_0.x)), -2010f, var_0.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(step(global0.a.a.x, var_0.x)), -1000f, _wgslsmith_f_op_f32(-global0.a.a.x))))));
    var var_1 = -780f;
    var var_2 = u_input.a;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-311f, _wgslsmith_f_op_f32(ceil(global0.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global0.a.a.x)))), -1396f)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 14774u, 4294967295u), u_input.c), global0.b, true), ~vec2<i32>(u_input.b, -13474i));
}

