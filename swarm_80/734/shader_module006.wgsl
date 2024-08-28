struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(15875u, 12537u), vec2<u32>(1u, 0u), vec2<u32>(0u, 58516u), vec2<u32>(13963u, 10708u), vec2<u32>(0u, 10993u), vec2<u32>(18691u, 119140u), vec2<u32>(4294967295u, 24986u), vec2<u32>(1u, 49856u), vec2<u32>(1u, 24501u), vec2<u32>(84072u, 52823u), vec2<u32>(1u, 95816u), vec2<u32>(21262u, 1u), vec2<u32>(4294967295u, 52576u), vec2<u32>(4294967295u, 1u), vec2<u32>(142502u, 1u), vec2<u32>(33665u, 7841u), vec2<u32>(4116u, 0u), vec2<u32>(69282u, 24122u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(37780u, 1u), vec2<u32>(33100u, 4294967295u), vec2<u32>(46584u, 59164u), vec2<u32>(0u, 1u), vec2<u32>(2378u, 64515u), vec2<u32>(4294967295u, 30491u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 70049u), vec2<u32>(1u, 24610u));

var<private> global1: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(29627i, i32(-2147483648), 1539i, 16742i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 56658i), vec4<i32>(-1503i, -4337i, -1i, i32(-2147483648)), vec4<i32>(-11372i, 2147483647i, 1533i, 0i), vec4<i32>(28291i, -26369i, i32(-2147483648), -14521i), vec4<i32>(1i, -1i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 1i, 22854i, 2147483647i), vec4<i32>(-13896i, 20419i, 15235i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2492i, 2035i), vec4<i32>(-24919i, 1i, 13235i, 4358i), vec4<i32>(19798i, -7036i, 46849i, 0i), vec4<i32>(25082i, 0i, 0i, 4245i), vec4<i32>(1069i, 0i, -1i, -1i), vec4<i32>(-1i, 2147483647i, 78197i, 2147483647i), vec4<i32>(48683i, 2147483647i, 1i, 3052i), vec4<i32>(i32(-2147483648), 11276i, 28012i, 29588i), vec4<i32>(-28351i, 2147483647i, -22006i, 0i), vec4<i32>(-12327i, 24600i, -27530i, -4306i), vec4<i32>(0i, 2147483647i, -34230i, -9508i), vec4<i32>(2147483647i, -23793i, -17975i, -19912i), vec4<i32>(3446i, 0i, i32(-2147483648), -41378i), vec4<i32>(1i, 2147483647i, -58490i, 1338i), vec4<i32>(2147483647i, 20576i, -30016i, 18728i), vec4<i32>(1i, i32(-2147483648), 26997i, -14172i));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    global0 = array<vec2<u32>, 29>();
    var var_0 = abs(min(~global1[_wgslsmith_index_u32(u_input.b, 24u)], vec4<i32>(-2147483647i, countOneBits(u_input.a), -38830i, u_input.a))) >> (max(vec4<u32>(_wgslsmith_mod_u32(79943u, 1u) ^ u_input.c, ~4294967295u, min(75641u, _wgslsmith_sub_u32(42439u, u_input.b)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.c, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 3906u, u_input.c, 32303u) ^ ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), ~(vec4<u32>(49644u, 1u, u_input.c, 1u) | vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 19918u, 4294967295u, u_input.b), vec4<u32>(80243u, 0u, 4294967295u, 20015u)))) % vec4<u32>(32u));
    var var_1 = Struct_4(Struct_2(all(select(vec4<bool>(arg_1.x, false, arg_1.x, global2.x), select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(true, global2.x, arg_1.x, false), global2.x), arg_1.x)), abs(u_input.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f - arg_2))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], vec2<u32>(u_input.c, u_input.b)), ~u_input.b), global0[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(100088u, 4294967295u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.c, 0u), vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c))), 29u)])), min(vec4<i32>(43644i, var_0.x, ~firstLeadingBit(4126i), ~u_input.a >> (34673u % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(u_input.b ^ 11316u), select(select(4294967295u, 9252u, false), u_input.c, select(true, true, arg_1.x))), 24u)]), vec4<bool>(false, arg_1.x, any(global2.yz), !any(!vec3<bool>(false, arg_1.x, global2.x))), -_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~(~0u), 24u)], global1[_wgslsmith_index_u32(1u, 24u)] << (vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c) % vec4<u32>(32u))), u_input.c);
    var var_2 = ~_wgslsmith_mult_vec3_u32(abs(~abs(vec3<u32>(u_input.c, u_input.c, 4294967295u))), ~vec3<u32>(53522u, u_input.c & 0u, ~u_input.c));
    var_1 = Struct_4(Struct_2(all(!(!var_1.c.www)), _wgslsmith_clamp_u32(1u, ~7336u, _wgslsmith_div_u32(51978u, var_2.x ^ var_1.e)), Struct_1(_wgslsmith_div_f32(var_1.a.c.a, _wgslsmith_f_op_f32(max(560f, 967f)))), countOneBits(vec2<u32>(var_1.a.b, var_1.a.b) ^ vec2<u32>(u_input.c, var_1.a.d.x))), select(vec4<i32>(var_0.x, var_1.d, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, -26393i, u_input.a), var_1.b.xwz)) << (~firstLeadingBit(vec4<u32>(1u, 20793u, u_input.b, var_2.x)) % vec4<u32>(32u)), firstLeadingBit(global1[_wgslsmith_index_u32(2697u, 24u)]), arg_1.x), var_1.c, _wgslsmith_mult_i32(1i, 1i), 0u);
    return var_1.a.d.x;
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    global2 = vec3<bool>(!global2.x, select(!global2.x, arg_0.a, true || !any(vec2<bool>(global2.x, arg_0.a))), _wgslsmith_f_op_f32(-arg_0.c.a) <= _wgslsmith_f_op_f32(-arg_0.c.a));
    let var_0 = _wgslsmith_mod_u32(abs(func_3(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, 0i), 0i), !global2.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * arg_0.c.a))), max(max(arg_0.b, u_input.c), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.x, 0u, arg_0.d.x, 1u), vec4<u32>(arg_0.b, arg_0.b, 65246u, u_input.c)), 29u)], vec2<u32>(0u, min(arg_0.b, arg_0.b)))));
    global2 = select(vec3<bool>(any(select(select(vec3<bool>(arg_0.a, global2.x, false), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(global2.x, true, false)), vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(global2.x, true, false), vec3<bool>(true, true, false), vec3<bool>(arg_0.a, false, arg_0.a)))), !(1i < (u_input.a >> (2868u % 32u))), any(vec2<bool>(!arg_0.a, false))), vec3<bool>(any(!select(vec4<bool>(arg_0.a, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, arg_0.a), vec4<bool>(true, false, arg_0.a, false))), true, !(!(arg_0.c.a > -1184f))), global2.x);
    var var_1 = Struct_4(Struct_2(all(global2.zx), select(0u, arg_0.d.x, global2.x), Struct_1(-1128f), ~arg_0.d), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, countOneBits(50863u)), 24u)], vec4<bool>(any(!select(vec4<bool>(false, false, false, global2.x), vec4<bool>(global2.x, true, arg_0.a, true), arg_0.a)), !arg_0.a, true, false), 0i, u_input.c << (var_0 % 32u));
    global0 = array<vec2<u32>, 29>();
    return Struct_5(var_1.b.yw);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: i32) -> Struct_4 {
    let var_0 = any(select(global2.xx, global2.zy, !(!select(global2.xy, global2.yx, false))));
    var var_1 = _wgslsmith_div_u32(u_input.b, ~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.c, 54548u, 1u)), min(~vec3<u32>(7117u, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 54375u, 9901u), vec3<u32>(u_input.b, 15061u, u_input.c)))));
    let var_2 = Struct_4(Struct_2(true, 34508u, Struct_1(_wgslsmith_f_op_f32(-332f * 1505f)), ~global0[_wgslsmith_index_u32(12719u, 29u)]), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.c, 24u)], ~firstLeadingBit(global1[_wgslsmith_index_u32(0u ^ u_input.b, 24u)])), select(select(select(vec4<bool>(var_0, false, true, true), vec4<bool>(global2.x, false, var_0, false), select(global2.x, true, global2.x)), vec4<bool>(var_0, all(vec3<bool>(true, false, var_0)), true, !global2.x), !select(vec4<bool>(var_0, var_0, true, global2.x), vec4<bool>(var_0, var_0, true, true), vec4<bool>(true, true, var_0, global2.x))), !vec4<bool>(!var_0, any(vec3<bool>(var_0, true, true)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true | global2.x, var_0, global2.x || true), !(u_input.c > 20537u))), func_2(Struct_2(false, 1u, Struct_1(_wgslsmith_f_op_f32(640f * 371f)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, 23030u, u_input.c), 29u)])).a.x, 49595u);
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, firstTrailingBit(var_2.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, 57428u, 5781u) & vec3<u32>(1u, 72693u, var_2.e), vec3<u32>(var_2.e, 50578u, var_2.e)) >> (129057u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~var_2.a.d, _wgslsmith_mod_vec2_u32(vec2<u32>(31889u, var_2.a.b), vec2<u32>(u_input.b, 4067u))), u_input.c)), vec4<u32>(_wgslsmith_div_u32(func_3(var_2.d, global2.zz, 186f), _wgslsmith_sub_u32(u_input.c, u_input.c)), 48113u, ~(var_2.e >> (u_input.c % 32u)), 23267u) | ((vec4<u32>(u_input.b, 4294967295u, u_input.b, 34127u) | ~vec4<u32>(u_input.c, var_2.e, 35251u, u_input.c)) & vec4<u32>(reverseBits(u_input.b), 1u, 1u, 12773u)));
    var var_3 = Struct_4(var_2.a, ~select(vec4<i32>(39039i, var_2.d << (67785u % 32u), u_input.a, -12827i), max(vec4<i32>(0i, -11055i, var_2.d, u_input.a) >> (vec4<u32>(var_2.e, var_2.a.b, 4294967295u, u_input.c) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(53223u, 24u)]), var_2.c), !select(vec4<bool>(var_2.a.a, true, false, false), vec4<bool>(var_2.a.a, var_2.d > var_2.b.x, -887f > var_2.a.c.a, var_0), true), -24578i, _wgslsmith_mult_u32(var_2.e, firstTrailingBit(~u_input.b)));
    return Struct_4(var_3.a, global1[_wgslsmith_index_u32(var_2.a.b, 24u)], select(!var_2.c, select(!select(vec4<bool>(var_2.c.x, var_3.c.x, var_0, var_2.a.a), var_2.c, var_3.c), var_2.c, var_0), false), 1i, abs(1u));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = false;
    let var_1 = _wgslsmith_div_f32(-272f, -738f);
    global1 = array<vec4<i32>, 24>();
    let var_2 = Struct_2(arg_2.a, 25737u, Struct_1(1101f), ~(~min(_wgslsmith_mult_vec2_u32(arg_0.xx, vec2<u32>(4294967295u, arg_1)), global0[_wgslsmith_index_u32(~1u, 29u)])));
    global1 = array<vec4<i32>, 24>();
    return func_4(func_2(var_2), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -668i) ^ vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(7656i, u_input.a)), -45749i), ~min(~vec3<i32>(u_input.a, u_input.a, 44361i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 12459i, 54i), vec3<i32>(19142i, u_input.a, u_input.a), vec3<i32>(50995i, u_input.a, u_input.a)))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, -28263i), vec2<i32>(-2147483647i, -28696i)), vec2<i32>(55386i, u_input.a) >> (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u))), max(u_input.a, 0i) ^ u_input.a), 1i));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec3_i32(arg_3.b.zzy, arg_3.b.zyy);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1139f, arg_3.a.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -1108f)))) * arg_3.a.c.a);
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    var_0 = func_4(Struct_5(-_wgslsmith_mod_vec2_i32(vec2<i32>(31460i, arg_3.b.x), abs(arg_3.b.wx))), vec3<i32>(-abs(arg_3.b.x), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(1i, arg_3.b.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, 1i), arg_3.b.zzz)), 2147483647i), ~countOneBits(1i)).b.x;
    return Struct_4(func_4(Struct_5(~(~arg_3.b.xy)), arg_3.b.zxx, -41073i).a, vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -9551i), vec2<i32>(-19279i, 0i)), _wgslsmith_dot_vec2_i32(arg_3.b.yw, vec2<i32>(u_input.a, arg_2))), 2147483647i), _wgslsmith_dot_vec4_i32(arg_3.b, global1[_wgslsmith_index_u32(9668u, 24u)]), 0i), !vec4<bool>(arg_1.x <= ~4294967295u, false, global2.x, true), -2147483647i, arg_1.x);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_5 {
    var var_0 = Struct_1(arg_0.a.c.a);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1312f, 263f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.c.a, -954f), vec2<f32>(var_0.a, var_0.a), arg_3.a))))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.a)), 1f));
    let var_4 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 20324i, -2259i, arg_0.b.x), vec4<i32>(u_input.a, -24637i, 1384i, u_input.a)), global1[_wgslsmith_index_u32(~(~(~1u)), 24u)]), vec4<i32>(~18855i ^ _wgslsmith_sub_i32(u_input.a, 2147483647i), func_1(min(vec3<u32>(arg_2, arg_0.e, arg_2) >> (vec3<u32>(0u, 57397u, 43779u) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.c, arg_2, u_input.b))), ~5446u, arg_3).d, -1i, arg_0.d));
    return func_2(Struct_2(!(~arg_0.d <= _wgslsmith_mult_i32(-2147483647i, u_input.a)), _wgslsmith_mod_u32(abs(u_input.c) << ((u_input.c | 98665u) % 32u), _wgslsmith_mod_u32(89353u, _wgslsmith_mod_u32(arg_0.a.d.x, u_input.c))), func_1(_wgslsmith_div_vec3_u32(vec3<u32>(53025u, u_input.b, 0u), vec3<u32>(0u, arg_2, u_input.b) | vec3<u32>(0u, 14644u, arg_0.a.b)), _wgslsmith_dot_vec2_u32(~arg_0.a.d, vec2<u32>(u_input.b, u_input.b)), Struct_3(!global2.x)).a.c, func_4(Struct_5(arg_0.b.wx), -arg_0.b.yyx, var_4.x << (1u % 32u)).a.d));
}

fn func_7(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = Struct_5(func_5(!(!func_5(vec3<bool>(arg_3.x, arg_3.x, false), global0[_wgslsmith_index_u32(10092u, 29u)], arg_2, Struct_4(Struct_2(arg_3.x, 24444u, Struct_1(-171f), vec2<u32>(u_input.b, u_input.c)), vec4<i32>(u_input.a, arg_2, 0i, 4614i), vec4<bool>(true, arg_3.x, arg_3.x, true), arg_2, u_input.b)).c.xwy), ~global0[_wgslsmith_index_u32(2832u, 29u)], -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, -1i, u_input.a), vec3<i32>(0i, u_input.a, arg_0.a.x)), ~vec3<i32>(-21704i, arg_1.a.x, 2147483647i)), Struct_4(func_1(vec3<u32>(89319u, u_input.c, u_input.c), u_input.b << (u_input.b % 32u), Struct_3(global2.x)).a, firstLeadingBit(~global1[_wgslsmith_index_u32(1u, 24u)]), select(!vec4<bool>(arg_3.x, global2.x, arg_3.x, global2.x), vec4<bool>(true, false, false, global2.x), global2.x), -11780i, abs(_wgslsmith_mult_u32(u_input.b, 1u)))).b.yw);
    return StorageBuffer(_wgslsmith_div_f32(2025f, func_1(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(u_input.c, u_input.b, u_input.b)), vec3<u32>(u_input.c, u_input.b, u_input.c)), min(firstTrailingBit(0u), u_input.c), Struct_3(func_4(Struct_5(vec2<i32>(arg_0.a.x, -24992i)), vec3<i32>(arg_1.a.x, arg_1.a.x, 81072i), -46886i).a.a)).a.c.a), vec3<u32>(1u, 4294967295u, min(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.b, 0u, 4294967295u)))) & countOneBits(~(~vec3<u32>(0u, u_input.c, u_input.b))), global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c, func_4(func_2(Struct_2(true, u_input.c, Struct_1(410f), global0[_wgslsmith_index_u32(u_input.c, 29u)])), vec3<i32>(~8572i, _wgslsmith_sub_i32(arg_0.a.x, arg_1.a.x), -arg_1.a.x), func_5(vec3<bool>(true, true, true), max(global0[_wgslsmith_index_u32(u_input.c, 29u)], vec2<u32>(u_input.c, 4294967295u)), ~(-1i), Struct_4(Struct_2(false, u_input.b, Struct_1(712f), global0[_wgslsmith_index_u32(30404u, 29u)]), global1[_wgslsmith_index_u32(u_input.b, 24u)], vec4<bool>(false, arg_3.x, arg_3.x, global2.x), arg_2, 6608u)).d).b ^ ~select(vec4<i32>(arg_1.a.x, arg_0.a.x, 0i, arg_2) | global1[_wgslsmith_index_u32(u_input.c, 24u)], vec4<i32>(arg_2, -33403i, u_input.a, u_input.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_f32(-1000f * 1513f);
    var var_2 = countOneBits(~firstTrailingBit(-u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 * -193f), 297f))));
    let x = u_input.a;
    s_output = func_7(Struct_5(~firstTrailingBit(vec2<i32>(-1i, -2147483647i))), func_6(func_5(!select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, global2.x, false)), ~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(0u, 29u)], vec2<u32>(3635u, u_input.b)), u_input.a, func_1(~vec3<u32>(u_input.c, 23733u, 22099u), firstTrailingBit(42273u), Struct_3(global2.x))), select(!func_4(Struct_5(vec2<i32>(u_input.a, u_input.a)), vec3<i32>(u_input.a, -815i, -834i), 0i).c.xy, vec2<bool>(true, global2.x), !global2.yz), ~35422u, Struct_3(func_5(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, false), false), global0[_wgslsmith_index_u32(u_input.b, 29u)], _wgslsmith_div_i32(u_input.a, u_input.a), func_5(vec3<bool>(true, global2.x, global2.x), vec2<u32>(26386u, u_input.c), 25458i, Struct_4(Struct_2(false, 2121u, Struct_1(280f), vec2<u32>(0u, 0u)), global1[_wgslsmith_index_u32(u_input.b, 24u)], vec4<bool>(global2.x, global2.x, global2.x, global2.x), u_input.a, 4294967295u))).a.a)), abs(9213i), !vec2<bool>(_wgslsmith_div_f32(-1431f, var_1) > _wgslsmith_f_op_f32(floor(818f)), true));
}

