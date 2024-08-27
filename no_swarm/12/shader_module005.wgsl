struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), 4294967295u, vec3<i32>(-2011i, -19540i, 1i), i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    return select(select(select(vec3<bool>(all(vec3<bool>(false, false, true)), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!any(vec4<bool>(true, true, false, false)))), vec3<bool>(any(vec2<bool>(true, true)), 254f >= _wgslsmith_f_op_f32(1302f - _wgslsmith_f_op_f32(-arg_0)), true), vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(62840i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-679f, 1620f), vec2<f32>(-509f, 1581f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(173f, -1134f))) - vec2<f32>(-1721f, 797f)), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-732f, -2365f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0, ~select(~(~vec3<u32>(global0.b, u_input.b.x, u_input.b.x)), ~reverseBits(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), true));
    let var_1 = 13683i;
    var var_2 = _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -reverseBits(-1i), ~(-7047i))), global0.c);
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(select(firstLeadingBit(-18629i), 6523i, true), ~arg_0.a), vec2<i32>(firstTrailingBit(1i), i32(-1i) * -u_input.a.x)), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1888f, -1822f))), 1155f), arg_0, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_0.e, var_0.e) & var_0.e, ~(~vec3<u32>(global0.b, global0.b, 0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(var_0.e.x, 30220u, global0.b)), arg_0.b, ~8216u)), min(~var_0.e, ~(~var_0.e))));
    let var_4 = abs(_wgslsmith_mod_i32(arg_0.d, reverseBits(-select(u_input.a.x, 0i, false))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b - _wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(var_0.b - var_3.c)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~u_input.b;
    var var_1 = Struct_2(_wgslsmith_add_i32(u_input.a.x, 0i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), -380f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -876f), _wgslsmith_f_op_vec2_f32(exp2(arg_1.yy))) * _wgslsmith_f_op_vec2_f32(-arg_1.zy)), _wgslsmith_f_op_vec2_f32(-arg_1.xz), all(vec3<bool>(true, true, true)))), Struct_1(~_wgslsmith_mult_i32(~u_input.a.x, ~global0.a), _wgslsmith_sub_u32(max(3817u, 68971u), global0.b & u_input.b.x) << (max(~41179u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, var_0.x), vec3<u32>(31110u, var_0.x, u_input.b.x))) % 32u), -countOneBits(select(global0.c, u_input.a.zyx, vec3<bool>(true, true, true))), u_input.a.x), vec3<u32>(var_0.x, 73375u & ~global0.b, _wgslsmith_add_u32(~(~u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b, u_input.b.x), ~vec3<u32>(u_input.b.x, 100194u, var_0.x)))));
    var var_2 = -1059f;
    var_1 = Struct_2(_wgslsmith_sub_i32(global0.d, ~firstLeadingBit(abs(var_1.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zy + vec2<f32>(297f, -213f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(213f, -256f)))))), _wgslsmith_f_op_vec2_f32(func_3(var_1.d)), Struct_1(26454i, 92283u, -var_1.d.c, ~global0.a), reverseBits(vec3<u32>(~_wgslsmith_mod_u32(var_0.x, global0.b), firstTrailingBit(1u), var_0.x | global0.b)));
    let var_3 = var_0.x;
    return var_1.d;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(2013f + arg_2.b.x);
    let var_1 = arg_2.c;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1559f) + -751f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, var_0, var_0, _wgslsmith_f_op_f32(-arg_2.b.x)))));
    var var_2 = arg_1;
    var var_3 = (_wgslsmith_dot_vec4_u32(~vec4<u32>(30455u, 57066u, global0.b, var_2.b) & ~vec4<u32>(var_2.b, arg_1.b, arg_1.b, var_2.b), vec4<u32>(4294967295u, global0.b, arg_2.d.b, 18673u) << (reverseBits(vec4<u32>(global0.b, var_2.b, 0u, 26252u)) % vec4<u32>(32u))) <= 11958u) || (!(!select(true, false, true)) && false);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1)))))), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.b.x);
    let var_1 = vec3<bool>(global0.d > 17880i, all(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1403f, -830f)), ~u_input.b)), global0.b >= ~51490u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(872f)) + -1872f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2098f)))))));
    var var_3 = Struct_2(i32(-1i) * -(-75620i << (firstTrailingBit(global0.b) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -440f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2539f, -246f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, var_2)), vec2<f32>(_wgslsmith_f_op_f32(768f + -1196f), _wgslsmith_f_op_f32(-var_2)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2)))), Struct_1(i32(-1i) * -1i, _wgslsmith_add_u32(1u, var_0), firstLeadingBit(global0.c), ~_wgslsmith_div_i32(i32(-1i) * -24945i, 26581i)), firstTrailingBit(vec3<u32>(var_0, u_input.b.x, u_input.b.x)));
    var_3 = Struct_2(-4385i, vec2<f32>(_wgslsmith_f_op_f32(floor(-1122f)), var_2), _wgslsmith_f_op_vec2_f32(func_4(reverseBits(vec2<i32>(0i, -52676i)), var_3.d, Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-14603i, 1i, u_input.a.x, var_3.d.c.x), u_input.a) ^ ~global0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 607f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_2) - var_3.c))), _wgslsmith_f_op_vec2_f32(-var_3.c), func_2(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_2, var_2, -972f))), ~(~var_3.e)), var_2)), var_3.d, vec3<u32>(_wgslsmith_add_u32(countOneBits(~u_input.b.x), _wgslsmith_mult_u32(~14689u, var_3.e.x >> (0u % 32u))), var_3.e.x << (abs(u_input.b.x) % 32u), 4294967295u));
    let var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-1849f, var_3.b.x, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.c.x, -2531f), _wgslsmith_f_op_f32(2035f - var_2), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(-21473i, global0.b, var_3.d.c, -2147483647i))).x, _wgslsmith_f_op_f32(var_3.b.x - var_2)))));
    let var_5 = all(!(!vec3<bool>(true, true, var_1.x))) & var_1.x;
    let var_6 = Struct_2(var_4.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_3.c, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.c.x, var_3.e.x, vec3<i32>(global0.c.x, var_4.c.x, 31512i), -68582i))), !select(var_1.zy, var_1.xz, vec2<bool>(false, var_5)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(step(var_3.c.x, 980f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - var_3.c)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_4)).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, var_2, -1195f, -122f) - vec4<f32>(468f, -918f, -295f, var_3.c.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c.x, var_2, var_3.b.x, 511f))), false || var_5)) - vec4<f32>(var_2, -1051f, _wgslsmith_f_op_f32(abs(845f)), _wgslsmith_f_op_f32(ceil(var_3.b.x))))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(var_3.d.b, global0.b), 0u & var_3.e.x), ~(vec3<u32>(6421u, 4294967295u, var_3.e.x) << (vec3<u32>(31029u, 4294967295u, 4294967295u) % vec3<u32>(32u))), false), var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.x, -1000f, var_6.b.x, -843f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1996f, var_6.b.x, 926f, var_6.b.x))), !vec4<bool>(var_5, false, var_5, true))) + vec4<f32>(1144f, 853f, _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(ceil(var_2)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-276f, 599f, var_2, 967f))))), vec4<f32>(-1221f, -1327f, _wgslsmith_div_f32(var_6.c.x, 1000f), _wgslsmith_f_op_f32(var_3.b.x + var_6.b.x))))), var_4.c.x);
}

