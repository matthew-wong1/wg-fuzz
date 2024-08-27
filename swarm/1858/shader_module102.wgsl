struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(520f, 227f, 214f, -809f, -925f, 912f, 1771f);

var<private> global1: u32;

var<private> global2: Struct_4 = Struct_4(25723u, vec3<bool>(true, true, true), 2147483647i, Struct_2(44985u, vec4<f32>(763f, 1058f, -759f, -1338f), 73255u, vec2<u32>(6387u, 91760u)));

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

var<private> global4: array<bool, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = -8396i;
    global1 = 1u;
    global0 = array<f32, 7>();
    global4 = array<bool, 27>();
    var var_1 = var_0;
    return global2.b;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<f32, 7>();
    let var_0 = Struct_4(37400u | u_input.c.x, !(!vec3<bool>(all(vec4<bool>(global2.b.x, global4[_wgslsmith_index_u32(72193u, 27u)], true, global2.b.x)), !global4[_wgslsmith_index_u32(global2.d.c, 27u)], global4[_wgslsmith_index_u32(25544u, 27u)] == false)), 1i, global2.d);
    global3 = !func_3();
    let var_1 = -506f;
    global4 = array<bool, 27>();
    return Struct_2(~(~(~var_0.a)), vec4<f32>(1535f, -609f, arg_0.x, _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.d.a >> (53780u % 32u), ~0u), global2.a) | var_0.d.c, select(~u_input.c.zx, min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.d.x, 53466u), vec2<u32>(1u, 31404u)), ~(u_input.a.yx ^ var_0.d.d)), all(func_3())));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    let var_0 = firstLeadingBit(1i);
    return Struct_4(_wgslsmith_div_u32(10440u, global2.a), func_3(), -1i, Struct_2(_wgslsmith_div_u32(1u | min(u_input.a.x, 4555u), 4294967295u), global2.d.b, 4294967295u, vec2<u32>(_wgslsmith_div_u32(0u, u_input.a.x) | 1u, countOneBits(u_input.c.x))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    global0 = array<f32, 7>();
    global1 = ~_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_clamp_vec3_u32(firstLeadingBit(min(vec3<u32>(43863u, global2.d.d.x, 46339u), vec3<u32>(15779u, global2.d.c, 0u))), u_input.c, _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)));
    var var_0 = Struct_2(59506u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d.b - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(665f, -1230f, 918f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))))) - arg_0.d.b), global2.d.c, global2.d.d);
    var var_1 = func_2(global2.d.b.zyx);
    var var_2 = _wgslsmith_f_op_f32(min(-738f, _wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -474f))) * arg_3.d.b.x))));
    return -(~arg_0.c << (abs(min(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_clamp_u32(var_0.c, arg_3.a, global2.a))) % 32u));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = func_5(func_4(Struct_1(u_input.b.x, global2.d.b.x), Struct_1(~global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f + 1419f))), Struct_3(func_2(global2.d.b.zwy), 1f, (vec3<i32>(-43513i, -54585i, -1i) ^ vec3<i32>(global2.c, global2.c, 2147483647i)) >> (vec3<u32>(global2.d.a, global2.d.d.x, u_input.c.x) % vec3<u32>(32u)), global2.d, arg_0), Struct_4(~reverseBits(u_input.c.x), !(!vec3<bool>(false, arg_0.x, global3.x)), countOneBits(1i), global2.d)), (_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global2.c), u_input.b, vec2<i32>(global2.c, u_input.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 3257i), u_input.b, vec2<i32>(-1i, global2.c))) & u_input.b.x) <= -6025i, Struct_1(~select(u_input.b.x, global2.c, false) | _wgslsmith_div_i32(-u_input.b.x, ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-434f - -422f))), Struct_4(global2.d.a, select(arg_0.zzy, vec3<bool>(true, any(arg_0), all(vec2<bool>(false, false))), global4[_wgslsmith_index_u32(abs(u_input.c.x), 27u)]), global2.c, global2.d));
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global2.a, 12308u)), u_input.a.yx), _wgslsmith_mult_u32(0u, ~4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.d.b - global2.d.b) + vec4<f32>(-1356f, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 330f, global2.d.b.x))), 0u, ~(~u_input.a.xx)), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.c.x, global2.d.a)), 7u)], vec3<i32>(~(-29938i), ~(~u_input.b.x), -2147483647i), global2.d, !select(!vec4<bool>(false, arg_0.x, false, true), !(!arg_0), any(global3.zz)));
    let var_3 = func_4(Struct_1(~var_2.c.x, 1209f), Struct_1(_wgslsmith_add_i32(1i, var_2.c.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(87779u, global2.d.c), 7u)]), Struct_3(func_4(Struct_1(abs(var_2.c.x), _wgslsmith_f_op_f32(-1130f + global2.d.b.x)), Struct_1(var_2.c.x | 7960i, -1962f), var_2, func_4(Struct_1(u_input.b.x, 121f), Struct_1(18246i, global2.d.b.x), Struct_3(Struct_2(4294967295u, var_2.d.b, var_2.a.c, vec2<u32>(var_2.a.d.x, var_2.a.d.x)), 1543f, vec3<i32>(0i, 28192i, var_0), Struct_2(1u, var_2.d.b, u_input.a.x, u_input.a.yz), vec4<bool>(var_2.e.x, global2.b.x, true, global3.x)), func_4(Struct_1(-38039i, global0[_wgslsmith_index_u32(15742u, 7u)]), Struct_1(var_2.c.x, var_2.b), var_2, Struct_4(0u, vec3<bool>(false, arg_0.x, global3.x), 0i, Struct_2(var_2.a.d.x, vec4<f32>(1812f, 528f, 326f, -213f), 19524u, vec2<u32>(global2.d.c, 4294967295u)))))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec3<f32>(1695f, global2.d.b.x, -459f)).b.x)), _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(var_2.c, var_2.c), var_2.c), vec3<i32>(u_input.b.x, global2.c, -2147483647i & var_2.c.x)), func_4(Struct_1(u_input.b.x ^ 0i, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(53369u, 7u)], global0[_wgslsmith_index_u32(var_2.d.c, 7u)])), Struct_1(var_0, 247f), var_2, Struct_4(13795u, !var_2.e.yxx, _wgslsmith_mod_i32(var_0, -1i), func_4(Struct_1(var_2.c.x, global2.d.b.x), Struct_1(global2.c, 460f), var_2, Struct_4(u_input.a.x, vec3<bool>(global4[_wgslsmith_index_u32(var_2.d.c, 27u)], false, arg_0.x), global2.c, Struct_2(global2.d.d.x, vec4<f32>(var_2.d.b.x, 1379f, global0[_wgslsmith_index_u32(global2.a, 7u)], 251f), global2.a, vec2<u32>(u_input.a.x, u_input.c.x)))).d)).d, select(vec4<bool>(!global4[_wgslsmith_index_u32(4498u, 27u)], false, false, arg_0.x), !var_2.e, select(vec4<bool>(global2.b.x, false, global2.b.x, false), !var_2.e, true))), Struct_4(4294967295u, select(vec3<bool>(true, select(false, var_2.e.x, var_2.e.x), true), vec3<bool>(var_2.e.x, false, func_3().x), !all(vec2<bool>(global4[_wgslsmith_index_u32(25337u, 27u)], global3.x))), (-34192i | _wgslsmith_clamp_i32(-2147483647i, var_2.c.x, 0i)) ^ min(u_input.b.x, -1000i ^ global2.c), func_4(Struct_1(-18716i, _wgslsmith_f_op_f32(var_2.a.b.x * global0[_wgslsmith_index_u32(global2.a, 7u)])), Struct_1(global2.c, 1420f), var_2, Struct_4(1u, global2.b, _wgslsmith_mult_i32(var_2.c.x, -1i), var_2.d)).d));
    var var_4 = 60652u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(26107u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2.d.b + global2.d.b), vec4<f32>(_wgslsmith_div_f32(global2.d.b.x, -941f), global0[_wgslsmith_index_u32(abs(global2.a), 7u)], global2.d.b.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.d.d.x, 7u)]))))), u_input.c.x, vec2<u32>(global2.a & u_input.c.x, abs(global2.a)));
    global1 = global2.a;
    let var_1 = 1128f;
    global1 = max(max(select(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global2.d.c), func_1(vec4<bool>(global4[_wgslsmith_index_u32(13046u, 27u)], true, false, false))) >> (1u % 32u), 8569u), _wgslsmith_mod_u32(firstLeadingBit(global2.a), 4294967295u & u_input.a.x) | 1u);
    global4 = array<bool, 27>();
    let var_2 = Struct_3(func_4(Struct_1(select(abs(u_input.b.x), 2147483647i, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(679f + -404f)))), Struct_1(func_5(func_4(Struct_1(0i, -1536f), Struct_1(-1i, 945f), Struct_3(Struct_2(global2.a, global2.d.b, global2.a, vec2<u32>(4294967295u, var_0.c)), global0[_wgslsmith_index_u32(0u, 7u)], vec3<i32>(u_input.b.x, 14183i, u_input.b.x), Struct_2(37078u, var_0.b, global2.a, global2.d.d), vec4<bool>(global3.x, true, true, false)), Struct_4(var_0.d.x, vec3<bool>(false, true, global3.x), global2.c, global2.d)), any(global2.b.yy), Struct_1(u_input.b.x, -190f), Struct_4(155126u, vec3<bool>(true, global3.x, true), 53576i, global2.d)), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(step(var_0.b.x, global2.d.b.x)), true))), Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(5556u, 7u)], 929f, -1593f))), global2.d.b.x, vec3<i32>(-u_input.b.x, 2147483647i, -30425i), Struct_2(~var_0.a, _wgslsmith_f_op_vec4_f32(global2.d.b * vec4<f32>(var_0.b.x, 285f, -257f, var_0.b.x)), ~global2.d.a, func_2(var_0.b.zwz).d), vec4<bool>(true, false, !global3.x, true)), Struct_4(u_input.a.x, vec3<bool>(select(global4[_wgslsmith_index_u32(u_input.a.x, 27u)], global3.x, global3.x), true, all(global2.b)), ~u_input.b.x, global2.d)).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(54444u, 7u)])))), -firstLeadingBit(~(-vec3<i32>(u_input.b.x, -1i, 2147483647i))), global2.d, vec4<bool>(all(vec4<bool>(global2.b.x, global2.b.x, global3.x, global2.b.x)), true, false, !global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(7204i), func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(353f, -1125f), _wgslsmith_f_op_f32(-103f - -1141f))), _wgslsmith_div_f32(global2.d.b.x, _wgslsmith_f_op_f32(-582f * var_1)))).a, abs(func_4(Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(step(-1044f, 456f))), Struct_1(global2.c, -2057f), Struct_3(func_2(var_2.a.b.xxz), _wgslsmith_f_op_f32(-var_1), var_2.c ^ var_2.c, Struct_2(global2.a, vec4<f32>(465f, -3211f, var_1, var_2.b), u_input.a.x, global2.d.d), vec4<bool>(var_2.e.x, true, true, false)), func_4(Struct_1(-16057i, 815f), Struct_1(u_input.b.x, var_2.d.b.x), var_2, Struct_4(var_0.a, vec3<bool>(false, false, true), u_input.b.x, global2.d))).d.d), firstTrailingBit(1i));
}

