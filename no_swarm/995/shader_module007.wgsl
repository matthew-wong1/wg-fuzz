struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec3<i32>;

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> vec2<u32> {
    let var_0 = global3[_wgslsmith_index_u32(57549u, 1u)];
    let var_1 = true;
    return u_input.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_1(any(vec4<bool>(true, true, true, true)), vec3<bool>(true, !(all(vec2<bool>(false, false)) && true), all(vec4<bool>(true, true, any(vec2<bool>(false, true)), select(true, false, true)))), vec2<bool>(all(vec3<bool>(true, false, true)), select(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), any(vec2<bool>(false, false)))));
    var_0 = Struct_1(!select(all(var_0.c), all(vec4<bool>(true, var_0.b.x, var_0.c.x, false)), all(vec2<bool>(var_0.b.x, false))) & false, vec3<bool>(!var_0.b.x, any(!vec2<bool>(true, var_0.a)) & var_0.a, true), !select(!var_0.b.xx, !select(var_0.b.xx, vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(any(vec2<bool>(var_0.a, var_0.a)), false)));
    global1 = max(vec3<i32>(_wgslsmith_add_i32(abs(i32(-1i) * -61297i), u_input.b), ~(-arg_3.x << (~arg_0.x % 32u)), u_input.b << (arg_0.x % 32u)), -(~vec3<i32>(-12735i & global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_mult_i32(u_input.b, u_input.b), global0[_wgslsmith_index_u32(58071u ^ u_input.c, 17u)])));
    global3 = array<Struct_1, 1>();
    var_0 = Struct_1(true, var_0.b, var_0.b.yx);
    return _wgslsmith_f_op_f32(max(arg_1, -1336f));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    var var_0 = vec2<i32>(1i, _wgslsmith_clamp_i32(reverseBits(0i | abs(u_input.b)), -(_wgslsmith_add_i32(u_input.b, 3106i) << ((arg_1.x & 1u) % 32u)), -13921i));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, ~48367u), 1u)];
    global2 = _wgslsmith_div_i32(2894i, var_0.x);
    global1 = ~abs(~vec3<i32>(global1.x, -global0[_wgslsmith_index_u32(arg_1.x, 17u)], _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -29009i, u_input.b), vec3<i32>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], 18463i))));
    var var_2 = abs(_wgslsmith_clamp_vec4_u32(~(reverseBits(vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, 0u)) & ~vec4<u32>(u_input.a.x, arg_1.x, u_input.a.x, 69855u)), vec4<u32>(19673u, 4294967295u, u_input.a.x, ~(~19339u)), ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, arg_1.x, u_input.a.x), vec4<u32>(arg_1.x, u_input.a.x, u_input.c, arg_1.x), false), vec4<u32>(u_input.a.x, u_input.a.x, arg_1.x, 20307u) >> (vec4<u32>(1u, arg_1.x, arg_1.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(67727u, u_input.c, 49813u, 4294967295u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.c), vec4<u32>(72477u, 4294967295u, 1u, 7872u)))));
    return -global1.x;
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = (true == any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))) | any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), all(vec3<bool>(true, false, false))), any(vec2<bool>(true, true))));
    var var_1 = !(!select(true, true, all(vec2<bool>(true, true))));
    var var_2 = -(~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0, global0[_wgslsmith_index_u32(0u, 17u)]), i32(-1i) * -1i), arg_0, arg_0));
    let var_3 = Struct_1(select(~_wgslsmith_mult_u32(17829u, arg_1.x) != _wgslsmith_clamp_u32(1u, u_input.a.x, reverseBits(109144u)), any(vec3<bool>(global1.x > -31906i, true, any(vec4<bool>(false, true, false, false)))), true), select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), !any(vec3<bool>(false, false, true)), !(arg_1.x <= 1u)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec4<bool>(true, false, false, true))), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))))), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(var_2.x == 7999i, true), !any(vec4<bool>(true, true, false, true))), false));
    var var_4 = Struct_1(false, select(var_3.b, var_3.b, (!var_3.a | !var_3.b.x) & var_3.b.x), select(var_3.b.zx, vec2<bool>(true, var_3.a), !(!vec2<bool>(var_3.b.x, var_3.c.x))));
    return max(-(vec3<i32>(_wgslsmith_add_i32(global1.x, 2147483647i), -var_2.x, 1i) >> (min(~arg_1, ~arg_1) % vec3<u32>(32u))), ~(-(vec3<i32>(global1.x, var_2.x, -12539i) << (vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(38374u, 24513u, 1u)), vec3<u32>(66903u, 46965u, 0u) | vec3<u32>(2204u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global1 = func_5(func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), func_2(vec2<bool>(true, arg_1.c.x), Struct_1(false, vec3<bool>(true, true, arg_1.c.x), arg_2.c), vec3<u32>(u_input.a.x, u_input.c, 7009u), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1598f, -836f))), countOneBits(vec2<u32>(u_input.a.x, u_input.c) << (u_input.a % vec2<u32>(32u))), select(abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(22315u, 17u)])), vec3<i32>(arg_3.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.b), arg_2.a))), (select(u_input.a, u_input.a, arg_1.b.yx) ^ u_input.a) & min(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(65318u, u_input.c)), ~vec2<u32>(u_input.a.x, 0u))), vec3<u32>(u_input.a.x, 77578u, u_input.c ^ select(~u_input.c, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), arg_1.c.x)));
    var var_0 = Struct_1(all(!(!select(vec3<bool>(true, arg_1.a, arg_1.a), arg_2.b, arg_1.a))), vec3<bool>(arg_2.b.x, !(global0[_wgslsmith_index_u32(1u, 17u)] > arg_0.x), false), arg_1.b.yx);
    var var_1 = arg_2;
    global3 = array<Struct_1, 1>();
    var var_2 = ~global1.x;
    return global3[_wgslsmith_index_u32(12305u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global3 = array<Struct_1, 1>();
    var var_0 = func_1(firstTrailingBit(select(~firstLeadingBit(vec3<i32>(13947i, 42027i, global0[_wgslsmith_index_u32(79659u, 17u)])), vec3<i32>(i32(-1i) * -13549i, _wgslsmith_sub_i32(-10160i, 57069i), -33336i), vec3<bool>(true, all(vec3<bool>(true, true, true)), true))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(min(20782u, u_input.c), ~(u_input.c & u_input.a.x)), reverseBits(u_input.c)), 1u)], global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(64923u, 45344u), 1u)], vec3<i32>(~(~global1.x), ~global0[_wgslsmith_index_u32(u_input.c, 17u)], global1.x) << (vec3<u32>(countOneBits(~u_input.c), u_input.a.x, u_input.c) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1992f, 135f, 398f, 1001f) + vec4<f32>(1234f, 1417f, -1000f, 903f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), -1463f, _wgslsmith_f_op_f32(f32(-1f) * -405f), 1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, 1323f, -1273f, -1000f) + vec4<f32>(-145f, -128f, 1000f, -807f)), vec4<f32>(142f, -772f, -177f, -400f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1103f, 1000f, -173f, -230f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, -1020f, -1084f, 628f)))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(var_1.x, -343f, -1046f, 621f)) - _wgslsmith_f_op_vec4_f32(select(var_1, var_1, true))), all(vec2<bool>(var_0.a, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, 713f, var_1.x), var_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-592f, var_1.x, 155f, 199f))))))));
    var var_3 = global3[_wgslsmith_index_u32(1u, 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(max(vec3<i32>(-1i, global1.x, -27896i), select(vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 17u)], -1i), vec3<i32>(9062i, 1092i, 2147483647i), var_3.c.x)), ~(~vec3<i32>(-1i, -1i, 0i))), abs(u_input.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1000f, _wgslsmith_f_op_f32(ceil(-1403f)))))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~35126u), _wgslsmith_div_u32(9233u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(27703u, u_input.c, u_input.c, 4294967295u)), ~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 16516u)))), 17u)]);
}

