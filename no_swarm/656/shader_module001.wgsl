struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_2(Struct_1(i32(-2147483648)), Struct_1(-46406i), Struct_1(1i), Struct_1(-57499i), false), vec4<u32>(0u, 1u, 0u, 0u), Struct_1(-6947i)));

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<i32, 27>;

var<private> global3: array<bool, 14>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4485i), Struct_1(i32(-2147483648)), Struct_1(-24511i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(33882i), Struct_1(-1i), Struct_1(-19009i), Struct_1(21255i), Struct_1(-6042i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), 27u)]), global4[_wgslsmith_index_u32(~u_input.a, 10u)], Struct_1(global2[_wgslsmith_index_u32(abs(~u_input.a), 27u)]), global4[_wgslsmith_index_u32(u_input.a, 10u)], select(true, all(vec3<bool>(true, true, true)), any(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], true, false), vec3<bool>(false, arg_0, arg_0), vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 14u)], true, false))))), select(vec4<u32>(~35467u, arg_1, ~arg_1, arg_1), vec4<u32>(u_input.a, ~1u, ~arg_1, 4294967295u | arg_1), false) ^ firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(u_input.a, 34064u, 26360u, arg_1))), Struct_1(~2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2, arg_3)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_3 - 775f)))));
    global1 = array<vec2<u32>, 13>();
    let var_2 = Struct_1(_wgslsmith_mod_i32(-30062i, ~0i));
    var var_3 = Struct_2(var_0.c, var_0.c, Struct_1(_wgslsmith_mult_i32(-4247i, var_2.a)), Struct_1(global2[_wgslsmith_index_u32(14092u, 27u)]), true);
    return var_3.c.a;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> u32 {
    global2 = array<i32, 27>();
    var var_0 = !arg_1.a.e;
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(1u, 27u)]);
    global2 = array<i32, 27>();
    var var_2 = arg_3.a;
    return ~1u;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(411f, 675f))) + _wgslsmith_f_op_f32(sign(-1051f)));
    let var_1 = !(!(!(!select(vec4<bool>(true, arg_1, false, global3[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(arg_3.x, 14u)], global3[_wgslsmith_index_u32(8168u, 14u)]), arg_1))));
    let var_2 = 592f;
    return Struct_2(Struct_1(~(~(arg_0 << (100866u % 32u)))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, max(19926u & u_input.a, reverseBits(u_input.a))), 10u)], global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(u_input.a, 10u)], false);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    global2 = array<i32, 27>();
    let var_0 = arg_0.a;
    global4 = array<Struct_1, 10>();
    let var_1 = func_4(abs(-func_2(select(true, global3[_wgslsmith_index_u32(u_input.a, 14u)], true), u_input.a, _wgslsmith_f_op_f32(-1138f * 2811f), _wgslsmith_div_f32(305f, 902f))), true, -global2[_wgslsmith_index_u32(select(func_3(-1532f, Struct_3(Struct_2(Struct_1(2147483647i), global4[_wgslsmith_index_u32(39515u, 10u)], Struct_1(arg_1), global4[_wgslsmith_index_u32(u_input.a, 10u)], arg_2.x), vec4<u32>(1u, 14559u, 14609u, 0u), Struct_1(0i)), vec2<u32>(36947u, 0u), Struct_3(Struct_2(Struct_1(arg_0.a), arg_0, Struct_1(arg_0.a), Struct_1(-2147483647i), arg_2.x), vec4<u32>(u_input.a, 1u, 35893u, 4294967295u), arg_0)) | u_input.a, _wgslsmith_mod_u32(0u, ~1u), _wgslsmith_sub_u32(u_input.a, 49223u) <= _wgslsmith_mod_u32(67918u, u_input.a)), 27u)], ~global1[_wgslsmith_index_u32(u_input.a | 50197u, 13u)]);
    global3 = array<bool, 14>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(func_1(global4[_wgslsmith_index_u32(u_input.a, 10u)], -21935i, vec3<bool>(true, global3[_wgslsmith_index_u32(64236u, 14u)], false)), 14u)], true || global3[_wgslsmith_index_u32(u_input.a, 14u)]), false), select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(30241u, 14u)]), !vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 14u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)])), select(select(vec2<bool>(true, true), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], false)), select(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(global3[_wgslsmith_index_u32(14063u, 14u)], global3[_wgslsmith_index_u32(36928u, 14u)]), false), global3[_wgslsmith_index_u32(u_input.a, 14u)]), true), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 14u)]), select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 14u)], false), vec2<bool>(false, true)), any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], true, global3[_wgslsmith_index_u32(u_input.a, 14u)]))), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)] > global2[_wgslsmith_index_u32(u_input.a, 27u)], false), any(!vec2<bool>(global3[_wgslsmith_index_u32(33523u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)])))), select(!select(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 14u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], true), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], true)), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(5848u, 14u)]), select(vec2<bool>(false, global3[_wgslsmith_index_u32(66536u, 14u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 14u)])), vec2<bool>(global3[_wgslsmith_index_u32(38923u, 14u)], false)), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(1u, 14u)])), !vec2<bool>(global3[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)]));
    global0 = array<Struct_3, 1>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 27u)];
    var var_2 = func_4(~select(-28698i, select(~global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_clamp_i32(-30915i, -2147483647i, global2[_wgslsmith_index_u32(0u, 27u)]), true), var_0.x), select(true, countOneBits(u_input.a) <= _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10495u), vec2<u32>(u_input.a, u_input.a))), false), _wgslsmith_mod_i32(0i, max(global2[_wgslsmith_index_u32(u_input.a, 27u)], 2147483647i)), ~global1[_wgslsmith_index_u32(~(1u ^ u_input.a), 13u)]);
    let var_3 = ~(~(_wgslsmith_sub_u32(50660u << (u_input.a % 32u), 1u) ^ func_3(-968f, global0[_wgslsmith_index_u32(reverseBits(u_input.a), 1u)], _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1710u, 13u)]), Struct_3(Struct_2(Struct_1(var_2.a.a), Struct_1(-48679i), Struct_1(-43416i), Struct_1(global2[_wgslsmith_index_u32(1u, 27u)]), true), vec4<u32>(1u, 35878u, 0u, 113080u), global4[_wgslsmith_index_u32(4294967295u, 10u)]))));
    let x = u_input.a;
    s_output = StorageBuffer((((vec2<i32>(-11381i, 1i) & vec2<i32>(global2[_wgslsmith_index_u32(48942u, 27u)], -13367i)) >> (~global1[_wgslsmith_index_u32(var_3, 13u)] % vec2<u32>(32u))) & -firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]))) & vec2<i32>(abs(-var_2.a.a), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 27u)] << (u_input.a % 32u), -2147483647i)), firstTrailingBit(-1i), 40629u, abs(select(~(-vec3<i32>(var_2.c.a, global2[_wgslsmith_index_u32(0u, 27u)], var_2.a.a)), min(~vec3<i32>(5336i, var_2.b.a, -2147483647i), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], 0i, var_2.b.a))), true)));
}

