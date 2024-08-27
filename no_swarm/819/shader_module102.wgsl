struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<f32, 11> = array<f32, 11>(-402f, -175f, -240f, 1067f, 908f, 413f, 524f, 230f, 328f, 614f, 523f);

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true));

var<private> global3: Struct_1 = Struct_1(vec2<i32>(24817i, -18836i), vec2<bool>(false, true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = array<u32, 5>();
    let var_0 = Struct_1(reverseBits(_wgslsmith_add_vec2_i32(arg_1.a, vec2<i32>(arg_0.a.x, global3.a.x)) >> (select(vec2<u32>(6095u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(65490u, 4294967295u), vec2<u32>(4610u, 4294967295u)), !vec2<bool>(arg_1.b.x, global3.b.x)) % vec2<u32>(32u))), !arg_0.b);
    let var_1 = vec2<u32>(39074u, firstLeadingBit(min(~(global0[_wgslsmith_index_u32(6614u, 5u)] | global0[_wgslsmith_index_u32(0u, 5u)]), global0[_wgslsmith_index_u32(0u, 5u)])));
    global1 = array<f32, 11>();
    var var_2 = _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_1.x, 11u)]));
    return select(!global2[_wgslsmith_index_u32(37113u, 10u)], global2[_wgslsmith_index_u32(17328u, 10u)], !(!(-102f <= _wgslsmith_f_op_f32(select(125f, global1[_wgslsmith_index_u32(8924u, 11u)], true)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = Struct_1(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(~firstTrailingBit(-2147483647i), -2147483647i)), select(vec2<bool>(!any(arg_1), global3.b.x), !global3.b, !vec2<bool>(global3.a.x > u_input.a.x, true)));
    global3 = var_0;
    var var_1 = var_0;
    let var_2 = var_0;
    let var_3 = Struct_1(min(select(~u_input.a.yx, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(11766i, 47764i), var_1.a)), arg_1.x), _wgslsmith_sub_vec2_i32(abs(~var_2.a), -(global3.a << (vec2<u32>(26158u, 59577u) % vec2<u32>(32u))))), func_3(Struct_1(global3.a, var_0.b), var_0, vec3<bool>(!all(arg_1.xwz), var_1.b.x, global3.b.x)).wy);
    return var_3.a;
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 5>();
    return Struct_1(-_wgslsmith_div_vec2_i32(-abs(global3.a), func_4(-1i, func_3(Struct_1(u_input.a.ww, vec2<bool>(true, true)), Struct_1(global3.a, vec2<bool>(false, global3.b.x)), vec3<bool>(global3.b.x, global3.b.x, false)))), global3.b);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_2();
    let var_1 = ~(min((vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96939u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)]) & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 1u)) << (min(vec2<u32>(12026u, global0[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 93391u)) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(56824u, 5u)]), vec2<u32>(global0[_wgslsmith_index_u32(71805u, 5u)], 37100u))) | countOneBits(vec2<u32>(~0u, global0[_wgslsmith_index_u32(87017u, 5u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77224u, 5u)], 5u)], 5u)], 5u)])));
    var var_2 = Struct_1(u_input.a.wx, arg_1.b);
    let var_3 = func_2();
    global2 = array<vec4<bool>, 10>();
    return var_1 | var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zx >> (~vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 5u)]), max(global0[_wgslsmith_index_u32(62160u, 5u)], 1u)) % vec2<u32>(32u)), select(vec2<bool>(global3.b.x || false, true), global3.b, !vec2<bool>(global3.b.x, global3.b.x)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1053f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19986u, 11u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(77443u, 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57450u, 5u)], 5u)], 5u)], 11u)]))), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 11u)] > _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 11u)])), all(vec4<bool>(var_0.b.x, global3.b.x, false, var_0.b.x))))));
    let var_3 = _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(18615u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) << (vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 5u)]) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39755u, 5u)], 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<u32>(0u, 1u))), min(func_1(0i, var_0), abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5100u, 5u)], 5u)], 5u)]))))) & vec2<u32>(105u, 8925u & global0[_wgslsmith_index_u32(13617u, 5u)]);
    var var_4 = var_1;
    var var_5 = 177f;
    var var_6 = func_2();
    let var_7 = 1u;
    var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-775f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_7, 5u)], 11u)], false)))), var_2.x));
}

