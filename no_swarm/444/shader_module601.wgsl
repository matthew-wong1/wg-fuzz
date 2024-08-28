struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 16>;

var<private> global2: array<i32, 5>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> vec4<u32> {
    global3 = Struct_2(-(~vec3<i32>(global3.a.x, ~u_input.a.x, u_input.a.x)), reverseBits(_wgslsmith_mult_vec3_u32(abs(u_input.d), vec3<u32>(4294967295u, global3.b.x, 4294967295u))), global3.c, vec2<bool>(!(arg_0 && true) != false, false));
    var var_0 = global3.d.x;
    let var_1 = true;
    global0 = 1u;
    var var_2 = global3.c;
    return reverseBits(~abs(~u_input.b));
}

fn func_2() -> vec2<bool> {
    let var_0 = global3.a.x;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~u_input.b, func_3(!global3.d.x, vec3<i32>(10644i, 0i, 52333i), -u_input.a.x)) >> (_wgslsmith_div_u32(0u, ~(~1u)) % 32u), _wgslsmith_dot_vec3_u32(global3.b, global3.b));
    var_1 = ~select(34350u, global3.b.x, false);
    global1 = array<f32, 16>();
    let var_2 = countOneBits(_wgslsmith_mod_i32(~0i, -13867i));
    return vec2<bool>(all(vec2<bool>(true, all(vec2<bool>(global3.d.x, true)))), false);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(198f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) * 1145f), _wgslsmith_f_op_f32(select(arg_0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 16u)], false))))));
    var var_2 = !var_0.x;
    var_2 = var_0.x;
    let var_3 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.x, 21335i, u_input.a.x, 19133i), vec4<i32>(27118i, global2[_wgslsmith_index_u32(0u, 5u)], -1i, 0i)) & countOneBits(vec4<i32>(0i, -1604i, 0i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 5u)], u_input.a.x, global3.a.x, global3.a.x), vec4<i32>(38946i, 36396i, -37116i, global3.a.x)) >> ((u_input.c >> (vec4<u32>(0u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ -1i;
    return Struct_3(Struct_1(global3.c.a), Struct_2(_wgslsmith_add_vec3_i32(global3.a, _wgslsmith_mult_vec3_i32(~global3.a, vec3<i32>(2147483647i, global3.a.x, u_input.a.x) << (vec3<u32>(0u, 4294967295u, 18586u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_dot_vec2_u32(global3.b.xz, global3.b.yy) >> (~52005u % 32u), u_input.b.x >> (0u % 32u), _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(global3.b.x), reverseBits(4294967295u))), Struct_1(-1495f), !func_2()));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_add_vec3_i32(arg_2.b.a, abs((vec3<i32>(-1i, global3.a.x, -35365i) & vec3<i32>(1i, 1i, 1i)) >> (func_1(vec3<f32>(global3.c.a, 239f, global1[_wgslsmith_index_u32(0u, 16u)])).b.b % vec3<u32>(32u)))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1540f, global3.c.a, -197f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 16u)], -1038f, global1[_wgslsmith_index_u32(arg_2.b.b.x, 16u)]) - vec3<f32>(global1[_wgslsmith_index_u32(global3.b.x, 16u)], -682f, arg_2.b.c.a))))), func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(f32(-1f) * -2144f), -1000f)).b.d.x);
    let var_1 = Struct_2(var_0.a, arg_2.b.b, Struct_1(-677f), arg_2.b.d);
    let var_2 = _wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(trunc(func_1(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.c.a + -1000f), global3.c.a, arg_1)).b.c.a)));
    let var_3 = var_1.b.x;
    var var_4 = var_1.a.x;
    return min(global3.a, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b.a.x, -2147483647i, -46208i, arg_2.b.a.x), vec4<i32>(-3425i, -73349i, 33234i, 2147483647i)), u_input.a.x, min(var_1.a.x, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a, var_0.b.b.a), vec3<i32>(var_0.a.x, global3.a.x, -33799i))) & select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -82614i, global2[_wgslsmith_index_u32(33092u, 5u)]), select(vec3<i32>(global3.a.x, u_input.a.x, arg_2.b.a.x), vec3<i32>(var_1.a.x, 14027i, arg_2.b.a.x), global3.d.x)), arg_2.b.a, vec3<bool>(global3.d.x, true, -201f < var_2)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = global2[_wgslsmith_index_u32(global3.b.x, 5u)];
    let var_2 = -1i;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.a, _wgslsmith_f_op_f32(abs(-203f)), global1[_wgslsmith_index_u32(arg_1, 16u)])), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.a, -1000f, global1[_wgslsmith_index_u32(36383u, 16u)])))), !(!select(vec3<bool>(global3.d.x, false, global3.d.x), vec3<bool>(global3.d.x, global3.d.x, global3.d.x), vec3<bool>(global3.d.x, false, global3.d.x)))))).b;
    let var_4 = select(any(vec4<bool>(652f != _wgslsmith_f_op_f32(ceil(global3.c.a)), false, firstLeadingBit(31674u) > arg_1, true)), !(!func_1(vec3<f32>(-334f, -741f, 432f)).b.d.x), var_3.d.x);
    return func_1(vec3<f32>(-542f, _wgslsmith_f_op_f32(-1288f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f))), global1[_wgslsmith_index_u32(arg_1, 16u)])).b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = select(select(select(!vec4<bool>(true, false, global3.d.x, true), !(!vec4<bool>(true, arg_0.d.x, true, arg_0.d.x)), !select(vec4<bool>(false, false, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, true, arg_0.d.x, global3.d.x), vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x))), select(vec4<bool>(false == global3.d.x, true, global3.d.x, func_5(arg_0.a, global3.b.x).d.x), vec4<bool>(arg_0.d.x, arg_0.d.x | true, false, arg_0.d.x | true), global3.d.x), select(select(!vec4<bool>(true, false, global3.d.x, arg_0.d.x), !vec4<bool>(true, global3.d.x, false, true), select(vec4<bool>(global3.d.x, global3.d.x, false, true), vec4<bool>(false, false, false, global3.d.x), global3.d.x)), select(select(vec4<bool>(arg_0.d.x, false, false, true), vec4<bool>(false, global3.d.x, true, true), vec4<bool>(true, false, global3.d.x, true)), vec4<bool>(arg_0.d.x, false, false, global3.d.x), select(vec4<bool>(false, true, true, arg_0.d.x), vec4<bool>(global3.d.x, arg_0.d.x, global3.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x))), !vec4<bool>(global3.d.x, global3.d.x, arg_0.d.x, global3.d.x))), select(!(!vec4<bool>(global3.d.x, global3.d.x, global3.d.x, global3.d.x)), vec4<bool>(_wgslsmith_mult_u32(global3.b.x, global3.b.x) >= u_input.c.x, global3.d.x, arg_0.d.x, false), select(vec4<bool>(true, arg_0.d.x, true, true), select(select(vec4<bool>(global3.d.x, false, arg_0.d.x, false), vec4<bool>(global3.d.x, arg_0.d.x, arg_0.d.x, false), arg_0.d.x), !vec4<bool>(true, false, true, global3.d.x), select(vec4<bool>(false, false, false, arg_0.d.x), vec4<bool>(arg_0.d.x, false, true, arg_0.d.x), arg_0.d.x)), !(!vec4<bool>(arg_0.d.x, arg_0.d.x, global3.d.x, global3.d.x)))), func_5(~(-firstLeadingBit(global3.a)), 1u << ((~arg_0.b.x >> (u_input.d.x % 32u)) % 32u)).d.x);
    var var_1 = global3.c;
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_3;
    global0 = func_3(arg_1.b.d.x, vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), u_input.a.x & 0i), global3.a.x, i32(-1i) * -(~u_input.a.x)), 1378i).x;
    let var_1 = select(vec4<bool>(true, arg_3.b.b.d.x, true & func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.b.a.a, -119f, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<f32>(arg_0.c.a, arg_2.a, -714f)))).b.d.x, func_2().x), !(!vec4<bool>(true, true, arg_1.b.d.x & true, true)), !(!(!vec4<bool>(false, var_0.b.b.d.x, arg_1.b.d.x, true))));
    var var_2 = arg_0.b.x & ~(~(~_wgslsmith_div_u32(global3.b.x, global3.b.x)));
    var var_3 = _wgslsmith_f_op_f32(sign(arg_3.b.a.a));
    return Struct_2(arg_3.b.b.a, vec3<u32>(_wgslsmith_clamp_u32(~(~0u), global3.b.x & 51163u, arg_1.b.b.x), 1u, 49591u), arg_3.b.b.c, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.d.x;
    global3 = func_7(func_6(func_5(func_4(!vec4<bool>(global3.d.x, true, global3.d.x, false), -505f, func_1(vec3<f32>(170f, global3.c.a, global3.c.a))), global3.b.x), global3.c, global3.c), func_1(vec3<f32>(810f, -798f, _wgslsmith_f_op_f32(f32(-1f) * -1697f))), Struct_1(1f), Struct_4(global3.a, Struct_3(global3.c, Struct_2(-vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global3.a.x, 28283i), global3.b | vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), func_6(Struct_2(vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global3.b.x, 5u)], global2[_wgslsmith_index_u32(global3.b.x, 5u)]), u_input.b.zxz, global3.c, vec2<bool>(true, global3.d.x)), global3.c, global3.c).c, func_2())), !global3.d.x));
    let var_1 = -1520f;
    var var_2 = 29138i;
    let var_3 = func_5(global3.a, ~(~(~7959u)));
    let var_4 = Struct_4(vec3<i32>(~(global3.a.x & -15240i), var_3.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-var_3.a.zy, _wgslsmith_mod_vec2_i32(var_3.a.yy, u_input.a)), _wgslsmith_div_vec2_i32(global3.a.yy, vec2<i32>(global3.a.x, u_input.a.x)) >> (vec2<u32>(23551u, global3.b.x) % vec2<u32>(32u)))), func_1(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(3655u, global3.b.x), 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c.a, 155f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.b.x, 16u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.b.x, 16u)] + 910f)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, func_7(func_7(var_4.b.b, var_4.b, func_5(vec3<i32>(10853i, var_4.a.x, 1i), var_4.b.b.b.x | 0u).c, var_4), func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global3.b.x, 16u)], var_1, -1097f) - vec3<f32>(var_4.b.b.c.a, 146f, var_4.b.a.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.a, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], 972f) * vec3<f32>(global1[_wgslsmith_index_u32(15624u, 16u)], global1[_wgslsmith_index_u32(62988u, 16u)], 1093f))))), var_4.b.a, Struct_4(global3.a, var_4.b, !(true && var_3.d.x))).c.a, u_input.b, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14702u, 0u, var_4.b.b.b.x) | u_input.c, vec4<u32>(~var_4.b.b.b.x, _wgslsmith_clamp_u32(4294967295u, global3.b.x, 0u), ~u_input.e.x, 1u))));
}

