struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 1i, 5333i);

var<private> global2: array<i32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~u_input.d.x, 5u)], _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, min(23910u << (u_input.c.x % 32u), 25945u)), select((vec2<u32>(41509u, u_input.d.x) << (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))) | vec2<u32>(u_input.d.x, 49163u), u_input.d.yx, arg_0.c.zy)), !any(vec3<bool>(select(true, arg_0.c.x, true), true, arg_0.c.x)), arg_0.c);
    global0 = array<Struct_1, 5>();
    var var_1 = u_input.d.x;
    global0 = array<Struct_1, 5>();
    global2 = array<i32, 26>();
    return 21577i;
}

fn func_2() -> vec4<i32> {
    global1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~0i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.d.x, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)]) | ~global2[_wgslsmith_index_u32(u_input.c.x, 26u)], func_3(Struct_1(global2[_wgslsmith_index_u32(0u, 26u)], vec2<f32>(-1136f, -778f), vec3<bool>(false, false, false), vec4<i32>(global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], -1i, 2493i)), any(vec4<bool>(false, false, true, false)), _wgslsmith_sub_i32(-2003i, 11323i)), countOneBits(abs(2147483647i))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(global2[_wgslsmith_index_u32(77636u, 26u)], u_input.e, global1.x, global2[_wgslsmith_index_u32(77473u, 26u)]), vec4<i32>(u_input.e, global2[_wgslsmith_index_u32(0u, 26u)], u_input.e, global1.x)), -vec4<i32>(-2147483647i, 2147483647i, -42232i, 2147483647i) << (_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(1u, u_input.c.x, 1u, 47991u), u_input.d) % vec4<u32>(32u)))) ^ firstLeadingBit(vec4<i32>(firstTrailingBit(u_input.e), i32(-1i) * -30362i, _wgslsmith_add_i32(-2147483647i, u_input.b.x), -14000i | global1.x) << (~(u_input.d | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)) % vec4<u32>(32u)));
    global1 = -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), countOneBits(global1.x), 58967i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.x, 40357i, global2[_wgslsmith_index_u32(45559u, 26u)]), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x, -8159i))), min(vec4<i32>(-39623i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global1.x, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<i32>(global1.x, -19759i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], -1i) << (vec4<u32>(26796u, u_input.d.x, 10404u, u_input.c.x) % vec4<u32>(32u)))), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(-34252i, -2147483647i, u_input.a, global1.x), vec4<i32>(global2[_wgslsmith_index_u32(8569u, 26u)], 0i, 0i, global1.x) >> (u_input.d % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, global1.x, global1.x), vec4<i32>(global1.x, u_input.a, 30463i, -7885i)), vec4<bool>(true, true, true, true)));
    global1 = -vec4<i32>(1i, 48570i, -u_input.b.x, abs(global1.x) >> (1u % 32u)) >> (~vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, ~9305u), ~(~4294967295u), u_input.c.x ^ 35195u, (u_input.c.x & u_input.c.x) & _wgslsmith_dot_vec3_u32(u_input.d.zww, vec3<u32>(0u, 1u, 29422u))) % vec4<u32>(32u));
    global1 = ~select(-(~vec4<i32>(-1i, global1.x, 0i, 5622i)) << (~u_input.d % vec4<u32>(32u)), vec4<i32>(-1i, 1i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], -(~u_input.b.x)), true);
    var var_0 = ~select(~u_input.d.yww, select(vec3<u32>(u_input.d.x | u_input.d.x, ~u_input.c.x, ~u_input.d.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(42807u, u_input.c.x, 51107u), u_input.d.wxy), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), (-1i >> (u_input.c.x % 32u)) < _wgslsmith_mod_i32(global1.x, 12271i)));
    return abs(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, global1.x, global1.x, global2[_wgslsmith_index_u32(var_0.x, 26u)]), -vec4<i32>(global1.x, u_input.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 30130i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.e, -1i, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.d.x, 26u)], global1.x, global2[_wgslsmith_index_u32(0u, 26u)]), vec4<i32>(u_input.e, global1.x, -2147483647i, u_input.a))), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-17135i, 78825i, global1.x, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 26u)], 2147483647i, global1.x), vec4<i32>(-8196i, u_input.b.x, -32066i, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<i32>(2147483647i, -2147483647i, -21641i, -23084i))), vec4<i32>(global1.x, global2[_wgslsmith_index_u32(64707u, 26u)], u_input.a, 46622i) >> (vec4<u32>(var_0.x, 37931u, u_input.d.x, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-8652i, 48332i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 25360i, -1i), vec4<i32>(-59301i, u_input.b.x, global2[_wgslsmith_index_u32(30804u, 26u)], global1.x)))), select(false & any(vec3<bool>(false, false, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true)));
}

fn func_1() -> u32 {
    global1 = func_2();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32((firstLeadingBit(0u) | ~u_input.d.x) & (33041u >> ((~u_input.d.x >> (u_input.d.x % 32u)) % 32u)), 5u)], vec2<u32>(select(_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.c.zz), ~6309u, any(vec2<bool>(true, false))) << (abs(~4294967295u) % 32u), u_input.c.x), _wgslsmith_mod_u32(~22857u, select(u_input.c.x, firstTrailingBit(u_input.d.x), true)) <= 22135u, select(vec3<bool>(true, true, true), vec3<bool>(!select(false, true, false), global2[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x, false), 26u)] < 1i, false), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-649f, _wgslsmith_f_op_f32(810f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b.x + -784f))))) * _wgslsmith_f_op_f32(floor(var_0.a.b.x)));
    var var_2 = vec2<i32>(global2[_wgslsmith_index_u32(~8669u, 26u)], 3827i);
    let var_3 = Struct_1(max(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 96545u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0.b.x), u_input.d.yww)), 26u)], select(~global2[_wgslsmith_index_u32(u_input.d.x, 26u)], firstTrailingBit(var_0.a.d.x), select(true, false, var_0.c))), _wgslsmith_sub_i32(func_2().x, _wgslsmith_mult_i32(countOneBits(-1i), -1i))), _wgslsmith_div_vec2_f32(var_0.a.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)) * _wgslsmith_f_op_f32(-334f - var_1)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1092f)))))), !var_0.a.c, vec4<i32>(~(u_input.e | ~16269i), -_wgslsmith_mod_i32(38344i, countOneBits(6117i)), ~(~46399i) ^ global1.x, 21338i << (var_0.b.x % 32u)));
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, var_0.b.x, ~u_input.c.x, 4294967295u), ~_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(4294967295u, 1u, var_0.b.x, 1u), vec4<u32>(u_input.c.x, 43804u, u_input.c.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, ~1u), ~(~u_input.c.x));
    var var_1 = max(27797u, firstLeadingBit(func_1())) & 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(-842f, 828f)), _wgslsmith_f_op_f32(-1767f + -373f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, 1110f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 689f)))))));
    var var_3 = Struct_1((-1i >> (var_0 % 32u)) << ((_wgslsmith_dot_vec3_u32(~u_input.d.xxx, vec3<u32>(var_0, 1u, u_input.c.x)) & _wgslsmith_sub_u32(u_input.c.x, ~1u)) % 32u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2))))), select(!vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), true)), func_2());
    var var_4 = vec3<bool>(!(true & !var_3.c.x), true, all(!var_3.c) | true);
    var_1 = var_0;
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4470u, 55862u) ^ u_input.c.x, 5u)];
    var var_6 = var_5.d;
    let var_7 = !all(var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(71854u, var_0), var_0));
}

