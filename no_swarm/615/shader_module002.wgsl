struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<f32, 11>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-1328f, -255f, -1000f), true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mod_i32(reverseBits(u_input.a), u_input.e) != 2147483647i;
    var_0 = countOneBits(u_input.b.x);
    var_0 = ~u_input.b.x;
    var var_2 = global2.a.x;
    return _wgslsmith_f_op_vec3_f32(sign(global2.a));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<i32> {
    let var_0 = !(!(!(arg_0 && false)) && all(vec4<bool>(true, global2.b, any(vec4<bool>(arg_0, arg_1.b, global2.b, arg_0)), global2.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, arg_1.a.x, -774f, arg_1.a.x) * vec4<f32>(-164f, 474f, global2.a.x, 361f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1721f, 1096f, -373f)))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, 733f, global2.a.x, -1141f))))));
    var var_2 = arg_1.a.xy;
    let var_3 = any(select(!(!vec3<bool>(true, global2.b, global2.b)), vec3<bool>(!var_0, !arg_1.b, any(!vec4<bool>(false, true, arg_1.b, global2.b))), global2.b));
    var var_4 = Struct_1(global2.a, vec2<bool>(var_0, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(global2.a)), _wgslsmith_f_op_vec3_f32(func_3(-vec4<i32>(arg_2.x, 27989i, 31688i, -21369i))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 11u)], -519f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - global2.a.x))), -352f)));
    return vec2<i32>(max((max(0i, 75530i) & _wgslsmith_div_i32(arg_2.x, -2819i)) | (-1i ^ arg_2.x), 15265i), arg_2.x);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-134f))))))));
    let var_2 = func_2(false, Struct_2(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))), 448f), !global2.b), vec4<i32>(1i, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, arg_0.x), i32(-1i) * -31355i)), ~(~_wgslsmith_add_i32(u_input.a, arg_0.x)), ~18479i));
    let var_3 = _wgslsmith_mult_i32(arg_0.x, -_wgslsmith_div_i32(firstTrailingBit(~(-668i)), 17451i));
    var_0 = global2.b;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -1225f, var_1))))), all(select(!vec4<bool>(global2.b, true, false, global2.b), vec4<bool>(global2.b, global2.b, true, any(vec4<bool>(true, global2.b, global2.b, global2.b))), select(select(vec4<bool>(false, true, true, global2.b), vec4<bool>(false, global2.b, global2.b, false), global2.b), vec4<bool>(global2.b, false, true, false), true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0.a.x;
    var var_1 = select(vec2<bool>(true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(global2.b, global2.b, false), global2.b), vec3<bool>(true, true, true), select(vec3<bool>(false, global2.b, false), vec3<bool>(true, true, true), arg_0.b)))), !select(vec2<bool>(true, true), select(select(vec2<bool>(global2.b, true), vec2<bool>(global2.b, false), vec2<bool>(global2.b, global2.b)), select(vec2<bool>(arg_0.b, global2.b), vec2<bool>(global2.b, global2.b), vec2<bool>(arg_0.b, true)), true), any(select(vec3<bool>(arg_0.b, global2.b, arg_0.b), vec3<bool>(global2.b, false, true), true))), !select(!select(vec2<bool>(false, arg_0.b), vec2<bool>(true, false), arg_0.b), !select(vec2<bool>(false, false), vec2<bool>(global2.b, arg_0.b), vec2<bool>(arg_0.b, true)), global2.b));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
    let var_3 = vec3<u32>(arg_1.x & 89214u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 19290u) & max(countOneBits(vec3<u32>(30168u, 46720u, 60805u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.b.x), vec3<u32>(arg_1.x, 77633u, u_input.b.x), arg_1)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_1.x, 14150u, u_input.b.x)), ~arg_1)), _wgslsmith_add_u32(abs(~(~arg_1.x)), _wgslsmith_add_u32(~u_input.d, u_input.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.e, -1i, -1i, -4777i))).x - 451f), var_0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x >> (var_3.x % 32u), 11u)]), func_1(select(vec4<i32>(-16124i, 1i, u_input.a, u_input.a), vec4<i32>(1i, -1i, u_input.a, u_input.a), vec4<bool>(var_1.x, false, true, arg_0.b))).a.x)));
    return global0[_wgslsmith_index_u32(50183u, 15u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = !(u_input.b.x < select(~0u, 4294967295u, false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, arg_1.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d | u_input.c, 11u)], -406f, _wgslsmith_f_op_f32(-arg_1.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1859f, 1293f, 742f)) + vec3<f32>(-641f, arg_1.a.x, -211f)))), arg_0.b, global2.a, 172f);
    let var_2 = Struct_1(arg_0.a, vec2<bool>(false, arg_3.b.x & (_wgslsmith_div_f32(arg_3.a.x, -1833f) >= 1000f)), arg_3.a, -1526f);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 1000f, arg_3.a.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-815f, arg_1.a.x, 713f) * global2.a))), u_input.a >= 0i);
    let var_4 = func_1(vec4<i32>(-2147483647i, max(1i, 2147483647i << (u_input.b.x % 32u)) >> (~select(1u, 1u, arg_3.b.x) % 32u), u_input.e, reverseBits(2147483647i)));
    return max(u_input.d, 44176u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(vec2<u32>(1u, 1u), ~vec2<u32>(20434u, u_input.c));
    var var_1 = vec3<bool>(global1[_wgslsmith_index_u32(func_5(func_4(func_1(vec4<i32>(u_input.a, u_input.e, 26444i, -3101i)), u_input.b.yww), func_4(func_1(vec4<i32>(-35791i, u_input.e, 2147483647i, u_input.e)), vec3<u32>(0u, 4294967295u, 1u)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(~(~0u), 15u)]), 11u)] >= _wgslsmith_f_op_f32(abs(2001f)), func_4(func_1(-countOneBits(vec4<i32>(u_input.e, u_input.a, 1i, u_input.a))), vec3<u32>(var_0.x, countOneBits(_wgslsmith_div_u32(var_0.x, u_input.c)), firstLeadingBit(1u))).b.x, (var_0.x == ~_wgslsmith_add_u32(1u, u_input.c)) == global2.b);
    var var_2 = global0[_wgslsmith_index_u32(var_0.x, 15u)];
    var var_3 = func_1(vec4<i32>(_wgslsmith_sub_i32(-32084i, 0i), u_input.a, u_input.a, u_input.e));
    global1 = array<f32, 11>();
    var var_4 = var_1.x || var_3.b;
    let var_5 = Struct_1(var_3.a, select(vec2<bool>(all(func_4(Struct_2(global2.a, var_1.x), vec3<u32>(4294967295u, u_input.d, u_input.c)).b), global2.b), var_2.b, !var_1.xx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(var_3.a.x - global1[_wgslsmith_index_u32(93738u, 11u)])), _wgslsmith_f_op_f32(select(556f, _wgslsmith_f_op_f32(select(var_3.a.x, -1185f, false)), global1[_wgslsmith_index_u32(u_input.d, 11u)] > 389f)), _wgslsmith_f_op_f32(step(var_2.d, 162f))) - _wgslsmith_f_op_vec3_f32(-global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f * -1239f) * global1[_wgslsmith_index_u32(var_0.x, 11u)]));
    var_3 = Struct_2(vec3<f32>(504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(global2.a.x, global1[_wgslsmith_index_u32(var_0.x, 11u)], var_3.a.x), true), vec3<u32>(1u, var_0.x, var_0.x)).c.x + global1[_wgslsmith_index_u32(27693u, 11u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_f_op_f32(var_5.d + global2.a.x))), var_3.a.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_i32(-vec2<i32>(-51764i, -2147483647i), vec2<i32>(~(-1i), u_input.a)), vec2<i32>(-11308i, abs(~(-1i)))), vec2<i32>(-41002i, -1i), vec2<i32>(u_input.a, u_input.a), -vec4<i32>(_wgslsmith_mult_i32(u_input.e, u_input.e), u_input.e, -u_input.e, -u_input.a) & -abs(abs(vec4<i32>(u_input.e, -2147483647i, 37944i, u_input.a))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(var_0.x), u_input.b.x | 21164u, 1u), u_input.b.xyx), (41716u | _wgslsmith_sub_u32(41563u, u_input.c)) >> (41305u % 32u), var_0.x));
}

