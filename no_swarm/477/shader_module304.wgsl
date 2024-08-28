struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(2147483647i, -26777i), vec4<bool>(false, false, false, true), vec3<f32>(-1000f, -1000f, 528f)), Struct_1(vec2<i32>(1i, -24217i), vec4<bool>(true, true, false, false), vec3<f32>(-1000f, -233f, 1196f)), Struct_1(vec2<i32>(19980i, -40054i), vec4<bool>(true, false, true, false), vec3<f32>(1744f, -1000f, 120f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, true, false, true), vec3<f32>(832f, -829f, -257f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, false), vec3<f32>(-445f, -926f, -411f)), Struct_1(vec2<i32>(-1i, -32637i), vec4<bool>(false, false, true, true), vec3<f32>(676f, 155f, -1172f)), Struct_1(vec2<i32>(0i, 4203i), vec4<bool>(true, true, true, false), vec3<f32>(-703f, -160f, 845f)), Struct_1(vec2<i32>(-39284i, -25235i), vec4<bool>(false, false, true, true), vec3<f32>(-1212f, -970f, -1616f)), Struct_1(vec2<i32>(i32(-2147483648), -9405i), vec4<bool>(false, true, true, true), vec3<f32>(-398f, 1095f, 175f)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, true, true, false), vec3<f32>(-340f, -689f, -1490f));

var<private> global2: array<u32, 8>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = abs(abs(select(abs(-2147483647i), -5034i, global1.c.x > arg_3.c.x)));
    var var_1 = _wgslsmith_dot_vec2_u32(select(min(~(vec2<u32>(4294967295u, 0u) << (vec2<u32>(77121u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13513u, 8u)], 8u)]) % vec2<u32>(32u))), vec2<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 0u) & vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)])), ~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 14646u) >> ((vec2<u32>(global2[_wgslsmith_index_u32(51798u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4088u, 8u)], 8u)], 8u)]) << (vec2<u32>(134388u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))), !(!arg_3.b.wz)), ~reverseBits(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(48504u, 8u)], 3369u)), vec2<u32>(27570u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)]) | vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(996u, 8u)], 8u)], 8u)]))));
    var var_2 = -670f;
    var var_3 = arg_3.b.zz;
    var_1 = _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(24559u, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77017u, 8u)], 8u)], 8u)], 8u)], 8u)]), 8u)], 8u)], _wgslsmith_dot_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(28493u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 1u), vec4<u32>(global2[_wgslsmith_index_u32(18951u, 8u)], 58887u, global2[_wgslsmith_index_u32(4294967295u, 8u)], 0u), true), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 11749u, 1688u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5330u, 8u)], 8u)], 8u)]))))) >> (_wgslsmith_add_u32(0u, ~abs(reverseBits(global2[_wgslsmith_index_u32(0u, 8u)]))) % 32u);
    return i32(-1i) * -4761i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(vec2<i32>(~func_3(Struct_1(global1.a, global1.b, global1.c), Struct_1(vec2<i32>(-2147483647i, u_input.a), global1.b, global1.c), Struct_1(global1.a, global1.b, vec3<f32>(global1.c.x, global1.c.x, 1091f)), Struct_1(u_input.b, global1.b, global1.c)), 19871i), vec4<bool>(any(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, global1.b.x, arg_0.x), global1.b.zxy)), global1.b.x, true, false), global1.c);
    let var_2 = Struct_1(vec2<i32>(~_wgslsmith_mult_i32(select(global1.a.x, -20322i, var_1.b.x), abs(-13240i)), ~(-(global1.a.x | var_1.a.x))), global1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.c, _wgslsmith_f_op_vec3_f32(select(var_1.c, var_1.c, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c), var_1.c)))));
    var var_3 = -56157i;
    global1 = var_2;
    return global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30251u, 8u)], 8u)])) ^ _wgslsmith_mod_u32(reverseBits(global2[_wgslsmith_index_u32(57147u, 8u)] & global2[_wgslsmith_index_u32(0u, 8u)]), ~min(15312u, global2[_wgslsmith_index_u32(4294967295u, 8u)]))), 8u)], 8u)], 9u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    global2 = array<u32, 8>();
    var var_0 = func_2(!(!vec2<bool>(global1.b.x, true)));
    global1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 9u)];
    var var_1 = arg_2;
    global1 = Struct_1(~select(vec2<i32>(2147483647i, ~21996i), vec2<i32>(var_0.a.x, u_input.a) | u_input.b, vec2<bool>(false, all(global1.b.wy))), vec4<bool>(any(!var_0.b.xz), false | global1.b.x, !(!global1.b.x), func_2(var_0.b.zy).b.x), var_1.ywy);
    return 772f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 8>();
    global0 = array<Struct_1, 9>();
    global2 = array<u32, 8>();
    let var_0 = any(!vec3<bool>(global1.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)] <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55018u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21527u, 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 4294967295u, 0u, global2[_wgslsmith_index_u32(5457u, 8u)])), select(true, global1.b.x & global1.b.x, any(global1.b.xw))));
    let var_1 = global1.b.xw;
    var var_2 = !select(vec4<bool>(true, all(select(global1.b.yyw, global1.b.yww, global1.b.x)), true, var_0), vec4<bool>(var_1.x, true, all(!vec4<bool>(false, true, false, var_1.x)), var_1.x), !vec4<bool>(true, global1.b.x, !global1.b.x, select(var_1.x, false, var_1.x)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1435f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(reverseBits(vec2<i32>(2147483647i, u_input.a)), _wgslsmith_div_i32(global1.a.x, -1i), vec4<f32>(global1.c.x, -1155f, global1.c.x, -880f))))))));
    let var_4 = global2[_wgslsmith_index_u32(~(abs(~(global2[_wgslsmith_index_u32(0u, 8u)] | global2[_wgslsmith_index_u32(4045u, 8u)])) << (31114u % 32u)), 8u)];
    var var_5 = ~(~68149u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(abs(28790u), 28322u, 56152u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(76145u, 8u)], global2[_wgslsmith_index_u32(24042u, 8u)], 4294967295u, 14477u) | abs(vec4<u32>(global2[_wgslsmith_index_u32(32246u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 4293u)), ~vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(78662u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(127386u, 8u)], 8u)], 8u)])), ~vec4<u32>(global2[_wgslsmith_index_u32(25162u, 8u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2061u, 8u)], 8u)], 27863u) | ~vec4<u32>(global2[_wgslsmith_index_u32(7555u, 8u)], global2[_wgslsmith_index_u32(34219u, 8u)], 0u, global2[_wgslsmith_index_u32(1u, 8u)])), 22251u);
}

