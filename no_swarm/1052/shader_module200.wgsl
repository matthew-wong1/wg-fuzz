struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(5918u, 0u);

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 4>;

var<private> global3: vec4<u32> = vec4<u32>(0u, 4294967295u, 52580u, 1u);

var<private> global4: Struct_5 = Struct_5(Struct_1(vec4<f32>(689f, -137f, -1517f, 906f), vec4<f32>(965f, 496f, -1411f, 696f), vec3<f32>(2175f, -423f, 740f)), Struct_2(-333f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global2 = array<u32, 4>();
    let var_0 = Struct_5(global4.a, arg_2);
    var var_1 = (_wgslsmith_clamp_u32(0u, ~(~4294967295u), firstLeadingBit(1u)) < (1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.a.x, 1u, global1.x), vec4<u32>(1u, 85127u, arg_0.x, 1u)) % 32u))) || true;
    let var_2 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1560i, 0i), ~18393i, _wgslsmith_mod_i32(0i, -17664i), min(47678i, 13834i)), abs(~vec4<i32>(-29157i, 1i, -2147483647i, -2147483647i))), max(_wgslsmith_sub_i32(1i, 1i), ~(-27643i)));
    let var_3 = var_0;
    return !all(vec3<bool>(select(all(vec3<bool>(true, true, false)), var_2 != var_2, true), true, true));
}

fn func_2() -> Struct_2 {
    let var_0 = global4.a;
    let var_1 = any(select(vec4<bool>(true, true, true, global4.a.c.x == _wgslsmith_f_op_f32(var_0.a.x + -570f)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec3<bool>(func_3(vec2<u32>(u_input.a.x, 38788u), global4.b, global4.b), true, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1758f)) + _wgslsmith_f_op_f32(global4.a.b.x + 1f))));
    let var_3 = 1000f;
    let var_4 = 4294967295u;
    return Struct_2(113f);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = ~abs(select(~(~global3.wz), vec2<u32>(~arg_2.x, arg_2.x), vec2<bool>(global4.b.a <= global4.a.c.x, false)));
    var var_0 = global4.a.a.yyw;
    var var_1 = func_2();
    var var_2 = Struct_4(12722u);
    var var_3 = func_3(arg_2.zz | ~u_input.a, Struct_2(-1421f), global4.b) || (var_1.a < var_1.a);
    return Struct_3(global4.a, global4.a, -reverseBits(~reverseBits(vec3<i32>(arg_1.x, 1i, -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1751f, arg_3.a, -688f, -493f) + global4.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.a.a + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.a, -406f, arg_3.a, 1131f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a.b.wxx + vec3<f32>(arg_0.a.x, -1000f, arg_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.x, arg_2.b.a.x, arg_1.a)))))), arg_3);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(901f, _wgslsmith_f_op_f32(trunc(-358f))))), _wgslsmith_f_op_f32(min(-330f, arg_2.b.c.x)));
    let var_2 = Struct_1(global4.a.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(468f - 218f), -1285f != _wgslsmith_f_op_f32(arg_3.a - global4.b.a))), arg_3.a, _wgslsmith_f_op_f32(arg_2.a.a.x - arg_1.a), _wgslsmith_f_op_f32(-arg_1.a)), var_0.a.c);
    var var_3 = !(!(true & all(vec2<bool>(false, false)))) && true;
    global3 = _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 20886u, 6763u, 6966u)), ~vec4<u32>(u_input.a.x, global3.x, u_input.a.x, 0u)), _wgslsmith_clamp_u32(global3.x, global1.x << (1u % 32u), u_input.a.x), countOneBits(~global1.x), 1u), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 1u, global2[_wgslsmith_index_u32(22437u, 4u)]) | vec4<u32>(77909u, global2[_wgslsmith_index_u32(global0.x, 4u)], 19423u, 21380u), firstLeadingBit(vec4<u32>(global1.x, 12777u, 61558u, 5194u)), true), ~(~vec4<u32>(global1.x, global2[_wgslsmith_index_u32(34610u, 4u)], 11782u, 1u))), max(global1.x << (~global2[_wgslsmith_index_u32(u_input.a.x, 4u)] % 32u), global0.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15823u, 6692u) | global1.yzz, ~global3.xyx), 4u)]));
    return select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20019u, global1.x, global2[_wgslsmith_index_u32(global3.x, 4u)], 4294967295u), vec4<u32>(27271u, global2[_wgslsmith_index_u32(global0.x, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], global1.x)), _wgslsmith_sub_u32(global0.x, 4294967295u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 35625u), global2[_wgslsmith_index_u32(~u_input.a.x, 4u)]), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 1u, 46079u), vec4<u32>(0u, 6848u, global3.x, 1u)))), ~max(global1.x, global2[_wgslsmith_index_u32(global1.x, 4u)]) & 4294967295u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 4u)], u_input.a.x), firstLeadingBit(abs(global1.x))), ~55554u), ~vec4<u32>(_wgslsmith_dot_vec2_u32(global3.wy, abs(vec2<u32>(global0.x, 1u))), global1.x, 28559u, _wgslsmith_dot_vec2_u32(global1.yz, global3.xw) | (u_input.a.x & 4129u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, 0u, 1u, reverseBits(~(~78123u))), max(~vec4<u32>(select(global1.x, global0.x, false), global3.x, ~58214u, _wgslsmith_dot_vec2_u32(global3.yw, vec2<u32>(global3.x, global2[_wgslsmith_index_u32(1u, 4u)]))), func_4(global4.a, global4.b, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-18088i, 7720i, 29238i), vec3<i32>(2147483647i, -1i, -2147483647i)), vec2<i32>(-2147483647i, 2147483647i), ~vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(14655u, 4u)], global2[_wgslsmith_index_u32(37038u, 4u)])), func_2())));
    var var_1 = all(vec4<bool>(true, false, global4.a.a.x > _wgslsmith_f_op_f32(-global4.a.c.x), func_3(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11563u, 4u)], 4u)], global1.x)), global4.b, global4.b)));
    var var_2 = func_1(abs(min(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 15787i), vec3<i32>(-13487i, -74699i, -2147483647i)), 1i))), vec2<i32>(17283i, (-40546i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(120i, -72666i, 0i, -47253i), vec4<i32>(-36775i, -6978i, -1i, -33585i))) << (global3.x % 32u)), global3.xwz);
    global1 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(~global3.x, ~4294967295u, ~0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, u_input.a.x, ~4294967295u, _wgslsmith_div_u32(var_0.x, 11440u)), ~vec4<u32>(global3.x, 4294967295u, global3.x, var_0.x)), false), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u)), u_input.a.x, global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~var_0.x, ~1u)), 4u)], _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(0u, 0u)), ~var_0.yw), var_0.zz)));
    var var_3 = Struct_5(func_1(abs(var_2.c.x), ~countOneBits(select(var_2.c.yy, var_2.c.xx, false)), vec3<u32>(var_0.x, var_0.x, ~4294967295u)).a, func_2());
    var_1 = !func_3(u_input.a, var_3.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(54909u ^ global0.x), _wgslsmith_div_u32(~1u, global1.x) >> (0u % 32u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(countOneBits(0u), global1.x, max(1u, global3.x)), u_input.a.x)), ~global2[_wgslsmith_index_u32(17554u, 4u)], _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.c.x, firstLeadingBit(var_2.c.x << (global2[_wgslsmith_index_u32(0u, 4u)] % 32u))), var_2.c.x));
}

