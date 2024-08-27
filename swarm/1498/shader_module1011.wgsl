struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, false, false, false, false, true, false, true, false, true, false, true, true, false, true, true, true, true);

var<private> global2: vec4<i32> = vec4<i32>(0i, -42647i, 2147483647i, -1i);

var<private> global3: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = 1u;
    var var_1 = Struct_2(false, global2.x, ~1i);
    global2 = -_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.b, u_input.b, var_1.c, var_1.b) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, var_1.b, 50808i, var_1.b), vec4<i32>(global2.x, var_1.b, -1i, var_1.c))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(global2.x, u_input.b, -2147483647i, u_input.a.x) ^ vec4<i32>(global2.x, u_input.b, u_input.b, 23408i)), firstLeadingBit(vec4<i32>(u_input.a.x, var_1.c, -19190i, 29807i)), -(vec4<i32>(global2.x, 42901i, -3903i, var_1.c) & vec4<i32>(-45677i, global2.x, u_input.b, global2.x))));
    var var_2 = select(select(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 20u)], var_1.a, true, true), vec4<bool>(true, true, false, var_1.a), false), !vec4<bool>(global1[_wgslsmith_index_u32(33658u, 20u)], var_1.a, var_1.a, true), vec4<bool>(false, false, var_1.a, false)), select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_0, 20u)], var_1.a), vec4<bool>(var_1.a, false, global1[_wgslsmith_index_u32(var_0, 20u)], false), false), vec4<bool>(false, global1[_wgslsmith_index_u32(4892u, 20u)], var_1.a, var_1.a), true), vec4<bool>(any(vec2<bool>(var_1.a, global1[_wgslsmith_index_u32(4294967295u, 20u)])), global1[_wgslsmith_index_u32(0u, 20u)], var_1.c == u_input.b, !global1[_wgslsmith_index_u32(0u, 20u)])), vec4<bool>(true, !(!global1[_wgslsmith_index_u32(var_0, 20u)]), var_1.a, true), select(select(!vec4<bool>(var_1.a, false, global1[_wgslsmith_index_u32(var_0, 20u)], global1[_wgslsmith_index_u32(35320u, 20u)]), vec4<bool>(true, false, false, var_1.a), var_1.a), vec4<bool>(!global1[_wgslsmith_index_u32(0u, 20u)], var_1.a, all(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)])), true), false)), vec4<bool>((global2.x <= -26071i) || false, all(select(select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, global1[_wgslsmith_index_u32(35148u, 20u)], true), false), select(vec3<bool>(true, var_1.a, global1[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(var_1.a, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0, 20u)], true)), vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], false))), global1[_wgslsmith_index_u32(~var_0, 20u)], false), true);
    global2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global2.yx, vec2<i32>(61723i, u_input.a.x)), ~var_1.c, reverseBits(u_input.b), var_1.b), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_1.c, global2.x, u_input.a.x), vec4<i32>(global2.x, -1i, -46790i, 12547i)), max(vec4<i32>(global2.x, -37401i, 2147483647i, -22480i), vec4<i32>(171i, u_input.a.x, var_1.c, 2147483647i)))), firstTrailingBit(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<i32>(global2.x, -1i, -5382i, u_input.b)))));
    return -41034i;
}

fn func_4(arg_0: Struct_2) -> bool {
    global2 = min(firstLeadingBit(select(vec4<i32>(arg_0.c, -39697i, arg_0.c, -31221i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, arg_0.b, global2.x), vec4<i32>(u_input.b, -26317i, 2147483647i, global2.x)), select(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], true))) << (~vec4<u32>(~31835u, ~3406u, 67014u, ~1u) % vec4<u32>(32u)), -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(8019i, 11761i, global2.x, global2.x), vec4<i32>(18546i, global2.x, -9907i, global2.x)))));
    let var_0 = ~(vec3<i32>(abs(~arg_0.c), 0i, -global2.x) ^ firstLeadingBit(abs(global2.yyx << (vec3<u32>(10178u, 62199u, 3299u) % vec3<u32>(32u)))));
    var var_1 = -871f;
    let var_2 = Struct_2(-arg_0.c <= (reverseBits(-arg_0.b) >> (~_wgslsmith_mod_u32(4294967295u, 28884u) % 32u)), ~_wgslsmith_add_i32(-(i32(-1i) * -44887i), abs(1i)), u_input.b);
    global2 = vec4<i32>(-_wgslsmith_add_i32(1i, _wgslsmith_add_i32(-9528i, abs(arg_0.c))), var_0.x, _wgslsmith_dot_vec3_i32(var_0, global2.wxz), _wgslsmith_div_i32(-(~(var_2.b ^ 1i)), 0i));
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global0 = -(~1i) >> ((select(arg_1, ~arg_1, false) << (max(firstTrailingBit(22094u), _wgslsmith_mult_u32(arg_1, firstTrailingBit(1u))) % 32u)) % 32u);
    global1 = array<bool, 20>();
    var var_0 = abs(1u) << (0u % 32u);
    var var_1 = select(!(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 20u)], arg_0.b)))), vec2<bool>(func_4(Struct_2(true, func_3(), -36929i)), false), select(vec2<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(arg_1), 20u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u ^ _wgslsmith_mult_u32(arg_1, arg_1), 20u)], func_4(Struct_2(global1[_wgslsmith_index_u32(1u, 20u)], global2.x, global2.x))), vec2<bool>(false, ~20628u == _wgslsmith_add_u32(arg_1, 30915u))));
    var var_2 = 4294967295u >= ((_wgslsmith_add_u32(arg_1, arg_1) >> (_wgslsmith_add_u32(6473u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_1, 1u))) % 32u)) ^ 31027u);
    return !(!select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(14682u, 20u)], true, global1[_wgslsmith_index_u32(arg_1, 20u)]), vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, false, var_1.x, global1[_wgslsmith_index_u32(arg_1, 20u)])), select(vec4<bool>(var_1.x, false, true, global1[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(false, arg_0.a, arg_0.b, true), vec4<bool>(arg_0.a, arg_0.a, true, global1[_wgslsmith_index_u32(arg_1, 20u)])), select(false, global1[_wgslsmith_index_u32(arg_1, 20u)], false)), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, false, false), 1u <= arg_1), (arg_1 >> (arg_1 % 32u)) > 38886u));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1835f, arg_0) - _wgslsmith_f_op_f32(107f + arg_0)))) < arg_0;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(33684u, 20u)], u_input.a.x, -9991i);
    var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_add_u32(42373u, 208u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(7708u, 0u, 15892u, 28809u))) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 1u), abs(7169u)), 41021u), 20u)], _wgslsmith_add_i32(~1i, _wgslsmith_add_i32(var_1.c, var_1.c)), 1i >> (1u % 32u));
    global2 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-40802i, _wgslsmith_mod_i32(var_1.b, -u_input.a.x), u_input.b, ~firstLeadingBit(global2.x)), abs(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.b, var_1.c, global2.x))), -(~vec4<i32>(0i, var_1.b, abs(global2.x), global2.x >> (1u % 32u))));
    let var_2 = Struct_1(any(!select(!vec4<bool>(global1[_wgslsmith_index_u32(45812u, 20u)], false, false, true), func_2(Struct_1(true, global1[_wgslsmith_index_u32(4726u, 20u)]), 23756u), vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], false, false))), true);
    return Struct_1(false, func_4(Struct_2(false, 24098i, _wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(u_input.a.x, var_1.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = -1486f;
    global0 = 7465i >> (_wgslsmith_clamp_u32(abs(2079u), ~1u, select(4294967295u, ~4606u >> (reverseBits(0u) % 32u), arg_0.a)) % 32u);
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    var var_1 = abs(73676u);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(74827u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 4351u), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], false)), vec3<u32>(abs(21195u), 1u, 0u)), ~1u), 20u)], func_5(Struct_2(true, u_input.a.x, -42343i), func_1(1f, _wgslsmith_f_op_f32(438f + _wgslsmith_div_f32(-1000f, 717f)))), select(-1i, 1i, global1[_wgslsmith_index_u32(0u, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~min(4294967295u, ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, -326f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -416f)))))) - vec2<f32>(_wgslsmith_f_op_f32(abs(-414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f - 1917f)))), _wgslsmith_div_vec3_i32(-(~global2.yzz << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), select(vec3<i32>(-10700i, var_0.b, u_input.a.x), vec3<i32>(global2.x, var_0.b, 6912i) << (vec3<u32>(0u, 60557u, 48651u) % vec3<u32>(32u)), !var_0.a) & vec3<i32>(max(global2.x, -2147483647i), -38960i ^ global2.x, _wgslsmith_clamp_i32(u_input.b, global2.x, var_0.b))), vec4<u32>(1u, 1u, 1u, 1u));
}

