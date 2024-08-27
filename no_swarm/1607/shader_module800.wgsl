struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_1, 15>;

var<private> global4: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.d, 15u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(792f, 719f, var_0.d.x) + vec3<f32>(var_0.d.x, 1014f, -263f)))))) - vec3<f32>(var_0.d.x, 1298f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2064f) - -1757f))));
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(u_input.a, u_input.a, 2147483647i, -12830i), abs(vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.a)), 2147483647i < u_input.a), select(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, -2147483647i, -1i, u_input.a)), vec4<i32>(0i, 1i, -38475i, 2147483647i)), vec4<i32>(u_input.a, firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 1i)), 1i), vec4<bool>(true, true, true, 12173i > u_input.a)), vec4<i32>(-reverseBits(u_input.a), ~(-1i), reverseBits(u_input.a) >> (_wgslsmith_mod_u32(41415u, 4294967295u) % 32u), -min(u_input.a, -2147483647i))), (firstLeadingBit(countOneBits(vec4<i32>(-58576i, 35004i, -26500i, -8953i))) << ((vec4<u32>(23152u, 1u, global0.x, 0u) << (vec4<u32>(22083u, 1u, 4294967295u, 41971u) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -11610i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, 36829i, u_input.a, -2147483647i)), 2147483647i, 1i));
    var var_3 = 109f;
    let var_4 = !select(global0.x <= countOneBits(firstLeadingBit(4294967295u)), select(~global0.x, 57352u, select(true, false, false)) <= select(45667u, 0u, false), all(vec4<bool>(true, true, true, true)));
    return countOneBits(~vec4<u32>(4294967295u, ~max(4294967295u, 4294967295u), _wgslsmith_mult_u32(global0.x, 7000u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_sub_u32(global0.x, 4294967295u), 46138u), 15u)]));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_mod_vec4_u32(select(~firstLeadingBit(vec4<u32>(7610u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2232u, 15u)], 15u)], global0.x, 34662u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(16955u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), ~vec4<u32>(4294967295u, 74536u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 15u)], 15u)])) % vec4<u32>(32u)), vec4<u32>(57718u, ~_wgslsmith_div_u32(83857u, global2[_wgslsmith_index_u32(global0.x, 15u)]), _wgslsmith_mult_u32(0u, 56734u) ^ (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60270u, 15u)], 15u)] & global0.x), abs(1u)), vec4<bool>(true, true, false, true)), select(~func_3() ^ ((vec4<u32>(global2[_wgslsmith_index_u32(global0.x, 15u)], global0.x, global0.x, global0.x) | vec4<u32>(0u, u_input.b, 66183u, 0u)) << (~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 15u)], global2[_wgslsmith_index_u32(global0.x, 15u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 15u)]) % vec4<u32>(32u))), ~(~(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 15u)], u_input.d, 4294967295u, 4294967295u))), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), false, true), vec4<bool>(all(vec4<bool>(true, false, false, true)), u_input.a != -8660i, true, true), true)));
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~(~u_input.d)), 15u)];
    var var_1 = global3[_wgslsmith_index_u32(global0.x, 15u)];
    let var_2 = global3[_wgslsmith_index_u32(51044u, 15u)];
    var var_3 = vec3<i32>(-1021i, u_input.a, u_input.a);
    return Struct_1(var_2.c, global2[_wgslsmith_index_u32(abs(~15396u), 15u)], vec3<u32>(53994u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], var_2.c.x, var_1.a.x), var_2.a)), 15u)], reverseBits(1u)), var_1.a.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(-var_0.d.x)), -872f));
}

fn func_1() -> vec3<bool> {
    let var_0 = 0u ^ _wgslsmith_mod_u32(u_input.c.x, abs(~(~global0.x)));
    global3 = array<Struct_1, 15>();
    global2 = array<u32, 15>();
    var var_1 = func_2();
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * -862f)) == var_1.d.x, (u_input.a << (min(global2[_wgslsmith_index_u32(32464u, 15u)], 1u) % 32u)) > (u_input.a << (_wgslsmith_mult_u32(u_input.b, 0u) % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-34715i, 99208i, -1i, u_input.a)) >= abs(u_input.a & u_input.a));
    return vec3<bool>(!var_2.x, true, var_1.c.x < (var_0 << (abs(var_1.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 19>();
    global4 = !all(vec4<bool>(false, 84461u != global2[_wgslsmith_index_u32(~21077u, 15u)], all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))));
    let var_0 = vec2<u32>(min(~global2[_wgslsmith_index_u32(reverseBits(~6829u), 15u)], global0.x), abs(0u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-1944f - -352f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1299f - 473f))))))), _wgslsmith_f_op_f32(floor(1212f)), -798f);
    var var_2 = global3[_wgslsmith_index_u32(abs(u_input.c.x), 15u)];
    var var_3 = select(vec3<bool>(true, 17943i > _wgslsmith_clamp_i32(-1i, i32(-1i) * -763i, 2147483647i), true), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), all(select(func_1(), vec3<bool>(false, true, false), true)) & !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)));
    let var_4 = func_3().ywz;
    global3 = array<Struct_1, 15>();
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(13167u, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, 23821i), vec3<i32>(u_input.a, 27136i, 1i), vec3<i32>(23155i, 0i, 15936i))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(39343i, u_input.a, -24241i), vec3<i32>(-15340i, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, u_input.a))) ^ 2147483647i, vec3<i32>(abs(~abs(969i)), -95i, _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(28226i, u_input.a, u_input.a, 1i)), ~vec4<i32>(u_input.a, u_input.a, 19771i, 2147483647i))), ~vec2<u32>(28636u, ~1u), func_2().c.yz);
}

