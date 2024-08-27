struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(true, true, false), 0i, vec3<f32>(497f, 172f, 806f), vec2<u32>(1u, 4294967295u), -1384f), Struct_2(vec3<bool>(false, false, false), -7755i, vec3<f32>(-904f, 311f, -131f), vec2<u32>(0u, 4294967295u), 1213f), Struct_2(vec3<bool>(false, true, false), 1i, vec3<f32>(-1379f, -855f, 1267f), vec2<u32>(4294967295u, 4294967295u), 231f), Struct_2(vec3<bool>(true, false, false), -799i, vec3<f32>(-890f, 518f, -1079f), vec2<u32>(0u, 0u), -604f), Struct_2(vec3<bool>(false, true, true), 2147483647i, vec3<f32>(-274f, -1728f, -1000f), vec2<u32>(44133u, 47319u), -1262f), Struct_2(vec3<bool>(false, false, false), -1i, vec3<f32>(-1000f, -224f, 1542f), vec2<u32>(51739u, 4294967295u), -953f));

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> f32 {
    global3 = array<Struct_2, 28>();
    global3 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.d.x, 5822i, global0.b)), vec3<i32>((0i | global0.b) >> (countOneBits(42101u) % 32u), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), firstLeadingBit(vec4<i32>(u_input.d.x, global0.b, 8979i, global0.b))))), u_input.d.zwy);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1378f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.e, -627f)))) * _wgslsmith_f_op_f32(round(141f)))));
    var_0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(abs(0i), -11077i, global0.b) >> (~(~vec3<u32>(u_input.e, 49570u, u_input.e)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_add_i32(2147483647i, -33686i)) & vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -25139i), u_input.d.x | global0.b, ~(-10544i)), reverseBits(-(vec3<i32>(1i, global0.b, var_0.x) << (vec3<u32>(u_input.e, 15507u, u_input.c) % vec3<u32>(32u))))));
    return 2739f;
}

fn func_2() -> Struct_1 {
    let var_0 = -u_input.d.yxw;
    global0 = global3[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = _wgslsmith_dot_vec2_i32(-(var_0.yy << (~global0.d % vec2<u32>(32u))), -(vec2<i32>(~u_input.d.x, select(-2147483647i, 0i, false)) & _wgslsmith_sub_vec2_i32(var_0.xy & vec2<i32>(var_0.x, 0i), vec2<i32>(0i, var_0.x))));
    var var_2 = (~select(~vec3<u32>(u_input.b.x, u_input.c, 74067u), ~vec3<u32>(31008u, 1u, global0.d.x), true) ^ vec3<u32>(u_input.c, _wgslsmith_mult_u32(158543u << (u_input.c % 32u), 48725u), abs(~46616u))) ^ vec3<u32>(1u, select(_wgslsmith_mult_u32(0u, global0.d.x) << (~1u % 32u), ~_wgslsmith_add_u32(global0.d.x, global0.d.x), true), _wgslsmith_add_u32(u_input.b.x, 0u));
    var_2 = vec3<u32>(var_2.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, max(1u, global0.d.x)), (u_input.a.x ^ global0.d.x) >> ((u_input.e & u_input.c) % 32u)) | _wgslsmith_mod_u32(~global0.d.x, min(var_2.x, 1u)), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))));
}

fn func_1() -> f32 {
    global3 = array<Struct_2, 28>();
    let var_0 = func_2();
    let var_1 = u_input.d.zwy;
    var var_2 = !vec2<bool>(true, global0.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, global0.a.x)))))) * global0.c)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-567f)));
    var var_1 = Struct_2(global0.a, 1i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(step(587f, global0.c.x)), 1000f))), select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 48770u), u_input.b, ~(u_input.b ^ vec2<u32>(global0.d.x, global0.d.x))), global0.d, !global0.a.xz), _wgslsmith_f_op_f32(var_0.a + global0.c.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), -615f);
    var var_3 = ~reverseBits(global0.b) & _wgslsmith_dot_vec4_i32(u_input.d | u_input.d, u_input.d);
    var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, var_1.d.x, 4294967295u), vec4<u32>(13570u, global0.d.x, u_input.e, 7066u))), ~vec4<u32>(~global0.d.x, _wgslsmith_add_u32(global0.d.x, 1u), reverseBits(21869u), ~var_1.d.x)));
}

