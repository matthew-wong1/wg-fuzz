struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> vec2<i32> {
    global2 = select(!arg_0.a.a.xx, arg_1, any(select(select(vec3<bool>(true, false, true), global1.xyw, select(global3.a.a, global0.a.a, vec3<bool>(global0.a.a.x, true, global1.x))), global3.a.a, global1.x)));
    var var_0 = Struct_2(Struct_1(vec3<bool>(!global3.a.a.x, true, select(all(vec3<bool>(true, true, arg_3)), true, false)), 2421u, select(reverseBits(u_input.b.zz), global3.a.c, !global3.a.a.xz) >> (select(vec2<u32>(0u, arg_0.a.d), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(4294967295u, global3.a.c.x)), vec2<bool>(global1.x, true)) % vec2<u32>(32u)), 1u));
    global1 = vec4<bool>(any(vec4<bool>(arg_3, global3.a.d <= u_input.a, all(vec4<bool>(global0.a.a.x, arg_3, global1.x, false)), true)) | !select(global0.a.a.x, var_0.a.a.x, false), ~1u == _wgslsmith_dot_vec4_u32(select(vec4<u32>(7492u, 15121u, 1u, arg_2) ^ vec4<u32>(arg_2, 1u, global3.a.d, 4294967295u), vec4<u32>(1u, arg_0.a.d, 27959u, 617u), false), ~select(vec4<u32>(global0.a.b, 13841u, u_input.c, 81430u), vec4<u32>(u_input.c, 1u, arg_2, 70238u), arg_1.x)), var_0.a.a.x, !global1.x);
    let var_1 = Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(false, global0.a.a.x)), any(!vec4<bool>(global3.a.a.x, false, true, arg_3)), true), _wgslsmith_sub_u32(~(~global0.a.d), ~global0.a.d), reverseBits(vec2<u32>(31536u, arg_0.a.d) << (select(global3.a.c, global3.a.c, global3.a.a.xz) % vec2<u32>(32u))), ~firstLeadingBit(arg_2)));
    var var_2 = ~reverseBits(-_wgslsmith_mult_vec3_i32(~vec3<i32>(-31177i, 21663i, -1i), -vec3<i32>(-35531i, -1i, -2147483647i)));
    return vec2<i32>(reverseBits(-1i) << (~(select(5040u, 0u, false) ^ global0.a.b) % 32u), -2147483647i);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global3 = arg_0;
    var var_0 = arg_0.a;
    let var_1 = abs(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(1i, -91957i))) & ~_wgslsmith_sub_vec2_i32(func_3(Struct_2(Struct_1(vec3<bool>(var_0.a.x, global0.a.a.x, false), 4294967295u, global0.a.c, arg_0.a.c.x)), !vec2<bool>(global2.x, true), 1u, true), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 84877i), max(vec2<i32>(-38634i, -2147483647i), vec2<i32>(48397i, 65246i))));
    global3 = Struct_2(global0.a);
    let var_2 = Struct_1(select(!select(select(vec3<bool>(false, false, arg_0.a.a.x), global0.a.a, false), select(var_0.a, vec3<bool>(global1.x, false, true), arg_0.a.a.x), vec3<bool>(true, true, var_0.a.x)), select(select(global3.a.a, global0.a.a, global0.a.a), global1.xxx, var_0.a.x & true), any(var_0.a.xx)), ~_wgslsmith_clamp_u32(1u, 62259u, select(1u, global3.a.b, !var_0.a.x)), global3.a.c, global0.a.c.x);
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = arg_3;
    var var_0 = global0.a;
    var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1301f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, -1145f)), _wgslsmith_f_op_f32(-356f * 257f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2008f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-635f)))), global0.a.a.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 240f) * vec2<f32>(1468f, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(round(var_1)), !global1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)))))));
    return Struct_2(Struct_1(arg_3.zyx, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.b, var_0.c.x), vec2<u32>(global0.a.c.x, var_0.d) & u_input.b.zy), firstTrailingBit(_wgslsmith_sub_u32(53126u, 36633u))), _wgslsmith_sub_vec2_u32(abs(firstLeadingBit(global3.a.c)), global0.a.c), ~arg_1.a.b));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(!select(arg_0.a.a, vec3<bool>(global0.a.a.x, true, all(vec2<bool>(true, false))), !global1.x), _wgslsmith_div_u32(global3.a.b, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, arg_1.x), vec4<u32>(global0.a.d, 44567u, 4294967295u, 65901u)), countOneBits(vec4<u32>(40478u, arg_0.a.d, u_input.a, 78720u))) ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(global0.a.b, global3.a.b), global3.a.c.x >> (global0.a.b % 32u))), u_input.b.zx, 4294967295u);
    var var_1 = vec2<f32>(231f, -1832f);
    let var_2 = vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-38962i, -1i), vec2<i32>(-98451i, -1i)), i32(-1i) * -39434i), -25563i), _wgslsmith_div_i32(-8695i, min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-4020i, 6798i, -11122i), vec3<i32>(-36953i, 1i, -7013i))), 27088i >> (_wgslsmith_mod_u32(global0.a.c.x, 4294967295u) % 32u))));
    global1 = !(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.a.x, global1.x, false, global0.a.a.x), arg_0.a.a.x))));
    var var_3 = !(!select(vec3<bool>(false, all(global0.a.a), true), select(select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(global3.a.a.x, true, var_0.a.x), false), select(var_0.a, vec3<bool>(false, true, global3.a.a.x), global0.a.a.x), global3.a.a), false || global2.x));
    return func_4(~min(vec4<i32>(37575i, -36830i, -2147483647i, -2147483647i), abs(vec4<i32>(1i, var_2.x, 5732i, 2201i))) & ~firstTrailingBit(firstTrailingBit(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x))), arg_0, vec4<i32>(abs(~(~var_2.x)), _wgslsmith_add_i32(-29472i | var_2.x, ~var_2.x), _wgslsmith_sub_i32(var_2.x, func_3(func_4(vec4<i32>(var_2.x, var_2.x, var_2.x, -7132i), Struct_2(global3.a), vec4<i32>(-2147483647i, 111604i, -42630i, 1i), vec4<bool>(false, false, false, arg_0.a.a.x)), !global3.a.a.zy, ~arg_1.x, true).x), -var_2.x), vec4<bool>(var_3.x, !global2.x, true, !global1.x)).a;
}

fn func_1() -> Struct_1 {
    return func_5(func_4(vec4<i32>(1i, 1i, 1i, 1i), func_2(Struct_2(global3.a), -723f), min(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-1i, 24133i, 1i, -2147483647i))), select(select(vec4<bool>(global0.a.a.x, true, global2.x, false), !vec4<bool>(global0.a.a.x, true, true, global0.a.a.x), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global3.a.a.x, true, true, global3.a.a.x), true)), select(!vec4<bool>(false, global2.x, global0.a.a.x, global0.a.a.x), vec4<bool>(global2.x, global3.a.a.x, global3.a.a.x, global1.x), global2.x), all(select(vec4<bool>(global0.a.a.x, global0.a.a.x, false, global3.a.a.x), vec4<bool>(global1.x, global0.a.a.x, false, true), vec4<bool>(false, true, true, global1.x))))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(0u, 18848u), global0.a.c), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 106290u), global3.a.c), ~global3.a.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_div_u32(59477u, global0.a.d)), _wgslsmith_mult_vec2_u32(global0.a.c, ~global3.a.c)), _wgslsmith_sub_vec2_u32(func_4(-vec4<i32>(0i, -9584i, -2147483647i, -1148i), func_4(vec4<i32>(33660i, 0i, 37380i, 2147483647i), Struct_2(Struct_1(global0.a.a, 23057u, vec2<u32>(38113u, global3.a.c.x), 3594u)), vec4<i32>(1009i, 16188i, -1i, 32338i), vec4<bool>(global1.x, true, global2.x, true)), vec4<i32>(10837i, 2147483647i, -1i, -25463i), select(vec4<bool>(global3.a.a.x, false, global3.a.a.x, false), vec4<bool>(true, false, global0.a.a.x, global2.x), vec4<bool>(global1.x, global3.a.a.x, global2.x, global2.x))).a.c, select(~vec2<u32>(4294967295u, global3.a.d), max(global3.a.c, global3.a.c), vec2<bool>(true, global2.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = ~arg_1.b;
    let var_1 = firstTrailingBit(~_wgslsmith_clamp_i32(~(-26537i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(43251i, -2147483647i, -57383i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = func_2(Struct_2(Struct_1(!vec3<bool>(global1.x, global3.a.a.x, arg_1.a.x), 1u, global0.a.c, ~(~u_input.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-402f, -302f)))))));
    var var_2 = Struct_2(func_4(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_1) | vec4<i32>(-9446i, -33547i, -34781i, -36551i), ~vec4<i32>(2147483647i, var_1, 0i, var_1))), Struct_2(global0.a), -_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_1, 2147483647i, var_1, 2147483647i), vec4<i32>(var_1, var_1, var_1, 34798i), vec4<bool>(true, false, global2.x, true)), vec4<i32>(12121i, -1i, var_1, var_1)), vec4<bool>(global0.a.a.x, !(true | arg_0.a.x), global3.a.a.x, true)).a);
    global0 = Struct_2(func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(var_1, 0i, -39748i, 2147483647i)), select(vec4<i32>(var_1, 2147483647i, var_1, var_1), vec4<i32>(var_1, var_1, 1i, var_1), false)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -19254i, var_1, -12209i), vec4<i32>(1i, var_1, -17607i, var_1)))), Struct_2(var_2.a), firstTrailingBit(-(~vec4<i32>(-1i, -1i, var_1, var_1))), vec4<bool>(arg_1.a.x, true, func_5(Struct_2(global0.a), global3.a.c & arg_0.c).a.x, !any(vec3<bool>(var_2.a.a.x, global2.x, false)))).a);
    return func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_1), ~vec4<i32>(2147483647i, var_1, 2147483647i, var_1)), ~abs(vec4<i32>(var_1, -2296i, -2147483647i, var_1))), max(firstLeadingBit(-55733i), 2147483647i), abs(var_1), -1i), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(23877i, 9031i)), abs(0i), var_1), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-37631i, -1i, 12305i, 15672i)), ~vec4<i32>(0i, var_1, -1i, -58496i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, -15368i, var_1), vec4<i32>(-13839i, -2147483647i, var_1, -68760i))), Struct_2(global0.a), (_wgslsmith_mod_vec4_i32(vec4<i32>(8992i, -11893i, var_1, var_1), vec4<i32>(var_1, -1i, -17906i, var_1)) & countOneBits(vec4<i32>(-11076i, var_1, var_1, 1i))) & (_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 1i, 0i, var_1), vec4<i32>(var_1, -40060i, var_1, var_1)) << ((vec4<u32>(2603u, 4294967295u, 13928u, global0.a.d) >> (vec4<u32>(0u, arg_1.c.x, var_2.a.c.x, arg_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), !(!vec4<bool>(global0.a.a.x, true, arg_0.a.x, true))), vec4<i32>(-69440i, firstTrailingBit(firstTrailingBit(func_3(Struct_2(global3.a), arg_1.a.zz, var_2.a.c.x, arg_0.a.x).x)), firstTrailingBit(var_1), 2147483647i ^ var_1), vec4<bool>(all(select(vec2<bool>(true, true), func_1().a.yz, arg_0.a.x)), true, any(vec2<bool>(global2.x, true)), arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(func_1(), global3.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 1u, 18069u, global0.a.d)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.c.x, u_input.a, 24885u, 1u), vec4<u32>(global3.a.d, global3.a.b, global3.a.b, 0u)), select(vec4<u32>(0u, global0.a.b, global0.a.b, 14447u), vec4<u32>(global3.a.b, global0.a.b, global3.a.b, u_input.b.x), vec4<bool>(true, true, false, false)), !vec4<bool>(false, global1.x, false, true))), u_input.a));
    let var_0 = func_6(Struct_1(vec3<bool>(global1.x, true, func_2(Struct_2(global3.a), -297f).a.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.c.x, 1u, 1445u) << (u_input.b % vec3<u32>(32u)), u_input.b >> (vec3<u32>(global0.a.c.x, 48687u, 1u) % vec3<u32>(32u))), (vec3<u32>(global0.a.b, 1u, u_input.c) << (vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u))) | (u_input.b ^ vec3<u32>(11224u, 35980u, global0.a.c.x))), vec2<u32>(31818u, func_1().b), _wgslsmith_div_u32(45152u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.c.x, global3.a.b, global0.a.d), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))), func_4(~(vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(u_input.c, 6404u, 43358u, 83396u) % vec4<u32>(32u))), Struct_2(global3.a), -vec4<i32>(reverseBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -20731i, -54157i), vec3<i32>(0i, -2147483647i, -5264i)), _wgslsmith_add_i32(38447i, 0i), 18641i), vec4<bool>(select(true, true, 4294967295u > global0.a.c.x), any(vec4<bool>(global0.a.a.x, global0.a.a.x, global2.x, global3.a.a.x)), true, func_4(vec4<i32>(1i, 1i, 1i, 1i), func_6(Struct_1(vec3<bool>(global1.x, global1.x, global0.a.a.x), global0.a.b, global0.a.c, global3.a.c.x), global3.a, global0.a.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-19855i, -1i, 41301i, -1i), vec4<i32>(13501i, 21225i, 95i, -2147483647i)), !vec4<bool>(false, true, global3.a.a.x, true)).a.a.x)).a, abs(global0.a.d)).a.d;
    var var_1 = global0.a;
    var var_2 = global2.x;
    var var_3 = Struct_2(global3.a);
    let var_4 = abs(76799u);
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -865f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(reverseBits(max(vec4<i32>(43214i, 20274i, -1i, -1i), vec4<i32>(7622i, -44343i, 26124i, -7405i))), ~countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), 29446u, -20686i);
}

