struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: vec4<bool>;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec4<bool>(!global3.c.x, global3.c.x, true, !any(select(vec3<bool>(global3.c.x, global1.x, false), select(global1.xzw, global3.b.zwz, global3.c.x), all(global1.yx))));
    global0 = array<u32, 27>();
    let var_1 = vec4<u32>(~global3.e.x | 4294967295u, ~(1u | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 27u)] & global3.e.x, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52096u, 27u)], 27u)], 27u)], u_input.c))), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.d.x, 1u, 0u, 22038u)), u_input.d & u_input.d), 12060u);
    global3 = Struct_1(1u, global3.b, vec3<bool>(false, global3.c.x, all(vec4<bool>(any(global1.xw), global3.b.x, true, !var_0.x))), select(-(global3.d | firstTrailingBit(u_input.b)), vec3<i32>(min(_wgslsmith_add_i32(global3.d.x, -13442i), ~global3.d.x), u_input.b.x, 70739i), var_0.wzw), vec2<u32>(30992u, abs(~_wgslsmith_div_u32(0u, 3744u))));
    let var_2 = Struct_4(_wgslsmith_mult_u32(~global3.e.x, reverseBits(1u)), vec3<f32>(_wgslsmith_f_op_f32(abs(1605f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1070f))) + _wgslsmith_f_op_f32(ceil(-634f)))), Struct_2(Struct_1(1u, !var_0, select(vec3<bool>(true, false, global3.c.x), var_0.xyx, var_0.x), global3.d, vec2<u32>(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(66175u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_mod_u32(u_input.a, u_input.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-160f, -943f, -256f)))), select(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(global3.e.x, var_1.x)), ~24349u != ~u_input.c)), vec3<i32>(~u_input.b.x & u_input.b.x, abs(u_input.b.x), u_input.b.x));
    return var_0.wyy;
}

fn func_2() -> f32 {
    let var_0 = firstTrailingBit(vec4<i32>(global3.d.x, ~global3.d.x, u_input.b.x, _wgslsmith_add_i32(1i, u_input.b.x)));
    global3 = Struct_1(global3.e.x, global3.b, !func_3(), -global3.d, vec2<u32>(~abs(~global3.a), global0[_wgslsmith_index_u32(0u, 27u)]));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(69920u, global0[_wgslsmith_index_u32(u_input.d.x, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), vec3<u32>(u_input.d.x, 27528u, global3.e.x), global3.b.x), countOneBits(u_input.d.yyx)), ~u_input.d.x) ^ max(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], ~84198u), global3.a), 27u)], vec4<bool>(global3.c.x, _wgslsmith_dot_vec4_i32(var_0, var_0) >= -u_input.b.x, true, all(!(!global3.b))), vec3<bool>(any(!select(vec4<bool>(false, true, global1.x, global1.x), global3.b, global3.b)), !global1.x | global3.c.x, select(!(31219u > global0[_wgslsmith_index_u32(global3.e.x, 27u)]), func_3().x, global1.x)), firstTrailingBit(global3.d), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_mod_u32(1u, 4294967295u)), countOneBits(vec2<u32>(global3.a, global3.e.x))));
    var var_2 = -9219i;
    global3 = Struct_1(~(~4294967295u), vec4<bool>(-23634i > -_wgslsmith_mod_i32(-6216i, u_input.b.x), all(vec2<bool>(true, false)), !(!select(false, false, true)), any(select(func_3().zz, vec2<bool>(global3.c.x, global1.x), vec2<bool>(global3.b.x, global1.x)))), select(global3.b.xxz, func_3(), true), ~(~var_1.d), global3.e);
    return -713f;
}

fn func_1() -> Struct_2 {
    global3 = Struct_1(22572u, vec4<bool>(any(!(!vec3<bool>(global3.c.x, true, false))), all(global3.b), global1.x, global3.b.x), global3.b.zxy, global3.d, countOneBits(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.d.x, 27u)]), vec2<u32>(4294967295u, 32176u), global3.e), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, global3.e.x), u_input.d.xy), select(vec2<bool>(global3.b.x, false), global3.b.wy, global3.b.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-939f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1523f + -1302f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = false;
    global3 = Struct_1(~(~(abs(global3.e.x) ^ global0[_wgslsmith_index_u32(abs(u_input.d.x), 27u)])), vec4<bool>(true, ~_wgslsmith_div_i32(-26825i, 24482i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.b.x), vec3<i32>(0i, -13651i, 1i)), all(!vec2<bool>(global3.c.x, global1.x)), global3.c.x), global1.yzy, ~firstTrailingBit(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global3.d.x, -2147483647i), vec3<i32>(-2147483647i, 1i, -5629i)), 2147483647i)), vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~35954u, global0[_wgslsmith_index_u32(0u, 27u)]), global0[_wgslsmith_index_u32(u_input.a, 27u)])));
    return Struct_2(Struct_1(abs(global0[_wgslsmith_index_u32(u_input.d.x, 27u)] << (0u % 32u)), !select(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, global3.c.x, global3.b.x, global1.x), global3.b), select(global3.b, global3.b, global3.b), select(global3.b, global3.b, false)), vec3<bool>(false, select(true, false, true), !global3.c.x), reverseBits(max(~vec3<i32>(24591i, global3.d.x, 51806i), global3.d)), abs(~vec2<u32>(u_input.d.x, u_input.a))), vec3<f32>(-480f, var_0.x, -1317f), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~(1u | global0[_wgslsmith_index_u32(4294967295u, 27u)])), 27u)], ~max(0u, ~40244u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, select(vec4<i32>(var_0.a.d.x, _wgslsmith_add_i32(-42653i, ~global3.d.x), ~(global3.d.x ^ 5403i), -12147i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.d.x, 2841i), abs(vec4<i32>(global3.d.x, 0i, u_input.b.x, -1i))), vec4<i32>(~u_input.b.x, ~var_0.a.d.x, global3.d.x, ~5214i)), !select(vec4<bool>(global3.c.x, var_0.a.b.x, false, var_0.a.c.x), select(global3.b, var_0.a.b, global3.b), !vec4<bool>(global1.x, global1.x, var_0.a.c.x, false))));
}

