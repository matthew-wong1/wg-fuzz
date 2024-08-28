struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), vec3<f32>(1463f, -951f, -1321f));

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: Struct_4 = Struct_4(Struct_3(-810f, vec4<bool>(false, true, true, false), Struct_2(-16490i, vec3<f32>(-303f, -655f, 1686f)), 965f), Struct_3(-787f, vec4<bool>(false, true, false, false), Struct_2(27691i, vec3<f32>(-1000f, -951f, 604f)), 1074f), vec2<bool>(true, true), vec3<bool>(true, true, true));

var<private> global4: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = all(select(vec4<bool>(!any(global3.b.b.yzx), true && (global3.b.c.a >= 2147483647i), select(!global3.b.b.x, u_input.a == 0i, any(global3.a.b.zz)), any(vec4<bool>(false, global3.d.x, true, global3.b.b.x))), select(select(global3.a.b, global3.a.b, all(vec3<bool>(false, global3.b.b.x, global3.a.b.x))), select(!vec4<bool>(global3.b.b.x, true, global3.c.x, global3.a.b.x), vec4<bool>(false, global3.a.b.x, global3.a.b.x, false), any(global3.d.zx)), !global3.b.b), !global3.a.b));
    let var_1 = global3.d.xz;
    let var_2 = 1u;
    global4 = select(all(vec3<bool>(any(global3.a.b.wyx) && true, !(!global3.a.b.x), !(var_2 <= u_input.b))), !any(select(global3.a.b, !vec4<bool>(var_1.x, true, global3.b.b.x, var_0), global3.a.b)), true);
    var var_3 = vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(11481u, var_2), 0u << (u_input.b % 32u))), max(u_input.c, var_2)) & _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 1u))), ~min(~vec2<u32>(42313u, 28998u), _wgslsmith_clamp_vec2_u32(vec2<u32>(28908u, u_input.c), vec2<u32>(var_2, 0u), vec2<u32>(0u, 57943u))));
    return 41114i;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = 196f;
    let var_1 = vec2<i32>(u_input.a, -2147483647i) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0), select(-abs(vec2<i32>(0i, arg_0)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-19116i, 0i), vec2<i32>(arg_0, global3.b.c.a)), true));
    var var_2 = Struct_1(1223f, _wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, -2147483647i, global3.a.c.a, 2147483647i), countOneBits(vec4<i32>(48880i, var_1.x, 0i, arg_0))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, global0.a << (arg_1.x % 32u), firstLeadingBit(-2147483647i), -1i), vec4<i32>(-1211i, func_3(), -29212i, -2147483647i))));
    let var_3 = select(global3.a.b.zyz, !select(select(!global3.a.b.zxw, vec3<bool>(global3.d.x, global3.d.x, global3.a.b.x), global3.d), vec3<bool>(global3.a.b.x, true, true), false), any(vec4<bool>(false, true & any(global3.d.xz), !any(vec3<bool>(true, global3.a.b.x, false)), global3.a.b.x)));
    global2 = array<vec4<u32>, 5>();
    return Struct_1(_wgslsmith_f_op_f32(-global3.b.d), select(reverseBits(abs(var_2.b)), select(-abs(vec4<i32>(global3.b.c.a, arg_0, -26033i, arg_0)), var_2.b, vec4<bool>(true, all(vec4<bool>(global3.b.b.x, true, true, var_3.x)), true, select(true, global3.c.x, false))), global3.a.b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> bool {
    var var_0 = arg_2;
    var var_1 = func_2(select(~arg_0.b.x << (_wgslsmith_div_u32(~4294967295u, u_input.c) % 32u), u_input.a & global0.a, true), ~(reverseBits(vec4<u32>(88693u, 65949u, arg_2, 3176u)) & max(vec4<u32>(u_input.c, 4294967295u, arg_2, 51202u), ~global2[_wgslsmith_index_u32(3664u, 5u)])), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2, 68673u, 34366u, arg_2)), min(global2[_wgslsmith_index_u32(abs(min(u_input.b, arg_2)), 5u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b, arg_2, u_input.b), ~vec4<u32>(17280u, 13478u, u_input.c, u_input.c)))));
    let var_2 = arg_0;
    let var_3 = ~2191u;
    var var_4 = Struct_4(Struct_3(984f, !(!vec4<bool>(arg_1.b.x, false, arg_1.b.x, false)), Struct_2(-_wgslsmith_sub_i32(arg_0.b.x, -14119i), global0.b), _wgslsmith_f_op_f32(sign(1309f))), Struct_3(arg_0.a, vec4<bool>(var_2.a <= _wgslsmith_f_op_f32(-global3.b.c.b.x), !arg_1.b.x, !global3.b.b.x, !arg_1.b.x), Struct_2(_wgslsmith_div_i32(-1i, var_1.b.x << (u_input.b % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, -121f, -1639f)), _wgslsmith_f_op_vec3_f32(-arg_1.c.b), global3.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-644f)) + _wgslsmith_f_op_f32(global3.a.a + _wgslsmith_f_op_f32(-var_2.a)))), global3.a.b.xw, vec3<bool>(true, global3.b.c.a > 2147483647i, global3.b.b.x));
    return var_4.c.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>) -> Struct_3 {
    global0 = Struct_2(~arg_2.x ^ ~25352i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.a.c.b)) - global3.b.c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.d, -1761f, 851f) + vec3<f32>(global3.a.d, -941f, 972f))) * vec3<f32>(_wgslsmith_f_op_f32(-global3.b.d), global0.b.x, _wgslsmith_f_op_f32(-global3.a.a))), global3.a.b.wyy)));
    global2 = array<vec4<u32>, 5>();
    var var_0 = global3.b;
    let var_1 = ~2147483647i;
    let var_2 = false & (abs(0u) >= max((49358u >> (u_input.b % 32u)) >> (firstLeadingBit(u_input.b) % 32u), u_input.c));
    return Struct_3(global3.a.c.b.x, var_0.b, Struct_2(_wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_1, u_input.a, -1i), vec4<i32>(u_input.a, 22761i, global3.b.c.a, var_1), vec4<i32>(u_input.a, -2147483647i, var_0.c.a, 18826i)), ~arg_2), _wgslsmith_clamp_vec4_i32(arg_2, _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, 2147483647i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, -2147483647i, global3.b.c.a, var_0.c.a)), ~arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.x, 1047f, -121f))), vec3<f32>(var_0.a, global0.b.x, var_0.d))) + vec3<f32>(_wgslsmith_div_f32(-1000f, global3.b.d), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global3.b.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b.x, var_0.a))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(0i, global3.b.c.a), -37873i);
    let var_1 = ~firstLeadingBit(vec4<i32>(-(~(-10534i)), -(var_0.x & -1i), 15116i, 1i));
    var_0 = abs(var_1.xx);
    global3 = Struct_4(arg_1, global3.a, select(vec2<bool>(func_4(!vec3<bool>(global3.a.b.x, arg_1.b.x, false), arg_1.c.a, vec4<i32>(global0.a, -24493i, -33705i, -1i)).b.x, true), global3.c, vec2<bool>(!arg_1.b.x, max(u_input.c, u_input.c) <= (u_input.c << (u_input.c % 32u)))), !select(global3.d, func_4(select(global3.b.b.zzw, vec3<bool>(true, false, global3.c.x), vec3<bool>(false, global3.d.x, global3.a.b.x)), ~(-37554i), var_1).b.zxy, vec3<bool>(select(global3.d.x, false, true), u_input.c >= 123694u, true)));
    let var_2 = _wgslsmith_f_op_f32(-1655f + arg_1.d);
    return Struct_4(Struct_3(func_4(global3.b.b.wxy, func_3(), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, var_0.x, -60065i, 17732i)), var_1)).a, !select(select(vec4<bool>(true, global3.a.b.x, false, global3.b.b.x), vec4<bool>(true, false, false, global3.d.x), true), select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, false), vec4<bool>(arg_1.b.x, global3.b.b.x, global3.a.b.x, true), arg_1.b), true), func_4(global3.d, _wgslsmith_add_i32(global0.a, -var_0.x), -(~vec4<i32>(1i, 0i, global0.a, global0.a))).c, _wgslsmith_f_op_f32(-func_4(select(global3.a.b.wwz, vec3<bool>(global3.c.x, arg_1.b.x, arg_1.b.x), false), -35185i ^ var_0.x, ~var_1).c.b.x)), global3.a, global3.d.yz, vec3<bool>(!select(true, global3.c.x, global3.b.b.x), any(arg_1.b), !any(func_4(global3.a.b.zzw, 6555i, var_1).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c.b.x - global0.b.x) * _wgslsmith_f_op_f32(-1061f + 985f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1423f, _wgslsmith_f_op_f32(-global0.b.x)) + vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(-1399f)))))), func_4(select(vec3<bool>(2147483647i == global0.a, !global3.c.x, func_1(Struct_1(-2662f, vec4<i32>(global0.a, -36164i, global3.b.c.a, 0i)), global3.a, u_input.c)), select(select(vec3<bool>(true, false, true), global3.b.b.wxy, global3.a.b.x), vec3<bool>(true, true, global3.c.x), vec3<bool>(false, global3.a.b.x, global3.a.b.x)), global3.a.b.x), -u_input.a, firstLeadingBit(-(vec4<i32>(0i, global3.b.c.a, 19262i, global0.a) << (vec4<u32>(u_input.c, u_input.c, u_input.b, 1u) % vec4<u32>(32u))))));
    var var_0 = firstLeadingBit(vec2<i32>(abs(global3.a.c.a), abs(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.a, global0.b.x) * global3.a.c.b.yy), global3.a).b.c.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-322f, global3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + -132f) - global0.b.x)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(global3.b.c.b))))))) + _wgslsmith_f_op_vec3_f32(global0.b + global0.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1199f, -423f, global3.b.d, 1000f), vec4<f32>(global3.b.c.b.x, global0.b.x, -336f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.b.x, -1000f, -290f))) * vec4<f32>(-1639f, global0.b.x, -1906f, _wgslsmith_f_op_f32(global3.b.c.b.x + global3.a.c.b.x))) * vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.c.b.x, global3.a.a)), 206f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(global0.b.x, 244f, true))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(var_2, vec4<f32>(530f, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f - -258f) - global0.b.x), _wgslsmith_f_op_f32(abs(-170f)))), ~(abs(u_input.b) & ~u_input.c) > ~1u));
    let var_4 = select(vec3<bool>(!(!global3.a.b.x), false, any(func_5(vec2<f32>(var_2.x, var_3.x), global3.a).a.b.yyw)), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_2.x))) + global0.b.xx), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), select(vec4<bool>(false, true, true, false), !vec4<bool>(false, true, true, global3.a.b.x), global3.b.b.x && global3.d.x), global3.b.c, _wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(859f - global3.b.c.b.x)))).b.b.yww, _wgslsmith_mod_u32(0u, ~u_input.b) != 70708u);
    var var_5 = func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(vec3<bool>(global3.a.b.x, var_4.x, false), u_input.a, vec4<i32>(global3.a.c.a, global0.a, 2099i, global3.a.c.a)).c.b.x, _wgslsmith_div_f32(-796f, -315f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-163f, 658f) - var_2.wx) + vec2<f32>(1000f, var_3.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1778f, var_3.x)))))), global3.c)), global3.b);
    let var_6 = func_2(min(-(~(-global3.a.c.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, global3.a.c.a), _wgslsmith_mult_vec4_i32(func_2(var_0.x, vec4<u32>(9969u, u_input.c, u_input.b, u_input.b), u_input.c).b, ~vec4<i32>(24581i, var_5.b.c.a, 12322i, global0.a)))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, u_input.c, u_input.b, ~u_input.b)), global2[_wgslsmith_index_u32(u_input.b, 5u)]), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(2571u, 5u)], global2[_wgslsmith_index_u32(u_input.b, 5u)]), ~(~_wgslsmith_mod_u32(0u, u_input.c))));
    var var_7 = -var_6.b.ww;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_5(_wgslsmith_f_op_vec2_f32(-var_3.yw), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, var_6.a)), Struct_3(var_2.x, vec4<bool>(var_5.b.b.x, true, var_4.x, false), Struct_2(var_0.x, vec3<f32>(270f, global3.a.a, -2590f)), var_1.x)).a).a.c.a, vec4<u32>(_wgslsmith_div_u32(45325u, firstLeadingBit(1u)), _wgslsmith_clamp_u32(u_input.c, ~u_input.c, firstLeadingBit(4294967295u)), 1u, u_input.b), 20909u).b.zy);
}

