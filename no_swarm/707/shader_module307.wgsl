struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(41271i, i32(-2147483648), i32(-2147483648), -1i, -1i, -20780i, 2147483647i, i32(-2147483648), 1i, -1i, 20768i, 22990i, -48519i, -41500i, -1i, 10484i, 0i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -26204i, 0i, -62986i);

var<private> global1: array<bool, 4>;

var<private> global2: array<bool, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = array<i32, 24>();
    global2 = array<bool, 19>();
    var var_0 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-400f + arg_0.x))))));
    let var_1 = var_0.a.x;
    var var_2 = select(~max(~(~vec4<u32>(31211u, arg_1.x, u_input.a.x, 67502u)), countOneBits(abs(vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 0u)))), ~vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.c, u_input.c, 4294967295u), !select(!vec4<bool>(global2[_wgslsmith_index_u32(66504u, 19u)], false, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(65420u, 4u)], global1[_wgslsmith_index_u32(arg_1.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(11756u, 19u)], false, global2[_wgslsmith_index_u32(0u, 19u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4477u, 4u)], false, false, true)), true));
    return !vec2<bool>(!(global1[_wgslsmith_index_u32(1u, 4u)] | global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 4u)]), select(false, true, global1[_wgslsmith_index_u32(0u, 4u)]) && all(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 4u)], true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<bool> {
    global1 = array<bool, 4>();
    global0 = array<i32, 24>();
    return select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], arg_1.x, true), vec3<bool>(true, false, any(vec3<bool>(false, false, arg_1.x))), false), vec3<bool>(false, ((0u & u_input.c) > 0u) & global2[_wgslsmith_index_u32(abs(25092u) | u_input.c, 19u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(33370u, u_input.a.x, u_input.a.x) & vec3<u32>(u_input.c, u_input.a.x, 0u)), firstTrailingBit(select(vec3<u32>(u_input.c, u_input.a.x, u_input.a.x), vec3<u32>(0u, 57918u, 9136u), arg_1.x))), 19u)]), all(!vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 4u)], !arg_1.x)));
}

fn func_5(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(813f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) * _wgslsmith_div_f32(1528f, 333f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-939f, 771f)))) - 967f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(674f, 306f)), vec2<f32>(1f, 1f), arg_0.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, 234f) * vec2<f32>(-957f, 283f))))));
    let var_2 = select(all(arg_0.xx), all(arg_0.zz), true);
    let var_3 = Struct_1(vec2<f32>(var_1.a.a.x, 1503f));
    var var_4 = u_input.c;
    return u_input.c;
}

fn func_2() -> Struct_3 {
    global2 = array<bool, 19>();
    let var_0 = ~max(-vec3<i32>(-global0[_wgslsmith_index_u32(36173u, 24u)], abs(global0[_wgslsmith_index_u32(958u, 24u)]), reverseBits(u_input.b.x)), vec3<i32>(firstTrailingBit(u_input.b.x ^ global0[_wgslsmith_index_u32(3622u, 24u)]), ~33836i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), max(u_input.c, 0u)), 24u)]));
    let var_1 = select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true, global1[_wgslsmith_index_u32(func_5(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(-664f, 619f)))), func_3(vec2<f32>(651f, 648f), vec3<u32>(45007u, 69378u, u_input.c), var_0))), 4u)], ~(-u_input.b.x) == -(i32(-1i) * -2147483647i)), select(!vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 19u)], true, true, false), vec4<bool>(true, func_3(vec2<f32>(-1561f, 822f), vec3<u32>(30238u, 1u, 0u) << (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u)), ~vec3<i32>(0i, -22500i, 2147483647i)).x, _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 2147483647i) != -2147483647i, func_3(vec2<f32>(1f, 1f), select(vec3<u32>(u_input.a.x, 1u, u_input.c), vec3<u32>(49822u, 10903u, u_input.a.x), true), var_0).x), !vec4<bool>(global1[_wgslsmith_index_u32(min(0u, 10387u), 4u)], false, false & global1[_wgslsmith_index_u32(48269u, 4u)], !global1[_wgslsmith_index_u32(1u, 4u)])), global2[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 19u)]);
    var var_2 = ~(~vec3<u32>(abs(~13513u), ~u_input.a.x, u_input.c ^ select(u_input.c, u_input.c, false)));
    var var_3 = _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(var_2.x) ^ ~4294967295u), ~(var_2.x << ((u_input.c & var_2.x) % 32u))));
    return Struct_3(Struct_2(Struct_1(vec2<f32>(-337f, -278f))));
}

fn func_1() -> Struct_3 {
    global2 = array<bool, 19>();
    let var_0 = func_2();
    let var_1 = func_2().a.a;
    var var_2 = 1u;
    let var_3 = Struct_2(func_2().a.a);
    return Struct_3(Struct_2(func_2().a.a));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = countOneBits(u_input.b);
    global2 = array<bool, 19>();
    global1 = array<bool, 4>();
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1022f, arg_0.a.a.a.x, arg_1.x, func_1().a.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1))))) * arg_1));
    return vec3<u32>(4294967295u, _wgslsmith_sub_u32(~(reverseBits(u_input.a.x) ^ u_input.a.x), 24632u), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 19>();
    let var_0 = func_6(func_1(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-649f))), 331f, -694f)) >> (abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, firstLeadingBit(u_input.c), _wgslsmith_mult_u32(0u, 1u)), vec3<u32>(~4294967295u, u_input.c << (u_input.c % 32u), u_input.a.x))) % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_2(func_1().a.a));
    var var_2 = _wgslsmith_f_op_f32(step(var_1.a.a.a.x, _wgslsmith_f_op_f32(trunc(609f))));
    var_2 = var_1.a.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(~16914u, 24915u), var_0.zx), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x));
}

