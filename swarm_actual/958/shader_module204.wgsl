struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(-1608f, 0i, vec2<u32>(4294967295u, 1u)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), Struct_1(375f, -1i, vec2<u32>(40721u, 86089u)), Struct_1(1000f, 35827i, vec2<u32>(4294967295u, 44759u)));

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 18> = array<i32, 18>(50595i, -1657i, 1i, -49996i, -1i, i32(-2147483648), -25522i, -18587i, i32(-2147483648), i32(-2147483648), -89257i, 2147483647i, 46684i, 34916i, -1i, -1i, i32(-2147483648), 31010i);

var<private> global3: array<vec4<bool>, 13>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~u_input.a;
    let var_1 = abs(57295i);
    let var_2 = Struct_4(global0.d, global0.b, vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 2147483647i), u_input.d) == var_0, global0.c.x, true, -1i <= (-1i << (_wgslsmith_mod_u32(global1.x, 47448u) % 32u))), global0.e, global0.d);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.a, global0.a.a), vec2<f32>(1000f, -622f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1773f, 675f))), global0.e.c.x == (0u >> (global1.x % 32u)))));
    global2 = array<i32, 18>();
    return !select(!global0.c, global0.c, !any(vec3<bool>(var_2.b.x, var_2.b.x, true)) & var_2.c.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_4 {
    var var_0 = vec4<i32>(global0.a.b, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-global2[_wgslsmith_index_u32(56019u, 18u)] >> (1u % 32u), ~_wgslsmith_mod_i32(global0.d.b, 2147483647i))), -abs(firstLeadingBit(-1i ^ global2[_wgslsmith_index_u32(u_input.c.x, 18u)])), u_input.a);
    let var_1 = select(global3[_wgslsmith_index_u32(55371u, 13u)], !vec4<bool>(global0.c.x, any(vec2<bool>(false, true)), !(global0.b.x && true), select(true, true, global0.c.x && global0.c.x)), func_3());
    let var_2 = 56956i;
    global1 = select(~vec4<u32>(abs(min(u_input.c.x, u_input.b)), 0u, firstLeadingBit(global0.d.c.x), ~abs(4294967295u)), ~(~(~vec4<u32>(0u, 6568u, global1.x, 4294967295u))), !(_wgslsmith_sub_i32(-u_input.a, 1i) > ~(i32(-1i) * -1i)));
    global1 = vec4<u32>(12272u, 1u, ~_wgslsmith_sub_u32(global1.x, firstLeadingBit(u_input.b) << ((global0.d.c.x >> (global0.a.c.x % 32u)) % 32u)), ~45905u);
    return Struct_4(Struct_1(1183f, abs(40695i), u_input.c), !global3[_wgslsmith_index_u32(global1.x, 13u)], vec4<bool>(true, false, all(global0.b.xzw), true), global0.e, global0.e);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = global0.e.c.x;
    global2 = array<i32, 18>();
    var var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(f32(-1f) * -137f));
    global0 = func_2(-708f, 230f);
    global3 = array<vec4<bool>, 13>();
    return Struct_1(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_f32(step(624f, _wgslsmith_f_op_f32(-var_1.e.a))), -160f).e.a, global0.d.a), min(abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, var_1.e.b, global2[_wgslsmith_index_u32(31253u, 18u)]), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 18u)], -38879i, 0i)))), max(_wgslsmith_add_i32(u_input.d.x, -39442i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], 0i), u_input.d), select(vec2<i32>(-58465i, 1i), vec2<i32>(u_input.a, 13533i), vec2<bool>(true, true))))), ~vec2<u32>(min(_wgslsmith_add_u32(4294967295u, var_1.a.c.x), func_2(var_1.a.a, 775f).d.c.x), min(~global1.x, global1.x ^ var_1.d.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    global1 = reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, ~61908u, arg_0.c.x, ~global1.x), abs(~vec4<u32>(4294967295u, 1u, global0.e.c.x, global1.x))));
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(-563f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(462f, global0.e.a) * _wgslsmith_f_op_f32(sign(1112f)))))));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(global0.a.b >> (((u_input.c.x | global1.x) & global1.x) % 32u), -func_2(_wgslsmith_f_op_f32(global0.e.a - arg_0.a), -360f).a.b), _wgslsmith_sub_i32(u_input.d.x, -44295i & ~u_input.d.x), ~(i32(-1i) * -2147483647i), var_0.b);
    var var_3 = (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, u_input.c.x), var_0.c), var_0.c), _wgslsmith_mult_u32(var_0.c.x, global0.a.c.x ^ 1687u), ~_wgslsmith_dot_vec2_u32(global0.a.c, global0.d.c)) | _wgslsmith_clamp_vec3_u32((vec3<u32>(var_0.c.x, var_0.c.x, 1u) ^ global1.wxy) & _wgslsmith_mod_vec3_u32(global1.wwy, global1.zww), vec3<u32>(~0u, ~4294967295u, arg_0.c.x), vec3<u32>(u_input.b, 23548u, 0u) >> (vec3<u32>(44607u, 0u, global0.a.c.x) % vec3<u32>(32u)))) >> (vec3<u32>(~_wgslsmith_div_u32(global0.a.c.x, ~4294967295u), 4294967295u, u_input.c.x & select(firstLeadingBit(global1.x), 1u, true)) % vec3<u32>(32u));
    return ~(~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(!global3[_wgslsmith_index_u32(global0.d.c.x, 13u)]), Struct_3(vec2<bool>(true, !(global0.b.x != global0.c.x))));
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(~1u, u_input.c.x ^ max(u_input.c.x, u_input.b)), reverseBits(~(~global1.x)));
    global3 = array<vec4<bool>, 13>();
    var var_2 = func_2(global0.e.a, 287f).d;
    global3 = array<vec4<bool>, 13>();
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f * global0.d.a)) - func_1(vec4<bool>(global0.c.x, false, false, global0.c.x)).a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - 220f))).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1049f)) + -393f))), global0.b.x));
    var var_4 = global0.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(_wgslsmith_f_op_f32(func_1(global0.b).a - _wgslsmith_f_op_f32(round(366f))), u_input.a, func_2(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(max(var_2.a, 298f))).e.c), Struct_3(!select(global0.b.yz, global0.c.zz, global0.b.x))), ~vec4<u32>(u_input.c.x, var_2.c.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.x, global0.a.c.x), 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(54154u, 4294967295u), vec2<u32>(u_input.c.x, global0.e.c.x)), ~vec2<u32>(global0.e.c.x, 0u))), vec4<u32>(4294967295u, 90350u, ~u_input.c.x, 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a - 398f)))))), 17545u);
}

