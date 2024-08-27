struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: Struct_1 = Struct_1(-5593i, vec3<i32>(-1i, 7383i, 2147483647i), 0i, 48482i);

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(0i, 0i, -7891i, 0i), vec4<i32>(22136i, 4570i, -1i, 2147483647i), vec4<i32>(1i, 16688i, -20874i, -1i), vec4<i32>(-2155i, 0i, -1i, -7597i), vec4<i32>(0i, -13223i, 7131i, 73009i), vec4<i32>(0i, 35518i, -30733i, -1i), vec4<i32>(-6922i, -16807i, 56306i, 3205i), vec4<i32>(-4359i, 2147483647i, -1213i, -30278i), vec4<i32>(27138i, -1i, 24628i, -11518i), vec4<i32>(1i, -12982i, 69641i, -35443i), vec4<i32>(-8418i, i32(-2147483648), -75504i, 0i), vec4<i32>(1i, 1664i, i32(-2147483648), -7426i), vec4<i32>(i32(-2147483648), 45673i, -36180i, -36126i), vec4<i32>(1i, -1i, 2147483647i, 0i), vec4<i32>(2147483647i, -25728i, 1i, -1i), vec4<i32>(2147483647i, 37647i, -17865i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -18646i, -23878i), vec4<i32>(31638i, i32(-2147483648), 20353i, -15083i), vec4<i32>(42154i, -19627i, -22686i, -46093i), vec4<i32>(-1i, 8360i, 2147483647i, 37649i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-276f, 1000f, 769f), vec3<f32>(-347f, -1254f, -1000f)))))));
    global2 = array<vec4<i32>, 20>();
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(min(vec3<i32>(34183i, ~(-58842i), select(global1.b.x, u_input.a, false)), vec3<i32>(1i, i32(-1i) * -1i, ~u_input.c.x)), vec3<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(global1.c, 1i), reverseBits(global1.d), 57211i), -_wgslsmith_mult_i32(36231i, global1.b.x))), global1.b, ~max(~u_input.b, -2147483647i), -reverseBits(~min(u_input.a, 0i)));
    let var_1 = 1u;
    let var_2 = vec3<i32>(-43441i, 1i, u_input.a) ^ -_wgslsmith_add_vec3_i32(global1.b, _wgslsmith_div_vec3_i32(-global1.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global1.c, 1i), vec3<i32>(global1.d, u_input.a, -2147483647i))));
    return global1.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global1.b.x, -func_3(), abs(u_input.c.x), i32(-1i) * -2147483647i);
    global0 = array<vec3<u32>, 25>();
    let var_1 = ~(~var_0.b);
    var var_2 = Struct_1(global1.c, vec3<i32>(_wgslsmith_sub_i32(global1.c, var_0.a) ^ 27007i, _wgslsmith_add_i32(~1i, _wgslsmith_dot_vec3_i32(-var_0.b, var_0.b)), -1i), ~_wgslsmith_div_i32(global1.c, 9074i), 2147483647i);
    global2 = array<vec4<i32>, 20>();
    return Struct_2(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c | vec2<i32>(29182i, 0i), -vec2<i32>(global1.b.x, 0i)), var_0.b.xx, vec2<i32>(-6728i, var_1.x) & ~var_0.b.xx));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = vec3<i32>(countOneBits(arg_2.a.x), ~arg_1.e ^ ~firstTrailingBit(arg_0.a.x & arg_2.a.x), u_input.a);
    global1 = Struct_1(~_wgslsmith_add_i32(i32(-1i) * -1i, abs(-u_input.c.x)), _wgslsmith_sub_vec3_i32(~func_3(), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.a, -1i)), _wgslsmith_clamp_i32(2147483647i, arg_2.a.x, 46520i), arg_2.a.x), ~(~global1.b))), -(~min(1i, -1i) >> (~4294967295u % 32u)), 3338i);
    var var_1 = arg_1;
    global1 = Struct_1(arg_0.a.x, -max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-10629i, -2147483647i)), 1i, 1i), firstTrailingBit(vec3<i32>(1i, -2147483647i, -3944i) << (vec3<u32>(var_1.c, 1765u, 1u) % vec3<u32>(32u)))), ~_wgslsmith_mod_i32(2147483647i, -(~17463i)), 5477i);
    let var_2 = Struct_3(arg_2, !vec4<bool>(!arg_1.b.x, !all(arg_1.b.xyz), any(vec2<bool>(var_1.b.x, arg_1.b.x)), true), var_1.c, Struct_1(arg_1.e, -(vec3<i32>(var_0.x, -2147483647i, 24396i) | (global1.b & var_1.d.b)), -25102i, -arg_1.e), ~1i);
    return select(-_wgslsmith_sub_i32(~u_input.c.x, -2147483647i), firstLeadingBit(u_input.c.x), var_2.b.x) != countOneBits(-global1.c);
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(), Struct_3(func_2(), !vec4<bool>(true, true, any(vec2<bool>(true, false)), true), min(max(_wgslsmith_mult_u32(0u, 5923u), max(65766u, 4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(29963u, 65034u), vec2<u32>(5127u, 4294967295u)))), Struct_1(u_input.b, vec3<i32>(u_input.b ^ u_input.b, 3957i, _wgslsmith_div_i32(-16938i, global1.c)), _wgslsmith_div_i32(1i, -1i), 60993i), 1i), Struct_2(-(~firstLeadingBit(u_input.c))));
    let var_1 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60980u, 0u), global0[_wgslsmith_index_u32(0u, 25u)]))) << (~(~4294967295u) % 32u);
    global1 = Struct_1(-firstLeadingBit(26884i), abs(select(_wgslsmith_add_vec3_i32(global1.b, vec3<i32>(u_input.b, -2147483647i, -2147483647i)), global1.b, true) & countOneBits(firstLeadingBit(global1.b))), ~2147483647i, _wgslsmith_dot_vec2_i32(-global1.b.yx, u_input.c));
    global1 = Struct_1(countOneBits(-_wgslsmith_mod_i32(9291i, 1i)), vec3<i32>(-func_2().a.x, 409i, -select(global1.c, _wgslsmith_clamp_i32(2147483647i, -27276i, u_input.c.x), true)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(50517i, u_input.a), global1.c) ^ -19966i, abs(_wgslsmith_mult_i32(-2147483647i, -u_input.b)) | 1i);
    var var_2 = func_2();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = false;
    var_1 = select(all(vec4<bool>(any(select(vec4<bool>(false, false, true, var_0), vec4<bool>(false, false, true, false), var_0)), var_0, all(vec2<bool>(var_0, var_0)), var_0)), true, true);
    global2 = array<vec4<i32>, 20>();
    var var_2 = Struct_1(u_input.c.x, abs(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(3695i, u_input.a, -10847i) << (global0[_wgslsmith_index_u32(0u, 25u)] % vec3<u32>(32u))), vec3<i32>(_wgslsmith_clamp_i32(global1.d, 2147483647i, 13743i), global1.c | -8798i, -1i))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.a), select(33373i, global1.d, false), -u_input.a), vec3<i32>(global1.a, ~u_input.a, -2147483647i)), u_input.b);
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(func_1(), select(firstTrailingBit(1u), 1u, func_4(Struct_2(global1.b.xx), Struct_3(Struct_2(vec2<i32>(0i, global1.c)), vec4<bool>(true, true, false, var_0), 0u, Struct_1(var_2.c, var_2.b, -6443i, 2147483647i), 10379i), func_2()))), ~6930u);
    var var_4 = Struct_3(Struct_2(vec2<i32>(-global1.a, u_input.a)), vec4<bool>(!var_0, !any(vec4<bool>(false, var_0, var_0, var_0)), ~_wgslsmith_mod_u32(var_3.x, 10708u) <= 20224u, var_0), firstTrailingBit(13957u), Struct_1(global1.c, vec3<i32>(0i, firstLeadingBit(_wgslsmith_mod_i32(global1.a, 0i)), ~global1.c), 2147483647i, 2147483647i), global1.d);
    var var_5 = Struct_1(-firstTrailingBit(36248i), ((firstTrailingBit(var_2.b) << ((vec3<u32>(var_3.x, var_4.c, var_3.x) >> (vec3<u32>(4294967295u, var_3.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_4.c, var_3.x), firstLeadingBit(vec3<u32>(19920u, var_4.c, 38126u))) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(min(vec3<i32>(global1.c, 0i, 1i), var_4.d.b) << (~global0[_wgslsmith_index_u32(62245u, 25u)] % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a.a.x, -30080i, var_2.c), var_2.b)), 1i, _wgslsmith_div_i32(max(-31971i, min(-29921i, _wgslsmith_mod_i32(global1.d, 33675i))), global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(1i, i32(-1i) * -41659i) << (reverseBits(max(vec2<u32>(90679u, var_3.x), vec2<u32>(52660u, 4294967295u))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(-u_input.c, abs(u_input.c))), 1f);
}

