struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-18662i, 1i, -23776i), vec4<f32>(2269f, 1534f, 1932f, 1409f), vec2<u32>(4294967295u, 38720u));

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<i32>(0i, 15589i, -1i), vec4<f32>(1520f, -897f, -1324f, -679f), vec2<u32>(6775u, 56105u)));

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-458f))));
    let var_2 = 7582i;
    var var_3 = Struct_3(Struct_1(max(vec3<i32>(var_2, ~global0.a.x, _wgslsmith_sub_i32(var_2, var_2)), firstLeadingBit(u_input.b) >> (vec3<u32>(var_0.x, var_0.x, 25824u) % vec3<u32>(32u))), global0.b, ~var_0.zw ^ vec2<u32>(u_input.a.x, ~u_input.a.x)));
    var_0 = u_input.a;
    return vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 37254i, u_input.b.x), global0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-18103i, var_2, -1i), global2.a.a)), global0.a), var_3.a.a));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(~_wgslsmith_add_vec3_i32(global0.a, -vec3<i32>(26898i, 0i, global0.a.x)), global2.a.b, global2.a.c));
    global2 = Struct_3(global2.a);
    global2 = Struct_3(arg_1);
    global3 = array<Struct_2, 18>();
    global0 = Struct_1(vec3<i32>(arg_1.a.x, -1i, _wgslsmith_dot_vec2_i32(arg_1.a.xz, func_3(var_0.a.a.x & global2.a.a.x, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-814f * 1523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x))), -259f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(923f, 598f))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(global2.a.c.x, arg_1.c.x)), arg_0.wx), 1u), ~vec2<u32>(arg_0.x, 1u) << (vec2<u32>(max(4294967295u, global2.a.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(21687u, 0u), var_0.a.c)) % vec2<u32>(32u)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(max(arg_1.c.x, global2.a.c.x), _wgslsmith_mod_u32(1u, global0.c.x)))));
    return global2.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global2 = Struct_3(arg_1);
    var var_0 = global2.a.a.x;
    var var_1 = arg_1.b.xzx;
    var var_2 = u_input.a;
    let var_3 = global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global0.c.x, ~(~0u))), 18u)];
    return _wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(global0.b.x + func_2(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 34458u, 38323u, global2.a.c.x), ~var_3.b), func_2(var_3.b, global2.a, vec3<i32>(1i, u_input.b.x, -36072i) | var_3.c.a), _wgslsmith_mult_vec3_i32(-u_input.b, abs(arg_1.a))).b.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = select(any(vec4<bool>(_wgslsmith_f_op_f32(-637f + global2.a.b.x) >= global0.b.x, !arg_0.x & true, arg_0.x, true)), false, u_input.b.x <= global2.a.a.x);
    global1 = any(select(vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(-global2.a.b.wwx), func_2(vec4<u32>(1473u, global2.a.c.x, global2.a.c.x, 4294967295u), global2.a, global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, global2.a.b.x))), arg_0.x), select(vec2<bool>(true, all(vec3<bool>(var_0, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, var_0), var_0), !arg_0.x), arg_0.x));
    return global3[_wgslsmith_index_u32(~1u, 18u)];
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = u_input.b.x;
    return arg_0.a.c.x >= min(22967u, 53399u);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    let var_0 = Struct_3(global2.a);
    var var_1 = global3[_wgslsmith_index_u32(58935u << (((_wgslsmith_div_u32(~arg_1.x, u_input.a.x) & arg_1.x) >> (_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(0u, global2.a.c.x, arg_1.x)), abs(~42129u)) % 32u)) % 32u), 18u)];
    var var_2 = vec4<u32>((51716u >> ((4294967295u | var_1.b.x) % 32u)) & _wgslsmith_sub_u32(u_input.a.x >> (global0.c.x % 32u), global2.a.c.x), ~(~u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(abs(arg_1.x), u_input.a.x)), ~30985u) ^ var_1.b;
    var var_3 = Struct_3(var_0.a);
    let var_4 = _wgslsmith_f_op_f32(785f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1039f)), _wgslsmith_f_op_f32(-global2.a.b.x), arg_0.x)))));
    return firstTrailingBit(2147483647i);
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    global1 = true;
    var var_0 = reverseBits(_wgslsmith_mult_vec3_i32(func_1(vec3<bool>(false, false, true), vec2<u32>(arg_2.a.c.x, 4294967295u)).c.a, global0.a | arg_1.a) | (global2.a.a << (_wgslsmith_add_vec3_u32(vec3<u32>(76993u, u_input.a.x, 32772u), vec3<u32>(15590u, 1u, 0u)) % vec3<u32>(32u)))) >> (select((min(vec3<u32>(20160u, 1u, 0u), vec3<u32>(arg_2.a.c.x, 65541u, 1u)) & u_input.a.zwz) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, arg_1.c.x), vec3<u32>(arg_2.a.c.x, arg_2.a.c.x, 1u)), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) | abs(arg_1.c.x), 4294967295u, ~arg_2.a.c.x), true) % vec3<u32>(32u));
    let var_1 = -_wgslsmith_add_i32(arg_0, -28526i);
    return reverseBits((vec4<i32>(-arg_0, _wgslsmith_div_i32(arg_0, 1i), _wgslsmith_mult_i32(var_1, arg_1.a.x), var_0.x & -1i) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(4692i, 1i, arg_3.a.a.x, 7208i), vec4<i32>(arg_2.a.a.x, global0.a.x, arg_0, -2147483647i), vec4<i32>(1931i, 643i, u_input.b.x, arg_0))) & firstLeadingBit(firstLeadingBit(select(vec4<i32>(-10264i, global2.a.a.x, 43563i, -1i), vec4<i32>(28203i, -35403i, -6097i, arg_1.a.x), vec4<bool>(true, false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(vec3<bool>(func_5(Struct_2(Struct_1(u_input.b, global0.b, vec2<u32>(global0.c.x, u_input.a.x)), u_input.a, global2.a), _wgslsmith_f_op_f32(-global0.b.x), func_1(vec3<bool>(false, false, true), vec2<u32>(34978u, global2.a.c.x))), true, select(true, true, true)), u_input.a.zwy, !(!func_5(global3[_wgslsmith_index_u32(61717u, 18u)], global0.b.x, Struct_2(global2.a, u_input.a, Struct_1(global0.a, vec4<f32>(1000f, 1000f, -1485f, -322f), vec2<u32>(1u, u_input.a.x)))))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, global2.a.a.x, u_input.b.x), global0.a.x, _wgslsmith_dot_vec2_i32(global2.a.a.zx, u_input.b.xy)), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(360f, 1505f, global0.b.x, global0.b.x))), true)) * func_1(vec3<bool>(true, false, false), ~u_input.a.xx).c.b), global0.c), global3[_wgslsmith_index_u32(~0u, 18u)], func_1(vec3<bool>(!all(vec2<bool>(false, false)), true, true), _wgslsmith_mod_vec2_u32(~u_input.a.wy, _wgslsmith_div_vec2_u32(global0.c, vec2<u32>(global0.c.x, global2.a.c.x)) ^ global2.a.c)));
    global0 = func_2(select(max(u_input.a, func_1(vec3<bool>(false, true, false), vec2<u32>(0u, 42898u)).b), abs(u_input.a), vec4<bool>(true, true, true, true)) ^ vec4<u32>(firstTrailingBit(min(u_input.a.x, global2.a.c.x)), 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global2.a.c.x, 1u, u_input.a.x)), 51788u), max(reverseBits(63976u), 1u)), global2.a, func_7(-8171i, Struct_1(func_2(u_input.a, func_1(vec3<bool>(false, false, false), u_input.a.zz).c, -var_0.yyw).a, _wgslsmith_f_op_vec4_f32(ceil(global2.a.b)), func_2(vec4<u32>(4294967295u, global2.a.c.x, 1u, 55252u), global2.a, global0.a).c ^ global0.c), func_1(vec3<bool>(true, true, true), ~vec2<u32>(u_input.a.x, 0u)), Struct_2(global2.a, vec4<u32>(global2.a.c.x, _wgslsmith_mult_u32(global0.c.x, 9057u), global0.c.x, ~39119u), func_1(vec3<bool>(true, true, true), _wgslsmith_add_vec2_u32(global2.a.c, vec2<u32>(global2.a.c.x, global2.a.c.x))).a)).wwy);
    let var_1 = Struct_2(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, 60888u, func_2(vec4<u32>(73499u, global0.c.x, u_input.a.x, 4294967295u), global2.a, global2.a.a).c.x, global0.c.x), ~u_input.a), Struct_1(global0.a, _wgslsmith_div_vec4_f32(func_1(vec3<bool>(false, true, false), global0.c).a.b, _wgslsmith_f_op_vec4_f32(abs(global2.a.b))), max(global0.c, func_2(vec4<u32>(4294967295u, 0u, 22746u, global0.c.x), Struct_1(var_0.zzw, global0.b, vec2<u32>(995u, 0u)), vec3<i32>(-32246i, global0.a.x, 25826i)).c)), vec3<i32>(global2.a.a.x, 1i, _wgslsmith_dot_vec3_i32(func_7(37487i, global2.a, global3[_wgslsmith_index_u32(global2.a.c.x, 18u)], Struct_2(Struct_1(vec3<i32>(-8446i, 28807i, 7109i), vec4<f32>(197f, global0.b.x, -182f, -1763f), vec2<u32>(1u, u_input.a.x)), u_input.a, global2.a)).wwx, var_0.zwz))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(1u, 2663u, global2.a.c.x, u_input.a.x), min(select(vec4<u32>(global0.c.x, global2.a.c.x, global2.a.c.x, global2.a.c.x), vec4<u32>(1u, global0.c.x, 1u, u_input.a.x), vec4<bool>(false, false, false, true)), ~u_input.a), vec4<bool>(false, func_4(global0.b.wzz, global2.a, global2.a.b.xy), true, true)), vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.c.x, 56770u), vec2<u32>(41151u, 4294967295u)), select(global2.a.c.x, global2.a.c.x, false)), u_input.a.x, ~global0.c.x, firstLeadingBit(1u))), Struct_1(~(~max(global2.a.a, global2.a.a)), global0.b, ~vec2<u32>(global0.c.x >> (21589u % 32u), 53293u >> (u_input.a.x % 32u))));
    var var_2 = var_1;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(global2.a.b.xw)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.b, vec4<f32>(global0.b.x, -545f, 494f, var_1.a.b.x))))), global2.a.b), func_3(-var_2.c.a.x, select(select(select(vec4<bool>(false, var_3, true, var_3), vec4<bool>(var_3, false, false, var_3), vec4<bool>(true, true, var_3, true)), select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_3, var_3, var_3, true), true), var_3), !(!vec4<bool>(true, var_3, true, var_3)), (1u ^ global2.a.c.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.c.x, 9585u), var_2.a.c))).x, _wgslsmith_sub_vec2_u32(global0.c, u_input.a.zy), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.b.x - 739f), -1724f)) - _wgslsmith_f_op_f32(trunc(global2.a.b.x))))));
}

