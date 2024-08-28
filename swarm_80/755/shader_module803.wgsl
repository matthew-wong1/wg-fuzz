struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 36982u), vec2<u32>(9720u, 7950u), vec2<u32>(1u, 16561u), vec2<u32>(14678u, 0u), vec2<u32>(4294967295u, 105604u), vec2<u32>(38882u, 1u), vec2<u32>(41135u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 54059u), vec2<u32>(28816u, 69504u), vec2<u32>(1u, 12662u), vec2<u32>(0u, 4294967295u), vec2<u32>(45712u, 22734u), vec2<u32>(44435u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(36280u, 1u), vec2<u32>(40901u, 1u), vec2<u32>(56505u, 0u), vec2<u32>(1u, 40188u), vec2<u32>(0u, 33897u), vec2<u32>(57709u, 1u), vec2<u32>(19210u, 2635u), vec2<u32>(4294967295u, 48589u), vec2<u32>(23487u, 4294967295u), vec2<u32>(0u, 38644u), vec2<u32>(16291u, 0u));

var<private> global1: array<u32, 32> = array<u32, 32>(12131u, 4294967295u, 4294967295u, 32830u, 4698u, 48956u, 8169u, 4294967295u, 47818u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u, 54988u, 1u, 1u, 1u, 22608u, 74302u, 23815u, 1u, 23632u, 72674u, 14529u, 4042u, 71135u, 20075u, 1u, 4294967295u, 52225u, 57132u);

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<vec2<f32>, 8>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<vec2<u32>, 28>();
    var var_0 = !(!vec2<bool>(select(arg_1.c.x >= 44114u, true, all(vec2<bool>(true, true))), true));
    var_0 = vec2<bool>(var_0.x, var_0.x);
    var var_1 = arg_1.a;
    var var_2 = vec3<bool>(!(~arg_0.a.a != ~var_1.b) | select(!(var_0.x && var_0.x), var_0.x, true), var_0.x != true, any(select(vec4<bool>(var_0.x, !var_0.x, var_0.x, !var_0.x), vec4<bool>(any(vec2<bool>(false, false)), var_0.x, any(vec2<bool>(true, false)), true), true)));
    return vec3<i32>(-firstTrailingBit(i32(-1i) * -13573i), -_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17567i, 8393i, 2147483647i, u_input.a), vec4<i32>(-1536i, u_input.a, -7070i, arg_1.b.x)) << (1u % 32u)), 18643i);
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = func_3(Struct_2(Struct_1(4294967295u, ~arg_1, vec4<u32>(arg_1, 0u, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(73028u, 32u)], 27067u), vec3<u32>(1u, 59841u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 32u)], 32u)]))))), global2[_wgslsmith_index_u32(arg_1, 30u)]);
    global3 = array<vec2<f32>, 8>();
    global1 = array<u32, 32>();
    var var_1 = 67744u;
    global2 = array<Struct_3, 30>();
    return arg_0;
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_3, 30>();
    global2 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(484f, 1171f, 252f, -767f)))), vec4<f32>(-1065f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1227f - -281f), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1460f, -441f))), -251f)));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(25838u, 32u)], 23250u) ^ global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8324u, 32u)], 32u)], 32u)], 28u)], global0[_wgslsmith_index_u32(abs(4294967295u), 28u)]), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72785u, 32u)], 32u)]), select(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3872u, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11216u, 32u)], 32u)], global1[_wgslsmith_index_u32(12952u, 32u)], 1u) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1852u, 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6993u, 32u)], 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2073u, 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37907u, 32u)], 32u)], 32u)])), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], 0u))), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(Struct_1(~((var_0.a.b << (35230u % 32u)) ^ 1u), _wgslsmith_mult_u32(1807u, ~_wgslsmith_sub_u32(var_0.a.c.x, 1u)), firstTrailingBit(var_0.a.c)), _wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, 7501i, -(u_input.c.x & 2147483647i)), ~vec3<i32>(u_input.b.x, -22397i, u_input.c.x)), _wgslsmith_mult_vec2_u32(abs(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 32u)]), vec2<u32>(0u, global1[_wgslsmith_index_u32(var_0.a.b, 32u)])))), abs(~global0[_wgslsmith_index_u32(61066u, 28u)] | _wgslsmith_clamp_vec2_u32(var_0.a.c.xw, vec2<u32>(4294967295u, var_0.a.a), var_0.a.c.yz))));
    global2 = array<Struct_3, 30>();
    global1 = array<u32, 32>();
    var var_2 = Struct_2(func_1().a);
    let var_3 = Struct_4(Struct_2(func_1().a));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-320f, -1673f))))));
    var var_5 = global2[_wgslsmith_index_u32(var_0.a.b, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-208f, -535f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-882f, -252f, false)))) - _wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(abs(-1769f)))));
}

