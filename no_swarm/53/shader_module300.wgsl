struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<u32, 24>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(-1i, 26396i, -10855i), true, vec2<f32>(-810f, 447f), vec2<u32>(54590u, 3556u)), Struct_1(vec3<i32>(673i, 1i, 26148i), true, vec2<f32>(1188f, -294f), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<i32>(0i, 48530i, 18995i), false, vec2<f32>(852f, 1000f), vec2<u32>(17915u, 0u)), Struct_1(vec3<i32>(24285i, 1i, -185i), false, vec2<f32>(370f, 353f), vec2<u32>(33530u, 145787u)), Struct_1(vec3<i32>(35056i, -1i, 2147483647i), true, vec2<f32>(180f, -941f), vec2<u32>(41933u, 39168u)), Struct_1(vec3<i32>(72578i, 22990i, 0i), false, vec2<f32>(676f, -2727f), vec2<u32>(53843u, 4294967295u)), Struct_1(vec3<i32>(34583i, 0i, 2346i), true, vec2<f32>(517f, 1550f), vec2<u32>(12660u, 42268u)), Struct_1(vec3<i32>(2147483647i, -43223i, i32(-2147483648)), false, vec2<f32>(-443f, -2329f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(1i, 17526i, i32(-2147483648)), false, vec2<f32>(-2146f, 1452f), vec2<u32>(0u, 0u)), Struct_1(vec3<i32>(33265i, 33040i, 22625i), false, vec2<f32>(226f, -1091f), vec2<u32>(52116u, 1280u)), Struct_1(vec3<i32>(1i, 0i, -1i), false, vec2<f32>(-813f, -451f), vec2<u32>(85596u, 1u)), Struct_1(vec3<i32>(1i, -11366i, -1i), true, vec2<f32>(883f, -514f), vec2<u32>(76430u, 13924u)), Struct_1(vec3<i32>(37553i, 8619i, 2147483647i), false, vec2<f32>(-904f, -1346f), vec2<u32>(1u, 0u)), Struct_1(vec3<i32>(-7726i, 22125i, 0i), true, vec2<f32>(226f, -487f), vec2<u32>(3661u, 46180u)), Struct_1(vec3<i32>(9838i, 12741i, -1i), false, vec2<f32>(-1000f, -1996f), vec2<u32>(36929u, 0u)), Struct_1(vec3<i32>(0i, -1i, -22760i), true, vec2<f32>(1116f, -509f), vec2<u32>(0u, 0u)), Struct_1(vec3<i32>(-48074i, -47169i, 2147483647i), false, vec2<f32>(562f, 2993f), vec2<u32>(0u, 31175u)), Struct_1(vec3<i32>(-8926i, -50562i, -40552i), false, vec2<f32>(-1022f, 671f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<i32>(-41400i, 8249i, -1i), false, vec2<f32>(1000f, 1000f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<i32>(-89834i, -1i, 2147483647i), true, vec2<f32>(-600f, 331f), vec2<u32>(42673u, 0u)), Struct_1(vec3<i32>(-1i, 42926i, i32(-2147483648)), true, vec2<f32>(-166f, -971f), vec2<u32>(1u, 0u)), Struct_1(vec3<i32>(-1036i, 36232i, -30893i), false, vec2<f32>(171f, 2540f), vec2<u32>(4294967295u, 17892u)), Struct_1(vec3<i32>(0i, -3805i, i32(-2147483648)), true, vec2<f32>(448f, 2163f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(-3585i, i32(-2147483648), -1i), true, vec2<f32>(-542f, -1000f), vec2<u32>(36744u, 14459u)), Struct_1(vec3<i32>(-1i, -2578i, -76544i), false, vec2<f32>(-1566f, -1000f), vec2<u32>(34793u, 47895u)), Struct_1(vec3<i32>(14990i, i32(-2147483648), 22011i), true, vec2<f32>(1000f, -369f), vec2<u32>(13100u, 0u)), Struct_1(vec3<i32>(-899i, -25292i, -13990i), true, vec2<f32>(1519f, 1077f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<i32>(4000i, 0i, 2518i), false, vec2<f32>(152f, -963f), vec2<u32>(39490u, 4294967295u)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = false;
    global2 = array<u32, 24>();
    global1 = array<Struct_2, 32>();
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, min(~u_input.e, ~u_input.e)), _wgslsmith_add_u32(46398u, 1u)));
    let var_2 = global1[_wgslsmith_index_u32(~countOneBits(u_input.e.x), 32u)];
    return var_0;
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(28573i, -20993i, -35066i), vec3<i32>(arg_0, arg_0, arg_0)) << (~vec3<u32>(u_input.c, 1u, 40752u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, 23990i, 43139i), vec3<i32>(-4907i, 2147483647i, -1i))), -countOneBits(vec3<i32>(-2643i, 24756i, 19490i)) | vec3<i32>(_wgslsmith_mod_i32(arg_0, arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, -8176i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 17829i), vec2<i32>(-1i, 0i)))), !any(vec3<bool>(true, true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], 396f) * vec2<f32>(900f, global0[_wgslsmith_index_u32(1770u, 18u)])), vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5588u, 24u)], 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(937f, global0[_wgslsmith_index_u32(42413u, 18u)]) * vec2<f32>(1887f, -1133f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 18u)])))))), vec2<u32>(50316u >> (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, u_input.c), 24u)], 4294967295u) % 32u), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.e.x), select(1u, 0u, false))));
    let var_1 = global1[_wgslsmith_index_u32(62473u, 32u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 18u)] - global0[_wgslsmith_index_u32(27998u, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * 485f) + _wgslsmith_f_op_f32(1201f + 952f)))));
    let var_3 = arg_0;
    let var_4 = var_0.a.x;
    return var_0.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = vec3<bool>(any(!vec3<bool>(true, func_2(), true)), func_3(2147483647i), true);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_sub_u32(min(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37663u, 24u)], 24u)], 24u)], _wgslsmith_clamp_u32(0u, 76258u, 1u)), ~global2[_wgslsmith_index_u32(u_input.b, 24u)] >> (_wgslsmith_mod_u32(1u, 1u) % 32u)) >> (_wgslsmith_div_u32(9040u, ~(~u_input.e.x)) % 32u)), 32u)];
    let var_2 = u_input.e.zz;
    global0 = array<f32, 18>();
    global1 = array<Struct_2, 32>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -15512i;
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    var_0 = select(1i, ~(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 18u)], -2705f, -960f)), _wgslsmith_div_f32(-843f, 507f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 24u)], 18u)])) | -1i), select(true, select(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))), !all(vec3<bool>(false, false, true)), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]) >= min(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17052u, 24u)], 24u)])), true));
    var var_1 = -min(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-10660i, 0i)), ~vec2<i32>(30089i, 17019i)), min(vec2<i32>(-2147483647i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 29317i), vec2<i32>(-24905i, 0i)))), min(countOneBits(-vec2<i32>(-42684i, -34675i)), firstLeadingBit(~vec2<i32>(32128i, -51475i))));
    global1 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], -572f, global0[_wgslsmith_index_u32(1u, 18u)], 1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 18u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], -2651f))), vec4<bool>(true, true, false, false))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(15576u, 18u)], global0[_wgslsmith_index_u32(48168u, 18u)]))))), _wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], 24u)], 18u)], global0[_wgslsmith_index_u32(1u, 18u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(348f, -1553f, global0[_wgslsmith_index_u32(0u, 18u)]) * vec3<f32>(157f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12651u, 24u)], 18u)], 1479f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(895f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 18u)], global0[_wgslsmith_index_u32(1u, 18u)]))))));
}

