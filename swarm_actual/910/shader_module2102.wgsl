struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 12>;

var<private> global2: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: f32) -> vec4<u32> {
    global2 = _wgslsmith_clamp_vec4_i32(~(-countOneBits(-vec4<i32>(-2396i, u_input.b.x, 8680i, -16778i))), select(-((vec4<i32>(1i, global2.x, global2.x, 2147483647i) ^ vec4<i32>(-2147483647i, -13252i, global0.a, 18788i)) & ~vec4<i32>(u_input.b.x, global0.a, -39193i, -11519i)), -max(vec4<i32>(1i, 0i, 6838i, global0.a), -vec4<i32>(global2.x, -2147483647i, global0.a, global2.x)), all(select(select(global0.b.yz, vec2<bool>(true, global0.b.x), global0.b.x), select(global0.b.xw, global0.b.wy, vec2<bool>(arg_2, false)), true))), vec4<i32>(reverseBits(-u_input.b.x) >> (4294967295u % 32u), global0.a, u_input.b.x, 1i));
    global2 = -vec4<i32>(global0.a, _wgslsmith_div_i32(min(min(-32986i, -16901i), min(u_input.b.x, global2.x)), u_input.b.x), _wgslsmith_div_i32(abs(u_input.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-26092i, -13710i, 1i, -12938i), firstLeadingBit(vec4<i32>(47301i, -18653i, -2147483647i, u_input.b.x)))), -5246i);
    global1 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_3)))), 775f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))));
    var var_1 = global0.b;
    return reverseBits(~(_wgslsmith_sub_vec4_u32(global0.c, global0.c) << (global0.c % vec4<u32>(32u))) & min(vec4<u32>(countOneBits(u_input.a), ~global0.e.x, 34183u >> (u_input.a % 32u), global0.c.x & 36344u), vec4<u32>(arg_0, firstTrailingBit(arg_0), countOneBits(79361u), abs(4294967295u))));
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(arg_0.x, firstLeadingBit(global0.c.x));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, global0.a, global0.a, global0.a)), vec4<i32>(1i, abs(6162i), reverseBits(4443i), abs(global0.a))), vec4<i32>(~u_input.b.x, -2147483647i, -global0.a, 43659i)), global0.b, arg_0, _wgslsmith_f_op_f32(-1715f + 193f), func_3(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_sub_u32(global0.e.x, 4294967295u)), 723f, !all(global0.b), -445f));
    var_0 = ~u_input.a;
    let var_2 = 12461i;
    var var_3 = global0.d;
    return 1i;
}

fn func_2() -> i32 {
    let var_0 = !all(select(!global0.b, global0.b, global0.b.x));
    var var_1 = ~(~(~vec4<u32>(~u_input.a, global0.e.x, 4294967295u, _wgslsmith_mod_u32(u_input.a, u_input.a))));
    let var_2 = select(func_4(func_3(firstTrailingBit(_wgslsmith_clamp_u32(11438u, u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_div_i32(global0.a, -1i) > global0.a, _wgslsmith_f_op_f32(-global0.d))), ~global0.a, !any(select(vec2<bool>(true, true), select(global0.b.yx, global0.b.wx, global0.b.x), global0.b.wy)));
    let var_3 = Struct_1(global2.x, !(!(!vec4<bool>(global0.b.x, true, false, global0.b.x))), vec4<u32>(var_1.x & 64281u, ~(select(17031u, 0u, global0.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(26725u, var_1.x, 0u, 14104u), vec4<u32>(25516u, 1u, global0.e.x, 89490u))), u_input.a, var_1.x), -590f, reverseBits(~global0.e) & min(~(~global0.c), abs(vec4<u32>(u_input.a, 4294967295u, global0.e.x, 25284u))));
    var var_4 = abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-46553i, -11959i), ~u_input.b.x), abs(-(global2.xw >> (vec2<u32>(4294967295u, global0.c.x) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(u_input.b, u_input.b)));
    return var_3.a;
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global1 = array<Struct_4, 12>();
    global2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, -1i, -2147483647i, global0.a)), vec4<i32>(u_input.b.x, global0.a, -42478i, arg_0.a) ^ vec4<i32>(global0.a, 3415i, global2.x, 14614i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.e.x, arg_0.d.a, -1i, arg_0.d.a), vec4<i32>(global2.x, 0i, global0.a, global0.a)), -2147483647i, -5720i, 0i)), ~vec4<i32>(arg_0.b.e.x >> (18128u % 32u), u_input.b.x, func_2(), 23530i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-323i, global0.a >> (global0.c.x % 32u), -20660i, ~(-15102i)), vec4<i32>(10685i, -31107i, _wgslsmith_sub_i32(0i, arg_0.e.x), global0.a)));
    let var_0 = arg_0.b.c;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.b.b.d, -1184f))))))), arg_0.d.d));
    var var_2 = arg_0.b.a;
    return Struct_2((((4681i ^ arg_0.a) >> (firstTrailingBit(0u) % 32u)) | arg_0.d.a) | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global2.wz, _wgslsmith_sub_vec2_i32(var_0, global2.xz)), 0i), arg_0.b.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = global1[_wgslsmith_index_u32(52146u, 12u)];
    global0 = func_1(global1[_wgslsmith_index_u32(~(~max(1u, arg_1.b.c.x)), 12u)]).b;
    let var_2 = var_0.a.b.zx;
    var var_3 = ~(func_4(func_1(global1[_wgslsmith_index_u32(arg_2.b.b.e.x, 12u)]).b.c) ^ _wgslsmith_mod_i32(countOneBits(91425i), -2147483647i));
    return arg_1;
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_5(max(~global0.e, _wgslsmith_mult_vec4_u32(global0.c, global0.c)), arg_0, Struct_3(func_1(Struct_4(-arg_0.b.a, Struct_3(Struct_1(-1i, vec4<bool>(global0.b.x, true, false, arg_0.b.b.x), global0.e, 2126f, vec4<u32>(arg_0.b.e.x, global0.c.x, 28802u, 14916u)), arg_0, u_input.b, arg_0.b, vec3<i32>(-732i, -33969i, global0.a)), !global0.b.yzy, arg_0.b, _wgslsmith_add_vec2_i32(global2.yz, u_input.b))).b, func_5(~(vec4<u32>(1u, 83136u, 37633u, 4294967295u) << (vec4<u32>(0u, u_input.a, arg_0.b.c.x, 1u) % vec4<u32>(32u))), arg_0, Struct_3(arg_0.b, func_1(global1[_wgslsmith_index_u32(0u, 12u)]), vec2<i32>(u_input.b.x, 11917i), arg_0.b, _wgslsmith_add_vec3_i32(global2.zyw, vec3<i32>(2147483647i, -2147483647i, 12853i)))), ~max(firstLeadingBit(vec2<i32>(global2.x, -59742i)), select(u_input.b, vec2<i32>(69165i, global0.a), global0.b.xw)), func_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b.c.x ^ u_input.a, _wgslsmith_div_u32(arg_0.b.e.x, 109128u)), 12u)]).b, ~countOneBits(vec3<i32>(12413i, 87174i, u_input.b.x)))).b.e.x;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(-310f, 142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.d))), 461f))));
    var var_2 = ~(-u_input.b.x);
    let var_3 = func_3(u_input.a, -2132f, arg_0.b.b.x, global0.d).x;
    let var_4 = vec3<i32>(0i, 3230i, arg_0.a);
    return Struct_3(Struct_1(-arg_0.a, vec4<bool>(!arg_0.b.b.x, global0.b.x, !(true && global0.b.x), global0.b.x), vec4<u32>(~(global0.e.x << (u_input.a % 32u)), firstLeadingBit(~var_3), ~arg_0.b.c.x, 0u), _wgslsmith_f_op_f32(f32(-1f) * -486f), ~(~vec4<u32>(u_input.a, var_3, global0.c.x, 4294967295u))), Struct_2(-_wgslsmith_clamp_i32(var_4.x << (46315u % 32u), 37746i, -2354i | arg_0.a), arg_0.b), _wgslsmith_div_vec2_i32(global2.yz, ~(~global2.zx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.b.e.x), vec2<u32>(7084u, 0u)) % vec2<u32>(32u)))), func_5(vec4<u32>(u_input.a, _wgslsmith_add_u32(14814u, ~global0.c.x), 2563u, ~min(1u, 1u)), arg_0, Struct_3(arg_0.b, arg_0, vec2<i32>(u_input.b.x, firstLeadingBit(-1i)), func_1(global1[_wgslsmith_index_u32(select(arg_0.b.c.x, global0.c.x, true), 12u)]).b, countOneBits(-var_4))).b, ~vec3<i32>(countOneBits(-36806i), 1i, global2.x >> (~arg_0.b.e.x % 32u)));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5) -> Struct_3 {
    var var_0 = func_6(arg_1.b);
    let var_1 = Struct_3(Struct_1(~var_0.c.x, global0.b, arg_1.a.c, _wgslsmith_f_op_f32(ceil(global0.d)), vec4<u32>(arg_1.b.b.c.x, 1u, max(func_1(Struct_4(23623i, Struct_3(var_0.a, var_0.b, arg_1.e.yy, var_0.a, var_0.e), arg_1.a.b.wzz, Struct_1(2147483647i, vec4<bool>(arg_0, var_0.d.b.x, false, false), vec4<u32>(51563u, arg_1.a.c.x, 0u, 4294967295u), 1362f, global0.c), u_input.b)).b.c.x, 55337u), var_0.d.c.x ^ _wgslsmith_add_u32(11510u, u_input.a))), arg_1.b, vec2<i32>(func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.c.x, arg_1.d.c.x, 4294967295u, var_0.d.e.x), firstTrailingBit(arg_1.a.c))), func_2()), Struct_1(i32(-1i) * -(global0.a & global0.a), !arg_1.d.b, vec4<u32>(~arg_2.b & arg_1.a.e.x, abs(1u), 43532u, func_6(arg_1.b).d.c.x), global0.d, abs(max(arg_1.d.c, _wgslsmith_add_vec4_u32(arg_1.d.c, vec4<u32>(13626u, arg_1.a.c.x, 0u, u_input.a))))), _wgslsmith_sub_vec3_i32(global2.ywx, vec3<i32>(-(~global0.a), -2147483647i, func_4(select(var_0.d.e, vec4<u32>(arg_1.a.c.x, 4294967295u, 1u, 4294967295u), arg_0)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(243f, var_1.b.b.d, var_1.a.b.x)), -1200f, -1427f, -177f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, arg_1.b.b.d, 242f, 603f) + vec4<f32>(var_0.b.b.d, var_1.d.d, arg_1.b.b.d, global0.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.d, -621f, -1681f, var_0.b.b.d) - vec4<f32>(-1177f, -741f, -994f, 569f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.d)), _wgslsmith_div_f32(347f, var_1.d.d), _wgslsmith_f_op_f32(min(var_0.b.b.d, 797f)), arg_1.a.d))));
    var_0 = func_6(var_1.b);
    global1 = array<Struct_4, 12>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(~(-firstLeadingBit(vec4<i32>(u_input.b.x, 2147483647i, -46239i, global2.x))), min(abs(vec4<i32>(-38305i, 1i, 2147483647i, u_input.b.x) << (~global0.c % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, 28311i, 32600i, global2.x), vec4<i32>(u_input.b.x, 2147483647i, 22871i, global2.x)), reverseBits(vec4<i32>(global2.x, u_input.b.x, 1i, 2147483647i)))), false);
    var var_0 = func_7(any(!global0.b), func_6(func_5(abs(global0.c), func_1(Struct_4(u_input.b.x, Struct_3(Struct_1(-2147483647i, global0.b, vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), global0.d, vec4<u32>(global0.e.x, u_input.a, u_input.a, 49213u)), Struct_2(0i, Struct_1(-1i, vec4<bool>(global0.b.x, true, global0.b.x, false), global0.e, global0.d, vec4<u32>(22987u, u_input.a, u_input.a, global0.c.x))), vec2<i32>(u_input.b.x, global0.a), Struct_1(35388i, global0.b, global0.c, global0.d, global0.c), global2.wyz), global0.b.wwz, Struct_1(-2147483647i, global0.b, vec4<u32>(u_input.a, 51024u, u_input.a, u_input.a), 761f, global0.c), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_1(global2.x, vec4<bool>(global0.b.x, false, true, true), vec4<u32>(0u, global0.c.x, u_input.a, 64116u), -1019f, global0.e), func_1(Struct_4(u_input.b.x, Struct_3(Struct_1(u_input.b.x, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<u32>(u_input.a, global0.c.x, 1u, global0.e.x), 884f, global0.e), Struct_2(global0.a, Struct_1(-1i, vec4<bool>(true, global0.b.x, global0.b.x, true), vec4<u32>(global0.e.x, global0.e.x, 1u, u_input.a), global0.d, global0.e)), vec2<i32>(-4903i, 19596i), Struct_1(-16044i, global0.b, vec4<u32>(6838u, 32337u, u_input.a, 18978u), global0.d, global0.e), global2.xyz), global0.b.xzy, Struct_1(global0.a, global0.b, global0.c, global0.d, global0.e), u_input.b)), -global2.xx, Struct_1(global2.x, global0.b, vec4<u32>(global0.e.x, 0u, global0.e.x, 32539u), global0.d, global0.c), ~global2.xxz))), Struct_5(vec4<i32>(~(-17667i), -min(u_input.b.x, 2147483647i), min(39402i, u_input.b.x | 35304i), -36210i), global0.c.x));
    var var_1 = global0.c.wxw ^ (vec3<u32>(u_input.a, 28632u, var_0.d.c.x) ^ global0.c.xxy);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, var_0.b.b.d, var_0.a.d, 427f) - vec4<f32>(var_0.d.d, 1414f, var_0.d.d, var_0.b.b.d))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_div_f32(var_0.a.d, -769f)), var_0.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), 582f)), global0.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.d, var_0.d.d, var_0.d.d, var_0.b.b.d) * vec4<f32>(var_0.a.d, -1023f, var_0.a.d, var_0.d.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1831f, global0.d, 543f, var_0.d.d)), !var_0.a.b))))));
    let var_3 = vec3<i32>(~(-42435i), max(-8082i, func_6(var_0.b).d.a), global2.x & global2.x);
    var var_4 = func_1(Struct_4(17672i, func_7(var_0.a.b.x, func_6(func_5(global0.c, var_0.b, Struct_3(Struct_1(var_0.c.x, global0.b, global0.e, var_0.b.b.d, var_0.a.c), Struct_2(-1i, Struct_1(u_input.b.x, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<u32>(37269u, 67604u, u_input.a, 4294967295u), 569f, var_0.d.c)), var_3.yz, Struct_1(global0.a, vec4<bool>(global0.b.x, false, var_0.a.b.x, true), global0.e, 369f, vec4<u32>(35673u, global0.e.x, var_0.d.e.x, 0u)), var_0.e))), Struct_5(min(vec4<i32>(1i, 1i, 1i, u_input.b.x), vec4<i32>(global2.x, 2147483647i, -8065i, 2147483647i)), _wgslsmith_mult_u32(20256u, var_1.x))), vec3<bool>(true, true, true), var_0.a, vec2<i32>(_wgslsmith_add_i32(-1i, -19256i) | var_3.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -48411i), func_7(global0.b.x, Struct_3(var_0.b.b, Struct_2(u_input.b.x, Struct_1(-6095i, var_0.a.b, global0.e, -605f, vec4<u32>(u_input.a, global0.e.x, var_1.x, 79508u))), var_0.c, var_0.a, vec3<i32>(var_0.d.a, -1i, u_input.b.x)), Struct_5(vec4<i32>(2147483647i, 60879i, u_input.b.x, var_0.b.b.a), 14083u)).d.a)))).b.b.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.b.x, -2147483647i, ~(-2147483647i >> (u_input.a % 32u)), 2147483647i) & ~min(vec4<i32>(global2.x, 2147483647i, global2.x, var_3.x), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, var_0.d.a, -56605i, u_input.b.x), vec4<i32>(global0.a, global0.a, global2.x, -12092i))), -261f, vec3<u32>(0u, _wgslsmith_mod_u32(u_input.a, 19102u), global0.c.x), var_1.xy, _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_0.a.e.x, var_0.b.b.c.x, var_1.x))), ~(global0.e.zwx | vec3<u32>(70730u, 38985u, var_0.b.b.e.x))));
}

