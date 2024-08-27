struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 41278i;

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_1(vec4<bool>(true, true, true, true)), 2147483647i, vec3<f32>(1878f, 218f, -985f), true), Struct_4(Struct_1(vec4<bool>(true, false, false, true)), 55686i, vec3<f32>(-752f, 597f, 2225f), false), Struct_4(Struct_1(vec4<bool>(false, true, false, false)), -24958i, vec3<f32>(-903f, -230f, -1878f), true), Struct_4(Struct_1(vec4<bool>(false, false, true, false)), 9093i, vec3<f32>(-145f, -994f, 842f), false), Struct_4(Struct_1(vec4<bool>(false, false, true, true)), -19718i, vec3<f32>(-503f, -228f, -1536f), false), Struct_4(Struct_1(vec4<bool>(false, false, false, true)), 2147483647i, vec3<f32>(452f, 1412f, 199f), true), Struct_4(Struct_1(vec4<bool>(true, false, false, false)), i32(-2147483648), vec3<f32>(582f, -1590f, 149f), false), Struct_4(Struct_1(vec4<bool>(true, false, false, true)), -17876i, vec3<f32>(1360f, 1396f, -568f), false), Struct_4(Struct_1(vec4<bool>(false, false, true, false)), -7251i, vec3<f32>(1944f, 1629f, -809f), true), Struct_4(Struct_1(vec4<bool>(true, false, true, true)), -46951i, vec3<f32>(475f, -929f, 1000f), true), Struct_4(Struct_1(vec4<bool>(true, false, false, false)), 1i, vec3<f32>(501f, 710f, -428f), false), Struct_4(Struct_1(vec4<bool>(true, true, true, true)), 0i, vec3<f32>(-257f, -502f, 245f), true), Struct_4(Struct_1(vec4<bool>(true, false, true, false)), 0i, vec3<f32>(-1305f, -1180f, 2079f), true), Struct_4(Struct_1(vec4<bool>(true, true, false, true)), 1i, vec3<f32>(1000f, 1037f, -403f), true), Struct_4(Struct_1(vec4<bool>(false, false, true, true)), 2147483647i, vec3<f32>(-1541f, 338f, -1742f), false), Struct_4(Struct_1(vec4<bool>(true, true, true, false)), i32(-2147483648), vec3<f32>(-1000f, -519f, 1365f), true));

var<private> global2: array<vec3<bool>, 21>;

var<private> global3: array<bool, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    global0 = u_input.c.x;
    global0 = arg_0.x;
    global0 = ~(~(i32(-1i) * -countOneBits(0i)));
    let var_0 = 9967u;
    global2 = array<vec3<bool>, 21>();
    return select(select(vec3<bool>(any(global2[_wgslsmith_index_u32(1154u ^ u_input.a.x, 21u)]), global3[_wgslsmith_index_u32(var_0, 28u)], any(vec2<bool>(global3[_wgslsmith_index_u32(var_0, 28u)], false))), !select(vec3<bool>(true, global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(39426u, 28u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(var_0, 28u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), global2[_wgslsmith_index_u32(32925u, 21u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], true)), select(global2[_wgslsmith_index_u32(var_0, 21u)], vec3<bool>(true, true, true), true), select(global3[_wgslsmith_index_u32(~(~u_input.b.x), 28u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(42934u, ~(~1u)), 28u)], any(select(select(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(14162u, 21u)], vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], true)), vec3<bool>(global3[_wgslsmith_index_u32(30437u, 28u)], false, global3[_wgslsmith_index_u32(var_0, 28u)]), select(vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)], false), global2[_wgslsmith_index_u32(var_0, 21u)])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    let var_0 = Struct_3(vec4<i32>(u_input.c.x, 1i, reverseBits(_wgslsmith_clamp_i32(0i, u_input.c.x, u_input.c.x)) | (u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_1), vec2<u32>(u_input.a.x, 57249u)) % 32u)), -u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1507f, 628f) * vec2<f32>(-992f, -1000f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1167f, -631f) + vec2<f32>(-1653f, 608f)))))));
    var var_2 = ~23508u;
    let var_3 = var_0;
    global1 = array<Struct_4, 16>();
    return ~_wgslsmith_div_i32(40802i & select(var_0.a.x | 2147483647i, ~0i, global3[_wgslsmith_index_u32(~1u, 28u)]), i32(-1i) * -12345i);
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-411f));
    var var_1 = var_0;
    let var_2 = Struct_5(Struct_2(Struct_1(!vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)])), var_0, ~func_2(global2[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(34086u, u_input.a.x, 1u, u_input.b.x))), arg_0.a.a.xx, u_input.a.x), Struct_3(vec4<i32>(-24536i, _wgslsmith_add_i32(1i, arg_0.b), 1i, abs(-10868i))), u_input.b.x, vec2<i32>(-4586i, -1i), ~u_input.a.x);
    var var_3 = ~(~_wgslsmith_add_vec3_u32(u_input.a.ywz, u_input.a.zyw));
    var var_4 = u_input.b.x;
    return ~_wgslsmith_sub_u32(u_input.b.x, ~firstLeadingBit(_wgslsmith_sub_u32(4294967295u, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec4<bool>(u_input.c.x == _wgslsmith_dot_vec3_i32(vec3<i32>(13327i, 0i, 49397i), vec3<i32>(17913i, 0i, 7830i)), !global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.a.x), 28u)], all(func_1(vec2<i32>(u_input.c.x, 75077i))))), -1194f, func_2(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], abs(u_input.a.x & u_input.a.x)), select(vec2<bool>(select(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]) | all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], false)), true), func_1(u_input.c | _wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, u_input.c)).zy, func_1(-u_input.c).zz), func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~0u), u_input.a.x, ~(~4294967295u)), 16u)]));
    let var_1 = vec3<u32>(reverseBits(0u), var_0.e, var_0.e);
    global2 = array<vec3<bool>, 21>();
    global2 = array<vec3<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1076f))), vec4<u32>(~_wgslsmith_add_u32(func_3(Struct_4(Struct_1(var_0.a.a), 65759i, vec3<f32>(var_0.b, 976f, -1529f), false)), ~var_1.x), ~_wgslsmith_mod_u32(~24631u, ~u_input.a.x), 1u, ~24281u), 46511u);
}

