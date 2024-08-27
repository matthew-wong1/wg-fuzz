struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<f32, 30>;

var<private> global3: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-636f, 1000f, 437f), vec3<f32>(570f, 368f, 1579f), vec3<f32>(-2058f, 237f, -930f), vec3<f32>(1500f, -677f, 957f), vec3<f32>(549f, 1000f, 274f), vec3<f32>(1841f, 476f, 641f), vec3<f32>(-782f, -880f, 1045f), vec3<f32>(1274f, 2034f, 973f), vec3<f32>(1522f, -1390f, -1142f), vec3<f32>(-1939f, 896f, 1572f), vec3<f32>(-549f, 360f, -1102f), vec3<f32>(-154f, -1731f, -254f), vec3<f32>(1000f, 450f, 561f), vec3<f32>(3231f, 2610f, 192f), vec3<f32>(1237f, -1148f, -481f), vec3<f32>(-260f, -2046f, 542f), vec3<f32>(-266f, -680f, 2208f), vec3<f32>(423f, -700f, -472f), vec3<f32>(-1303f, 313f, -150f), vec3<f32>(663f, -1537f, 2126f), vec3<f32>(692f, 497f, -1000f), vec3<f32>(847f, 171f, 1626f), vec3<f32>(222f, -702f, 1582f), vec3<f32>(457f, 1713f, 643f), vec3<f32>(-1006f, -262f, -1454f), vec3<f32>(1901f, 1072f, -431f), vec3<f32>(-120f, -581f, -135f), vec3<f32>(1261f, 252f, 127f), vec3<f32>(355f, 124f, 913f));

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    global0 = reverseBits(_wgslsmith_mult_vec2_u32(u_input.b, abs(vec2<u32>(u_input.b.x, ~3410u))));
    global0 = u_input.b;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30680u, 30u)])), _wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(u_input.b.x, 30u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2222f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(31754u, 30u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(25069u, 30u)])) + -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(491f, 1258f)))))), global2[_wgslsmith_index_u32(~(u_input.b.x ^ global0.x), 30u)], -u_input.c < (i32(-1i) * -u_input.c))));
    global4 = !select(vec3<bool>(true, true, all(global4.zy)), select(vec3<bool>(true, true, true), !(!vec3<bool>(global4.x, global4.x, global4.x)), all(vec4<bool>(global4.x, true, false, global4.x)) | !global4.x), !(~u_input.b.x >= firstTrailingBit(0u)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, global0.x), 8u)];
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(max(arg_0.b.b, vec4<u32>(var_0.a.x, 4294967295u, global0.x, arg_0.b.b.x)), var_0.b.b << (vec4<u32>(77648u, u_input.b.x, var_0.b.b.x, 18720u) % vec4<u32>(32u))), var_0.a.x));
    var var_2 = arg_0.b;
    let var_3 = Struct_2(func_3(), arg_0.b);
    let var_4 = global3[_wgslsmith_index_u32(reverseBits(~(abs(1u) & var_2.b.x)), 29u)];
    return var_4.xy;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global4 = select(vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-183f + arg_0.x), -323f)) < arg_0.x, -57573i > countOneBits(-u_input.a), (-1i & ~u_input.c) < (i32(-1i) * -1i)), !(!(!(!vec3<bool>(global4.x, global4.x, false)))), !global4.x);
    var var_0 = arg_0.xx;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(u_input.b, Struct_1(vec4<i32>(34830i, 2147483647i, u_input.a, -51182i), vec4<u32>(u_input.b.x, 1u, u_input.b.x, global0.x), u_input.b)), 4294967295u)))))));
    var var_1 = ~_wgslsmith_add_vec3_i32(~vec3<i32>(-u_input.c, u_input.c, 0i), vec3<i32>(u_input.c, 1906i, 20248i));
    var var_2 = vec2<i32>(-27276i, ~(~firstTrailingBit(18140i) ^ _wgslsmith_clamp_i32(abs(u_input.c), var_1.x, var_1.x)));
    return Struct_1(reverseBits(abs(-vec4<i32>(u_input.c, -27720i, 2147483647i, u_input.a) << (select(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<bool>(global4.x, false, false, true)) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(u_input.b.x, global0.x, 45033u, 4294967295u)), ~vec4<u32>(75135u, ~global0.x, _wgslsmith_add_u32(72715u, 85799u), abs(923u))), countOneBits(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), reverseBits(u_input.b), u_input.b))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, true, any(!(!vec4<bool>(global4.x, arg_0.x, global4.x, global4.x)))), func_1(vec3<f32>(global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 30u)] - 848f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 30u)]))).a.x == (0i ^ -(-2147483647i << (u_input.b.x % 32u))));
    global4 = select(arg_0, var_0, arg_0.x || any(select(vec3<bool>(arg_0.x, false, var_0.x), arg_0, vec3<bool>(true, false, global4.x))));
    let var_1 = global1[_wgslsmith_index_u32(2605u, 8u)];
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec2<u32>(77340u, 29303u), Struct_1(vec4<i32>(u_input.a, arg_1, 17876i, -46222i), arg_2.b.b, var_1.b.b.zz)), arg_2.b.b.x)).x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 30u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(6187u, 30u)] * -1774f))))));
    global2 = array<f32, 30>();
    return ~min(firstTrailingBit(85291u), min(~(~26665u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(~func_4(!(!vec3<bool>(global4.x, global4.x, false)), -countOneBits(-1i), Struct_2(u_input.b, func_1(vec3<f32>(-351f, global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)])))), _wgslsmith_add_u32(u_input.b.x, countOneBits(~1u)));
    global0 = u_input.b;
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(), vec2<u32>(1u, global0.x)) | global0.x, 29u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 30u)])) + global2[_wgslsmith_index_u32(~u_input.b.x, 30u)]), 975f, _wgslsmith_f_op_f32(max(-1000f, -155f))), vec3<bool>(global4.x, 9394i <= min(u_input.a, 0i), true))));
    var var_1 = global1[_wgslsmith_index_u32(var_0.c.x, 8u)];
    var_1 = Struct_2(var_0.b.xw, func_1(global3[_wgslsmith_index_u32(4294967295u, 29u)]));
    var var_2 = var_1.a.x;
    var var_3 = global4.yx;
    global2 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-651f)))), 546f, ~(abs(var_1.b.b) << ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 49149u, 0u, 50166u), var_0.b) & vec4<u32>(17819u, var_0.b.x, 0u, var_1.a.x)) % vec4<u32>(32u))), var_0.a.x);
}

