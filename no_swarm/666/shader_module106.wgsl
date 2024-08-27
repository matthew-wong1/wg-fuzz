struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, countOneBits(arg_0.a.x), ~1u, _wgslsmith_mult_u32(4294967295u, arg_0.a.x)), ~arg_0.a));
    var var_1 = u_input.a.yy;
    var var_2 = arg_0.a.xy;
    global2 = array<Struct_1, 2>();
    var_2 = vec2<u32>(~(~(arg_0.a.x >> (arg_0.a.x % 32u))), firstTrailingBit(72310u));
    return var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(vec4<u32>(37010u, 109454u, func_3(Struct_1(_wgslsmith_sub_vec4_u32(arg_1.a, arg_1.a)), !vec2<bool>(global1.x, false), false, vec4<bool>(true, false, global1.x & global1.x, global1.x)), firstLeadingBit(~select(arg_1.a.x, arg_1.a.x, true))));
    global4 = array<vec3<bool>, 29>();
    var var_1 = ((all(!vec3<bool>(true, global1.x, false)) & global1.x) | false) == (true && any(vec4<bool>(select(false, global1.x, true), all(vec3<bool>(true, true, global1.x)), global1.x, true)));
    global0 = array<vec4<bool>, 2>();
    var var_2 = select(vec4<bool>(true, any(global4[_wgslsmith_index_u32(firstTrailingBit(arg_1.a.x) | max(1u, arg_1.a.x), 29u)]), any(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), true)) && any(!vec2<bool>(true, global1.x)), true), vec4<bool>(global1.x, (arg_0.c > arg_0.c) && global1.x, global1.x, !global1.x), false);
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    global2 = array<Struct_1, 2>();
    let var_0 = Struct_2(abs(-select(u_input.a, u_input.a, arg_0) | u_input.a), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1019f, 1688f), 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f * 2024f) - _wgslsmith_div_f32(1000f, 542f)))), vec2<u32>(arg_1.a.x, ~min(firstTrailingBit(36095u), 0u)));
    var var_1 = var_0.c;
    var var_2 = global3[_wgslsmith_index_u32(arg_1.a.x, 16u)];
    let var_3 = false;
    return !arg_0;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    global2 = array<Struct_1, 2>();
    let var_0 = u_input.a.x;
    global0 = array<vec4<bool>, 2>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.yyw) >> (1u % 32u)), (var_0 | 1i) >> ((~arg_1.x & arg_1.x) % 32u)) | -1184i;
    global1 = select(select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), !(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, false)))), vec2<bool>(func_4(func_2(Struct_2(u_input.a, Struct_1(arg_1), arg_0, vec2<u32>(33520u, 13538u)), Struct_1(arg_1)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_1.x, arg_1.x), 16u)]), true), true);
    return ~_wgslsmith_mod_vec4_u32(arg_1, arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global3 = array<Struct_1, 16>();
    var var_0 = Struct_1(firstLeadingBit(vec4<u32>(countOneBits(~28662u), arg_2.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.a.x, arg_1.d.x), 1u), arg_0.a.x)));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a.x, arg_1.b.a.x), ~_wgslsmith_mult_vec2_u32(arg_1.b.a.yx, var_0.a.yz))), 34156u), 16u)];
    global2 = array<Struct_1, 2>();
    var_0 = Struct_1(var_0.a);
    return Struct_1(reverseBits(~var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(23214i, -(~u_input.b)), u_input.a.x, 1i), func_5(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(func_1(921f, vec4<u32>(0u, 47637u, 1u, 20125u)), vec4<u32>(0u, 19196u, 0u, 4294967295u)), 2u)], Struct_2(~vec4<i32>(-2147483647i, 36103i, u_input.a.x, u_input.c), Struct_1(vec4<u32>(1601u, 80901u, 47317u, 44552u)), _wgslsmith_f_op_f32(f32(-1f) * -263f), select(abs(vec2<u32>(0u, 0u)), vec2<u32>(0u, 0u), vec2<bool>(false, true))), global2[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_mult_i32(-18295i, u_input.b)), -1000f, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(~1u, 0u)));
    var var_1 = u_input.c;
    global2 = array<Struct_1, 2>();
    global0 = array<vec4<bool>, 2>();
    let var_2 = !all(!(!(!vec3<bool>(false, false, global1.x))));
    var var_3 = Struct_2(select(var_0.a, var_0.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.a.x, 3124u, 46500u), vec3<u32>(0u, 0u, var_0.d.x)), (vec3<u32>(44379u, var_0.b.a.x, 0u) ^ var_0.b.a.zwx) << (vec3<u32>(1u, var_0.d.x, 75269u) % vec3<u32>(32u))), 2u)]), var_0.b, var_0.c, ~func_5(Struct_1(min(var_0.b.a, vec4<u32>(var_0.d.x, var_0.d.x, 4294967295u, var_0.d.x))), Struct_2(abs(u_input.a), func_5(global2[_wgslsmith_index_u32(1u, 2u)], Struct_2(vec4<i32>(2506i, 54668i, var_0.a.x, var_0.a.x), Struct_1(var_0.b.a), 764f, vec2<u32>(var_0.d.x, 60873u)), Struct_1(vec4<u32>(var_0.b.a.x, 47u, var_0.d.x, var_0.d.x)), var_0.a.x), 533f, vec2<u32>(4294967295u, var_0.b.a.x)), Struct_1(abs(vec4<u32>(0u, 0u, 16382u, 25140u))), var_0.a.x).a.xz);
    var var_4 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(1i, -var_3.a.x, var_0.a.x & u_input.a.x, _wgslsmith_sub_i32(u_input.b, 2147483647i)), global2[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(57398u, _wgslsmith_sub_u32(var_3.d.x, var_3.d.x)), min(~0u, ~var_0.d.x)), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f * -1020f)))), var_3.b.a.xy);
    global0 = array<vec4<bool>, 2>();
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(725f)) + 685f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(~(-2147483647i)), -26383i, -1i), var_0.b.a.xz, _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, var_4.c)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1240f, 113f) + vec2<f32>(1116f, 705f)))))), reverseBits(-1i));
}

