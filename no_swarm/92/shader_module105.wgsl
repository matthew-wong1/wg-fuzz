struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, true, true, false, true, false, true, false, true, true, false, false, false, false, true, false, false, false, true, false, true, false, false, true, true, true, false, true, false);

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(0u), vec2<u32>(2016u, 4294967295u), 1u), Struct_2(Struct_1(20841u), vec2<u32>(1u, 32611u), 1u), Struct_2(Struct_1(32510u), vec2<u32>(4294967295u, 31060u), 97171u), Struct_2(Struct_1(4294967295u), vec2<u32>(1714u, 48698u), 4294967295u), Struct_2(Struct_1(14856u), vec2<u32>(4294967295u, 8801u), 1u), Struct_2(Struct_1(1u), vec2<u32>(0u, 0u), 1022u), Struct_2(Struct_1(1u), vec2<u32>(35452u, 4294967295u), 4294967295u), Struct_2(Struct_1(79650u), vec2<u32>(54667u, 13136u), 15219u), Struct_2(Struct_1(45619u), vec2<u32>(109017u, 4294967295u), 0u), Struct_2(Struct_1(4294967295u), vec2<u32>(508u, 19327u), 1u), Struct_2(Struct_1(0u), vec2<u32>(53064u, 60436u), 0u), Struct_2(Struct_1(1u), vec2<u32>(42936u, 60568u), 63859u), Struct_2(Struct_1(0u), vec2<u32>(35182u, 27971u), 1u), Struct_2(Struct_1(1u), vec2<u32>(1u, 0u), 13903u), Struct_2(Struct_1(4294967295u), vec2<u32>(1u, 1u), 0u), Struct_2(Struct_1(6176u), vec2<u32>(1u, 24779u), 8170u), Struct_2(Struct_1(34367u), vec2<u32>(25771u, 0u), 62261u), Struct_2(Struct_1(0u), vec2<u32>(4294967295u, 1u), 57195u), Struct_2(Struct_1(4294967295u), vec2<u32>(1u, 39772u), 4294967295u), Struct_2(Struct_1(1u), vec2<u32>(64075u, 122370u), 57458u), Struct_2(Struct_1(2345u), vec2<u32>(1u, 24365u), 4294967295u), Struct_2(Struct_1(0u), vec2<u32>(19839u, 0u), 0u), Struct_2(Struct_1(4294967295u), vec2<u32>(48089u, 91289u), 93083u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.d, ~(~1u))), u_input.b.xy, ~u_input.b.x);
    let var_1 = -115f;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(step(1396f, 746f));
    let var_4 = var_0;
    return (vec2<u32>(u_input.c.x, 0u) & ~(u_input.b.xz >> (_wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.c) % vec2<u32>(32u)))) & firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(~22473u, ~var_4.c), var_0.a.a));
}

fn func_2() -> vec2<bool> {
    var var_0 = ((~4294967295u | u_input.c.x) & u_input.c.x) & ~0u;
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, 14339u), select(vec2<u32>(3718u, 1u), u_input.b.yx, global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), select(u_input.c, func_3(Struct_1(0u)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(26035u, 30u)], false)))), u_input.b.zz), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x ^ 1u, 25321u), 30u)], true, true);
    let var_2 = _wgslsmith_dot_vec2_u32(~((u_input.c ^ abs(u_input.b.xy)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), vec2<u32>(u_input.c.x, 21271u)), ~u_input.c, u_input.c) % vec2<u32>(32u))), u_input.b.yy);
    var var_3 = 0i;
    let var_4 = ~firstTrailingBit(-firstTrailingBit(-2147483647i));
    return select(select(vec2<bool>(any(select(vec4<bool>(var_1.x, false, false, true), var_1, false)), all(vec2<bool>(true, true))), vec2<bool>(false, -754f != global1.x), all(select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(70542u, 30u)], var_1.x), var_1.wwy, vec3<bool>(true, var_1.x, global0[_wgslsmith_index_u32(1u, 30u)])), true))), !var_1.zz, any(!select(var_1.zwx, select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), var_1.wxx, false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(var_2, 30u)], false))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = arg_0.yz;
    var var_1 = select(func_2(), !func_2(), func_2());
    var var_2 = Struct_1(~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, 51379u, u_input.b.x), _wgslsmith_mult_u32(u_input.c.x, 0u))));
    var_2 = Struct_1(u_input.b.x);
    var var_3 = select(vec4<bool>(arg_3, arg_3, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.yz), 30u)] && ((arg_2 | false) != (-1i < u_input.e))), !(!vec4<bool>(any(vec2<bool>(arg_3, true)), all(vec4<bool>(arg_3, false, var_1.x, arg_2)), var_1.x & var_1.x, global1.x == global1.x)), false);
    return ((_wgslsmith_clamp_u32(var_2.a, u_input.d, _wgslsmith_add_u32(u_input.c.x, 1u)) >> (31594u % 32u)) ^ firstLeadingBit(var_0.x | 4294967295u)) & arg_0.x;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(4294967295u);
    var var_1 = false;
    var var_2 = vec4<bool>(select(select(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(11462u, 30u)])), all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 30u)], false)), _wgslsmith_f_op_f32(sign(global1.x)) > _wgslsmith_f_op_f32(abs(-243f))), any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)], func_2().x, any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(2299u, 30u)])))), func_2().x), false, all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 30u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a, _wgslsmith_clamp_u32(~arg_0.a | 73737u, ~var_0.a, max(0u, 11440u))), 30u)]);
    var var_3 = var_0;
    var var_4 = Struct_1(max(~max(u_input.b.x, abs(arg_0.a)), 4294967295u));
    return Struct_3(~reverseBits(31360u), global1.yz, 6210u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, global1.x, -706f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(987f, global1.x, -510f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1128f, global1.x, global1.x)))))));
    var var_0 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(select(-1509f, -1281f, true))));
    var var_1 = func_4(Struct_1(countOneBits(~5958u & func_1(vec3<u32>(28805u, 9889u, 24755u), -19090i, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + global1.x))));
}

