struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32) -> vec3<i32> {
    global0 = !(!arg_1.a);
    global0 = !(!any(vec4<bool>(true, arg_0.x, any(arg_1.b), false || arg_1.b.x)));
    global0 = arg_1.b.x;
    var var_0 = Struct_2(~firstLeadingBit(~firstLeadingBit(vec3<i32>(2147483647i, -11553i, -1i))), -495f, vec2<i32>(_wgslsmith_add_i32(2147483647i, min(_wgslsmith_clamp_i32(10690i, -52100i, -2147483647i), _wgslsmith_add_i32(41559i, 0i))), ~(~1i)), vec4<u32>(u_input.b, 1u, ~1u, _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(55314u, 68324u), vec2<u32>(u_input.b, u_input.b))), u_input.a)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -302f), var_0.a.zy, vec4<u32>(arg_2, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 68319u, arg_2, u_input.b), vec4<u32>(u_input.b, 0u, 1u, var_0.d.x)), countOneBits(var_0.d))), countOneBits(arg_2), _wgslsmith_sub_u32(arg_2, ~(~arg_2))));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, -4504i, var_0.a.x), ~var_0.a);
}

fn func_2() -> i32 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(~_wgslsmith_clamp_vec3_i32(func_3(vec3<bool>(false, false, true), Struct_4(true, vec4<bool>(true, true, false, false)), u_input.b), ~(-vec3<i32>(51884i, -15004i, 60258i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 6446i, -19972i), -vec3<i32>(26906i, 28590i, -6532i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(813f, -1394f))))), vec2<i32>(~_wgslsmith_add_i32(min(-2147483647i, 28103i), firstTrailingBit(-29957i)), 15417i << (1u % 32u)), _wgslsmith_div_vec4_u32(select(abs(vec4<u32>(45005u, 29598u, u_input.b, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(51429u, 18510u, u_input.b, 1u), vec4<u32>(u_input.a, u_input.b, u_input.a, 8965u)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), false)), vec4<u32>(1u, 4294967295u, u_input.b, 0u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-856f, var_1.b, 405f, var_1.b)))), vec4<f32>(var_1.b, _wgslsmith_f_op_f32(round(var_1.b)), var_1.b, _wgslsmith_f_op_f32(-var_1.b)), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, false, false)), var_1.d.x < var_1.d.x, true)))));
    let var_3 = true & !any(vec2<bool>(true, false));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))) * var_1.b)));
    return _wgslsmith_mult_i32(var_1.c.x, var_1.c.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = true;
    global0 = true;
    global0 = _wgslsmith_div_u32(arg_1.d.x, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(u_input.b, 13129u)) >> (min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(0u, 0u)), 1u) % 32u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_3 | _wgslsmith_mult_u32(u_input.b, 4294967295u), abs(53721u), _wgslsmith_div_u32(min(4294967295u, 1u), arg_0.x)), arg_0);
    var var_0 = ~(~_wgslsmith_add_u32(~(~u_input.b), arg_1.d.x));
    var var_1 = vec2<i32>(0i, func_2());
    return Struct_3(firstTrailingBit(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_1.d.x, 1u)), _wgslsmith_div_vec2_u32(arg_1.d.zw, ~vec2<u32>(u_input.a, u_input.a)))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> vec2<i32> {
    global0 = any(!(!vec4<bool>(false, true, arg_1, arg_1))) && arg_0;
    let var_0 = select(12057i, ((_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(0i, -1i, 1i)) << (~4294967295u % 32u)) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(3052i, -47482i, 0i, 2147483647i), vec4<i32>(-97245i, 3636i, 75i, 58168i), vec4<bool>(true, true, arg_0, arg_1)), -vec4<i32>(20086i, 3772i, 0i, 1i))) ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(15058i, func_3(vec3<bool>(arg_0, false, arg_1), Struct_4(arg_1, vec4<bool>(false, true, true, true)), 1u).x, i32(-1i) * -4798i), func_3(vec3<bool>(arg_0, arg_0, arg_1), Struct_4(arg_1, vec4<bool>(true, true, arg_0, arg_0)), 48906u).x >> (_wgslsmith_mod_u32(u_input.b, u_input.a) % 32u)), !all(select(vec4<bool>(false, arg_0, true, arg_1), !vec4<bool>(true, arg_1, arg_0, arg_1), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_0, arg_0, false)))));
    var var_1 = _wgslsmith_add_vec2_i32(countOneBits(firstLeadingBit(-select(vec2<i32>(-2147483647i, var_0), vec2<i32>(2147483647i, var_0), true))), abs(firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(1i, var_0))))));
    var var_2 = ~vec2<u32>(~u_input.b ^ 15505u, arg_2.a.x);
    var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(-1585i, var_0, var_0), -(~var_0)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_1.x, 25827i), vec2<i32>(43420i, var_1.x), true), vec2<i32>(var_1.x, -2970i), vec2<i32>(-53326i, var_1.x) & vec2<i32>(var_1.x, var_0)) & vec2<i32>(~var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -6984i), vec2<i32>(24726i, var_0))), -abs(vec2<i32>(var_0, 2147483647i))));
    return min(countOneBits(~vec2<i32>(-28525i, var_0) & abs(vec2<i32>(1i, var_0))), vec2<i32>(_wgslsmith_clamp_i32(var_0, -55862i, var_1.x), i32(-1i) * -23222i)) ^ vec2<i32>(2147483647i, ~(-1i));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_4(!any(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), false)), !vec4<bool>(all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), vec2<bool>(arg_2, false))), true, arg_2, all(!vec4<bool>(arg_2, arg_2, arg_2, false))));
    let var_1 = 87520u;
    var var_2 = -reverseBits(~(~min(vec4<i32>(arg_0.a.x, 49559i, arg_0.c.x, arg_0.a.x), vec4<i32>(1i, -28020i, arg_0.c.x, arg_0.a.x))));
    return ~(~(firstTrailingBit(~vec2<u32>(47834u, arg_0.d.x)) << (countOneBits(abs(vec2<u32>(arg_0.d.x, u_input.b))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(Struct_2(abs(vec3<i32>(1i, 1i, 1i)), 371f, ~vec2<i32>(-32209i, 2147483647i), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, 1u, 20367u, u_input.a)))), firstTrailingBit(func_4(true, true, func_1(vec3<u32>(1u, u_input.b, 4294967295u), Struct_2(vec3<i32>(-33472i, -2147483647i, 0i), 296f, vec2<i32>(-2147483647i, 2147483647i), vec4<u32>(4294967295u, 85431u, 7003u, u_input.a)), -1i, u_input.b))), any(vec2<bool>(true, true))));
    let var_1 = Struct_2(vec3<i32>(~_wgslsmith_mod_i32(0i, -11831i), ~func_4(true, false, Struct_3(vec2<u32>(15881u, u_input.a))).x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i) << (var_0.a % vec2<u32>(32u)), abs(vec2<i32>(33857i, 25740i)))) | ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(33556i, -1i, 18667i), vec3<i32>(0i, -48241i, 2147483647i), false)), 1000f, vec2<i32>(1i, -19197i) << (~vec2<u32>(var_0.a.x, 1u) % vec2<u32>(32u)), min(vec4<u32>(var_0.a.x, u_input.b, u_input.a, 16728u) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(61460u, u_input.a, u_input.b, 4294967295u)), vec4<u32>(abs(u_input.a), 1u, ~38894u, 4294967295u) << (vec4<u32>(18822u, ~var_0.a.x, 1u, _wgslsmith_mult_u32(5094u, 1u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(min(633f, var_1.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(var_2 - -1623f)), var_1.b)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(step(-477f, var_2))), _wgslsmith_f_op_f32(-var_2), all(vec3<bool>(false, true, false)))), var_2));
    var var_4 = all(!(!vec3<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(37193u, vec3<i32>(-1i) * -var_1.a, ~var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1431f, 1234f, var_1.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(571f, var_3.x, -247f))), true)) + vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(473f, 1873f), 1672f)) + vec3<f32>(_wgslsmith_f_op_f32(select(384f, _wgslsmith_f_op_f32(-var_2), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1178f)), var_2)));
}

