struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: array<f32, 18> = array<f32, 18>(-124f, -822f, -126f, 1191f, -316f, -856f, 744f, 482f, 393f, -1872f, -481f, -617f, -759f, -899f, 1237f, -1000f, -826f, 983f);

var<private> global1: array<Struct_3, 27>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<f32>, 13>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(true, -28001i, vec2<i32>(2147483647i, 13851i)), Struct_1(false, 1i, vec2<i32>(i32(-2147483648), 15864i)), Struct_1(true, i32(-2147483648), vec2<i32>(0i, -11174i)), Struct_1(false, -18323i, vec2<i32>(0i, 1i)), Struct_1(false, 2147483647i, vec2<i32>(2505i, -1i)), Struct_1(false, 0i, vec2<i32>(-1i, -1i)), Struct_1(true, 1i, vec2<i32>(52042i, 1i)), Struct_1(false, -19061i, vec2<i32>(2147483647i, 64869i)), Struct_1(true, -34283i, vec2<i32>(27944i, 1i)), Struct_1(false, 2147483647i, vec2<i32>(-19129i, -18253i)), Struct_1(true, i32(-2147483648), vec2<i32>(14952i, 3743i)), Struct_1(false, i32(-2147483648), vec2<i32>(-1i, -1i)), Struct_1(true, -15824i, vec2<i32>(-4264i, 2147483647i)), Struct_1(true, i32(-2147483648), vec2<i32>(-32669i, 15644i)), Struct_1(true, 15554i, vec2<i32>(200i, i32(-2147483648))), Struct_1(true, 1i, vec2<i32>(-43949i, 40892i)), Struct_1(true, -9103i, vec2<i32>(i32(-2147483648), 71830i)), Struct_1(false, 2147483647i, vec2<i32>(-1i, 1i)), Struct_1(false, 1i, vec2<i32>(i32(-2147483648), -44845i)), Struct_1(true, i32(-2147483648), vec2<i32>(19544i, 0i)), Struct_1(false, -48858i, vec2<i32>(19928i, 2147483647i)), Struct_1(false, 2147483647i, vec2<i32>(-13420i, -56446i)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = 23042i;
    var var_1 = all(select(!select(vec4<bool>(true, true, false, arg_0.c.a), vec4<bool>(false, arg_1.a.a, arg_1.c.a, arg_0.b.a), u_input.a.x >= 4294967295u), vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.d.x, 18u)] < 718f), arg_1.a.a, arg_0.b.a, arg_0.c.a), true));
    let var_2 = Struct_3(Struct_1(select(!arg_1.b.a, true, all(vec4<bool>(arg_0.a.a, arg_0.b.a, arg_1.b.a, true))) || false, ~45456i, _wgslsmith_mult_vec2_i32(-u_input.c.wz, arg_1.a.c) ^ _wgslsmith_clamp_vec2_i32(min(u_input.c.zy, vec2<i32>(arg_1.b.c.x, 2147483647i)), vec2<i32>(u_input.e.x, arg_0.a.b), ~arg_1.c.c)), _wgslsmith_f_op_f32(-global2.x), Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_1.a, Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 18u)]) == _wgslsmith_f_op_f32(select(1088f, 846f, arg_0.a.a)), 57288i, arg_0.a.c)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 33366u, u_input.a.x), u_input.a.yyy, vec3<u32>(40725u, 0u, u_input.a.x)), u_input.a.wwx), 18u)]), vec3<f32>(245f, global0[_wgslsmith_index_u32(~min(u_input.a.x, ~u_input.d.x), 18u)], _wgslsmith_f_op_f32(sign(-675f))));
    global0 = array<f32, 18>();
    let var_3 = Struct_3(var_2.c.c, var_2.e.x, var_2.c, global2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(1u, 13u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 103902u), 13u)]));
    return _wgslsmith_dot_vec3_u32(countOneBits(min(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x)), ~u_input.a.zyw), _wgslsmith_mult_vec3_u32(u_input.a.yzx, _wgslsmith_mod_vec3_u32(u_input.a.yyy, u_input.a.yxw)))), u_input.a.xzy & _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(16903u, u_input.d.x, u_input.d.x)), u_input.a.yww | _wgslsmith_mod_vec3_u32(u_input.a.xzw, u_input.a.xxz), select(u_input.a.wxx, vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<bool>(false, true, true)) & reverseBits(u_input.a.xwx)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32) -> vec2<i32> {
    global0 = array<f32, 18>();
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(~26566u << (~arg_2 % 32u), ~max(arg_2, 1u))), func_3(Struct_2(global4[_wgslsmith_index_u32(~(~0u), 22u)], Struct_1(true, i32(-1i) * -2147483647i, u_input.e.xy), global4[_wgslsmith_index_u32(~u_input.d.x, 22u)]), Struct_2(Struct_1(false, arg_1.x | -1i, u_input.c.xw << (u_input.d % vec2<u32>(32u))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), select(arg_2, u_input.a.x, arg_0.x)), 22u)], global4[_wgslsmith_index_u32(abs(abs(0u)), 22u)]))), 22u)];
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], Struct_1(any(!vec3<bool>(var_0.a, true, true)), -arg_1.x, arg_1.yy), Struct_1(any(arg_0.yy), _wgslsmith_dot_vec2_i32(u_input.c.yy | vec2<i32>(arg_1.x, u_input.b), vec2<i32>(var_0.c.x, u_input.b)), _wgslsmith_sub_vec2_i32(-max(arg_1.zx, arg_1.yw), ~(-u_input.c.ww))));
    global1 = array<Struct_3, 27>();
    let var_2 = Struct_1(!var_1.c.a | any(vec3<bool>(true, false, any(arg_0))), abs(~(i32(-1i) * -var_1.b.b)), _wgslsmith_sub_vec2_i32(var_0.c, vec2<i32>(48241i, 27998i)));
    return var_0.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x, 27u)];
    global1 = array<Struct_3, 27>();
    var var_1 = var_0.a;
    let var_2 = ~_wgslsmith_dot_vec2_i32(func_2(!select(vec3<bool>(var_0.c.c.a, false, var_1.a), vec3<bool>(true, true, var_1.a), var_1.a), u_input.c, abs(min(arg_0.x, arg_1))), ~vec2<i32>(var_0.c.a.c.x << (611u % 32u), -var_1.c.x));
    global2 = var_0.e.yx;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 17559u), u_input.a.x), reverseBits(1u)) ^ _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(1u, 1u, 4294967295u, u_input.d.x)), u_input.a, vec4<u32>(u_input.d.x, 4074u, 13538u, 26909u)), u_input.a);
    let var_1 = Struct_2(func_1(~max(abs(vec3<u32>(29925u, 4294967295u, u_input.d.x)), firstLeadingBit(vec3<u32>(var_0, 0u, 42459u))), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(12768u, 6282u, 59492u, u_input.a.x))), u_input.a)), func_1(~(~vec3<u32>(60919u, 69794u, u_input.a.x)), var_0 & _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), 4294967295u)), Struct_1(!select(true, false, true), ~38454i, _wgslsmith_mod_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, u_input.b)) & ~u_input.c.xw));
    let var_2 = Struct_3(func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_0, var_0), 4294967295u, ~4294967295u), ~u_input.a.yzx), 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~94433u), ~(~u_input.d.x)), 18u)], var_1, 767f, global3[_wgslsmith_index_u32(var_0, 13u)]);
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.xz);
}

