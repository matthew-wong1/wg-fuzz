struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 21432u);

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(30006u, 3416u), vec2<u32>(0u, 23363u), vec2<u32>(15975u, 109711u), vec2<u32>(1u, 4294967295u), vec2<u32>(35853u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(38190u, 4294967295u), vec2<u32>(65194u, 0u), vec2<u32>(64047u, 12573u), vec2<u32>(25229u, 9022u), vec2<u32>(0u, 1u), vec2<u32>(35793u, 1876u), vec2<u32>(23367u, 4294967295u), vec2<u32>(9695u, 72473u), vec2<u32>(16314u, 4294967295u), vec2<u32>(16504u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1795u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 69758u), vec2<u32>(0u, 22461u), vec2<u32>(51325u, 20850u), vec2<u32>(23388u, 55279u), vec2<u32>(1u, 23593u), vec2<u32>(16287u, 0u));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(614f, false));

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = ~firstTrailingBit(global0.xy);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -824f), -347f)))));
    var var_2 = -u_input.b;
    var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(38330u, var_0.x), 4294967295u, ~global0.x ^ ~0u), _wgslsmith_mult_u32(66639u, 0u)), global0.x);
    return 657f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<u32> {
    global0 = ~(~vec3<u32>(reverseBits(4294967295u), ~arg_2.x, ~u_input.a.x) >> (firstTrailingBit(vec3<u32>(~u_input.a.x, 1u, _wgslsmith_mod_u32(arg_2.x, 16523u))) % vec3<u32>(32u)));
    let var_0 = Struct_1(-1350f, select(arg_3.b.b, true, arg_3.b.b) || arg_3.b.b);
    var var_1 = -(~reverseBits(~arg_1 >> (~vec4<u32>(1u, 20570u, 1u, arg_2.x) % vec4<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(2580f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), !select(any(!vec3<bool>(arg_3.b.b, arg_3.b.b, true)), true, any(vec4<bool>(arg_3.b.b, arg_3.b.b, false, arg_3.b.b))));
    var var_3 = select(!vec4<bool>(true, global2.x <= _wgslsmith_sub_i32(global2.x, arg_1.x), false, !(53950u >= u_input.a.x)), !vec4<bool>(true, !arg_3.b.b, false, all(vec4<bool>(true, true, false, true))), select(select(!select(vec4<bool>(true, true, arg_3.b.b, arg_3.b.b), vec4<bool>(false, true, true, var_0.b), vec4<bool>(false, true, var_0.b, true)), !vec4<bool>(var_2.b, arg_3.b.b, true, false), vec4<bool>(all(vec4<bool>(var_2.b, false, false, false)), true, var_2.b | false, !var_2.b)), vec4<bool>(any(vec2<bool>(arg_3.b.b, false)), any(!vec4<bool>(true, true, arg_3.b.b, true)), min(global0.x, global0.x) <= arg_2.x, false), select(!select(vec4<bool>(true, false, var_0.b, false), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(var_2.b, var_0.b, true, true), vec4<bool>(true, arg_3.b.b, var_0.b, true), vec4<bool>(var_0.b, true, var_2.b, var_0.b)), select(vec4<bool>(true, arg_3.b.b, false, var_0.b), vec4<bool>(true, true, true, arg_3.b.b), true), select(vec4<bool>(false, false, var_2.b, var_2.b), vec4<bool>(true, true, false, false), arg_3.b.b)), select(!vec4<bool>(var_2.b, true, false, true), vec4<bool>(true, var_0.b, arg_3.b.b, var_2.b), select(var_2.b, false, var_2.b)))));
    return ~((select(_wgslsmith_div_vec2_u32(global0.xz, vec2<u32>(global0.x, 0u)), global0.zy, true) << (~_wgslsmith_clamp_vec2_u32(arg_2, u_input.a, global0.xz) % vec2<u32>(32u))) >> (global0.yx % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = max(~_wgslsmith_mod_vec2_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1134f, 224f, -1434f, 1000f)), vec4<i32>(1i, 1i, 1i, 1i), vec2<u32>(4294967295u, 1479u), Struct_2(u_input.d, Struct_1(610f, true))), vec2<u32>(52771u | u_input.a.x, u_input.a.x << (1u % 32u))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~global0.xy, u_input.a, select(vec2<u32>(4294967295u, global0.x), global0.xx, vec2<bool>(false, true))), _wgslsmith_add_vec2_u32(~u_input.a, ~vec2<u32>(global0.x, 1u))), 28u)]);
    var var_1 = !(abs(-1i) != abs(u_input.c));
    global4 = array<Struct_1, 25>();
    let var_2 = vec3<i32>(firstLeadingBit(-1i), global2.x, -700i);
    let var_3 = true;
    return Struct_1(610f, all(vec2<bool>(all(!vec2<bool>(var_3, var_3)), all(vec3<bool>(var_3, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    let var_0 = global2.x;
    global4 = array<Struct_1, 25>();
    var var_1 = func_1();
    global2 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, 21883i), vec3<i32>(u_input.c, 2147483647i, -43649i)), u_input.d.x), firstLeadingBit(reverseBits(vec3<i32>(u_input.b, 0i, 11368i))));
    let var_2 = Struct_2(abs(countOneBits(reverseBits(u_input.d))) & global2.xx, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1279f), any(vec2<bool>(false, !var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(abs(~(~vec4<i32>(-1i, u_input.d.x, var_2.a.x, var_2.a.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, global2.x, 15443i, 21152i), vec4<i32>(2147483647i, u_input.c, 2147483647i, -17263i))), select(~(~u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, u_input.a.x), vec3<u32>(9866u, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 9146u), vec3<u32>(global0.x, 61548u, 0u))) & ~(1u << (1u % 32u)), 28u)], true));
}

