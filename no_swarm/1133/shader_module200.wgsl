struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: Struct_3;

var<private> global2: vec2<u32> = vec2<u32>(6616u, 1u);

var<private> global3: array<i32, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_2.b;
    let var_1 = -vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_2.c), 46568u, global1.c & u_input.a), ~countOneBits(vec3<u32>(global2.x, arg_0.c, 21380u))), 4u)], i32(-1i) * -44057i, 40393i);
    let var_2 = arg_0.d.zy;
    var_0 = Struct_2((-_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.a.x, -33111i, global3[_wgslsmith_index_u32(1u, 4u)], var_1.x), global1.b.a, vec4<i32>(u_input.c, -43031i, global1.b.a.x, u_input.c)) | global1.b.a) ^ _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.a.x, 52254i, var_0.a.x, 12107i), vec4<i32>(0i, var_1.x, 2147483647i, 1i))), vec4<i32>(i32(-1i) * -11191i, var_1.x, 1i, ~var_1.x)), arg_0.d, _wgslsmith_f_op_f32(step(global1.b.c, -835f)));
    let var_3 = -597f;
    return select(_wgslsmith_mod_vec4_i32(~arg_2.b.a, ~vec4<i32>(var_1.x << (global1.c % 32u), min(-13735i, -1i), -global1.b.a.x, -5446i)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(74507i, 0i, 2147483647i, 49999i)), vec4<i32>(1i, 1i, var_1.x, -2147483647i)), max(-var_0.a, -var_0.a)), arg_2.b.a), arg_0.d.x);
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = Struct_2(~func_3(Struct_1(~u_input.c, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(621f, 1102f))), ~1u, vec3<bool>(global1.b.b.x, true, global1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, global2.x))), 698f, Struct_3(global1.b.b.x, Struct_2(global1.b.a, vec3<bool>(global1.b.b.x, false, global1.b.b.x), -483f), select(1u, 21206u, false)), 4294967295u), vec3<bool>(!(~global1.c <= ~1u), !any(select(vec2<bool>(global1.b.b.x, false), global0[_wgslsmith_index_u32(30628u, 3u)], true)), all(vec2<bool>(false, any(vec4<bool>(global1.a, false, true, global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1600f - _wgslsmith_f_op_f32(round(1236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -813f) * _wgslsmith_f_op_f32(-global1.b.c)))));
    let var_1 = vec3<bool>(max(global1.c, global1.c) == global1.c, true, var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(971f, 211f, arg_0.x)), _wgslsmith_div_vec3_f32(arg_0, vec3<f32>(817f, var_0.c, 425f)))) * arg_0) - vec3<f32>(_wgslsmith_f_op_f32(-856f * global1.b.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1657f, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, -1237f))));
    let var_3 = var_0.b.x;
    let var_4 = countOneBits(var_0.a.ww);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.c, global1.b.c)), 728f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -930f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c)))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_i32(~(~vec2<i32>(u_input.c, 1i)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, ~(-28411i)), vec2<i32>(func_3(Struct_1(global3[_wgslsmith_index_u32(global2.x, 4u)], vec2<f32>(global1.b.c, -685f), 1u, vec3<bool>(global1.a, false, false), vec2<u32>(27916u, global1.c)), -260f, Struct_3(false, global1.b, u_input.d), global1.c).x, global1.b.a.x)), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.e, -1i) >> (u_input.b.zx % vec2<u32>(32u))), global1.b.a.xx, global1.b.a.zw)));
    let var_1 = Struct_1(-47872i, arg_0.yz, 146283u, select(global1.b.b, !vec3<bool>(global1.b.b.x, global1.b.b.x | false, u_input.d >= u_input.b.x), (!global1.b.b.x & false) & global1.b.b.x), _wgslsmith_add_vec2_u32(u_input.b.xx, _wgslsmith_div_vec2_u32(vec2<u32>(33666u, global2.x), _wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(global2.x, 86959u)))));
    var var_2 = global1.b;
    var var_3 = vec4<bool>(var_2.b.x, true, global1.a, true);
    var var_4 = Struct_3(var_1.d.x, global1.b, ~firstLeadingBit(global2.x));
    return Struct_3(-(-var_1.a | -var_2.a.x) < -37984i, Struct_2(global1.b.a, select(select(select(vec3<bool>(var_2.b.x, false, false), vec3<bool>(true, var_1.d.x, true), var_3.xxw), var_2.b, any(vec3<bool>(false, true, false))), select(!vec3<bool>(var_3.x, true, var_2.b.x), global1.b.b, true), var_3.zyz), -1812f), ~4294967295u);
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_div_vec2_u32(u_input.b.yy, u_input.b.yx);
    var var_0 = select(vec3<i32>(-1i) * -(~(~global1.b.a.xzy)), global1.b.a.wzw, global1.b.b);
    let var_1 = select(_wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(global1.b.a, global1.b.a), vec4<i32>(-(global3[_wgslsmith_index_u32(global1.c, 4u)] >> (4294967295u % 32u)), _wgslsmith_mult_i32(global1.b.a.x, var_0.x), 2147483647i, 43034i)), global1.b.a << (~vec4<u32>(~global1.c, _wgslsmith_mult_u32(42703u, global2.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(87384u, 4294967295u, 17396u)), min(16334u, global1.c)) % vec4<u32>(32u)), global1.a);
    var var_2 = global1.b.b.xx;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(global1.b.c, global1.b.c, -425f)))), vec3<f32>(global1.b.c, global1.b.c, _wgslsmith_f_op_f32(abs(289f))), global1.b.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-1185f, _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_div_f32(global1.b.c, -2251f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.c, global1.b.c, global1.b.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.c, -544f, -1827f)))), true)));
    return Struct_1(~global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1068f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f + -1195f) - global1.b.c)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.c, global1.b.c))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1082f, global1.b.c))))), _wgslsmith_div_u32(var_3.c, abs(_wgslsmith_clamp_u32(u_input.a, 57616u, global2.x)) << (_wgslsmith_clamp_u32(4294967295u | u_input.d, countOneBits(u_input.b.x), 4294967295u) % 32u)), vec3<bool>(true, var_2.x, true), vec2<u32>(global1.c, var_3.c));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global1 = Struct_3(!global1.b.b.x, Struct_2(vec4<i32>(-65915i, countOneBits(~global3[_wgslsmith_index_u32(global1.c, 4u)]), _wgslsmith_sub_i32(~(-41634i), reverseBits(arg_1.a)), -arg_1.a ^ (i32(-1i) * -2147483647i)), global1.b.b, arg_1.b.x), 4294967295u << (select(69337u, 1u, arg_1.d.x) % 32u));
    var var_0 = select(select(!vec4<bool>(arg_1.d.x, all(vec2<bool>(global1.a, true)), any(global1.b.b), true), select(select(!vec4<bool>(global1.b.b.x, global1.a, true, true), select(vec4<bool>(global1.b.b.x, global1.b.b.x, false, global1.a), vec4<bool>(global1.b.b.x, arg_1.d.x, arg_1.d.x, global1.a), false), select(vec4<bool>(true, global1.b.b.x, false, global1.a), vec4<bool>(false, false, global1.b.b.x, global1.a), vec4<bool>(arg_1.d.x, arg_1.d.x, true, arg_1.d.x))), select(!vec4<bool>(global1.a, false, global1.b.b.x, global1.a), !vec4<bool>(false, arg_1.d.x, false, global1.a), true), !select(vec4<bool>(true, global1.b.b.x, false, true), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, global1.b.b.x), vec4<bool>(arg_1.d.x, global1.a, false, true))), !arg_1.d.x), vec4<bool>(arg_1.d.x, true, global1.b.b.x, all(func_4(vec3<f32>(522f, arg_1.b.x, global1.b.c)).b.b) || arg_1.d.x), abs(global2.x) > _wgslsmith_mod_u32(max(99193u ^ u_input.a, ~0u), 30082u));
    var var_1 = global1.b;
    var_0 = vec4<bool>(true, (_wgslsmith_clamp_u32(global1.c, 1u, 26659u) >> (66798u % 32u)) == _wgslsmith_add_u32(79559u, 41909u), any(select(select(!vec4<bool>(false, var_0.x, arg_1.d.x, arg_1.d.x), vec4<bool>(var_0.x, true, false, false), arg_1.d.x), vec4<bool>(select(true, true, global1.a), true, false, true), false)), countOneBits(12003i) <= arg_1.a);
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.c, 191f, var_1.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-757f, arg_0.x, -403f), vec3<f32>(-437f, 1250f, 1708f), vec3<bool>(var_0.x, false, true))))))))).b;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.b.b.x, func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1167f, -583f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1400f, 144f) * vec2<f32>(global1.b.c, global1.b.c)))), func_1()), u_input.b.x);
    global2 = ~u_input.b.xz;
    global3 = array<i32, 4>();
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f + -445f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.c, global1.b.c))), _wgslsmith_f_op_f32(ceil(global1.b.c)), _wgslsmith_f_op_f32(f32(-1f) * -804f))).b;
    global2 = firstLeadingBit((vec2<u32>(39086u, global2.x >> (17079u % 32u)) ^ firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.b.zz))) << (u_input.b.xz % vec2<u32>(32u)));
    var var_1 = ~(~vec2<u32>(global2.x, global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-global1.b.c)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.c, global1.b.c, -1512f)))).x, _wgslsmith_f_op_f32(sign(var_0.c))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, global1.b.c) * vec2<f32>(global1.b.c, 905f)), vec2<f32>(594f, 800f), any(vec2<bool>(global1.b.b.x, true))))))), var_0.a.x);
}

