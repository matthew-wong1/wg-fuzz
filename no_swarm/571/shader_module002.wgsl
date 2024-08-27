struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, true, false, true, true, false, false, false, false, false, false, true, false, false, false, true, false, true, true, true, true, true, true, false);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(5727u, -926f, true, false), Struct_1(11614u, 1788f, true, true), Struct_1(4294967295u, 1563f, false, true), Struct_1(1441u, 1000f, false, true), Struct_1(30722u, -1000f, true, false), Struct_1(29964u, 185f, true, true), Struct_1(0u, -258f, true, false), Struct_1(19208u, 521f, false, false), Struct_1(0u, 578f, true, true), Struct_1(0u, 1021f, true, false), Struct_1(4294967295u, 325f, true, true), Struct_1(1u, 957f, true, true), Struct_1(0u, 1480f, true, true), Struct_1(11383u, -934f, false, true), Struct_1(83853u, -980f, true, true), Struct_1(0u, 1433f, false, true), Struct_1(10511u, 2193f, true, true), Struct_1(51399u, -1288f, true, true), Struct_1(54390u, -2262f, false, true));

var<private> global2: array<f32, 14> = array<f32, 14>(-400f, 791f, 1630f, -2203f, -1000f, 108f, 171f, 1144f, 590f, 973f, -1266f, 983f, -2911f, -1785f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> i32 {
    global2 = array<f32, 14>();
    var var_0 = false;
    var var_1 = Struct_1(u_input.b, 2492f, true, any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 14u)] > global2[_wgslsmith_index_u32(u_input.b, 14u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], false), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false), global0[_wgslsmith_index_u32(50127u, 26u)]))));
    global1 = array<Struct_1, 19>();
    let var_2 = ~4294967295u;
    return ~_wgslsmith_dot_vec2_i32((u_input.e.zw | u_input.c.yx) ^ u_input.a, ~(~vec2<i32>(u_input.d, u_input.a.x))) | -12473i;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = 1i;
    global1 = array<Struct_1, 19>();
    var var_2 = u_input.e.x;
    let var_3 = global1[_wgslsmith_index_u32(var_0.a ^ 4294967295u, 19u)];
    return _wgslsmith_div_f32(-265f, -354f);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-1i, vec3<u32>(44380u, u_input.b, 0u) >> (vec3<u32>(u_input.b, 0u, 38009u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(73848u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, 25822u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -802f))))) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 14u)] - _wgslsmith_f_op_f32(step(-1145f, _wgslsmith_f_op_f32(arg_0.x + 1463f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1053f, arg_0.x))))))));
    let var_1 = ~(~(~vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(11642u, 1u));
    var var_2 = vec2<u32>(53026u, u_input.b ^ u_input.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(29357u >> (1u % 32u), abs(u_input.b)), ~(~abs(vec2<u32>(u_input.b, u_input.b))));
    var var_3 = _wgslsmith_add_vec2_i32(-u_input.a, abs(u_input.a >> (select(var_1, ~vec2<u32>(u_input.b, var_2.x), u_input.d <= u_input.c.x) % vec2<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(513f * global2[_wgslsmith_index_u32(var_1.x, 14u)]), _wgslsmith_f_op_f32(sign(2175f))))))));
    return _wgslsmith_f_op_f32(func_3(-39716i, abs((vec3<u32>(var_1.x, 1u, var_2.x) & ~vec3<u32>(0u, 1u, var_1.x)) ^ vec3<u32>(abs(u_input.b), _wgslsmith_add_u32(8020u, var_2.x), reverseBits(var_2.x))), _wgslsmith_mod_vec3_u32(countOneBits(min(~vec3<u32>(36878u, var_1.x, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(4294967295u, var_2.x, 0u)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, u_input.b) << ((vec3<u32>(68530u, var_1.x, var_1.x) >> (vec3<u32>(62273u, u_input.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, var_2.x, 64279u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-942f * _wgslsmith_f_op_f32(trunc(var_4))), -918f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec2<i32>(func_1(), ~u_input.e.x), ~u_input.c.yy);
    global0 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(865f, global2[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(11146u, 26u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 14u)]), -541f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 14u)], 1000f, global2[_wgslsmith_index_u32(u_input.b, 14u)])))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(u_input.b, 1u) << (u_input.b % 32u), 266u, ~u_input.b, 33483u), select(vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, firstTrailingBit(18466u)), ~70589u, u_input.b), ~firstLeadingBit(vec4<u32>(71733u, 47979u, 4294967295u, u_input.b)), global0[_wgslsmith_index_u32(~select(~30570u, u_input.b, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], true))), 26u)])), 19u)];
    global1 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 61599u, var_2.a)), abs(vec3<u32>(var_2.a, 4294967295u, var_2.a))));
}

