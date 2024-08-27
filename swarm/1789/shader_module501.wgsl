struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, false, true), 183f), vec4<bool>(true, false, false, true), vec3<i32>(0i, 2147483647i, -39938i), vec2<i32>(-20446i, 30023i), Struct_1(vec3<bool>(true, false, false), -1090f));

var<private> global1: Struct_3 = Struct_3(vec2<f32>(943f, -2022f), Struct_1(vec3<bool>(false, false, false), -1096f), 318f, 11132i);

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 19>;

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    let var_0 = 4294967295u & abs(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(4294967295u, 0u, u_input.a, u_input.d.x), arg_1.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 4294967295u), vec4<u32>(u_input.b, 0u, 5968u, u_input.a), vec4<u32>(76149u, u_input.d.x, u_input.a, 0u))));
    let var_1 = Struct_3(vec2<f32>(arg_0.b, -1416f), global0.a, -357f, ~(-global0.c.x));
    var var_2 = Struct_2(Struct_1(!vec3<bool>(!global1.b.a.x, !global2.x, all(vec2<bool>(var_1.b.a.x, global2.x))), global1.c), select(arg_1, !arg_1, 268f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f + global0.a.b))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(44165i ^ global0.d.x, global4.x), ~global4.yw & vec2<i32>(global0.c.x, global4.x)), 6164i, select(-2147483647i | _wgslsmith_dot_vec2_i32(global0.d, global0.d), firstLeadingBit(-60419i) >> (~u_input.b % 32u), true)), vec2<i32>(var_1.d, _wgslsmith_mod_i32(global1.d << (var_0 % 32u), global4.x)), Struct_1(select(select(global1.b.a, vec3<bool>(true, var_1.b.a.x, arg_0.a.x), arg_0.a.x | var_1.b.a.x), vec3<bool>(true, true, global2.x), !global2.x && true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -506f)))));
    global3 = array<i32, 19>();
    var var_3 = Struct_1(vec3<bool>(all(vec2<bool>(true, false)), !((var_2.b.x && global0.b.x) == any(global0.b)), false), _wgslsmith_f_op_f32(885f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, -496f)))));
    return min(select(-1i, global3[_wgslsmith_index_u32(u_input.a, 19u)], true), -7062i);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    global4 = ~vec4<i32>(42694i, _wgslsmith_dot_vec2_i32(global4.xx, _wgslsmith_mult_vec2_i32(firstLeadingBit(global0.d), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 11382i))), func_3(Struct_1(!vec3<bool>(true, false, global2.x), global0.e.b), !select(vec4<bool>(true, arg_0, false, arg_1.x), vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_0, false, global0.b.x, true)), _wgslsmith_f_op_f32(global0.e.b - _wgslsmith_f_op_f32(f32(-1f) * -920f))), countOneBits(2147483647i) | ~global4.x);
    global1 = Struct_3(global1.a, Struct_1(!vec3<bool>(u_input.b < u_input.c.x, true, arg_0), _wgslsmith_f_op_f32(ceil(global0.a.b))), _wgslsmith_f_op_f32(-global0.e.b), global4.x);
    global3 = array<i32, 19>();
    global4 = abs(select(vec4<i32>(6913i, global0.d.x, countOneBits(global0.c.x & global1.d), global4.x), ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global1.d, -63971i, global0.d.x, 32225i)), ~vec4<i32>(5533i, global0.d.x, global1.d, 0i)), arg_1.x));
    let var_0 = Struct_2(Struct_1(select(select(select(vec3<bool>(global2.x, true, arg_1.x), vec3<bool>(arg_0, false, true), arg_0), vec3<bool>(false, arg_1.x, true), global1.b.a), vec3<bool>(any(global1.b.a.zx), global0.e.a.x, true), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) - 1784f)), vec4<bool>(arg_0, all(vec2<bool>(true, true)), !(all(vec4<bool>(false, arg_0, global1.b.a.x, true)) || true), any(vec3<bool>(true, true, false))), _wgslsmith_mod_vec3_i32(~global4.wyw, ~global4.zzy), global4.wz, global1.b);
    return (i32(-1i) * -2147483647i) >> (u_input.a % 32u);
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(i32(-1i) * -29671i, ~func_2(global0.e.a.x, !vec3<bool>(global2.x, true, true)), ~global3[_wgslsmith_index_u32(12691u, 19u)]);
    let var_1 = var_0.x << (~_wgslsmith_clamp_u32(max(10835u, ~22210u), _wgslsmith_mult_u32(0u, ~36037u), u_input.b) % 32u);
    var var_2 = global1.b;
    let var_3 = _wgslsmith_mult_vec4_i32(min(max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, 16525i, var_0.x), vec4<i32>(global4.x, -13016i, var_0.x, -1i)) | vec4<i32>(-2147483647i, global4.x, var_0.x, 2314i), _wgslsmith_mult_vec4_i32(-vec4<i32>(52829i, 2147483647i, global4.x, global4.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.d, -71980i, -1i, 2147483647i), vec4<i32>(-19195i, var_1, 5135i, 1i)))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-44663i, -1i), ~0i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global4.x, global3[_wgslsmith_index_u32(u_input.b, 19u)], global1.d), max(1i, var_1)), max(-2147483647i, i32(-1i) * -60791i), min(-47309i, var_1) >> (_wgslsmith_add_u32(u_input.a, u_input.d.x) % 32u))), ~_wgslsmith_mult_vec4_i32(countOneBits(reverseBits(vec4<i32>(2147483647i, var_0.x, -6692i, 2147483647i))), abs(-vec4<i32>(-1i, -30440i, -21463i, global0.d.x))));
    var var_4 = global1.b;
    return var_1;
}

fn func_4(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec3<bool>(all(vec4<bool>(true, false, false, true)), (global2.x || global2.x) == select(global0.b.x, false, global2.x), global0.e.a.x), _wgslsmith_f_op_f32(-global1.c)), global0.b, max(vec3<i32>(_wgslsmith_clamp_i32(0i, 1i, global4.x) << (_wgslsmith_sub_u32(25436u, u_input.a) % 32u), func_1(), global1.d), vec3<i32>(-(~global1.d), _wgslsmith_sub_i32(_wgslsmith_div_i32(-5175i, global0.d.x), 0i), 16439i)), -(vec2<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], -2147483647i) & -global0.c.xx) & (abs(vec2<i32>(-1i, 8504i)) | -vec2<i32>(global3[_wgslsmith_index_u32(3066u, 19u)], global4.x)), Struct_1(vec3<bool>(true, !global2.x, any(global0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - global1.c))))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 12575u), _wgslsmith_add_vec4_u32(vec4<u32>(27521u, u_input.b, u_input.d.x, u_input.c.x), vec4<u32>(u_input.d.x, 55698u, 3244u, u_input.b))), ~reverseBits(vec4<u32>(14125u, u_input.c.x, 0u, 45540u)));
    return var_0.b;
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_3(global1.a, Struct_1(global0.b.yyz, global1.b.b), global1.a.x, _wgslsmith_clamp_i32(-1i, min(-1i, 1i) & global0.c.x, global4.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-928f, -1076f), _wgslsmith_f_op_vec2_f32(global1.a + global1.a))), var_0.a)))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(global1.c + 133f)), _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_add_i32(func_2(!select(false, true, global2.x), select(vec3<bool>(arg_1.x, false, false), select(vec3<bool>(false, global2.x, global0.e.a.x), global0.a.a, true), !var_0.b.a.x)), var_0.d));
    var var_2 = ~(~(-(i32(-1i) * -7439i))) ^ min(var_0.d, -var_1.d >> (u_input.a % 32u));
    let var_3 = var_0.c;
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b, var_1.a.x) + var_0.a)), global1.b, global0.e.b, 2147483647i | countOneBits(-func_2(arg_1.x, arg_1.xxy)));
    return Struct_2(Struct_1(select(vec3<bool>(true, -10746i != global1.d, var_0.b.a.x), vec3<bool>(true, all(global2.zy), false), var_1.b.a.x || select(arg_1.x, false, false)), _wgslsmith_f_op_f32(-var_1.b.b)), !select(arg_1, !select(vec4<bool>(global1.b.a.x, false, true, false), vec4<bool>(global2.x, false, global1.b.a.x, false), false), var_1.b.a.x), global0.c, vec2<i32>(global0.c.x, _wgslsmith_mod_i32(arg_0, 1i)), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global1.b.a, _wgslsmith_f_op_f32(min(global0.a.b, global1.b.b)));
    var var_1 = global0.a;
    let var_2 = -min(-select(-vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)], -1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -25188i, global0.d.x, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global4.x, 0i, -20415i)), global0.b), select(~vec4<i32>(-1i, global1.d, global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 2147483647i), ~(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], global4.x, global1.d, global1.d) & vec4<i32>(global4.x, global3[_wgslsmith_index_u32(1u, 19u)], global4.x, 25948i)), select(vec4<bool>(var_1.a.x, false, global1.b.a.x, var_1.a.x), select(global0.b, global0.b, global0.b), any(global0.b))));
    var var_3 = global2.x;
    global0 = func_5(19334i, func_4(_wgslsmith_dot_vec4_i32(~vec4<i32>(29463i, var_2.x, 1607i, -1i), var_2) & func_1()));
    var_3 = global0.b.x;
    global0 = func_5(var_2.x, func_4(-var_2.x));
    global3 = array<i32, 19>();
    global0 = Struct_2(func_5(13715i, !func_4(reverseBits(var_2.x))).a, !func_5(~global3[_wgslsmith_index_u32(~u_input.a, 19u)], !(!global0.b)).b, ~select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], global4.x, global4.x), global4.zyy, !var_1.a.x) & var_2.xww, vec2<i32>(global0.d.x, _wgslsmith_dot_vec2_i32(~var_2.zx | ~vec2<i32>(global4.x, global3[_wgslsmith_index_u32(u_input.d.x, 19u)]), min(_wgslsmith_add_vec2_i32(var_2.zx, global0.d), var_2.yy << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))))), Struct_1(!vec3<bool>(global1.b.a.x, u_input.d.x == u_input.b, global2.x), 1067f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(40987u) >> (u_input.a % 32u), _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(u_input.d.x, 0u)), ~(~7696u), ~(u_input.c.x | u_input.b)));
}

