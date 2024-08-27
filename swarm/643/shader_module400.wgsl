struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(-16079i, 1i), ~_wgslsmith_div_i32(1i, ~(-38029i))));
    let var_1 = global0[_wgslsmith_index_u32(arg_1, 4u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -210f), true, vec3<bool>(all(!(!vec3<bool>(global0[_wgslsmith_index_u32(19318u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]))), global0[_wgslsmith_index_u32(arg_1, 4u)], any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(72904u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(22002u, 4u)], true, global0[_wgslsmith_index_u32(arg_1, 4u)])))), Struct_2(vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(1u, 12012u, arg_1)), firstLeadingBit(1u)) ^ ~firstLeadingBit(vec3<u32>(1u, 30130u, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
    global0 = array<bool, 4>();
    let var_3 = Struct_1((~45196u ^ _wgslsmith_dot_vec3_u32(var_2.e.a, var_2.e.a >> (var_2.e.a % vec3<u32>(32u)))) >> (10122u % 32u), select(select(vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(80021u, 4u)], false, false)), var_2.d.x | global0[_wgslsmith_index_u32(u_input.b.x, 4u)], all(var_2.d), false), select(!vec4<bool>(true, var_2.c, var_2.c, true), !vec4<bool>(var_2.d.x, var_2.c, global0[_wgslsmith_index_u32(25596u, 4u)], true), select(vec4<bool>(true, var_2.d.x, var_2.d.x, global0[_wgslsmith_index_u32(arg_1, 4u)]), vec4<bool>(true, true, false, var_2.c), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 4u)], false, global0[_wgslsmith_index_u32(arg_1, 4u)], false))), vec4<bool>(false, var_2.d.x == true, true, select(global0[_wgslsmith_index_u32(var_2.e.a.x, 4u)], global0[_wgslsmith_index_u32(var_2.e.a.x, 4u)], global0[_wgslsmith_index_u32(var_2.e.a.x, 4u)]))), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, true, var_2.d.x || false), global0[_wgslsmith_index_u32(0u, 4u)]), all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, -202f), vec3<f32>(-1000f, 334f, arg_0)))))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_2(~vec3<u32>(~abs(1u), 1u, 4294967295u), arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 104f, -683f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1482f, var_0.b, -1000f) + vec3<f32>(829f, 1863f, 578f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -641f, -697f) - vec3<f32>(var_0.b, arg_1, var_0.b)) - _wgslsmith_f_op_vec3_f32(func_3(-328f, 1u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0.b, var_0.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -432f, var_0.b) + vec3<f32>(arg_1, -1378f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -899f, 293f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-942f, -362f, arg_1))))))));
    let var_2 = _wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(u_input.b.x, arg_2.x, abs(~3136u)));
    global0 = array<bool, 4>();
    let var_3 = arg_1;
    return -1i;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = array<bool, 4>();
    let var_0 = _wgslsmith_sub_i32(countOneBits(1i), func_2(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 1u), 4u)], false & global0[_wgslsmith_index_u32(62189u, 4u)], global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.a, false), 4u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-683f)) + _wgslsmith_f_op_f32(round(234f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f * 185f)))), ~firstTrailingBit(~vec4<u32>(38622u, u_input.b.x, u_input.b.x, 1u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(-660f, 4294967295u)).x, _wgslsmith_f_op_f32(f32(-1f) * -1952f)) + _wgslsmith_f_op_f32(-786f * -1028f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1140f)))), -1465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -153f), min(16742u, arg_0))).x), any(!vec4<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), 4294967295u < u_input.a, false || global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(15614u, 4u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0, 4u)], true)), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4061u, 4u)], false), global0[_wgslsmith_index_u32(arg_0, 4u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(32433u, 4u)], false), global0[_wgslsmith_index_u32(u_input.a, 4u)]), true), select(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0, 4u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], false, global0[_wgslsmith_index_u32(16023u, 4u)]), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 4u)], false, true), true), !select(global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(23119u, 4u)], true)), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)], false)), Struct_2(~(~vec3<u32>(0u, u_input.a, 22970u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-430f, 1003f) * _wgslsmith_div_f32(-1019f, -1869f)))));
    let var_2 = arg_0;
    global0 = array<bool, 4>();
    return Struct_3(1234f, var_1.e.b, select((!var_1.c != !global0[_wgslsmith_index_u32(var_2, 4u)]) == true, !(!(!var_1.d.x)), var_1.d.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], all(vec3<bool>(var_1.d.x, var_1.c, true)) & (global0[_wgslsmith_index_u32(1u, 4u)] & global0[_wgslsmith_index_u32(1u, 4u)]), false), Struct_2(~vec3<u32>(arg_0, _wgslsmith_mult_u32(4294967295u, 1u), u_input.b.x), 1f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    global0 = array<bool, 4>();
    var var_0 = arg_1.e.b;
    var var_1 = min(arg_3.zx, vec2<i32>(-1i, i32(-1i) * -arg_3.x)) >> (abs(vec2<u32>(firstTrailingBit(1u) << ((97735u << (arg_1.e.a.x % 32u)) % 32u), (u_input.b.x << (4294967295u % 32u)) << (~arg_1.e.a.x % 32u))) % vec2<u32>(32u));
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b.x, 4294967295u, 1u, arg_0.a.x), vec4<u32>(arg_2.a.x, 0u, 0u, arg_0.a.x)) >> (~vec4<u32>(u_input.a, arg_2.a.x, arg_0.a.x, u_input.b.x) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(31254u, 0u, 0u, 19439u))), vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9076u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a.x, 5356u), vec2<u32>(arg_1.e.a.x, arg_1.e.a.x))), ~(~87618u), arg_2.a.x));
    return -53632i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<bool, 4>();
    let var_1 = abs(~vec2<u32>(~abs(35528u), 16978u));
    var var_2 = min(i32(-1i) * -17011i, func_4(Struct_2(~abs(vec3<u32>(u_input.b.x, 1u, 71700u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -579f)))), func_1(_wgslsmith_mult_u32(firstLeadingBit(var_1.x), ~u_input.b.x)), Struct_2(vec3<u32>(var_1.x, u_input.a, var_1.x), -385f), max(min(vec4<i32>(-4475i, -8015i, -12143i, -2147483647i), vec4<i32>(1i, -7701i, -2147483647i, -4332i)), vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~(i32(-1i) * -1417i)), abs(-(5482i << (u_input.b.x % 32u)))));
}

