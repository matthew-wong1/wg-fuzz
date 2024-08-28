struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(30631u, 4294967295u, 1u, 76443u), vec4<u32>(0u, 9937u, 37346u, 26544u), vec4<u32>(0u, 34876u, 0u, 0u), vec4<u32>(31011u, 12032u, 4294967295u, 32488u), vec4<u32>(29609u, 4294967295u, 5745u, 43509u), vec4<u32>(31918u, 34273u, 4294967295u, 0u), vec4<u32>(1u, 0u, 54385u, 60850u), vec4<u32>(33570u, 1u, 7792u, 2003u), vec4<u32>(4294967295u, 0u, 29606u, 1u), vec4<u32>(1u, 67789u, 0u, 17551u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(0u, 0u, 3923u, 44909u), vec4<u32>(1u, 4294967295u, 62217u, 33652u), vec4<u32>(3811u, 12872u, 4294967295u, 65949u), vec4<u32>(32062u, 10963u, 6059u, 19205u), vec4<u32>(3921u, 1u, 4294967295u, 22288u), vec4<u32>(63294u, 523u, 28825u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u));

var<private> global1: array<i32, 1> = array<i32, 1>(14426i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = 20039i;
    let var_1 = Struct_4(min(u_input.c ^ (u_input.c | vec3<i32>(-1i, 1i, arg_0.a)), u_input.c) << (~reverseBits(u_input.b.xwz) % vec3<u32>(32u)), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1281f, 1811f)))))), Struct_2(true, 20855i));
    var var_2 = Struct_4(abs(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(37701u, u_input.b.x, 0u), u_input.b.xxy) % 32u), 1u)], _wgslsmith_add_i32(-2147483647i, ~global1[_wgslsmith_index_u32(0u, 1u)]), 0i)), Struct_1(2147483647i), _wgslsmith_f_op_vec2_f32(-var_1.c), var_1.d);
    let var_3 = _wgslsmith_sub_u32(~(~firstLeadingBit(1u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(select(u_input.d, 42352u, arg_2.x), ~7605u), 4294967295u)) > u_input.a;
    let var_4 = !vec2<bool>(all(select(vec3<bool>(var_1.d.a, var_1.d.a, false), arg_2, !vec3<bool>(true, arg_2.x, var_1.d.a))), true);
    return countOneBits(0u & ~u_input.b.x);
}

fn func_2() -> bool {
    global0 = array<vec4<u32>, 18>();
    let var_0 = Struct_2(!(((4294967295u ^ u_input.d) << ((u_input.b.x << (u_input.b.x % 32u)) % 32u)) >= _wgslsmith_div_u32(~u_input.a, func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<f32>(-1265f, 558f, 687f, 364f), vec3<bool>(false, false, false)))), 691i);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -196f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -140f))) + -1000f))));
    var var_2 = Struct_1(var_0.b);
    var_2 = Struct_1(min(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 1i), vec4<i32>(1i, 11320i, -1i, 19113i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 29566i, 0i), u_input.c)), -abs(var_0.b)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = select(any(select(select(vec2<bool>(true, arg_1.d.a), select(vec2<bool>(false, arg_1.d.a), vec2<bool>(true, arg_0), vec2<bool>(true, true)), true), !select(vec2<bool>(arg_1.d.a, arg_1.d.a), vec2<bool>(arg_0, true), vec2<bool>(arg_1.d.a, arg_1.d.a)), u_input.a >= _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]))), true, !arg_1.d.a | true);
    global0 = array<vec4<u32>, 18>();
    global1 = array<i32, 1>();
    var var_1 = all(vec3<bool>(!all(!vec2<bool>(arg_0, arg_1.d.a)), var_0, var_0));
    var_1 = any(select(!(!select(vec2<bool>(arg_0, false), vec2<bool>(var_0, true), vec2<bool>(true, true))), select(!vec2<bool>(arg_1.d.a, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(var_0, var_0), all(vec3<bool>(true, true, false))), select(!vec2<bool>(arg_1.d.a, false), select(vec2<bool>(true, true), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), !vec2<bool>(arg_1.d.a, true))), !select(select(vec2<bool>(var_0, false), vec2<bool>(arg_1.d.a, arg_1.d.a), vec2<bool>(false, false)), !vec2<bool>(false, var_0), arg_1.c.x > arg_1.c.x)));
    return !select(select(!(!vec4<bool>(arg_1.d.a, var_0, true, false)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(var_0, true, true, false)), vec4<bool>(arg_1.d.a, false, true, true)), select(select(!vec4<bool>(false, true, var_0, true), select(vec4<bool>(false, arg_0, false, true), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, arg_0, var_0)), select(vec4<bool>(arg_1.d.a, var_0, false, true), vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, var_0, var_0, var_0))), select(!vec4<bool>(arg_0, true, true, arg_1.d.a), !vec4<bool>(var_0, arg_0, var_0, var_0), true), !arg_0), any(vec4<bool>(select(var_0, true, var_0), false, true | var_0, false)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.c.x);
    var var_1 = !select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true), func_4(func_2(), Struct_4(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 1u)], 27774i, -5664i), Struct_1(-1i), vec2<f32>(-1418f, -731f), Struct_2(true, 2147483647i))), true), !func_4(false, Struct_4(u_input.c, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec2<f32>(317f, 286f), Struct_2(true, var_0.a))), vec4<bool>(all(func_4(true, Struct_4(u_input.c, Struct_1(u_input.c.x), vec2<f32>(557f, -1086f), Struct_2(false, var_0.a))).www), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), 70391u >= u_input.a, all(vec3<bool>(false, true, true))));
    var var_2 = _wgslsmith_mult_i32(max(-41597i, ~var_0.a), ~_wgslsmith_dot_vec4_i32(~select(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 1u)], 0i, 29511i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(14443u, 1u)], 0i, -1i, var_0.a), var_1.x), countOneBits(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.c.x, u_input.c.x, 53664i))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-241f)), _wgslsmith_f_op_f32(abs(603f))));
    let var_4 = var_0;
    return Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(7913i, 0i, 0i, 41052i)), vec4<i32>(15721i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, var_4.a), ~vec4<i32>(-1798i, -1i, 1i, 2147483647i)), 2147483647i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    let var_0 = Struct_4(arg_2.xwz, func_1(), arg_1.yx, Struct_2(false, _wgslsmith_clamp_i32(-25499i, ~4545i, _wgslsmith_div_i32(-1338i, global1[_wgslsmith_index_u32(24022u, 1u)])) & 2147483647i));
    var var_1 = 44246u;
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    let var_1 = -17910i;
    let var_2 = func_5(func_1(), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2577f)) * 1101f) + _wgslsmith_f_op_f32(floor(1657f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)))), _wgslsmith_f_op_f32(round(-1573f)), -1027f), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], ~2147483647i), -1i, 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -10162i, 7122i, -2147483647i), vec4<i32>(2147483647i, 36990i, 2147483647i, var_1))), -select(~vec4<i32>(-862i, 2147483647i, -20490i, global1[_wgslsmith_index_u32(u_input.d, 1u)]), abs(vec4<i32>(0i, u_input.c.x, 35401i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), func_4(true, Struct_4(vec3<i32>(var_0.x, 1i, -2147483647i), Struct_1(u_input.c.x), vec2<f32>(-171f, 1000f), Struct_2(false, var_1))))), u_input.b.x);
    var var_3 = abs(abs(u_input.b.wwz) ^ vec3<u32>(~countOneBits(var_2), var_2 ^ min(8219u, u_input.d), 1u));
    var_0 = vec3<i32>(u_input.c.x, var_1, -16377i);
    let var_4 = select(-reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(~var_2, 1u)], i32(-1i) * -22502i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -74757i, 0i), u_input.c))), -countOneBits(u_input.c), vec3<bool>(true, !select(true, true, true), true));
    let var_5 = !(min(-2147483647i, -64035i) != -(1905i | var_1)) & true;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, 409f, -1661f, -265f))))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.c.x, -22756i, 1i, var_1), vec4<i32>(58223i, var_4.x, var_1, 27467i)), vec4<i32>(36798i, var_4.x, var_1, -7454i) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1, 0i, 2147483647i), vec4<i32>(1i, -2147483647i, 2147483647i, -59905i)), vec4<i32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(35327u, 1u)], var_4.x, -84753i))), 0u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -743f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-277f)), _wgslsmith_f_op_f32(floor(-410f)))))), u_input.b.xwz, max(var_4.x, var_0.x));
}

