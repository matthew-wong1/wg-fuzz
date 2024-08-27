struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, 48216i, 2147483647i));

var<private> global2: array<vec4<bool>, 21>;

var<private> global3: array<vec2<bool>, 4>;

var<private> global4: array<i32, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-(~global1.a.x), _wgslsmith_div_i32(global1.a.x, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 30u)]) ^ 0i, 1i), ~vec3<i32>(u_input.a, global1.a.x, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 30u)]) ^ global1.a));
    var var_1 = 1u;
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.a, 31178i), global1.a.x, (-14211i ^ var_0.a.x) << (55978u % 32u)), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.b, 30u)] << (firstLeadingBit(16578u) % 32u), i32(-1i) * -var_0.a.x), i32(-1i) * -1i));
    return ~0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_u32(func_3(), abs(u_input.b) << (~global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), -409f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-146f))))))));
    global0 = array<u32, 4>();
    let var_2 = select(reverseBits(vec3<u32>(arg_0.x, ~_wgslsmith_sub_u32(arg_0.x, 1u), ~4297u)), firstLeadingBit(~(~(~vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(u_input.c, 4u)])))), vec3<bool>(true, true || any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(~vec2<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global1.a.x), vec2<i32>(global4[_wgslsmith_index_u32(arg_0.x, 30u)], arg_3.a.x) & vec2<i32>(-20357i, arg_1)) >= arg_2.a.x));
    let var_3 = vec4<i32>(arg_3.a.x ^ (i32(-1i) * -_wgslsmith_add_i32(arg_3.a.x, arg_2.a.x)), global4[_wgslsmith_index_u32(~(~(~4294967295u)), 30u)], _wgslsmith_dot_vec4_i32(~(vec4<i32>(-23765i, global1.a.x, -2147483647i, global4[_wgslsmith_index_u32(arg_0.x, 30u)]) << (vec4<u32>(0u, 1u, 5361u, global0[_wgslsmith_index_u32(u_input.b, 4u)]) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.a.x, arg_3.a.x, global4[_wgslsmith_index_u32(2172u, 30u)], u_input.a), ~vec4<i32>(1i, u_input.a, global4[_wgslsmith_index_u32(1u, 30u)], arg_2.a.x))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, arg_0.x), 30u)]);
    return ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_clamp_u32(reverseBits(7567u), 1u, 9052u)), 4u)];
}

fn func_1() -> Struct_2 {
    let var_0 = (true || (select(true, true, true) || true)) & (36549u <= global0[_wgslsmith_index_u32(func_2(vec2<u32>(1u, 1u), 0i, Struct_1(vec3<i32>(u_input.a, -1i, 0i)), Struct_1(vec3<i32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5201u, 4u)], 30u)], -6918i, 2147483647i))) << (_wgslsmith_add_u32(~u_input.c, _wgslsmith_add_u32(u_input.b, u_input.b)) % 32u), 4u)]);
    var var_1 = select(vec4<u32>(~51290u & (global0[_wgslsmith_index_u32(1u, 4u)] | u_input.c), 26588u, 4294967295u, u_input.b) | _wgslsmith_div_vec4_u32(vec4<u32>(~0u, ~1u, countOneBits(22410u), 9828u), _wgslsmith_mod_vec4_u32(vec4<u32>(109179u, 1u, 3272u, 24459u), abs(vec4<u32>(92602u, global0[_wgslsmith_index_u32(37300u, 4u)], u_input.b, 13699u)))), vec4<u32>(39395u, abs(1u), _wgslsmith_clamp_u32(~17085u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 2832u, 82723u, u_input.c), vec4<u32>(37948u, u_input.c, 6166u, 73985u)) % 32u), ~1u, 74822u), ~firstLeadingBit(u_input.c << (0u % 32u))), vec4<bool>(any(select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, false)), vec3<bool>(true, var_0, false), all(vec2<bool>(true, var_0)))), var_0, all(vec3<bool>(var_0, false, var_0)) && true, true));
    return Struct_2(_wgslsmith_f_op_f32(round(969f)), vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], _wgslsmith_clamp_u32(u_input.c, 1u, 4294967295u)), _wgslsmith_sub_u32(max(var_1.x, 1u), var_1.x), _wgslsmith_add_u32(var_1.x, 34884u), u_input.b) & vec4<u32>(4294967295u, 41157u, var_1.x, 41937u >> (countOneBits(u_input.b) % 32u)), Struct_1(global1.a), global1.a, firstLeadingBit(23915i));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global4 = array<i32, 30>();
    let var_0 = func_1().c;
    global0 = array<u32, 4>();
    global2 = array<vec4<bool>, 21>();
    var var_1 = arg_1;
    return Struct_1(_wgslsmith_clamp_vec3_i32(max(firstTrailingBit(firstTrailingBit(global1.a)), countOneBits(countOneBits(var_1.c.a))), arg_1.d, (~var_1.d | vec3<i32>(1i, global4[_wgslsmith_index_u32(u_input.b, 30u)], 36742i)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, u_input.b), ~arg_1.b.yyy) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, global1.a.x, arg_0.a.x) | global1.a, firstTrailingBit(global1.a))));
    global0 = array<u32, 4>();
    let var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), Struct_2(362f, max(vec4<u32>(global0[_wgslsmith_index_u32(38293u, 4u)] >> (4294967295u % 32u), countOneBits(global0[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_mult_u32(48972u, 3169u), 37775u), _wgslsmith_sub_vec4_u32(vec4<u32>(54923u, 1u, 36489u, 34339u), vec4<u32>(1u, u_input.c, global0[_wgslsmith_index_u32(14732u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]) << (vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.c) % vec4<u32>(32u)))), arg_0, func_4(_wgslsmith_f_op_f32(678f - 1000f), Struct_2(-1267f, ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], 28278u, 4294967295u, 0u), Struct_1(global1.a), vec3<i32>(2147483647i, -2053i, global4[_wgslsmith_index_u32(92211u, 30u)]), ~var_0.a.x)).a, -countOneBits(57908i)));
    var var_2 = var_1.a;
    global0 = array<u32, 4>();
    return StorageBuffer(var_1.a.x, vec2<f32>(-1838f, -825f), abs(global1.a.x), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-552f, -1237f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f - -770f)))), 814f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<i32>(-global1.a.x, abs(_wgslsmith_mod_i32(-u_input.a, global4[_wgslsmith_index_u32(u_input.c, 30u)])), global1.a.x));
    let var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_1 = 979f;
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1201f))))), func_1()));
}

