struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, false, true));

var<private> global1: array<u32, 30>;

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 12u)];
    global2 = arg_0;
    global4 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_div_i32(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, 1i, arg_2, -1i), vec4<i32>(0i, u_input.c, u_input.c, arg_1)), ~vec4<i32>(-5057i, 1i, 59975i, u_input.c)), 29296i, arg_1), vec3<i32>(-12819i, arg_1, u_input.c)));
    global1 = array<u32, 30>();
    return vec4<bool>(true, true, var_0.c.x, select(all(select(!vec4<bool>(false, global0.a.x, false, true), vec4<bool>(false, var_0.b, arg_0.a.x, global2.a.x), select(var_0.a.x, true, false))), var_0.a.x, true));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec2<bool>(all(func_3(Struct_1(global2.a, false, global2.c), -1i, -u_input.c, global4[_wgslsmith_index_u32(u_input.b.x, 12u)])), func_3(Struct_1(global0.a, !global2.b, vec3<bool>(false, global2.b, true)), ~(1i << (u_input.a.x % 32u)), u_input.c, Struct_1(global0.c.xz, global0.b, global0.c)).x), true, select(global0.c, global2.c, func_3(global4[_wgslsmith_index_u32(0u, 12u)], ~(~0i), u_input.c, global4[_wgslsmith_index_u32(u_input.b.x, 12u)]).wzx));
    var var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(max(~global1[_wgslsmith_index_u32(27086u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42418u, 30u)], 30u)] % 32u), 30u)]), abs(~50498u), 858u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(54902u, 213u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(894u, 30u)], 1u)), abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59139u, 30u)], 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(1u, 30u)], 80123u))), ~u_input.a.x, firstTrailingBit(global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(1863u, 30u)]), global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), 30u)])), vec3<u32>(~abs(49729u), select(1u, _wgslsmith_sub_u32(u_input.b.x, 71590u), -1044f >= arg_0.x), _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 30u)] & 0u)) ^ vec3<u32>(~1u, u_input.a.x, ~u_input.b.x));
    var_1 = abs(countOneBits(~(~(~vec3<u32>(1u, 19104u, u_input.a.x)))));
    let var_2 = ~vec2<i32>(30835i, -1i);
    var var_3 = !(!all(vec2<bool>(false, true)));
    return (select(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 21262i), vec3<i32>(var_2.x, 0i, var_2.x)), countOneBits(_wgslsmith_add_i32(-2823i, -1i)), false) == _wgslsmith_dot_vec2_i32(var_2, select(var_2, min(var_2, vec2<i32>(var_2.x, -1i)), !var_0.b))) && all(!(!select(vec4<bool>(global2.a.x, true, global2.c.x, global2.c.x), vec4<bool>(false, true, global0.a.x, true), false)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global0 = Struct_1(select(arg_2.c.xz, vec2<bool>(arg_2.a.x, all(vec4<bool>(false, global0.a.x, true, global0.c.x))), !vec2<bool>(arg_2.b, all(global2.c))), true, vec3<bool>(arg_2.b, arg_2.a.x, arg_2.b));
    var var_0 = (~u_input.b.x < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(~29690u, 30u)]), 30u)], 30u)]) & false;
    global2 = Struct_1(global2.c.xy, 1u >= ~select(countOneBits(1u), _wgslsmith_mod_u32(u_input.a.x, u_input.b.x), arg_2.a.x), vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1458f, 1380f, 411f) - vec3<f32>(359f, 1150f, 851f)))), all(select(select(vec4<bool>(global2.a.x, true, global0.a.x, true), vec4<bool>(false, global0.c.x, false, global0.a.x), vec4<bool>(false, arg_2.b, arg_2.b, true)), vec4<bool>(global2.b, false, arg_2.b, global0.c.x), true)), arg_2.c.x));
    global0 = Struct_1(vec2<bool>(any(vec3<bool>(!arg_2.c.x, global2.b, select(arg_2.c.x, global0.c.x, arg_2.b))), all(vec2<bool>(any(arg_2.c), !arg_2.c.x))), global2.a.x, global0.c);
    global2 = global4[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x) & ~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a.x), min(min(u_input.b, vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 34824u)), abs(u_input.b)))), 12u)];
    return ~abs(_wgslsmith_mod_u32(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x & abs(func_1(vec3<i32>(u_input.c, 38537i, 49620i), -1007f, Struct_1(vec2<bool>(global0.c.x, global2.c.x), global2.a.x, vec3<bool>(global0.b, global0.c.x, global2.a.x)), vec4<i32>(u_input.c, -25084i, u_input.c, u_input.c))), 30u)]);
    global4 = array<Struct_1, 12>();
    global1 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(1930f)), _wgslsmith_f_op_f32(-1221f * 141f), _wgslsmith_f_op_f32(max(1107f, -1214f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1515f, -1641f, -1855f)))))), vec2<i32>(-u_input.c, firstTrailingBit(2147483647i) ^ -1i) << (vec2<u32>(var_0, ~u_input.a.x) % vec2<u32>(32u)));
}

