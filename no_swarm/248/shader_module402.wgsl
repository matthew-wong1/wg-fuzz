struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec4<u32>(25702u, 0u, 0u, 0u), Struct_1(37648i, true), vec3<f32>(2433f, -1394f, 887f)), vec4<u32>(4294967295u, 1u, 51288u, 23015u), Struct_2(958f));

var<private> global1: array<Struct_2, 31>;

var<private> global2: Struct_2 = Struct_2(-528f);

var<private> global3: array<vec3<i32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -1302f)), global0.c.a)), _wgslsmith_f_op_vec3_f32(sign(global0.a.c)), -595f > _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-global0.c.a))));
    var var_1 = -464f;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - var_0.x))) - global2.a), var_0.x, global0.c.a)));
    let var_3 = max(_wgslsmith_div_vec2_u32(global0.b.yz, vec2<u32>(arg_2.x, select(arg_2.x, arg_2.x, true))), firstLeadingBit(~reverseBits(arg_0.a.xx)));
    let var_4 = ~vec3<i32>(_wgslsmith_add_i32(arg_3.a, -12111i), _wgslsmith_sub_i32((-1i >> (u_input.b.x % 32u)) | _wgslsmith_sub_i32(arg_0.b.a, arg_1.x), -1i), arg_0.b.a);
    return false & (_wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, u_input.a), vec2<u32>(u_input.a, 48537u)), var_3.x >> (1u % 32u)) < 57616u);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(min(1i, -29725i), select(all(!(!vec2<bool>(global0.a.b.b, arg_0))), true, global0.a.b.b && func_3(global0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.b.a, u_input.d, u_input.d, 0i), vec4<i32>(-44391i, global0.a.b.a, 13560i, u_input.c)), ~vec3<u32>(1u, 1u, 95940u), Struct_1(u_input.d, global0.a.b.b))));
    var var_1 = max(_wgslsmith_sub_i32(40567i, min(38683i, var_0.a ^ var_0.a) & var_0.a), -(var_0.a | ~_wgslsmith_add_i32(global0.a.b.a, -24345i)));
    let var_2 = -1i;
    var var_3 = Struct_5(!select(select(vec4<bool>(var_0.b, arg_0, var_0.b, true), !vec4<bool>(true, false, arg_0, var_0.b), !vec4<bool>(arg_0, true, var_0.b, false)), select(vec4<bool>(arg_0, global0.a.b.b, false, true), vec4<bool>(var_0.b, arg_0, var_0.b, global0.a.b.b), select(vec4<bool>(arg_0, var_0.b, true, global0.a.b.b), vec4<bool>(var_0.b, var_0.b, global0.a.b.b, arg_0), arg_0)), arg_0));
    let var_4 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d, reverseBits(u_input.c)), -12028i), var_2, _wgslsmith_add_i32(var_2, -2147483647i), -(~(~min(var_0.a, u_input.c))));
    return 6428i;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec2<i32> {
    var var_0 = 15278i;
    return vec2<i32>(-10144i, func_2(any(select(!arg_1, vec2<bool>(true, arg_1.x), global0.a.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(-global0.a.b.a | -global0.a.b.a), global0.a.b.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(func_1(vec4<u32>(26791u, 55819u, 0u, 50713u), vec2<bool>(true, global0.a.b.b)), vec2<i32>(-28075i, -22091i)), func_1(select(global0.a.a, vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 60480u), global0.a.b.b), vec2<bool>(true, global0.a.b.b)).x), ~(-2147483647i ^ global0.a.b.a)) & (firstTrailingBit(reverseBits(vec4<i32>(global0.a.b.a, 2894i, u_input.c, global0.a.b.a))) & countOneBits(~vec4<i32>(u_input.d, u_input.c, -1i, 38171i) & -vec4<i32>(25662i, global0.a.b.a, -19612i, u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1418f));
    global1 = array<Struct_2, 31>();
    global0 = Struct_4(Struct_3(vec4<u32>(1u, u_input.a, u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, global0.a.a.x), 1u, _wgslsmith_mult_u32(0u, 4294967295u))), global0.a.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1252f + global2.a) - 842f))), vec4<u32>(1u, select(~global0.b.x, select(select(0u, global0.a.a.x, false), global0.a.a.x, !global0.a.b.b), global0.a.b.b), ~(~4294967295u), _wgslsmith_mod_u32(select(global0.b.x & 3073u, ~u_input.b.x, true), 33580u)), global1[_wgslsmith_index_u32(4294967295u, 31u)]);
    global1 = array<Struct_2, 31>();
    let var_2 = Struct_4(global0.a, vec4<u32>(u_input.a, _wgslsmith_clamp_u32(26998u, ~(~4294967295u), _wgslsmith_add_u32(28764u, global0.a.a.x)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 1u, global0.b.x, 36017u)), vec4<u32>(u_input.a, 4294967295u, global0.a.a.x, 4294967295u)), _wgslsmith_mult_u32(max(0u, u_input.a), 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(62117u, global0.a.a.x), global0.a.a.yw, vec2<u32>(u_input.a, 24039u)))), Struct_2(_wgslsmith_f_op_f32(1157f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + global0.a.c.x) * _wgslsmith_f_op_f32(global2.a - 1349f)))));
    var var_3 = Struct_5(select(vec4<bool>(all(!vec2<bool>(var_2.a.b.b, false)), false, !global0.a.b.b, !any(vec3<bool>(false, true, var_2.a.b.b))), vec4<bool>(true, var_2.a.b.b, true, _wgslsmith_div_f32(global0.c.a, 290f) != -983f), true));
    let x = u_input.a;
    s_output = StorageBuffer(1226f, -vec4<i32>(abs(u_input.c << (var_2.a.a.x % 32u)), -2147483647i >> (u_input.b.x % 32u), countOneBits(u_input.c) << (min(4294967295u, 30949u) % 32u), 2147483647i));
}

