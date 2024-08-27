struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 28>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<f32>(810f, -829f, -792f, 1000f), 6074i);

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = select(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(72307u, 21964u), vec2<u32>(8025u, 1u), vec2<u32>(0u, 9657u)) & abs(vec2<u32>(u_input.a, 4294967295u)), ~select(vec2<u32>(26386u, 2993u), vec2<u32>(u_input.a, 7488u), true)), _wgslsmith_div_vec2_u32(vec2<u32>(~countOneBits(12937u), ~u_input.a), ~vec2<u32>(~u_input.a, 113120u)), vec2<bool>(global2.a.x, select(false, global2.a.x, any(vec3<bool>(true, true, global3.x)))));
    global3 = select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(~21937u, 28u)], any(vec2<bool>(true, true)), all(vec3<bool>(false, global2.a.x, global1[_wgslsmith_index_u32(24462u, 28u)])), true), vec4<bool>(true, global2.a.x, global2.a.x && true, true), !global2.a.x || global2.a.x), vec4<bool>(true, true, global3.x, any(vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(1u, 28u)], false, false)) && global3.x), global2.a.x), vec4<bool>(global2.a.x, all(global3.xxx), true, true), vec4<bool>(all(!global3.zw), global2.a.x, global2.a.x, true));
    let var_1 = firstTrailingBit(~(~(~(-33007i) | (1i | global2.c))));
    let var_2 = ~26627i;
    var var_3 = global3.wx;
    return global2.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global3 = !vec4<bool>(arg_0.d.b.a.x, false, true, any(select(vec3<bool>(false, false, false), global3.www, select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 28u)], false, global3.x), global3.ywx, arg_1.d.b.a.x))));
    var var_0 = false;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(arg_1.d.a.x, arg_1.a), _wgslsmith_sub_u32(arg_0.a, 64327u), _wgslsmith_div_u32(arg_1.a, ~arg_0.d.a.x));
    var var_2 = reverseBits(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 10721u), ~37794u), _wgslsmith_add_u32(~(~4294967295u), 3590u & arg_1.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1723u, 11562u) << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), arg_1.d.a)));
    let var_3 = Struct_3(0u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-753f, arg_0.d.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-222f)) + _wgslsmith_f_op_f32(-arg_0.c))), vec3<f32>(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(499f)), 259f), 566f), vec3<bool>(!(!global3.x), global2.a.x, any(vec4<bool>(true, arg_0.e.a.x, false, true))))), _wgslsmith_f_op_f32(abs(1383f)), Struct_2(reverseBits(~vec2<u32>(var_2.x, 14u)), Struct_1(select(vec2<bool>(arg_1.e.a.x, global3.x), arg_1.d.b.a, true), arg_1.d.b.b, _wgslsmith_mult_i32(firstLeadingBit(arg_0.d.b.c), -1i | arg_0.d.b.c))), arg_0.d.b);
    return arg_0.e.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = 4294967295u >> (~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.a, 1u)), ~(~vec3<u32>(u_input.a, 1u, 1u))) % 32u);
    let var_1 = _wgslsmith_div_i32(func_4(Struct_3(countOneBits(1u), global2.b.yxz, _wgslsmith_f_op_f32(func_3()), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec2<bool>(global2.a.x, global2.a.x), vec4<f32>(arg_2, arg_2, 166f, -689f), -34144i)), Struct_1(global3.zz, global2.b, 1i)), Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.a, u_input.a, var_0), vec4<u32>(50963u, var_0, 4294967295u, var_0)), _wgslsmith_f_op_vec3_f32(min(global2.b.ywx, vec3<f32>(global2.b.x, arg_1.x, -1386f))), -751f, Struct_2(vec2<u32>(u_input.a, 0u), Struct_1(global3.wy, global2.b, global2.c)), Struct_1(vec2<bool>(global2.a.x, false), global2.b, global2.c))) & 28115i, countOneBits(-global2.c));
    global0 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    global2 = Struct_1(vec2<bool>(true, 1u <= u_input.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-325f, -440f, arg_1.x, 389f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, 1000f, global2.b.x), vec4<f32>(903f, arg_2, arg_1.x, global2.b.x)))) * vec4<f32>(-349f, 1f, 527f, _wgslsmith_f_op_f32(sign(arg_1.x)))))), arg_0.x);
    return !global3.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> i32 {
    global3 = select(vec4<bool>(all(global3.zxz), true, all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 28u)]), vec2<bool>(false, false), !vec2<bool>(true, global3.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 55042u, arg_2.x, 64100u), arg_2 & arg_2) == 1u), select(vec4<bool>(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.c, -2147483647i, -1i, global2.c), vec4<i32>(arg_0.c, arg_0.c, global2.c, 1i)), arg_0.b.xz, arg_0.b.x, !arg_0.a), false, _wgslsmith_f_op_f32(-arg_0.b.x) != -217f, true), select(select(select(vec4<bool>(global3.x, true, global1[_wgslsmith_index_u32(22196u, 28u)], global1[_wgslsmith_index_u32(arg_1.x, 28u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(17430u, 28u)], true, false), vec4<bool>(global3.x, global2.a.x, global2.a.x, false)), select(vec4<bool>(true, global2.a.x, false, true), vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(u_input.a, 28u)], false, global2.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, global3.x)), select(vec4<bool>(true, arg_0.a.x, global1[_wgslsmith_index_u32(15930u, 28u)], global2.a.x), vec4<bool>(global2.a.x, true, true, false), vec4<bool>(global3.x, true, false, global2.a.x))), select(vec4<bool>(global3.x, global3.x, global2.a.x, true), select(vec4<bool>(global2.a.x, global2.a.x, true, arg_0.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)], true, false), true), arg_0.a.x), !select(vec4<bool>(global2.a.x, arg_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], arg_0.a.x), vec4<bool>(arg_0.a.x, false, global1[_wgslsmith_index_u32(arg_2.x, 28u)], global1[_wgslsmith_index_u32(31837u, 28u)]), false)), select(vec4<bool>(global2.b.x > 795f, any(vec3<bool>(true, true, global2.a.x)), global2.a.x, true), vec4<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 28u)], any(vec3<bool>(global2.a.x, false, true)), global3.x, global2.c == arg_0.c), true)), select(select(select(vec4<bool>(global3.x, true, global1[_wgslsmith_index_u32(arg_2.x, 28u)], false), !vec4<bool>(true, false, true, global2.a.x), false), !select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(global3.x, false, false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_2.x, 28u)], false)), all(vec3<bool>(global3.x, global3.x, true))), select(select(!vec4<bool>(global2.a.x, global3.x, true, true), select(vec4<bool>(global2.a.x, arg_0.a.x, true, false), vec4<bool>(true, true, global3.x, true), false), vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(u_input.a, 28u)], global3.x, arg_0.a.x)), vec4<bool>(global2.a.x, false, global2.a.x, all(vec4<bool>(false, arg_0.a.x, false, false))), true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, arg_2.x), 28u)]));
    var var_0 = Struct_2(abs(arg_1.xy), arg_0);
    var var_1 = ~max(_wgslsmith_mod_vec2_i32(-vec2<i32>(global2.c, global2.c), vec2<i32>(_wgslsmith_sub_i32(var_0.b.c, -48520i), _wgslsmith_mult_i32(1i, global2.c))), abs(_wgslsmith_div_vec2_i32(~vec2<i32>(0i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(-2147483647i, arg_0.c)))));
    var var_2 = vec4<u32>(~(~_wgslsmith_sub_u32(arg_2.x, ~var_0.a.x)), u_input.a, _wgslsmith_add_u32(var_0.a.x, u_input.a), ~countOneBits(_wgslsmith_dot_vec2_u32(select(arg_1.yy, var_0.a, vec2<bool>(global3.x, var_0.b.a.x)), arg_1.zz)));
    global3 = select(vec4<bool>(var_0.b.a.x, global3.x, global1[_wgslsmith_index_u32(arg_2.x, 28u)], true), !(!(!vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(arg_1.x, 28u)], true, false))), !vec4<bool>(global1[_wgslsmith_index_u32(min(~var_0.a.x, var_2.x), 28u)], any(vec4<bool>(true, true, var_0.b.a.x, false)), _wgslsmith_add_i32(global2.c, -48254i) > _wgslsmith_clamp_i32(arg_0.c, arg_0.c, -27650i), !any(global3.xzw)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(-_wgslsmith_sub_i32(func_1(Struct_1(global2.a, vec4<f32>(global2.b.x, -354f, global2.b.x, global2.b.x), global2.c), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 82778u, 26945u, u_input.a)), _wgslsmith_mod_i32(global2.c, -12075i)) != _wgslsmith_dot_vec4_i32(min(-vec4<i32>(global2.c, -24258i, -995i, -2190i), abs(vec4<i32>(2147483647i, 8311i, 1i, global2.c))), vec4<i32>(-1i) * -vec4<i32>(-89995i, -2147483647i, global2.c, global2.c)), false, global2.a.x, select(func_2(vec4<i32>(-1i) * -vec4<i32>(-1i, global2.c, global2.c, global2.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.wy + vec2<f32>(1306f, 910f)), vec2<f32>(1501f, global2.b.x)), global2.b.x, select(global3.xz, select(global2.a, global3.xy, vec2<bool>(global2.a.x, false)), false || global1[_wgslsmith_index_u32(u_input.a, 28u)])), false, all(global3.zzw) | !select(false, true, global2.a.x)));
    global2 = Struct_1(select(!(!global2.a), var_0.xz, false), vec4<f32>(_wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b.x, 1017f, false)) + _wgslsmith_f_op_f32(-global2.b.x))), global2.b.x, -483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.b.x, -474f, global1[_wgslsmith_index_u32(u_input.a, 28u)])))) + 1422f)), ~2147483647i);
    let var_1 = Struct_2(~(vec2<u32>(u_input.a, ~u_input.a) & ~vec2<u32>(u_input.a, 4294967295u)), Struct_1(select(select(!global3.xy, vec2<bool>(var_0.x, false), all(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)]))), select(!global2.a, select(var_0.wz, vec2<bool>(var_0.x, true), var_0.zw), true), global2.a.x || global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 28u)]), global2.b, ~(-1i)));
    global1 = array<bool, 28>();
    var var_2 = 2147483647i & _wgslsmith_div_i32(-firstLeadingBit(_wgslsmith_sub_i32(-18923i, var_1.b.c)), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec3<i32>(-1i, func_1(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], var_0.x), var_1.b.b, global2.c), vec3<u32>(17479u, 20717u, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 8414u, var_1.a.x)), var_1.b.c)), vec3<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(select(~var_1.a, vec2<u32>(4294967295u, 0u), func_2(vec4<i32>(-23843i, -20715i, global2.c, var_1.b.c), vec2<f32>(696f, var_1.b.b.x), 595f, vec2<bool>(false, true))), vec2<u32>(u_input.a, firstLeadingBit(var_1.a.x))), 1u));
}

