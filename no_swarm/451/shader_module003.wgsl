struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(4294967295u, vec2<i32>(1i, -4906i), vec2<i32>(2147483647i, -103203i)), Struct_1(4294967295u, vec2<i32>(2147483647i, -49865i), vec2<i32>(i32(-2147483648), 4531i)), Struct_1(28171u, vec2<i32>(0i, 2147483647i), vec2<i32>(15226i, 1i)), Struct_1(14343u, vec2<i32>(0i, -90970i), vec2<i32>(2147483647i, -1i)), Struct_1(42023u, vec2<i32>(-16370i, 2147483647i), vec2<i32>(8732i, i32(-2147483648))), Struct_1(4294967295u, vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 9947i)), Struct_1(1u, vec2<i32>(27288i, 1i), vec2<i32>(-28300i, 1i)), Struct_1(0u, vec2<i32>(-37134i, 14461i), vec2<i32>(0i, 4572i)), Struct_1(4294967295u, vec2<i32>(1i, -13169i), vec2<i32>(i32(-2147483648), 45893i)), Struct_1(4294967295u, vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-50761i, 55356i)), Struct_1(81760u, vec2<i32>(-27092i, -41809i), vec2<i32>(0i, i32(-2147483648))), Struct_1(4294967295u, vec2<i32>(2147483647i, 0i), vec2<i32>(13856i, 1i)), Struct_1(1u, vec2<i32>(25335i, -23933i), vec2<i32>(0i, 9807i)), Struct_1(10869u, vec2<i32>(i32(-2147483648), -37406i), vec2<i32>(-1i, -1354i)), Struct_1(4294967295u, vec2<i32>(0i, -1i), vec2<i32>(0i, -15975i)), Struct_1(0u, vec2<i32>(1i, 1i), vec2<i32>(-12988i, -27149i)), Struct_1(4294967295u, vec2<i32>(-21931i, 2147483647i), vec2<i32>(i32(-2147483648), 25928i)), Struct_1(0u, vec2<i32>(-6525i, 54002i), vec2<i32>(-1i, i32(-2147483648))), Struct_1(52392u, vec2<i32>(i32(-2147483648), 15310i), vec2<i32>(0i, 6335i)), Struct_1(14083u, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, -51780i)));

var<private> global2: array<vec4<bool>, 28>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let var_0 = arg_1;
    var var_1 = select(!global2[_wgslsmith_index_u32(24003u, 28u)], vec4<bool>(false, false, arg_2, true), select(true, arg_2, false & arg_2));
    let var_2 = Struct_1(~(~(~_wgslsmith_div_u32(4294967295u, 4294967295u))), var_0.c, var_0.b | (firstLeadingBit(arg_1.c) | _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 11u)])), vec2<i32>(-1i, 1i))));
    return min(~(~9644u), 1u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(~u_input.b), ~arg_1.a << (0u % 32u)) & min(max(max(vec2<u32>(u_input.b, 1u), vec2<u32>(14766u, 64415u)), ~vec2<u32>(1u, 15131u)), ~vec2<u32>(23744u, u_input.b)), vec2<u32>(u_input.b, min(~1u, max(~u_input.b, func_3(arg_1, global1[_wgslsmith_index_u32(73192u, 20u)], arg_0.x)))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a, arg_1.a), vec2<u32>(u_input.b, u_input.b))), max(vec2<u32>(u_input.b, arg_1.a), countOneBits(vec2<u32>(arg_1.a, 1u))), ~(~vec2<u32>(arg_1.a, u_input.a))) << (~vec2<u32>(arg_1.a, u_input.a) % vec2<u32>(32u)));
    var var_1 = !select(arg_0, !select(arg_0, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), true), select(select(global2[_wgslsmith_index_u32(abs(1u), 28u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]), select(!arg_0, select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(var_0.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), true), arg_0));
    return countOneBits(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_1.a, arg_1.a), firstTrailingBit(arg_1.a)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<u32>) -> vec4<u32> {
    global1 = array<Struct_1, 20>();
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(abs(4294967295u)), u_input.a), ~(~1u >> ((u_input.a | 47517u) % 32u)));
    let var_1 = -(-(vec4<i32>(-1i) * -vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 11u)], arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 11u)])) >> (~(~(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(1u, u_input.b, 4294967295u, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_2 = vec4<bool>(!(~arg_3.x <= u_input.b) || arg_2, arg_2, arg_2, arg_2);
    global2 = array<vec4<bool>, 28>();
    return vec4<u32>(34396u, u_input.b, arg_3.x, _wgslsmith_sub_u32(0u, func_4(select(!global2[_wgslsmith_index_u32(arg_3.x, 28u)], var_2, global2[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_2), 28u)]), global1[_wgslsmith_index_u32(firstLeadingBit(arg_3.x) | max(4294967295u, 0u), 20u)])));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<bool>, 28>();
    global2 = array<vec4<bool>, 28>();
    var var_0 = ~_wgslsmith_add_vec4_u32(reverseBits(func_2(_wgslsmith_f_op_f32(step(201f, 1000f)), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 11u)]), false, vec2<u32>(u_input.b, u_input.a))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<bool>(true, true, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 5580u, u_input.b), vec4<u32>(u_input.b, u_input.b, 34688u, u_input.a), vec4<u32>(0u, u_input.b, u_input.a, 4294967295u))));
    global2 = array<vec4<bool>, 28>();
    var var_1 = _wgslsmith_div_i32(min(39177i, min(~reverseBits(2147483647i), abs(abs(global0[_wgslsmith_index_u32(u_input.a, 11u)])))), 6847i);
    return global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, 1u), _wgslsmith_mod_u32(9994u, var_0.x), u_input.b), 49451u >> ((var_0.x >> (var_0.x % 32u)) % 32u))), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-566f))))))));
    let var_2 = var_0.a;
    var_0 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, -719f, 184f, var_1))), vec4<f32>(var_1, var_1, var_1, -2521f))), !any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, var_1, -1736f)), vec3<f32>(1585f, -1430f, _wgslsmith_f_op_f32(ceil(var_1)))), vec3<f32>(-1000f, 1252f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1))))), !vec3<bool>(var_1 > 430f, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1705f, var_1, 213f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-925f, 601f, var_1) - vec3<f32>(1000f, 1272f, -257f))))), abs(vec4<i32>(abs(firstLeadingBit(var_0.b.x)), abs(var_0.b.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, func_4(vec4<bool>(true, false, false, true), Struct_1(64627u, var_0.b, var_0.b)), 32193u), 11u)], ~firstLeadingBit(29780i))), vec4<f32>(-332f, _wgslsmith_f_op_f32(630f + -1092f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 + var_1)))));
}

