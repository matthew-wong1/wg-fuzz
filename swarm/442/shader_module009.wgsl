struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-1i, 8907i, -3563i, -18201i, i32(-2147483648), i32(-2147483648), 6242i, -61924i, 0i, 0i, 1i, 0i, -12018i, 66055i, 15861i, i32(-2147483648), 1i, -44818i, 0i, -44202i, 13000i, 1i, -31802i, 45107i, 0i, 0i, 2147483647i, 45860i, 0i, 1i);

var<private> global1: array<vec4<i32>, 28>;

var<private> global2: i32 = 0i;

var<private> global3: array<vec4<f32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    let var_0 = 18126i;
    global3 = array<vec4<f32>, 1>();
    var var_1 = arg_1;
    global0 = array<i32, 30>();
    let var_2 = select(!(!(!select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3)))), !vec3<bool>(any(select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(false, false, arg_3, true), true)), arg_3, all(vec4<bool>(arg_3, arg_3, true, arg_3))), !arg_3 & true);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.c, ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 29606u), vec4<u32>(4294967295u, 17842u, arg_2.x, u_input.a), vec4<u32>(14075u, 37546u, 65857u, arg_1.c.x)))), ~vec4<u32>(_wgslsmith_sub_u32(~17743u, 61402u), select(min(13237u, 1u), u_input.a | 0u, true), _wgslsmith_mult_u32(_wgslsmith_div_u32(21540u, 4294967295u), 32033u << (var_1.a.x % 32u)), var_1.c.x));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global0 = array<i32, 30>();
    var var_0 = Struct_1(~vec4<u32>(arg_0, arg_0, ~(~32116u), firstLeadingBit(u_input.a)), u_input.e.wy, vec4<u32>(_wgslsmith_sub_u32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(21534u, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], 1i), Struct_1(vec4<u32>(86928u, arg_0, arg_0, arg_0), u_input.e.ww, vec4<u32>(4294967295u, 25730u, arg_0, u_input.a)), vec2<u32>(4294967295u, 1u) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), true), ~(arg_0 & u_input.a)), ~77517u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(114081u, u_input.a)), vec2<u32>(u_input.a, 4294967295u)), countOneBits(countOneBits(~arg_0))));
    global3 = array<vec4<f32>, 1>();
    let var_1 = Struct_1(firstLeadingBit(var_0.a), vec2<i32>(abs(var_0.b.x) | -var_0.b.x, firstTrailingBit(1i)), ~select(var_0.c, ~vec4<u32>(var_0.a.x, 77914u, u_input.a, arg_0), all(vec4<bool>(true, false, true, true))) ^ max(~_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(4294967295u, arg_0, var_0.a.x, 1u)), var_0.a));
    let var_2 = abs(select(_wgslsmith_clamp_vec3_i32(-(~u_input.e.yzz), u_input.e.zzx, u_input.e.zzz), -vec3<i32>(_wgslsmith_sub_i32(72644i, 1i), 2147483647i, var_1.b.x), true));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec4<u32>(var_0, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_0, var_0), vec3<u32>(var_0, 40483u, var_0)), vec3<u32>(u_input.a, 4294967295u, 0u)) >> (_wgslsmith_add_u32(select(47461u, 77380u, true), 22754u) % 32u), 0u, u_input.a), ~vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 30u)]), u_input.e), -2147483647i), _wgslsmith_sub_vec4_u32(~(~min(vec4<u32>(87323u, 53969u, 27150u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 29383u))), func_2(28735u)));
    var var_2 = Struct_1(var_1.c, vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.e.zxz, vec3<i32>(-1i, -3773i, global0[_wgslsmith_index_u32(80525u, 30u)])), _wgslsmith_dot_vec2_i32(~var_1.b, ~(~u_input.e.zx))), select(vec4<u32>(3116u, 4294967295u, _wgslsmith_sub_u32(~0u, func_2(1u).x), var_1.c.x), ~_wgslsmith_mult_vec4_u32(~var_1.c, var_1.a), true));
    let var_3 = 897f;
    var var_4 = var_2.a.x;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    global1 = array<vec4<i32>, 28>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(138f))), _wgslsmith_f_op_f32(select(-174f, -1424f, all(vec2<bool>(false, false))))))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.a, 1u)];
    var_0 = func_1();
    return ~(~u_input.e.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(false, true, any(vec4<bool>(true, true, true, false))));
    global2 = -46265i;
    global0 = array<i32, 30>();
    global2 = _wgslsmith_dot_vec2_i32(func_4(func_1()), vec2<i32>(u_input.e.x, func_4(func_1()).x));
    var var_1 = var_0.yz;
    var_1 = !select(select(!var_0.xy, vec2<bool>(var_1.x, var_1.x), var_0.xz), vec2<bool>(all(vec3<bool>(var_0.x, var_1.x, true)), !(!var_0.x)), var_0.xy);
    var var_2 = select(abs(~(~vec3<u32>(8712u, 0u, u_input.a))), max(vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(u_input.a, 1u, u_input.a)) | ~vec3<u32>(12666u, u_input.a, 1u), var_0) << (~vec3<u32>(~u_input.a & ~u_input.a, ~(u_input.a << (u_input.a % 32u)), ~(~u_input.a)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, min(-63388i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(26909i, 71480i), vec2<i32>(-1i, u_input.b)), u_input.e.yx)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(var_2.x), 37961u), 30u)], _wgslsmith_mod_i32(abs(u_input.b) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(73653u, 30u)]), vec2<i32>(-10965i, global0[_wgslsmith_index_u32(50331u, 30u)])), -_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(54002u, 30u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f + -406f) * _wgslsmith_f_op_f32(min(383f, -855f))), -2172f))), _wgslsmith_clamp_u32(u_input.a, var_2.x << (4294967295u % 32u), countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(var_2.zx), func_1().c.xy))), 1242f);
}

