struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, true, false, true);

var<private> global1: bool = false;

var<private> global2: array<i32, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    return arg_0;
}

fn func_1() -> vec3<u32> {
    global0 = array<bool, 5>();
    global2 = array<i32, 10>();
    let var_0 = func_2(Struct_1(u_input.b.x, abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 83133u, 62729u, u_input.c), vec4<u32>(u_input.c, 47594u, 36853u, 0u)), firstLeadingBit(vec4<u32>(13844u, u_input.b.x, 0u, 1u)))), u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-609f, _wgslsmith_f_op_f32(max(955f, 780f)))), _wgslsmith_f_op_f32(-1050f * 144f))), global0[_wgslsmith_index_u32(~1u, 5u)]), ~0i, all(!select(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)]))));
    let var_1 = Struct_1(max(u_input.b.x, u_input.c), vec4<u32>(u_input.c, 1u, var_0.a, abs(4294967295u)), 0u, _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-457f, var_0.d)) - var_0.d), _wgslsmith_f_op_f32(-170f * 673f)))), true);
    let var_2 = u_input.b;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b.wwx, max(firstLeadingBit(vec3<u32>(var_2.x, var_2.x, 1u) | var_1.b.xyz), _wgslsmith_sub_vec3_u32(var_1.b.ywx, vec3<u32>(0u, var_0.c, var_0.b.x)))), _wgslsmith_mod_u32(~var_2.x, var_0.c), u_input.b.x);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>((u_input.c >> (_wgslsmith_sub_u32(50250u, 1u) % 32u)) >> (56340u % 32u), _wgslsmith_dot_vec3_u32(func_1(), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 45480u, var_0.x), vec3<u32>(58203u, 20248u, var_0.x))) >> (~4294967295u % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u & u_input.c), func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(50593u, 10u)], 0i), vec2<i32>(-1i, -7046i)), vec3<f32>(979f, 527f, 688f), vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(countOneBits(var_0.x), var_0.x), 4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b.x, 0u, 17554u), countOneBits(vec4<u32>(u_input.c, 4294967295u, 4294967295u, var_0.x))), firstLeadingBit(vec4<u32>(u_input.b.x, var_0.x, 0u, var_0.x)) >> (~vec4<u32>(0u, var_0.x, 42782u, 7989u) % vec4<u32>(32u))), ~(~countOneBits(vec4<u32>(47899u, var_0.x, 0u, u_input.c)))));
    global0 = array<bool, 5>();
    var_0 = min(~(~func_2(func_2(Struct_1(var_0.x, var_1, u_input.c, 525f, global0[_wgslsmith_index_u32(0u, 5u)]), 0i, global0[_wgslsmith_index_u32(u_input.c, 5u)]), -2059i, true).b.yx), ~func_2(func_2(Struct_1(var_1.x, vec4<u32>(7944u, var_1.x, 65141u, 1u), var_0.x, 109f, false), 0i, global0[_wgslsmith_index_u32(8868u, 5u)] | global0[_wgslsmith_index_u32(var_1.x, 5u)]), _wgslsmith_add_i32(0i, 2625i >> (1u % 32u)), !func_2(Struct_1(var_0.x, var_1, 1u, 401f, global0[_wgslsmith_index_u32(var_0.x, 5u)]), u_input.a, false).e).b.zw);
    global1 = global0[_wgslsmith_index_u32(var_0.x, 5u)];
    var_0 = var_1.zz;
    global1 = !any(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(1u, 5u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-535f, _wgslsmith_f_op_f32(floor(-1021f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f - 488f))), 772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(389f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-979f, 428f, -582f)) * vec3<f32>(1000f, -332f, 1259f)) - vec3<f32>(267f, _wgslsmith_f_op_f32(abs(500f)), -105f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1653f, 1870f, 787f) + vec3<f32>(-1229f, 1597f, -299f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1031f, -2724f, 310f) + vec3<f32>(-1488f, -361f, -256f))), vec3<f32>(-453f, _wgslsmith_f_op_f32(select(135f, -662f, global0[_wgslsmith_index_u32(var_0.x, 5u)])), -465f), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(16178u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(var_0.x, 5u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(65914u, 5u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), global0[_wgslsmith_index_u32(59345u, 5u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(590f, -940f, 241f))), vec3<f32>(-234f, -925f, -407f), true))))), vec4<u32>(0u, 32699u, u_input.c, ~countOneBits(var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(round(-1558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-196f, 551f)))))));
}

