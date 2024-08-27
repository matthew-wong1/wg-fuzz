struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<u32>(4294967295u, 14858u, 4294967295u), i32(-2147483648)));

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, false, true, true, true, false, true, false, true, false, true, true, false, false, false, false, true, false, false, true, false, true, true, false, true, true);

var<private> global2: vec4<i32> = vec4<i32>(1i, 0i, -1i, 46829i);

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), 2147483647i)), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 63037u), 2147483647i)));

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    global3 = array<Struct_3, 2>();
    var var_0 = Struct_1(~(~(-arg_0.a)));
    global3 = array<Struct_3, 2>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, -1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1000f) + vec2<f32>(-169f, global4.x)), vec2<f32>(-1230f, global4.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.x, global4.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-695f, 1516f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(floor(-203f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1411f, 556f) - vec2<f32>(1000f, global4.x))))));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(true, select(~35666u == min(u_input.a << (39271u % 32u), 1u), global1[_wgslsmith_index_u32(4294967295u, 27u)], ((global1[_wgslsmith_index_u32(0u, 27u)] || false) && global1[_wgslsmith_index_u32(1u, 27u)]) & (global4.x == global4.x)), global1[_wgslsmith_index_u32(global0.a.a.x, 27u)], all(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 27u)], true, global1[_wgslsmith_index_u32(global0.a.a.x, 27u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 27u)], false, global1[_wgslsmith_index_u32(u_input.a, 27u)]), true), vec4<bool>(global1[_wgslsmith_index_u32(global0.a.a.x, 27u)], global1[_wgslsmith_index_u32(29049u, 27u)], false, global1[_wgslsmith_index_u32(u_input.a, 27u)]), select(global1[_wgslsmith_index_u32(2583u, 27u)], global1[_wgslsmith_index_u32(global0.a.a.x, 27u)], false))) & all(select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 27u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)])))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(global2.wyw, vec3<i32>(~global0.a.b, reverseBits(2147483647i), global0.a.b) >> (~(global0.a.a | vec3<u32>(u_input.c, u_input.c, 894u)) % vec3<u32>(32u))));
    let var_2 = vec4<bool>(true, false, var_0.x, 1414f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-265f - global4.x))) + 1401f));
    var var_3 = vec4<bool>(!(!global1[_wgslsmith_index_u32(min(~78269u, 0u), 27u)]), _wgslsmith_add_u32(~1u, ~u_input.c) == 1u, true, (i32(-1i) * -select(-1i, global2.x, var_2.x)) != (global0.a.b >> ((firstLeadingBit(global0.a.a.x) >> (u_input.c % 32u)) % 32u)));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(func_1(Struct_1(reverseBits(~vec3<i32>(2147483647i, 2147483647i, 20790i)) << (vec3<u32>(abs(61632u), ~10232u, abs(global0.a.a.x)) % vec3<u32>(32u))))).x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)) + _wgslsmith_f_op_f32(max(-119f, _wgslsmith_div_f32(223f, arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 542f) - _wgslsmith_f_op_f32(1000f - -1000f)), 601f)) - 1442f));
    let var_1 = Struct_1(-global2.xzx << (~vec3<u32>(_wgslsmith_clamp_u32(u_input.a, arg_3.a.x, global0.a.a.x), select(arg_3.a.x, 39326u, true), 74469u) % vec3<u32>(32u)));
    global1 = array<bool, 27>();
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1026f), 548f, arg_2, Struct_2(~(~global0.a.a), arg_0.x));
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(global0.a.a, global0.a.b);
    let var_1 = arg_0.d.a.a.x;
    var var_2 = select(!select(!vec2<bool>(global1[_wgslsmith_index_u32(64390u, 27u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(52404u, 27u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(7007u, 27u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_1, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.d.a.x, 27u)])), false), global1[_wgslsmith_index_u32(0u, 27u)]), vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(10541u, 27u)], any(vec2<bool>(true, global1[_wgslsmith_index_u32(42402u, 27u)])), true, !global1[_wgslsmith_index_u32(u_input.c, 27u)])), true), !any(select(vec4<bool>(global1[_wgslsmith_index_u32(16171u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(63046u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1, 27u)], true, false), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 27u)])))));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), -188f)));
    let var_3 = Struct_3(arg_0.b.d);
    return func_2(global2.xz, var_0.b, arg_0.b.c, Struct_2(var_0.a, 2147483647i)).d;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32((global2.wxz >> (vec3<u32>(global0.a.a.x, 4294967295u, arg_2.a.x) % vec3<u32>(32u))) >> (global0.a.a % vec3<u32>(32u)), countOneBits(-global2.zyz)), u_input.b));
    let var_1 = i32(-1i) * -42367i;
    let var_2 = Struct_1(~_wgslsmith_clamp_vec3_i32(global2.zyw, global2.yxz, vec3<i32>(1i, var_0.x, 35077i)));
    global2 = ~(-min(vec4<i32>(_wgslsmith_add_i32(arg_2.b, 26535i), arg_2.b, reverseBits(global2.x), -1i), vec4<i32>(u_input.b, arg_2.b, -var_0.x, _wgslsmith_mod_i32(1i, 56103i))));
    var var_3 = vec3<bool>(global1[_wgslsmith_index_u32(arg_2.a.x, 27u)], !select(global4.x <= _wgslsmith_f_op_f32(global4.x * global4.x), true, all(arg_0.zz)), arg_0.x);
    return var_2;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * global4.x))));
    let var_1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(72121u, 4294967295u, global0.a.a.x), vec3<u32>(u_input.a, u_input.a, global0.a.a.x)) ^ select(vec3<u32>(u_input.c, u_input.c, 1u), global0.a.a, true), vec3<u32>(0u, 28972u, _wgslsmith_div_u32(0u, u_input.c))), vec3<u32>(~(~global0.a.a.x), _wgslsmith_add_u32(global0.a.a.x, u_input.a ^ (18372u >> (global0.a.a.x % 32u))), func_2(arg_1.a.xz, max(func_2(global2.yz, global2.x, vec2<f32>(1022f, var_0), Struct_2(vec3<u32>(global0.a.a.x, 68585u, global0.a.a.x), 672i)).d.b, i32(-1i) * -9147i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global4.x) * vec2<f32>(-1002f, 464f))), func_2(~vec2<i32>(global2.x, -3941i), _wgslsmith_mult_i32(global2.x, -2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(286f, 1000f)), global0.a).d).d.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(exp2(global4.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0)))))))));
    var var_3 = Struct_1(countOneBits(select(min(vec3<i32>(-60848i, global0.a.b, -15631i), vec3<i32>(9237i, u_input.b, global2.x) | vec3<i32>(2147483647i, u_input.b, 8769i)), ~vec3<i32>(global0.a.b, 0i, global0.a.b) >> (abs(var_1) % vec3<u32>(32u)), select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 27u)], arg_0), !vec3<bool>(false, false, arg_0)))));
    global4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.yz, vec2<f32>(-1324f, -1568f), true))), func_2(arg_1.a.yz | vec2<i32>(1i, global2.x), global0.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 589f)), Struct_2(vec3<u32>(25209u, u_input.c, 0u), -9870i)).c, select(select(vec2<bool>(false, false), vec2<bool>(arg_0, false), false), vec2<bool>(arg_0, global1[_wgslsmith_index_u32(6127u, 27u)]), select(false, arg_0, arg_0)))))));
    return StorageBuffer(abs(_wgslsmith_sub_vec4_i32((vec4<i32>(global0.a.b, global2.x, var_3.a.x, 0i) | vec4<i32>(u_input.b, -13932i, 2147483647i, 2147483647i)) | max(vec4<i32>(arg_1.a.x, -10313i, 2147483647i, 1i), vec4<i32>(1i, global0.a.b, 22270i, 1i)), ~(-vec4<i32>(-27979i, 2147483647i, -2147483647i, u_input.b)))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(~77869u), 27u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1012f))));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<i32>(u_input.b, -18987i, u_input.b)))))));
    global3 = array<Struct_3, 2>();
    let var_2 = -2147483647i;
    var var_3 = abs(global0.a.a.zy);
    let x = u_input.a;
    s_output = func_6(true, func_5(vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_3.x, 26625u), 27u)], true, global1[_wgslsmith_index_u32(0u, 27u)], true & (true && global1[_wgslsmith_index_u32(var_3.x, 27u)])), true, func_4(Struct_5(vec4<u32>(var_3.x, 4294967295u, 8949u, 4294967295u), func_2(global2.yy, u_input.b, vec2<f32>(-1172f, global4.x), global0.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, -1000f, global4.x))), global3[_wgslsmith_index_u32(~global0.a.a.x, 2u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) + var_1))));
}

