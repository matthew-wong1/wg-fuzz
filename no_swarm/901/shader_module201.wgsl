struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-39650i, 32219i, -30644i), vec3<i32>(-34527i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 22676i, 35276i), vec3<i32>(-88068i, 3915i, -1i), vec3<i32>(i32(-2147483648), 0i, -43629i), vec3<i32>(29520i, -29833i, -19080i), vec3<i32>(1i, 1i, -1i), vec3<i32>(-19736i, -1i, -19322i), vec3<i32>(-1i, 0i, 21560i), vec3<i32>(28929i, 10598i, 0i), vec3<i32>(1i, i32(-2147483648), -1820i), vec3<i32>(i32(-2147483648), i32(-2147483648), -47681i), vec3<i32>(1i, -2840i, 2147483647i), vec3<i32>(-1i, 7381i, 21992i));

var<private> global1: Struct_2 = Struct_2(0u, Struct_1(-888f, 21524u), vec4<i32>(i32(-2147483648), 1i, -37816i, 47436i));

var<private> global2: vec4<i32>;

var<private> global3: i32 = 1i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<bool>) -> i32 {
    global2 = ~(~vec4<i32>(i32(-1i) * -23306i, ~arg_2, ~24880i, u_input.a) << (vec4<u32>(~1u, arg_0.b, u_input.d.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.b, u_input.d.x), u_input.d.xz))) % vec4<u32>(32u)));
    global3 = ~min(-1i, global1.c.x);
    global3 = -28068i ^ global2.x;
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, arg_0.b, 77119u, arg_0.b) & _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 6249u, arg_0.b, 18828u))) & reverseBits(global1.b.b), arg_0, global1.c);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-944f, _wgslsmith_f_op_f32(floor(-1311f)))), global1.b.a);
    return 40578i;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(trunc(arg_3.a)))), -403f)), _wgslsmith_div_u32(arg_3.b, u_input.d.x));
    let var_1 = _wgslsmith_mod_u32(u_input.d.x, select(1u, 23467u, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)))) < var_0.b;
    global0 = array<vec3<i32>, 14>();
    var var_2 = Struct_1(-1854f, global1.a);
    global0 = array<vec3<i32>, 14>();
    return Struct_2(~30442u, Struct_1(-1098f, ~_wgslsmith_mod_u32(~4294967295u, u_input.d.x << (14664u % 32u))), vec4<i32>(arg_1.x, 17822i, func_3(global1.b, select(select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), vec2<bool>(false, var_1)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true || var_1), -max(arg_2.x, 29510i), select(!vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), !vec2<bool>(true, var_1))), ~u_input.c.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> f32 {
    global2 = -(vec4<i32>(u_input.a ^ 1i, _wgslsmith_div_i32(u_input.c.x, 56027i), firstTrailingBit(arg_3.c.x), firstTrailingBit(arg_3.c.x)) ^ (vec4<i32>(-1i) * -u_input.c)) | vec4<i32>(~(i32(-1i) * -1246i), -7550i, ~10006i, _wgslsmith_clamp_i32(select(u_input.b, 0i, arg_2), _wgslsmith_mult_i32(40260i, reverseBits(global2.x)), select(-1i, global2.x & arg_3.c.x, arg_2)));
    global1 = Struct_2(4294967295u, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2037f, arg_3.b.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.b.a, global1.b.a))), select(true, true, false))), ~4294967295u), -arg_3.c);
    global1 = func_2(arg_3.c.x, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, ~arg_3.c.x, -1i << (global1.b.b % 32u)) | global1.c, _wgslsmith_mod_vec4_i32(global1.c, countOneBits(vec4<i32>(u_input.c.x, 2147483647i, 0i, arg_3.c.x)))), -u_input.c, global1.b);
    var var_0 = arg_2;
    global0 = array<vec3<i32>, 14>();
    return _wgslsmith_div_f32(-249f, arg_3.b.a);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !arg_0;
    global0 = array<vec3<i32>, 14>();
    var var_1 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(-3302i, 0i), global2.x), vec3<i32>(4158i, global1.c.x, global2.x) & vec3<i32>(4635i, -1i, -34758i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, u_input.c.x), false) << (~(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, 33272u, global1.b.b), ~u_input.d.yxz) | reverseBits(vec3<u32>(u_input.d.x, global1.b.b, u_input.d.x) & u_input.d.yxy)) % vec3<u32>(32u));
    global0 = array<vec3<i32>, 14>();
    var var_2 = func_2(_wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(1i, var_1.x)), -1i), select(max(-abs(global1.c), u_input.c ^ global1.c), u_input.c, select(!select(vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_0, true, true), false), vec4<bool>(arg_0 || true, !arg_0, false, true), global1.c.x < -global2.x)), vec4<i32>(global2.x, -abs(86099i), -_wgslsmith_div_i32(func_3(Struct_1(-728f, 0u), vec2<bool>(false, false), u_input.a, vec2<bool>(true, arg_0)), ~global1.c.x), 1i), func_2(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.x, global1.c.x), global0[_wgslsmith_index_u32(u_input.d.x, 14u)])), -u_input.c, ~_wgslsmith_mult_vec4_i32(global1.c, ~global1.c), global1.b).b);
    return Struct_1(_wgslsmith_div_f32(global1.b.a, -135f), _wgslsmith_mod_u32(func_2(_wgslsmith_dot_vec2_i32(var_1.xx, abs(vec2<i32>(-46954i, var_1.x))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-11975i, -5819i, -2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-15290i, -60342i, global2.x, global2.x), vec4<i32>(global2.x, global1.c.x, 2147483647i, 2147483647i))), vec4<i32>(firstTrailingBit(global2.x), i32(-1i) * -20377i, ~2147483647i, -21050i), var_2.b).b.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(17043u, 39895u, 79741u, 20152u), u_input.d, vec4<u32>(24808u, global1.b.b, u_input.d.x, 43561u)), vec4<u32>(46358u, ~1u, 41183u, 32620u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(_wgslsmith_mod_vec4_i32(global1.c, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(global2.x, _wgslsmith_mod_i32(-2147483647i, 6764i), min(global1.c.x, u_input.c.x), 1i))));
    global3 = i32(-1i) * -1i;
    let var_0 = !(_wgslsmith_f_op_f32(global1.b.a * -1000f) <= global1.b.a);
    let var_1 = u_input.b;
    global1 = Struct_2(_wgslsmith_sub_u32(64299u, 8583u), func_4(false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, 360f, global1.b.a), var_0, var_0, Struct_2(4294967295u, global1.b, vec4<i32>(u_input.b, 2147483647i, -2147483647i, global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -251f), global1.b.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b.a, global1.b.a, -103f), vec3<f32>(806f, global1.b.a, global1.b.a))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b.a, 2100f, global1.b.a), vec3<f32>(-455f, global1.b.a, global1.b.a)))))), u_input.c);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(444f, global1.b.a) - vec2<f32>(-839f, -1282f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, 1000f) + vec2<f32>(106f, global1.b.a)))), select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, -1816f) - vec2<f32>(587f, global1.b.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.a, global1.b.a), vec2<f32>(global1.b.a, global1.b.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1191f))))));
    let var_3 = _wgslsmith_f_op_f32(global1.b.a * _wgslsmith_div_f32(695f, _wgslsmith_f_op_f32(-952f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-527f)) + _wgslsmith_f_op_f32(var_2.x - global1.b.a)))));
    let var_4 = select(!vec3<bool>(any(!vec3<bool>(var_0, var_0, false)), !all(vec3<bool>(var_0, true, var_0)), var_0), vec3<bool>(!(!(var_0 | var_0)), select(select(!var_0, false, false), var_0, !var_0 & true), var_0), !vec3<bool>(all(vec4<bool>(var_0, false, var_0, var_0)), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d), ~_wgslsmith_mult_u32(global1.b.b >> (firstLeadingBit(24834u) % 32u), abs(4294967295u)), _wgslsmith_dot_vec3_u32(u_input.d.xxz, u_input.d.yxw));
}

