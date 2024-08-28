struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-427f, 330f, -1000f, -840f), 2977u, 13056i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 22>;

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-35417i, -7557i, -1i, -52070i), vec4<i32>(-35566i, -37698i, 2352i, i32(-2147483648)), vec4<i32>(42694i, 0i, 5481i, 41440i), vec4<i32>(14464i, -1i, 0i, -44190i), vec4<i32>(10587i, 69594i, 888i, -1i), vec4<i32>(-792i, 33847i, -65176i, -1i), vec4<i32>(-17455i, i32(-2147483648), 18120i, 23452i), vec4<i32>(-11414i, -25035i, 41539i, 9692i), vec4<i32>(-29813i, -1i, -49663i, 22779i), vec4<i32>(0i, 1i, 1i, -8501i), vec4<i32>(44941i, -34769i, 2147483647i, 1i), vec4<i32>(19806i, -10756i, 1i, i32(-2147483648)), vec4<i32>(-30046i, -20196i, -11049i, 40474i), vec4<i32>(-64026i, 12731i, 13463i, -13080i), vec4<i32>(0i, i32(-2147483648), 40484i, 29683i), vec4<i32>(2147483647i, 2147483647i, -17033i, i32(-2147483648)), vec4<i32>(-1i, -1i, 63801i, 1i), vec4<i32>(2147483647i, 1i, 17821i, -15701i), vec4<i32>(i32(-2147483648), 1i, 6140i, -88242i), vec4<i32>(i32(-2147483648), 21614i, 1i, -996i), vec4<i32>(i32(-2147483648), 29567i, 15515i, -28836i), vec4<i32>(1i, 0i, 35990i, -35614i), vec4<i32>(0i, 30343i, 36292i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, -54502i, 46611i), vec4<i32>(-59597i, -88407i, -43299i, 10631i), vec4<i32>(i32(-2147483648), 23230i, -7511i, -7788i), vec4<i32>(635i, 0i, 40997i, -1464i), vec4<i32>(0i, 2147483647i, 2147483647i, 1i), vec4<i32>(-7352i, 0i, 2272i, -6271i), vec4<i32>(-1i, 13134i, 1i, i32(-2147483648)));

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global2 = array<vec4<f32>, 22>();
    global1 = arg_1;
    var var_0 = u_input.c;
    let var_1 = arg_1;
    var var_2 = -24755i;
    return var_0.x;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))), arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(283f - 811f), -810f, -1233f, -112f)))), firstTrailingBit(_wgslsmith_mod_u32(1u, global1.b) >> (global4.b % 32u)), _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c, 1i), u_input.c), firstLeadingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, arg_2.c), u_input.c))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a)))), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(1u, ~reverseBits(arg_1.b))), _wgslsmith_mult_i32(arg_1.c, -2147483647i));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.x, global4.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1868f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(444f, -998f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -795f))), 20472u, _wgslsmith_add_i32(1316i, _wgslsmith_mult_i32(var_0.c, -_wgslsmith_mod_i32(arg_3.c, u_input.c.x))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -542f);
    return -17459i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = 2147483647i;
    let var_2 = u_input.b.x;
    global3 = array<vec4<i32>, 30>();
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(40317u, 1u, global4.b), u_input.b.zxy), vec3<u32>(6534u, global1.b, var_2)), _wgslsmith_mult_u32(global4.b, 0u), ~0u, 40444u), ~vec4<u32>(~global0.b, _wgslsmith_sub_u32(4294967295u, global4.b), global0.b, 30696u)) <= global4.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2197f * arg_0.a.x)), _wgslsmith_f_op_f32(global1.a.x - 2058f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -773f))), _wgslsmith_f_op_f32(round(-357f)))), 0u, _wgslsmith_add_i32(-1i, max(22116i, abs(-u_input.d))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !arg_1.yyy;
    global2 = array<vec4<f32>, 22>();
    global0 = Struct_1(global2[_wgslsmith_index_u32(1u, 22u)], ~(~0u), 6363i);
    let var_1 = func_4(Struct_1(vec4<f32>(-567f, -2008f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.b.zx, min(u_input.b.yw, u_input.b.yy)), 1u), func_3(_wgslsmith_f_op_f32(step(-448f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global4.a.x, global1.a.x, -1052f) + arg_0), 117815u, func_2(Struct_1(vec4<f32>(arg_2.a.x, global1.a.x, 1000f, arg_0.x), global4.b, 5156i), Struct_1(global2[_wgslsmith_index_u32(19301u, 22u)], global1.b, 1i))), arg_2, arg_2)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 1563f, global0.a.x, -558f) * vec4<f32>(780f, arg_2.a.x, global4.a.x, arg_2.a.x)), arg_2.a, vec4<bool>(true, arg_1.x, false, arg_1.x)))))), _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(0u, 0u)), countOneBits(~vec2<u32>(global1.b, 0u))) & global1.b, global0.c);
    return func_4(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 30>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.zzy, u_input.b.ywx), abs(~u_input.b.wwy));
    var var_1 = true;
    var var_2 = true;
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(738f, 316f, global4.a.x, global4.a.x), vec4<f32>(global0.a.x, global4.a.x, 779f, -658f)) + vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(210f - global1.a.x), _wgslsmith_f_op_f32(-global4.a.x), global1.a.x))), vec4<bool>(var_0 > ~var_0, ~min(4294967295u, global1.b) == _wgslsmith_div_u32(1u, ~global4.b), !any(vec4<bool>(true, true, true, true)) && any(vec3<bool>(true, false, true)), select(true, !any(vec3<bool>(true, false, false)), true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(846f)), _wgslsmith_f_op_f32(trunc(2560f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), -569f)), _wgslsmith_f_op_f32(-1000f - 606f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f), -1928f)), ~u_input.b.x, _wgslsmith_mod_i32(~(-u_input.d), _wgslsmith_mult_i32(-38356i, reverseBits(-1i)))));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(971f, global0.a.x, global1.a.x, var_3.a.x)))))), 0u, 2147483647i);
    var var_4 = var_3.c != -(17936i >> (global1.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.ww))) >> (u_input.b.wzz % vec3<u32>(32u)));
}

