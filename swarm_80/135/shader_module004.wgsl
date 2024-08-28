struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(21863u, 0u), vec4<bool>(true, true, false, true), false, Struct_1(13260u, true));

var<private> global1: array<bool, 24> = array<bool, 24>(false, false, true, true, true, false, false, true, false, false, true, false, true, false, true, true, true, true, false, true, true, true, true, false);

var<private> global2: i32 = -48781i;

var<private> global3: array<u32, 4>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = arg_0.c.a;
    let var_1 = arg_0;
    let var_2 = select(global0.b.zx, !vec2<bool>(!(arg_1.b | false), true), u_input.b.x < -1i);
    var var_3 = Struct_1(~global0.a.x, false);
    var var_4 = Struct_4(min(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0.a.x, var_3.a, 4294967295u), 39519u), (global0.a & vec2<u32>(424u, 1u)) | _wgslsmith_mod_vec2_u32(global0.a, global0.a)), _wgslsmith_sub_vec2_u32(global0.a ^ global0.a, countOneBits(firstLeadingBit(u_input.a)))), vec4<bool>(true, false, all(global0.b.yzx), _wgslsmith_f_op_f32(-arg_0.a.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), var_2.x, var_1.c);
    return any(arg_0.b.zz);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    global0 = Struct_4(~global0.a, select(global0.b, select(vec4<bool>(!arg_0.b, func_3(Struct_2(vec4<f32>(539f, 632f, 1000f, 891f), vec4<bool>(true, arg_2.x, arg_0.b, global0.c), arg_0, arg_2.x), Struct_1(33566u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 24u)]), 4294967295u, global0.b.yyy), global3[_wgslsmith_index_u32(0u, 4u)] > 10943u, false), select(select(global0.b, global0.b, global0.b), vec4<bool>(false, arg_2.x, global0.b.x, false), !vec4<bool>(arg_2.x, false, true, global0.d.b)), vec4<bool>(!global1[_wgslsmith_index_u32(arg_1, 24u)], global0.a.x < arg_1, !global0.b.x, !global0.d.b)), select(!(!vec4<bool>(false, arg_0.b, global0.d.b, arg_2.x)), select(global0.b, vec4<bool>(true, true, true, true), global0.b), select(select(global0.b, vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(24111u, 24u)]), true), vec4<bool>(arg_2.x, arg_0.b, true, arg_0.b), !global0.b))), arg_0.b, arg_0);
    var var_0 = ~u_input.c;
    var_0 = (_wgslsmith_div_i32(u_input.d.x, -13624i) | u_input.b.x) << (_wgslsmith_add_u32(0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.a, arg_1), ~vec3<u32>(39480u, arg_0.a, u_input.a.x))) % 32u);
    var var_1 = Struct_1(~arg_1, true);
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-745f, 970f, -490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(592f)) + -1737f)), vec4<f32>(_wgslsmith_div_f32(159f, _wgslsmith_f_op_f32(280f - 1118f)), 137f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-250f)), _wgslsmith_f_op_f32(max(-551f, -1058f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f + 381f) + _wgslsmith_f_op_f32(ceil(-1033f))))), vec4<bool>(!(-u_input.d.x != u_input.c), true || arg_2.x, firstLeadingBit(63071u) == arg_1, firstLeadingBit(_wgslsmith_mult_u32(80798u, var_1.a)) < 76386u), arg_0, false);
    return _wgslsmith_dot_vec2_u32(~firstLeadingBit(u_input.a << (~vec2<u32>(global0.a.x, var_2.c.a) % vec2<u32>(32u))), select(vec2<u32>(88664u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(94374u, arg_0.a, 4294967295u, global0.a.x)), vec4<u32>(4294967295u, u_input.a.x, 12024u, 54602u) & vec4<u32>(1u, 5671u, 14488u, 1u))), ~u_input.a, select(select(var_2.b.xw, vec2<bool>(true, global0.b.x), var_1.b && arg_0.b), var_2.b.ww, var_1.b)));
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    global3 = array<u32, 4>();
    let var_0 = abs(~max(1u, ~(~0u)));
    let var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(func_2(Struct_1(128219u, true), 87931u, global0.b.yz), ~u_input.a.x)));
    var var_2 = Struct_5(arg_0);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -1253f, _wgslsmith_f_op_f32(f32(-1f) * -416f), arg_0)))), !select(!select(vec4<bool>(false, global0.b.x, global1[_wgslsmith_index_u32(66601u, 24u)], global0.c), global0.b, global1[_wgslsmith_index_u32(63033u, 24u)]), vec4<bool>(true, any(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(20666u, 24u)], !global0.b.x), true), Struct_1(min(3890u, 5525u), global0.b.x), global1[_wgslsmith_index_u32(~var_0, 24u)]);
    return global3[_wgslsmith_index_u32(var_3.c.a, 4u)] ^ global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, max(vec2<u32>(func_2(var_3.c, 0u, vec2<bool>(var_3.b.x, var_3.d)), ~0u), countOneBits(u_input.a ^ u_input.a))), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f))));
    var var_1 = (vec4<u32>(0u, _wgslsmith_div_u32(0u >> (u_input.a.x % 32u), 19385u), _wgslsmith_mult_u32(0u, ~u_input.a.x), 0u) >> (vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(func_1(var_0.a, 2147483647i), ~45907u), global3[_wgslsmith_index_u32(14860u, 4u)] ^ _wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_clamp_u32(110498u, u_input.a.x, abs(128819u))) % vec4<u32>(32u))) & (~vec4<u32>(~0u, u_input.a.x, countOneBits(53086u), global3[_wgslsmith_index_u32(~4294967295u, 4u)]) & (vec4<u32>(6009u, 22876u, 35547u | u_input.a.x, u_input.a.x) & ~(vec4<u32>(4294967295u, 43033u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)]) & vec4<u32>(4294967295u, global0.a.x, 43832u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.a)))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, u_input.d.x, u_input.b.x), abs(0i))), func_2(Struct_1(4294967295u, true), u_input.a.x & var_1.x, vec2<bool>(!global0.c, all(global0.b.xyx)))), -3442i, _wgslsmith_clamp_vec4_i32(firstLeadingBit(-(~vec4<i32>(22864i, u_input.c, u_input.c, u_input.d.x))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b.x, 0i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 41829i, u_input.b.x, -2147483647i), vec4<i32>(u_input.c, u_input.c, 11889i, -2002i))), -vec4<i32>(-36867i, 2147483647i, 0i, u_input.d.x) | vec4<i32>(24828i, u_input.c, u_input.d.x, 2147483647i)), min(vec4<i32>(12830i, _wgslsmith_mod_i32(u_input.c, 0i), -2147483647i, abs(u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(69513i, u_input.b.x, 6516i, u_input.c) >> (vec4<u32>(global0.d.a, var_1.x, global0.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, 0i), vec4<i32>(-37468i, 3470i, u_input.c, u_input.d.x))))), 34161u);
}

