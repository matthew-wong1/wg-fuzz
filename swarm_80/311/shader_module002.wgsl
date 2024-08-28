struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<f32, 11> = array<f32, 11>(-705f, 408f, 915f, -358f, 1259f, 637f, 1087f, 681f, 1000f, 818f, 656f);

var<private> global3: Struct_1;

var<private> global4: array<bool, 19>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    global3 = Struct_1(18428i, select(global3.b, ~vec3<u32>(26151u, arg_0, 45184u), select(!vec3<bool>(true, global4[_wgslsmith_index_u32(global3.b.x, 19u)], false), vec3<bool>(false, true, false), select(global4[_wgslsmith_index_u32(global3.b.x, 19u)], global4[_wgslsmith_index_u32(arg_0, 19u)], global4[_wgslsmith_index_u32(0u, 19u)]))) >> ((global3.b | vec3<u32>(4294967295u, 0u ^ global3.b.x, _wgslsmith_div_u32(1u, arg_0))) % vec3<u32>(32u)), arg_1.x, global3.a);
    var var_0 = global0[_wgslsmith_index_u32(abs(~1u), 15u)];
    let var_1 = -557f;
    global2 = array<f32, 11>();
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.yx))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1199f, -1000f)), !global4[_wgslsmith_index_u32(~var_0.x, 19u)])), arg_1.zx))));
    return -2147483647i;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    global1 = array<Struct_4, 28>();
    var var_0 = ~(~(0u ^ arg_2.a.b.x));
    var var_1 = Struct_2(vec3<u32>(global3.b.x & _wgslsmith_mult_u32(global3.b.x, 18030u << (arg_2.a.b.x % 32u)), ~0u, ~4294967295u), vec2<f32>(-224f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b.x, 11u)]) * global2[_wgslsmith_index_u32(~arg_2.a.b.x, 11u)]), arg_1.c, _wgslsmith_clamp_u32(36885u, arg_1.b.x, 35921u) >= _wgslsmith_mult_u32(31556u, global3.b.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + -216f) + _wgslsmith_f_op_f32(arg_1.c + -1196f));
    global1 = array<Struct_4, 28>();
    return 27398u;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> bool {
    let var_0 = select(!(!(!(!vec3<bool>(arg_1, false, true)))), vec3<bool>(!global4[_wgslsmith_index_u32(~4706u >> (_wgslsmith_add_u32(arg_0.x, 44475u) % 32u), 19u)], global3.c <= _wgslsmith_f_op_f32(1250f * global3.c), (3088u ^ _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(50051u, 15u)], vec4<u32>(global3.b.x, global3.b.x, 4294967295u, global3.b.x))) != _wgslsmith_mult_u32(113481u, 1u)), (global3.c != -341f) & (-global3.a != 59310i));
    global0 = array<vec4<u32>, 15>();
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-559f, global2[_wgslsmith_index_u32(~global3.b.x, 11u)])))), Struct_1(~(-func_3(20962u, vec3<f32>(-193f, global3.c, 1680f), -412f)), global3.b, _wgslsmith_f_op_f32(ceil(-1401f)), -_wgslsmith_div_i32(abs(arg_2.x), 59430i)), Struct_3(Struct_1(global3.d, _wgslsmith_mult_vec3_u32(global3.b, global3.b), -387f, ~_wgslsmith_sub_i32(-49267i, arg_2.x))), !select(!vec4<bool>(global4[_wgslsmith_index_u32(global3.b.x, 19u)], global4[_wgslsmith_index_u32(arg_0.x, 19u)], global4[_wgslsmith_index_u32(27063u, 19u)], false), !select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 19u)], false, var_0.x, global4[_wgslsmith_index_u32(31598u, 19u)]), vec4<bool>(arg_1, global4[_wgslsmith_index_u32(28142u, 19u)], false, false), false), vec4<bool>(!arg_1, arg_0.x != global3.b.x, !var_0.x, var_0.x | true)));
    var var_2 = Struct_1(~arg_2.x, vec3<u32>(firstLeadingBit(72725u), 49264u, global3.b.x >> (_wgslsmith_add_u32(arg_0.x, countOneBits(arg_0.x)) % 32u)), global2[_wgslsmith_index_u32(arg_0.x, 11u)], _wgslsmith_sub_i32(global3.a, global3.d >> (func_4(-180f, Struct_1(global3.d, vec3<u32>(arg_0.x, global3.b.x, global3.b.x), -262f, -2147483647i), Struct_3(Struct_1(arg_2.x, vec3<u32>(global3.b.x, 9256u, 1u), -1000f, 6550i)), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], true, global4[_wgslsmith_index_u32(4294967295u, 19u)], arg_1), var_0.x)) % 32u)));
    var var_3 = ~global3.b;
    return ~arg_0.x >= (~_wgslsmith_add_u32(arg_0.x & var_3.x, 1u) ^ ~(~1u));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = all(vec3<bool>(!func_2(~global3.b.yx, false, vec2<i32>(global3.d, -46297i)), global4[_wgslsmith_index_u32(global3.b.x, 19u)] | true, select(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3.b.x, _wgslsmith_mod_u32(global3.b.x, global3.b.x)), 19u)], !global4[_wgslsmith_index_u32(global3.b.x | 1u, 19u)], true)));
    return Struct_1(firstTrailingBit(~u_input.a), vec3<u32>(global3.b.x, ~func_4(1f, Struct_1(global3.a, vec3<u32>(global3.b.x, 4294967295u, global3.b.x), global3.c, 0i), Struct_3(Struct_1(u_input.a, global3.b, global3.c, 2147483647i)), vec4<bool>(global4[_wgslsmith_index_u32(73546u, 19u)], global4[_wgslsmith_index_u32(global3.b.x, 19u)], true, global4[_wgslsmith_index_u32(global3.b.x, 19u)])), _wgslsmith_dot_vec3_u32(firstLeadingBit(global3.b), ~global3.b)), -941f, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(global2[_wgslsmith_index_u32(1u, 11u)]), -_wgslsmith_clamp_vec2_i32(vec2<i32>(22555i, -1i), vec2<i32>(u_input.b, global3.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, -29174i))) & vec2<i32>(-global3.a, ~(~(-2147483647i))), countOneBits(vec4<u32>(abs(61959u), firstTrailingBit(1297u), 4392u, _wgslsmith_dot_vec3_u32(vec3<u32>(27291u, 0u, global3.b.x), vec3<u32>(42935u, global3.b.x, 1u))) << (vec4<u32>(global3.b.x, func_4(-401f, Struct_1(u_input.b, vec3<u32>(53383u, 53603u, global3.b.x), -195f, -43418i), Struct_3(Struct_1(global3.a, vec3<u32>(global3.b.x, global3.b.x, global3.b.x), 1647f, -5608i)), vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 19u)], true, global4[_wgslsmith_index_u32(6372u, 19u)])), 1u, ~60832u) % vec4<u32>(32u))), ~(global3.b.x >> ((~global3.b.x | ~global3.b.x) % 32u)), Struct_2(vec3<u32>(select(~global3.b.x, ~4294967295u, false), 1u, _wgslsmith_mult_u32(select(global3.b.x, global3.b.x, false), global3.b.x | global3.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.c, -1179f), vec2<f32>(global2[_wgslsmith_index_u32(global3.b.x, 11u)], 1206f))))));
    global1 = array<Struct_4, 28>();
    global1 = array<Struct_4, 28>();
    var var_1 = !(-1008f < global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(var_0.e.a.x, countOneBits(8576u))), 11u)]);
    global2 = array<f32, 11>();
    var_1 = any(select(vec2<bool>(true, true), vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(38219u, 1u), countOneBits(global3.b.x)), 19u)]), vec2<bool>(!(true != global4[_wgslsmith_index_u32(var_0.e.a.x, 19u)]), any(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(var_0.a.b.x, 19u)], false), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], false, false), global4[_wgslsmith_index_u32(global3.b.x, 19u)])))));
    let var_2 = Struct_3(var_0.a);
    let var_3 = Struct_4(func_1(_wgslsmith_f_op_f32(-var_0.e.b.x)), vec2<i32>(-25007i, u_input.b), abs(firstLeadingBit(global0[_wgslsmith_index_u32(~(0u & var_2.a.b.x), 15u)])), ~(~(~(~6242u))), Struct_2(~vec3<u32>(var_2.a.b.x | 20572u, global3.b.x, ~var_2.a.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.c.x & 1u, 11u)], _wgslsmith_f_op_f32(step(1000f, global2[_wgslsmith_index_u32(1u, 11u)]))) * vec2<f32>(var_2.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1039f)))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(~var_2.a.b.x), global3.b.x), _wgslsmith_add_u32(var_2.a.b.x, min(var_2.a.b.x, 1u)), min(abs(~vec3<i32>(global3.a, -2147483647i, -2147483647i)), vec3<i32>(reverseBits(var_0.a.a), u_input.a, ~0i)) | vec3<i32>(u_input.a, var_0.b.x, -(~var_3.b.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b.x, 11u)]), var_3.e.b);
}

