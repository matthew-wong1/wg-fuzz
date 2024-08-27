struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: Struct_2;

var<private> global3: array<u32, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec4<i32> {
    global1 = array<vec3<f32>, 27>();
    let var_0 = Struct_1(arg_0.b.e.a, global2.e.b, ~_wgslsmith_mult_u32(firstTrailingBit(1u), 1u ^ global2.d.x));
    return reverseBits(-vec4<i32>(-5443i, global2.c.x, _wgslsmith_add_i32(1i, -38698i), _wgslsmith_dot_vec2_i32(-vec2<i32>(55836i, global2.c.x), vec2<i32>(18507i, -21302i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global1 = array<vec3<f32>, 27>();
    global3 = array<u32, 19>();
    global0 = array<bool, 26>();
    let var_0 = firstLeadingBit(u_input.a.x) >> (_wgslsmith_div_u32(~max(arg_3.c, ~arg_0.x), arg_0.x) % 32u);
    global3 = array<u32, 19>();
    return 34750u;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<i32> {
    let var_0 = abs(arg_1);
    let var_1 = global2.e.b;
    let var_2 = 1i;
    global1 = array<vec3<f32>, 27>();
    global2 = Struct_2(global2.a, vec2<f32>(-1000f, _wgslsmith_f_op_f32(-666f * _wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(sign(440f))))), -(vec4<i32>(-6175i, arg_1, var_2 ^ u_input.a.x, global2.c.x) | global2.c), abs(global2.d), Struct_1(reverseBits(u_input.d.wxz), !(~4294967295u > (global3[_wgslsmith_index_u32(35003u, 19u)] & 4294967295u)), func_4(~(~vec4<u32>(13003u, 4294967295u, 67391u, global3[_wgslsmith_index_u32(u_input.d.x, 19u)])), global2.d, Struct_2(Struct_1(vec3<u32>(53485u, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(26898u, 19u)]), global0[_wgslsmith_index_u32(arg_0, 26u)], global3[_wgslsmith_index_u32(0u, 19u)]), vec2<f32>(-562f, global2.b.x), func_3(Struct_3(-1i, Struct_2(global2.e, vec2<f32>(1657f, global2.b.x), vec4<i32>(var_2, 20122i, u_input.c, var_0), u_input.d.xyx, Struct_1(vec3<u32>(arg_0, global2.d.x, global2.a.a.x), true, u_input.d.x)), Struct_1(u_input.d.www, true, global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), global2.c), global2.b.x), vec3<u32>(u_input.d.x, global2.a.c, u_input.d.x), Struct_1(vec3<u32>(u_input.b.x, 20316u, 12707u), global2.a.b, global3[_wgslsmith_index_u32(arg_0, 19u)])), Struct_1(~global2.e.a, false, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(23478u, 19u)], 5698u)))));
    return (vec2<i32>(_wgslsmith_add_i32(1i, ~global2.c.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(75060i, -66524i, 0i), _wgslsmith_sub_i32(var_0, -84715i))) << (vec2<u32>(_wgslsmith_sub_u32(u_input.b.x << (1u % 32u), u_input.d.x), global2.a.c) % vec2<u32>(32u))) ^ ~u_input.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    global2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 74544u, 6467u) & global2.d, vec3<u32>(u_input.d.x, 30306u, 47011u)), select(arg_0.b.d | vec3<u32>(0u, 27135u, global3[_wgslsmith_index_u32(0u, 19u)]), ~vec3<u32>(9199u, global2.e.a.x, u_input.d.x), -1i <= global2.c.x)), true, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), vec2<f32>(1711f, _wgslsmith_f_op_f32(-arg_0.b.b.x)), arg_0.b.c & _wgslsmith_mod_vec4_i32(global2.c, firstLeadingBit(_wgslsmith_mod_vec4_i32(global2.c, vec4<i32>(-1i, 22589i, -2147483647i, 65851i)))), u_input.d.zyw, Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~arg_0.b.e.a, ~arg_0.b.d), ~_wgslsmith_sub_vec3_u32(global2.a.a, vec3<u32>(global3[_wgslsmith_index_u32(31475u, 19u)], global2.d.x, global3[_wgslsmith_index_u32(u_input.b.x, 19u)]))), true, ~(~4294967295u)));
    var var_0 = Struct_2(Struct_1(global2.a.a, ~(-2147483647i) < (_wgslsmith_mult_i32(arg_0.b.c.x, arg_0.d.x) ^ -2147483647i), _wgslsmith_mod_u32(18513u, _wgslsmith_div_u32(abs(arg_1.x), ~global3[_wgslsmith_index_u32(u_input.b.x, 19u)]))), arg_0.b.b, ~(-(vec4<i32>(-1i) * -global2.c)), vec3<u32>((~4294967295u & ~arg_1.x) << (select(func_4(vec4<u32>(50103u, arg_0.b.a.c, u_input.b.x, arg_1.x), arg_0.b.e.a, Struct_2(Struct_1(global2.e.a, false, 40646u), vec2<f32>(arg_0.b.b.x, -1195f), vec4<i32>(global2.c.x, arg_0.b.c.x, global2.c.x, 15790i), vec3<u32>(1u, 18910u, 0u), global2.e), Struct_1(vec3<u32>(4294967295u, 48297u, 49191u), false, 0u)), 1u, any(vec4<bool>(false, false, true, global2.a.b))) % 32u), arg_0.c.c, 1u), Struct_1(u_input.d.yyx >> (vec3<u32>(_wgslsmith_mult_u32(0u, arg_1.x), _wgslsmith_add_u32(1u, arg_1.x), ~u_input.b.x) % vec3<u32>(32u)), false, ~arg_0.c.a.x));
    let var_1 = -1811f;
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_u32(arg_0.c.a, ~_wgslsmith_mod_vec3_u32(var_0.d, u_input.d.zzy))), all(select(select(select(vec2<bool>(global2.a.b, var_0.e.b), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], var_0.a.b), vec2<bool>(var_0.e.b, var_0.a.b)), !vec2<bool>(global0[_wgslsmith_index_u32(40902u, 26u)], arg_0.c.b), true), !vec2<bool>(true, arg_0.c.b), !vec2<bool>(global2.a.b, global2.e.b))), _wgslsmith_div_u32(select(var_0.d.x, ~global2.a.c, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, arg_0.c.b)))), firstLeadingBit(0u)));
    global2 = Struct_2(Struct_1(~var_0.e.a, false, min(_wgslsmith_add_u32(4294967295u, var_0.e.c), 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.b))) - _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b)), firstLeadingBit(~vec4<i32>(countOneBits(global2.c.x), ~(-1i), abs(arg_0.d.x), firstLeadingBit(var_0.c.x))), max(min(u_input.d.xyw, vec3<u32>(abs(arg_1.x), ~1u, global2.d.x)), ~(~vec3<u32>(u_input.d.x, 4294967295u, global2.d.x))), arg_0.b.a);
    return var_0.e;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = func_5(Struct_3(~_wgslsmith_dot_vec2_i32(max(arg_0.zw, global2.c.yw), func_2(u_input.d.x, u_input.a.x)), Struct_2(Struct_1(~u_input.d.yzy, true, 0u), _wgslsmith_f_op_vec2_f32(sign(global2.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.c.x, 2147483647i, global2.c.x, 0i) | arg_0, -vec4<i32>(-15981i, -7205i, global2.c.x, -30798i), _wgslsmith_div_vec4_i32(arg_0, arg_0)), vec3<u32>(1u, 20805u, global2.d.x), global2.e), Struct_1(reverseBits(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 81896u, 0u)), (1u & global3[_wgslsmith_index_u32(69233u, 19u)]) >= 0u, 0u), ~(firstLeadingBit(arg_0) >> ((vec4<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 19u)], 64887u, 50828u) | vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42031u, 19u)], 19u)], 24434u, 58189u)) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2.e.c), vec2<u32>(u_input.d.x, 14992u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), u_input.d.wz) >> (_wgslsmith_sub_vec2_u32(global2.e.a.xz, u_input.b) % vec2<u32>(32u))));
    var var_1 = true;
    let var_2 = ~global2.c;
    global3 = array<u32, 19>();
    var var_3 = Struct_2(func_5(Struct_3(_wgslsmith_add_i32(u_input.a.x, 20792i), Struct_2(func_5(Struct_3(global2.c.x, Struct_2(Struct_1(u_input.d.wzy, global2.a.b, 1u), global2.b, vec4<i32>(global2.c.x, 0i, 1i, global2.c.x), global2.a.a, var_0), Struct_1(vec3<u32>(global2.e.a.x, 43873u, 10513u), false, 8524u), var_2), global2.a.a.xx), vec2<f32>(global2.b.x, global2.b.x), vec4<i32>(arg_0.x, u_input.c, -24067i, global2.c.x), vec3<u32>(u_input.d.x, 4294967295u, 68771u), func_5(Struct_3(37811i, Struct_2(var_0, global2.b, vec4<i32>(-2147483647i, -1i, -2147483647i, 2147483647i), global2.a.a, var_0), var_0, vec4<i32>(u_input.c, -1498i, 20245i, arg_0.x)), global2.a.a.zz)), func_5(Struct_3(u_input.c, Struct_2(Struct_1(var_0.a, true, 41243u), global2.b, vec4<i32>(global2.c.x, 24768i, 2705i, 1i), vec3<u32>(var_0.a.x, var_0.c, u_input.b.x), Struct_1(u_input.d.yyw, global0[_wgslsmith_index_u32(1u, 26u)], 1u)), Struct_1(vec3<u32>(1u, global3[_wgslsmith_index_u32(26055u, 19u)], global3[_wgslsmith_index_u32(75840u, 19u)]), global2.a.b, global3[_wgslsmith_index_u32(30332u, 19u)]), var_2), global2.a.a.zy), ~(~arg_0)), vec2<u32>(~global3[_wgslsmith_index_u32(4294967295u, 19u)] >> ((22123u | var_0.a.x) % 32u), global2.d.x)), global2.b, reverseBits(var_2), vec3<u32>(abs(global3[_wgslsmith_index_u32(4294967295u, 19u)]), max(u_input.b.x, func_4(u_input.d, vec3<u32>(1u, 23723u, 15u), Struct_2(Struct_1(vec3<u32>(var_0.a.x, 4294967295u, global3[_wgslsmith_index_u32(0u, 19u)]), true, 20915u), global2.b, vec4<i32>(global2.c.x, global2.c.x, 2147483647i, 2147483647i), vec3<u32>(1u, 1u, global2.d.x), var_0), var_0) | _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], global2.e.c, 0u, 18719u))), ~0u), Struct_1(~min(~vec3<u32>(99898u, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, var_0.c, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) < global2.b.x, reverseBits(~var_0.a.x)));
    return 798f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(-(~global2.c))), -1052f);
    global2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(global2.a.c, ~u_input.b.x), func_4(vec4<u32>(91865u, u_input.b.x, 34227u, 4294967295u), u_input.d.xwz, Struct_2(Struct_1(vec3<u32>(4294967295u, 19237u, 52256u), true, u_input.b.x), global2.b, vec4<i32>(u_input.c, u_input.c, global2.c.x, -2147483647i), u_input.d.yxz, Struct_1(u_input.d.xzw, false, 54387u)), global2.a), 24173u), false | global0[_wgslsmith_index_u32(97411u, 26u)], func_5(Struct_3(u_input.c, Struct_2(global2.e, vec2<f32>(-652f, -455f), vec4<i32>(37687i, global2.c.x, 0i, -17826i), vec3<u32>(11075u, global3[_wgslsmith_index_u32(global2.a.c, 19u)], global3[_wgslsmith_index_u32(43360u, 19u)]), Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(global2.a.a.x, 19u)], 1u, 1u), true, u_input.b.x)), Struct_1(vec3<u32>(1u, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u), global2.c), global2.a.a.yy).c), global2.b, vec4<i32>(abs(-(global2.c.x << (1u % 32u))), global2.c.x & 2147483647i, -u_input.c, abs(~1i)), ~u_input.d.yyy, func_5(Struct_3(u_input.c, Struct_2(func_5(Struct_3(global2.c.x, Struct_2(global2.e, vec2<f32>(global2.b.x, var_0.x), global2.c, vec3<u32>(global2.d.x, u_input.b.x, global3[_wgslsmith_index_u32(global2.e.a.x, 19u)]), global2.e), Struct_1(global2.a.a, true, u_input.b.x), vec4<i32>(26985i, 2147483647i, global2.c.x, u_input.c)), vec2<u32>(0u, 50172u)), _wgslsmith_f_op_vec2_f32(sign(global2.b)), global2.c, firstTrailingBit(vec3<u32>(global2.e.c, u_input.b.x, 4294967295u)), func_5(Struct_3(global2.c.x, Struct_2(global2.a, global2.b, vec4<i32>(-1i, -2147483647i, u_input.c, 0i), u_input.d.xyx, global2.a), global2.e, vec4<i32>(20481i, u_input.c, -2147483647i, global2.c.x)), vec2<u32>(u_input.b.x, 0u))), global2.a, _wgslsmith_div_vec4_i32(global2.c >> (vec4<u32>(1u, u_input.d.x, global3[_wgslsmith_index_u32(0u, 19u)], u_input.d.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global2.c.x, u_input.c, 0i), global2.c))), vec2<u32>(max(4294967295u, _wgslsmith_mult_u32(1u, 43428u)), global2.e.a.x)));
    global0 = array<bool, 26>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 779f);
    var var_1 = 41199u;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], vec3<f32>(-171f, var_0.x, 514f), true))))))));
}

