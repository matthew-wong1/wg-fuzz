struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(31019i, 1i, 42330i), true, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<bool> {
    global0 = Struct_1(global0.a, global0.b, firstLeadingBit(abs(global0.c)));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-798f, 943f)) + _wgslsmith_f_op_f32(111f + -1000f)))))));
    global0 = Struct_1(reverseBits(countOneBits(vec3<i32>(u_input.d, u_input.d, ~(-64015i)))), true, ((arg_1 ^ ~17358u) | ~max(0u, 0u)) | 4294967295u);
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(-(global0.a & -vec3<i32>(13023i, 27589i, 0i)), abs(global0.a)), global0.b, ~4294967295u);
    var var_2 = _wgslsmith_clamp_i32(4743i, 2147483647i, countOneBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global0.a.x), u_input.a.yx))));
    return !(!vec2<bool>(_wgslsmith_f_op_f32(-var_0) > -651f, all(!vec4<bool>(var_1.b, var_1.b, arg_0.x, true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    global0 = Struct_1(select(arg_1.a, countOneBits(arg_1.a), false), !global0.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(26675u >> (global0.c % 32u)), ~global0.c), u_input.c));
    let var_0 = Struct_2(39132u, ~arg_0, Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, arg_1.a.x, u_input.a.x)), vec3<i32>(-arg_1.a.x, global0.a.x << (arg_1.c % 32u), global0.a.x)), true, 4294967295u), global0.b, 18090u);
    var var_1 = Struct_2(select(firstLeadingBit(global0.c ^ 53052u), ~u_input.b, all(!func_3(vec2<bool>(arg_1.b, false), arg_2))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(10029u, u_input.b, global0.c), var_0.b, arg_0)) << ((arg_0 >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, var_0.c.c, var_0.b.x), arg_0), var_0.b) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(vec3<i32>(arg_1.a.x ^ global0.a.x, max(2147483647i, 52220i), -6127i) ^ var_0.c.a, u_input.d >= ~1i, u_input.b), !arg_1.b, 43610u);
    global0 = Struct_1(global0.a, global0.b, arg_1.c);
    let var_2 = var_0;
    return _wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(-abs(var_0.c.a.x), _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.a.x, var_2.c.a.x, 0i), vec3<i32>(var_2.c.a.x, 26758i, 42074i)))), _wgslsmith_mod_i32(reverseBits(var_1.c.a.x), ~var_0.c.a.x)), min(arg_1.a, _wgslsmith_mult_vec3_i32(u_input.a.zxw, global0.a)));
}

fn func_4(arg_0: i32) -> Struct_2 {
    global0 = Struct_1(vec3<i32>(-1i, u_input.d, global0.a.x), true, max(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global0.c, 0u), firstLeadingBit(global0.c)), ~firstLeadingBit(vec2<u32>(22375u, 1u))), 24319u));
    var var_0 = Struct_1(u_input.a.zyw, false, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.c, u_input.c), 58108u) ^ (u_input.c & firstLeadingBit(u_input.b)));
    var var_1 = select(select(!select(!vec3<bool>(global0.b, false, false), vec3<bool>(false, false, true), select(vec3<bool>(var_0.b, true, global0.b), vec3<bool>(true, true, false), global0.b)), !select(!vec3<bool>(var_0.b, false, true), select(vec3<bool>(var_0.b, false, true), vec3<bool>(true, global0.b, var_0.b), true), !vec3<bool>(var_0.b, var_0.b, false)), any(!(!vec4<bool>(false, var_0.b, var_0.b, var_0.b)))), vec3<bool>(global0.b, !global0.b, !all(vec2<bool>(global0.b, var_0.b))), true);
    var_1 = select(!vec3<bool>(true, (global0.b && var_0.b) | false, _wgslsmith_add_u32(global0.c, 52644u) == ~u_input.c), !select(vec3<bool>(var_1.x, global0.b, true), vec3<bool>(var_1.x == var_0.b, !var_0.b, func_3(vec2<bool>(true, var_1.x), 0u).x), !(!global0.b)), !(!select(!vec3<bool>(false, var_0.b, false), select(vec3<bool>(global0.b, true, false), vec3<bool>(true, true, global0.b), true), true)));
    let var_2 = abs(~max(vec4<u32>(_wgslsmith_add_u32(global0.c, var_0.c), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.c, 74290u), vec3<u32>(4294967295u, global0.c, var_0.c)), u_input.b), ~(vec4<u32>(u_input.b, 4294967295u, 0u, global0.c) ^ vec4<u32>(global0.c, 1u, 4294967295u, u_input.c))));
    return Struct_2(var_2.x, ~firstTrailingBit(~var_2.zww), Struct_1(~u_input.a.xwz, var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u & global0.c, _wgslsmith_dot_vec3_u32(var_2.zww, vec3<u32>(21153u, 70766u, 49158u)), ~38910u, 84520u), abs(firstTrailingBit(var_2)))), var_0.b, (16308u << (global0.c % 32u)) >> (4294967295u % 32u));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, true, false, arg_0.d), select(!select(!vec4<bool>(global0.b, arg_0.c.b, true, false), vec4<bool>(global0.b, false, arg_0.c.b, global0.b), global0.b), vec4<bool>(true, true, true, global0.b), vec4<bool>(func_4(u_input.a.x).c.b || global0.b, arg_0.d | true, false, true)), !all(!func_3(vec2<bool>(arg_0.d, global0.b), global0.c)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1665f, -356f)))), vec2<f32>(1f, 1f)));
    let var_3 = ~global0.c;
    var var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.b, arg_0.b), abs(select(~u_input.c >> (40126u % 32u), 28539u, arg_0.c.b)));
    return arg_0.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 8489i;
    return func_5(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x), global0.a.x), _wgslsmith_div_vec3_i32(func_2(vec3<u32>(4294967295u, 50046u, 22682u), arg_2, 4294967295u), vec3<i32>(33134i, global0.a.x, global0.a.x) << (arg_0.zzy % vec3<u32>(32u))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(-arg_2)), arg_2, !func_4(-48651i).d))));
    var var_1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 1u, global0.c, 0u) & vec4<u32>(u_input.c, u_input.b, 4294967295u, 8959u)) >> (~vec4<u32>(7138u, 30481u, 28267u, 58966u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 0u, 64993u, 0u), vec4<u32>(85174u, 52158u, 0u, arg_0.c.c))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(min(vec3<u32>(arg_0.a, arg_3.x, arg_0.e), vec3<u32>(71907u, 95013u, 10230u))), _wgslsmith_mult_vec3_u32(arg_0.b, arg_0.b)), 1u, 4294967295u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 9103u, 1u), vec4<u32>(arg_3.x, arg_3.x, global0.c, u_input.b) << (vec4<u32>(global0.c, 4294967295u, 0u, u_input.c) % vec4<u32>(32u))), arg_0.b.x, !func_1(vec4<u32>(14023u, 4294967295u, 30794u, arg_0.b.x), vec4<f32>(var_0.x, 800f, -1925f, var_0.x), Struct_1(vec3<i32>(-5760i, -2147483647i, 0i), global0.b, 4294967295u)).b)) % vec4<u32>(32u));
    var_1 = select(~(~(~select(vec4<u32>(4294967295u, arg_0.b.x, global0.c, 30099u), vec4<u32>(arg_0.e, 49553u, 44167u, 0u), vec4<bool>(arg_0.d, arg_0.c.b, true, true)))), vec4<u32>(4294967295u, 1u >> (arg_1.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(53023u, 4294967295u, u_input.b)), 17386u), 4294967295u), !select(!select(vec4<bool>(false, global0.b, false, true), vec4<bool>(true, false, arg_0.d, true), vec4<bool>(arg_0.d, true, false, global0.b)), vec4<bool>(arg_0.b.x != 1u, arg_0.c.b, global0.b, true), !select(vec4<bool>(arg_0.d, true, true, false), vec4<bool>(true, global0.b, arg_0.c.b, true), vec4<bool>(true, arg_0.d, false, arg_0.c.b))));
    let var_2 = firstTrailingBit(func_5(Struct_2(min(arg_3.x, 14158u), arg_3, func_1(vec4<u32>(var_1.x, arg_3.x, u_input.b, u_input.c), vec4<f32>(var_0.x, 573f, var_0.x, arg_2), arg_0.c), all(vec3<bool>(arg_0.c.b, arg_0.c.b, false)), 0u)).c << (_wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0.c.c, abs(4294967295u)), firstLeadingBit(56459u)) % 32u));
    var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1655f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x)))))));
    return abs(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0u >> (_wgslsmith_clamp_u32(4294967295u, u_input.c, _wgslsmith_add_u32(~u_input.c, global0.c)) % 32u), vec3<u32>(~(~u_input.b >> (0u % 32u)), func_6(Struct_2(~u_input.c, ~vec3<u32>(u_input.c, 4294967295u, 0u), func_1(vec4<u32>(global0.c, 4294967295u, 59900u, 4294967295u), vec4<f32>(1951f, 1687f, -625f, 1078f), Struct_1(vec3<i32>(-15973i, 1i, global0.a.x), false, global0.c)), any(vec2<bool>(global0.b, true)), global0.c), ~vec2<u32>(0u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), select(vec3<u32>(global0.c, global0.c, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.c, global0.c, 1u), vec3<u32>(u_input.b, 38197u, global0.c)), func_3(vec2<bool>(true, global0.b), 1u).x)), ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.c, u_input.b)), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.c, 0u), false))), func_5(Struct_2(_wgslsmith_clamp_u32(13509u, u_input.b, 17049u) & func_5(Struct_2(1u, vec3<u32>(4294967295u, u_input.c, 5074u), Struct_1(vec3<i32>(42827i, global0.a.x, -25571i), false, u_input.c), global0.b, global0.c)).c, ~_wgslsmith_mod_vec3_u32(vec3<u32>(26004u, global0.c, 30127u), vec3<u32>(global0.c, global0.c, 8909u)), func_1(~vec4<u32>(global0.c, 1u, 33461u, 0u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1196f, -117f, 1760f, 401f))), func_5(Struct_2(u_input.c, vec3<u32>(u_input.c, 63466u, 0u), Struct_1(global0.a, global0.b, u_input.b), global0.b, global0.c))), (false != global0.b) || any(vec3<bool>(global0.b, false, global0.b)), abs(85762u))), !global0.b, abs(u_input.b));
    var var_1 = Struct_2(~firstLeadingBit(57276u) >> (firstLeadingBit(min(u_input.b, func_6(Struct_2(4294967295u, var_0.b, var_0.c, false, 0u), vec2<u32>(0u, 17652u), -1508f, var_0.b))) % 32u), var_0.b, func_1(reverseBits(~vec4<u32>(u_input.b, 4914u, 48342u, u_input.b)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, var_0.b.x, var_0.c.c) & vec4<u32>(global0.c, 32447u, global0.c, 0u), vec4<u32>(89712u, 4294967295u, 14862u, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1031f, -261f, 1020f, -1000f), vec4<f32>(-703f, 745f, -467f, -1221f), true)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1612f, 560f, 448f, 1683f), vec4<f32>(826f, -662f, -153f, -298f), vec4<bool>(true, true, global0.b, var_0.d))))), func_1(~(~vec4<u32>(global0.c, global0.c, 44406u, var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, -1904f, -723f, -1000f) - vec4<f32>(931f, 449f, -869f, 230f)) - vec4<f32>(-1291f, 1556f, -599f, -242f)), func_5(func_4(var_0.c.a.x)))), false, ~var_0.e);
    var_0 = Struct_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_mod_u32(29376u, u_input.c), 1u, ~var_0.c.c, ~u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 6998u, 4294967295u), vec4<u32>(var_0.b.x, 40572u, u_input.c, 4082u)) >> ((vec4<u32>(4294967295u, var_0.b.x, var_1.c.c, global0.c) | vec4<u32>(1u, 0u, 1u, 0u)) % vec4<u32>(32u)), var_0.d), ~vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 7680u, global0.c), vec3<u32>(var_0.b.x, 0u, global0.c)), _wgslsmith_add_u32(44299u, u_input.b), func_5(Struct_2(0u, var_1.b, Struct_1(vec3<i32>(2147483647i, var_0.c.a.x, 36176i), var_1.c.b, 32543u), false, 1u)).c)), vec3<u32>(_wgslsmith_add_u32(~1u, global0.c >> (~42762u % 32u)), countOneBits(~4198u), 4294967295u), func_4(firstLeadingBit(u_input.a.x) & -20351i).c, all(func_3(!(!vec2<bool>(true, var_0.d)), var_1.a)), _wgslsmith_sub_u32(42491u, 0u));
    var var_2 = var_0.c;
    let var_3 = 1u | var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1835f, -1015f, -596f), vec3<f32>(-1148f, 439f, 345f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(935f)), _wgslsmith_f_op_f32(select(517f, 324f, false)), _wgslsmith_f_op_f32(trunc(-381f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1862f), _wgslsmith_f_op_f32(f32(-1f) * -1322f), -140f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -418f, -766f)) - vec3<f32>(426f, 386f, 597f)))), vec3<bool>(var_1.d, false & var_2.b, func_5(Struct_2(2355u, var_0.b, Struct_1(vec3<i32>(var_1.c.a.x, var_0.c.a.x, global0.a.x), false, 14123u), var_2.b, global0.c)).b))), ~(var_1.b.yz & reverseBits(var_0.b.zz)));
}

