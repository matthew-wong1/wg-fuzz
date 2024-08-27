struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: u32;

var<private> global1: array<f32, 32>;

var<private> global2: array<f32, 14>;

var<private> global3: array<bool, 32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_1(vec4<bool>(true, global3[_wgslsmith_index_u32(min(u_input.d.x, u_input.d.x | ~u_input.d.x), 32u)], !(all(vec2<bool>(global3[_wgslsmith_index_u32(4883u, 32u)], global3[_wgslsmith_index_u32(1u, 32u)])) == global3[_wgslsmith_index_u32(~u_input.d.x, 32u)]), -_wgslsmith_clamp_i32(u_input.c, -1i, 3251i) >= (~(-61020i) & arg_0)), 374f, select(reverseBits(u_input.a.zx), countOneBits(u_input.b.zz), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(74282u, 32u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(42646u, 32u)], true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(14699u, 32u)]), global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], false, true))), !(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)])), select(vec2<bool>(global3[_wgslsmith_index_u32(18316u, 32u)], true), select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(20188u, 32u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 32u)]), global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), 4294967295u > u_input.d.x))));
    global2 = array<f32, 14>();
    global1 = array<f32, 32>();
    let var_1 = Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(~1u, 32u)], global3[_wgslsmith_index_u32(abs(0u | u_input.d.x), 32u)], any(!var_0.a.zw), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-393f))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, _wgslsmith_add_i32(arg_0, u_input.a.x)), _wgslsmith_mult_vec2_i32(~u_input.a.xy, -var_0.c))));
    let var_2 = !any(!select(select(vec2<bool>(false, var_1.a.x), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), var_0.a.x), var_0.a.zz, !var_1.a.x));
    return vec4<bool>(any(var_0.a), any(var_0.a), any(var_0.a.zyx), any(!(!var_1.a.yyw)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(2147483647i), max(u_input.c, -11547i), u_input.c & 0i), -vec3<i32>(-26857i, u_input.a.x, -39113i)), ~vec3<i32>(countOneBits(_wgslsmith_add_i32(u_input.a.x, 54401i)), u_input.b.x, u_input.a.x));
    global2 = array<f32, 14>();
    var var_1 = -_wgslsmith_mod_i32(max(var_0.x << (18066u % 32u), var_0.x) ^ -var_0.x, var_0.x ^ -var_0.x);
    let var_2 = !all(!select(vec3<bool>(true, false, true), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], false, global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], true, true)));
    return Struct_3(Struct_1(select(vec4<bool>(false, global3[_wgslsmith_index_u32(~22735u, 32u)], true, all(vec2<bool>(true, true))), vec4<bool>(false, var_2, all(vec4<bool>(false, var_2, global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)])), true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(47419u, 32u)], var_2, true), func_3(-1i), vec4<bool>(var_2, global3[_wgslsmith_index_u32(u_input.d.x, 32u)], true, true))), -119f, ~((vec2<i32>(u_input.a.x, var_0.x) >> (u_input.d.xw % vec2<u32>(32u))) & reverseBits(var_0.xy))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = ~_wgslsmith_clamp_u32(~select(~1u, min(20032u, 33794u), global1[_wgslsmith_index_u32(1u, 32u)] < global2[_wgslsmith_index_u32(u_input.d.x, 14u)]), _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, ~u_input.d.x), 1u), 36415u);
    var var_1 = vec2<f32>(-640f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 14u)] + -1397f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global2[_wgslsmith_index_u32(0u, 14u)])))), -666f));
    var var_2 = arg_0;
    global0 = countOneBits(select((14156u ^ u_input.d.x) << (_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) % 32u), firstLeadingBit(u_input.d.x), global3[_wgslsmith_index_u32(~firstLeadingBit(50739u), 32u)])) & abs(1u);
    var var_3 = 46898i;
    return Struct_3(Struct_1(arg_0.a.a.a, _wgslsmith_f_op_f32(340f * -371f), abs(vec2<i32>(-4250i | u_input.a.x, -arg_0.a.a.c.x))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    global3 = array<bool, 32>();
    var var_0 = u_input.d.yyx;
    var var_1 = Struct_4(Struct_3(Struct_1(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], false, false, arg_2.a.a.x), !arg_2.a.a, arg_2.a.a), arg_2.a.b, vec2<i32>(arg_2.a.c.x, 1i) & firstLeadingBit(u_input.a.yy))));
    let var_2 = _wgslsmith_sub_vec3_i32(abs(u_input.b << (vec3<u32>(var_0.x, ~u_input.d.x, _wgslsmith_mult_u32(var_0.x, 0u)) % vec3<u32>(32u))), u_input.a);
    global2 = array<f32, 14>();
    return Struct_3(func_2().a);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f - 422f)))));
    return func_5(countOneBits(u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 14u)], 397f, global2[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 14u)], arg_1.b, global1[_wgslsmith_index_u32(u_input.d.x, 32u)]))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), -276f, 210f))), func_4(Struct_4(func_2())));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = Struct_3(func_2().a);
    var var_1 = Struct_3(var_0.a);
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], arg_2.b))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(0u, 32u)], -1713f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(7951u, 14u)], arg_2.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(68291u, 14u)], arg_0.a.b))))), vec2<f32>(global2[_wgslsmith_index_u32(~reverseBits(~u_input.d.x), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -761f))));
    return Struct_4(func_2());
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = 19070u == _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(u_input.d.xyy, vec3<u32>(u_input.d.x, 69128u, u_input.d.x))), vec3<u32>(u_input.d.x, 1u, max(u_input.d.x, u_input.d.x))), ~(~_wgslsmith_div_u32(u_input.d.x, 15856u)));
    return firstTrailingBit(1u) & (_wgslsmith_mod_u32(1u, ~(u_input.d.x & u_input.d.x)) & (_wgslsmith_dot_vec3_u32(u_input.d.yyw, firstLeadingBit(u_input.d.yxw)) >> (_wgslsmith_div_u32(select(u_input.d.x, 1u, false), min(u_input.d.x, 14448u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~func_7(func_6(func_1(vec2<bool>(global3[_wgslsmith_index_u32(61358u, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], false, false, false), -738f, vec2<i32>(u_input.a.x, 24752i))), 2147483647i, Struct_2(global1[_wgslsmith_index_u32(9396u, 32u)], 1378f)), func_1(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(69349u, 32u)], global3[_wgslsmith_index_u32(14364u, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(74706u, 32u)], false)), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(65992u, 32u)], global3[_wgslsmith_index_u32(u_input.d.x, 32u)]), 1033f, vec2<i32>(54366i, u_input.b.x))).a.a.x, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 32u)]), 733f, _wgslsmith_div_f32(-610f, -1124f))), 35357u);
    var var_1 = ~(~(0u << (~(u_input.d.x | 0u) % 32u)));
    var var_2 = u_input.b.x;
    global2 = array<f32, 14>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), _wgslsmith_f_op_f32(trunc(525f)), _wgslsmith_f_op_f32(-func_4(Struct_4(Struct_3(Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], false, global3[_wgslsmith_index_u32(u_input.d.x, 32u)], true), -907f, vec2<i32>(-2147483647i, -2147483647i))))).a.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.d.x, 32u)]))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(46483u, 14u)], -1777f, -185f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(348f, global1[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.d.x, 14u)]) - vec3<f32>(100f, global2[_wgslsmith_index_u32(u_input.d.x, 14u)], global2[_wgslsmith_index_u32(u_input.d.x, 14u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 32u)]), -721f)));
    let x = u_input.a;
    s_output = StorageBuffer(-33735i);
}

