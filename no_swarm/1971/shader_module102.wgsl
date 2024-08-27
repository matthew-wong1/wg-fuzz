struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(1148f, 559f), Struct_1(-551f, 1839f, vec4<bool>(true, true, true, true)), 1i, vec3<i32>(2147483647i, -55009i, i32(-2147483648)));

var<private> global1: Struct_3;

var<private> global2: bool = false;

var<private> global3: array<bool, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.b.b - -266f), arg_0.b.b, select(!vec4<bool>(!global0.b.c.x, true, global0.b.c.x, any(arg_2.zz)), arg_0.b.c, !global1.b.c.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1690f, -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x - global0.b.b), -101f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, global0.a.x, -1361f)) * vec3<f32>(-1404f, arg_0.a.x, -722f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -613f)));
    let var_3 = Struct_4(global0.d.zz, true, global1.b, Struct_3(_wgslsmith_f_op_vec2_f32(arg_1.d.a + vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -874f))), var_0, 2147483647i, ~(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.x, arg_0.c, arg_0.d.x), global0.d) & arg_0.d)), !vec3<bool>(all(vec3<bool>(false, false, arg_0.b.c.x)), !(!global1.b.c.x), any(select(vec2<bool>(arg_1.e.x, global3[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(arg_2.x, global0.b.c.x), arg_1.c.c.x))));
    var var_4 = Struct_2(1u);
    return vec4<bool>(false, global0.b.c.x, false, _wgslsmith_div_f32(638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.a.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    global3 = array<bool, 31>();
    global2 = true;
    let var_0 = 0i;
    let var_1 = global0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - -775f))), -1798f, !func_3(Struct_3(global0.a, global0.b, var_0, ~global1.d), Struct_4(_wgslsmith_sub_vec2_i32(global1.d.yy, global1.d.xx), false, Struct_1(global0.a.x, arg_0, global0.b.c), Struct_3(vec2<f32>(-143f, global0.a.x), Struct_1(arg_0, arg_0, vec4<bool>(false, false, arg_1.x, global1.b.c.x)), -1i, global1.d), select(arg_1.zzy, vec3<bool>(true, true, false), true)), vec3<bool>(global1.b.c.x, true, global1.a.x >= arg_0), vec2<i32>(-u_input.a, _wgslsmith_add_i32(var_0, global1.d.x))));
    return Struct_3(global0.a, global1.b, -8664i, global0.d ^ vec3<i32>(var_0, ~_wgslsmith_mult_i32(global0.d.x, var_0), _wgslsmith_mult_i32(reverseBits(u_input.a), -1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> u32 {
    global1 = func_2(-2106f, vec4<bool>(func_3(func_2(-158f, global0.b.c), Struct_4(vec2<i32>(-29877i, global0.d.x), arg_3 > 1724f, func_2(global1.a.x, arg_2.b.c).b, arg_2, arg_1.yxz), arg_2.b.c.ywx, arg_0 >> (vec2<u32>(1u, 12097u) % vec2<u32>(32u))).x, _wgslsmith_div_f32(arg_3, -1000f) != 471f, func_2(_wgslsmith_f_op_f32(round(arg_3)), global1.b.c).b.c.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), ~1u, 1u)), 31u)]));
    global1 = arg_2;
    var var_0 = vec2<bool>(true, any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 31u)], func_2(_wgslsmith_f_op_f32(arg_3 - -1290f), select(arg_2.b.c, global0.b.c, vec4<bool>(false, global1.b.c.x, true, arg_1.x))).b.c.x, all(vec4<bool>(false, true, global1.b.c.x, true)))));
    var var_1 = global0.d;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1405f - _wgslsmith_div_f32(1000f, arg_2.b.a))))), func_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.b))), select(!vec4<bool>(var_0.x, global0.b.c.x, arg_2.b.c.x, false), vec4<bool>(var_0.x, arg_2.b.c.x, true, false), true)), Struct_4(global1.d.yy, true, global0.b, func_2(global0.a.x, select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 31u)], global1.b.c.x, arg_1.x, false), arg_1, false)), !select(arg_2.b.c.wwz, global1.b.c.zxz, vec3<bool>(global3[_wgslsmith_index_u32(49698u, 31u)], global0.b.c.x, arg_1.x))), vec3<bool>(global1.b.c.x, func_3(Struct_3(global1.a, Struct_1(-209f, 1183f, global1.b.c), -2147483647i, global0.d), Struct_4(vec2<i32>(2147483647i, -39899i), true, arg_2.b, arg_2, global1.b.c.yyw), func_2(1675f, vec4<bool>(global0.b.c.x, global1.b.c.x, false, true)).b.c.xzy, global0.d.zx).x, var_0.x), vec2<i32>(16163i, 1i))).b;
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(min(1044u, _wgslsmith_add_u32(1163u, 72861u)), countOneBits(1u), 22736u, firstTrailingBit(29892u)), vec4<u32>(firstTrailingBit(30053u >> (1u % 32u)), 1u, _wgslsmith_add_u32(50111u, 1u), select(max(12825u, 4294967295u), firstTrailingBit(1u), select(true, global3[_wgslsmith_index_u32(4294967295u, 31u)], true)))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> f32 {
    global2 = !global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(38033u, 1u, arg_2), vec3<u32>(arg_2, arg_2, 4294967295u))), 31u)] & ((global1.d.x << (_wgslsmith_add_u32(7079u >> (arg_2 % 32u), _wgslsmith_div_u32(51411u, arg_2)) % 32u)) <= -35971i);
    global2 = any(global1.b.c.wxy);
    var var_0 = ~vec3<u32>(~func_4(-global0.d.zy, global0.b.c, func_2(1538f, global1.b.c), arg_1.x), 4294967295u, ~(~_wgslsmith_mod_u32(68451u, 17228u)));
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)) + vec2<f32>(-1423f, _wgslsmith_f_op_f32(-arg_3)))), Struct_1(global1.b.b, _wgslsmith_f_op_f32(global0.b.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + arg_3))), vec4<bool>(arg_0, !arg_0 | arg_0, arg_0, global3[_wgslsmith_index_u32(arg_2, 31u)])), i32(-1i) * -36171i, vec3<i32>(u_input.a, firstTrailingBit(countOneBits(1i)), 0i));
    global3 = array<bool, 31>();
    return global1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.b.b, -1060f, global1.b.c.x)), 189f, _wgslsmith_f_op_f32(max(global1.a.x, 1007f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -415f, 2181f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, -2997f, -728f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 198f, global0.b.b))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - -617f) - _wgslsmith_div_f32(global1.a.x, global1.b.a)), _wgslsmith_f_op_f32(func_1(global1.a.x != global1.b.a, _wgslsmith_div_vec2_f32(global0.a, global1.a), 54412u, -1153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-(0i << (~4294967295u % 32u)), _wgslsmith_div_i32(~abs(u_input.a), (global0.c | global1.c) | 1i)), _wgslsmith_mod_i32(0i, 36735i) >> (select(72647u, firstTrailingBit(25551u), global0.b.c.x) % 32u));
    var var_2 = ~(u_input.a << (func_4(global0.d.xz, select(vec4<bool>(true, true, true, true), select(global1.b.c, global0.b.c, global0.b.c.x), global0.c <= -8601i), Struct_3(var_0.xx, func_2(global1.a.x, global1.b.c).b, reverseBits(global1.d.x), select(global1.d, vec3<i32>(u_input.a, -1i, global0.c), false)), global1.a.x) % 32u));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(4943i, global1.d.x), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, ~(-4870i)), (global1.d.xz & vec2<i32>(18222i, -2147483647i)) ^ ~global1.d.xz)));
    let var_4 = Struct_4(vec2<i32>(-1i) * -global0.d.zy, false, Struct_1(global1.b.b, global0.a.x, global0.b.c), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.zz)))), Struct_1(782f, -1433f, global1.b.c), ~(-_wgslsmith_mod_i32(1i, -2147483647i)), vec3<i32>(20297i, ~global0.c ^ ~36398i, ~global0.d.x)), !(!global1.b.c.yxy));
    var var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, 1089f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-905f, global1.b.b)) * 1000f), var_4.d.b.b, _wgslsmith_div_f32(global1.b.a, _wgslsmith_f_op_f32(min(var_4.d.b.a, 886f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_4.c.b, global0.b.a, -477f)), vec4<f32>(var_4.c.a, var_0.x, 1000f, global1.a.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1686f, global1.b.b, 392f, global0.b.b))))));
}

