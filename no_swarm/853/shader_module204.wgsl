struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<i32, 15> = array<i32, 15>(-25983i, 2147483647i, -30474i, 1i, 21248i, 44630i, -798i, i32(-2147483648), -680i, -28564i, -25509i, 62056i, 19801i, -1i, -11275i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec4<f32>(-282f, -1574f, -927f, 625f), Struct_1(vec4<bool>(true, false, true, false)));

var<private> global3: array<vec2<u32>, 15>;

var<private> global4: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(max(global4.c.x, -758f)));
    global1 = array<i32, 15>();
    let var_1 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(-global2.b), Struct_1(!vec4<bool>(global4.a, all(vec2<bool>(global2.a.a.x, false)), false, global4.a)));
    let var_2 = vec3<i32>(-1i << (global4.e.x % 32u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~17003u, 0u), 15u)], -21757i);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.e.x, _wgslsmith_clamp_u32(~countOneBits(_wgslsmith_add_u32(global4.e.x, 4294967295u)), ~4294967295u, ~1u)), 17u)];
    return var_1;
}

fn func_3() -> f32 {
    var var_0 = ~global4.e;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(1026f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + -1239f))), _wgslsmith_div_f32(128f, global4.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x + -1000f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], _wgslsmith_f_op_f32(round(695f))))))) + vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1250f) * func_2(global2.a).b.x)));
    var var_3 = _wgslsmith_div_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global4.d, global4.d), 1i & u_input.d), ~(i32(-1i) * -41344i)), firstLeadingBit(select(u_input.a, vec2<i32>(_wgslsmith_sub_i32(global4.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), -27241i), vec2<bool>(true, true))));
    global0 = array<f32, 17>();
    return _wgslsmith_f_op_f32(ceil(var_2.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<i32> {
    global4 = Struct_3(true, countOneBits(~global4.b), _wgslsmith_f_op_vec2_f32(select(global4.c, global4.c, !(!global2.a.a.x))), global4.d, global4.e);
    global2 = func_2(global2.a);
    let var_0 = Struct_3(global2.a.a.x, 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 17u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-150f * global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), _wgslsmith_f_op_f32(func_3())))) * global4.c), vec3<i32>(_wgslsmith_sub_i32(global4.d.x, firstLeadingBit(30288i)), _wgslsmith_div_i32(global4.b, -_wgslsmith_sub_i32(-53708i, arg_1)), 0i), ~(~vec4<u32>(global4.e.x, global4.e.x, u_input.b.x, 11447u)));
    var var_1 = 12377u;
    var var_2 = global2.c;
    return vec4<i32>(abs(-36500i), var_0.b, global1[_wgslsmith_index_u32(40004u, 15u)], ~(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(54502i, global1[_wgslsmith_index_u32(global4.e.x, 15u)], 0i)), _wgslsmith_mult_vec3_i32(var_0.d, vec3<i32>(global4.b, global4.d.x, 35787i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = ~u_input.b.zy;
    var_0 = global4.e.wz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x));
    let var_2 = true;
    let var_3 = all(vec2<bool>(!arg_1.x, var_2));
    return select(vec3<bool>(!any(global2.c.a), !(18407i >= global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(35676u, 22828u), 15u)]), var_2), !global2.c.a.ywx, true & (1i > (0i | -u_input.a.x)));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_3 {
    global0 = array<f32, 17>();
    var var_0 = vec3<u32>(u_input.c, ~_wgslsmith_sub_u32(~77450u, 0u), _wgslsmith_div_u32(~56440u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(46260u, 33024u, 7083u, 83870u), _wgslsmith_clamp_vec4_u32(global4.e, global4.e, global4.e)), 1u)));
    let var_1 = Struct_3(true, _wgslsmith_mod_i32(countOneBits(firstLeadingBit(func_1(global2.c.a, 0i).x)), -u_input.a.x << (u_input.b.x % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(612f, global4.c.x)), func_1(vec4<bool>(any(vec3<bool>(false, arg_0, false)), false, false, any(vec2<bool>(global4.a, global2.c.a.x))), firstLeadingBit(global4.d.x)).xzw, _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.x, global4.e.x, var_0.x, u_input.b.x)), global4.e));
    let var_2 = vec2<bool>(true, true);
    global1 = array<i32, 15>();
    return Struct_3(var_1.a, -2147483647i, global2.b.ww, vec3<i32>(global4.b, 11911i, countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 15u)]) | _wgslsmith_add_i32(-27676i, u_input.a.x)), max(global4.e, global4.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    var var_0 = u_input.d;
    let var_1 = func_5(true, global2.b.wz, global2.a, select(!(!vec3<bool>(global4.a, true, global2.c.a.x)), select(!vec3<bool>(false, global4.a, global4.a), vec3<bool>(false != global2.c.a.x, !global4.a, global4.a || false), select(!global2.c.a.zwx, global2.a.a.zzy, global2.c.a.x)), func_4(func_1(vec4<bool>(false, global4.a, false, global2.c.a.x), u_input.a.x), global2.a.a.yx)));
    global2 = func_2(global2.a);
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-(global1[_wgslsmith_index_u32(291u, 15u)] >> (var_1.e.x % 32u)), global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(1u, global4.e.x), abs(global4.e.x)), 15u)]), u_input.a) | select(global4.d.yx, -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), ~u_input.a), global2.c.a.yw);
    let x = u_input.a;
    s_output = StorageBuffer(-46534i);
}

