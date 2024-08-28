struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(15920u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<f32> {
    global2 = global0[_wgslsmith_index_u32(reverseBits(arg_0.a), 3u)];
    global0 = array<Struct_2, 3>();
    global1 = ~(select(_wgslsmith_mod_i32(arg_2.a.x, 9125i), u_input.b.x | arg_2.a.x, true) & (_wgslsmith_sub_i32(52148i, -1i) & (1i << (global2.a % 32u)))) | -21834i;
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.a, 4294967295u, max(~global2.a, reverseBits(67488u)) & 48031u), (~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b, arg_2.d.a, 1u), vec3<u32>(34198u, arg_2.d.a, arg_0.a)) & _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.b, 5598u, arg_2.b), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_2.b, 39981u), vec3<u32>(1u, 47266u, arg_2.b)))) & _wgslsmith_sub_vec3_u32(min(vec3<u32>(arg_0.a, 0u, global2.a), vec3<u32>(arg_0.a, 0u, arg_0.a)), vec3<u32>(max(arg_2.b, arg_0.a), ~arg_0.a, ~arg_2.d.a)));
    global2 = arg_2.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(134f, arg_2.c, arg_2.c) + vec3<f32>(-193f, -375f, 1974f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-971f, 910f, arg_2.c)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.c)), _wgslsmith_f_op_f32(160f - -487f), arg_2.c))), vec3<f32>(-470f, _wgslsmith_f_op_f32(f32(-1f) * -1633f), _wgslsmith_f_op_f32(f32(-1f) * -1349f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1315f, arg_2.c, arg_2.c), vec3<f32>(-1707f, 487f, arg_2.c)), vec3<f32>(arg_2.c, arg_2.c, arg_2.c), false)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.c, arg_2.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, -692f, arg_2.c) + vec3<f32>(arg_2.c, 642f, -1693f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-839f, arg_2.c, 1633f), vec3<f32>(arg_2.c, arg_2.c, -556f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(275f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, -832f) * -1502f)));
    var var_1 = Struct_1(true || arg_1.a, -434f, ~(~arg_1.e.x), vec3<f32>(_wgslsmith_f_op_f32(arg_1.b + var_0), 3030f, arg_1.b), ~firstTrailingBit(~(vec2<i32>(2147483647i, 57562i) ^ u_input.b.wx)));
    let var_2 = reverseBits(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(-50565i, select(arg_1.c, -37904i ^ arg_1.e.x, all(vec2<bool>(var_1.a, var_1.a))), -1i)));
    let var_3 = Struct_3(firstTrailingBit(vec4<i32>(~40677i, ~reverseBits(25411i), 1i, 36104i)), arg_2.x, 1486f, Struct_2(global2.a << (arg_2.x % 32u)));
    var var_4 = var_1.d.zz;
    return select(any(select(!vec3<bool>(var_1.a, arg_1.a, false), !select(vec3<bool>(false, true, arg_1.a), vec3<bool>(var_1.a, false, true), var_1.a), var_1.a)), true != (arg_1.a && true), false);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 3u)];
    let var_1 = Struct_1(func_4(u_input.b.x, Struct_1(true, -767f, -406i, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(4294967295u), firstLeadingBit(u_input.b.wzx), Struct_3(u_input.b, 18162u, 1731f, Struct_2(0u)))), ~vec2<i32>(u_input.d, u_input.a.x)), max(vec4<u32>(~11371u, 51374u, arg_2.x, ~58728u), ~min(vec4<u32>(arg_0, var_0.a, arg_2.x, arg_2.x), vec4<u32>(arg_1, 36037u, 0u, var_0.a)))), 1000f, u_input.d, vec3<f32>(-1251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-210f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(726f * 616f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x & -67447i, _wgslsmith_add_i32(u_input.d, 2147483647i)) >> ((arg_2 & arg_2) % vec2<u32>(32u)), (abs(u_input.b.xz) >> (arg_2 % vec2<u32>(32u))) | (max(vec2<i32>(u_input.b.x, -41956i), u_input.a) << ((arg_2 | arg_2) % vec2<u32>(32u)))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * -1500f), _wgslsmith_f_op_f32(min(var_1.d.x, -1000f))) - 592f)), ~(~u_input.d), var_1.d, u_input.a);
    var_0 = Struct_2(66197u);
    let var_3 = Struct_1(any(select(!(!vec3<bool>(var_2.a, var_1.a, var_1.a)), select(vec3<bool>(true, var_1.a, true), select(vec3<bool>(false, true, var_2.a), vec3<bool>(true, true, var_1.a), var_1.a), !vec3<bool>(var_1.a, var_2.a, var_1.a)), vec3<bool>(arg_1 == 4294967295u, false && var_2.a, var_2.a))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-1000f + -779f)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_1.c, 1i, var_1.e.x, -1i)), vec4<i32>(u_input.d, -1526i, -19873i, var_2.c) << (vec4<u32>(1u, arg_0, 407u, global2.a) % vec4<u32>(32u)), u_input.b) & firstLeadingBit(u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(min(u_input.b, vec4<i32>(var_1.e.x, -59759i, -2956i, var_1.c)), u_input.b ^ vec4<i32>(-2147483647i, -19975i, 0i, 11591i)), _wgslsmith_mod_i32(var_2.e.x, 38709i << (arg_1 % 32u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(var_2.c, -2147483647i, 11474i, u_input.c)), _wgslsmith_clamp_i32(-47654i, 29989i, ~(-11027i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.d, var_1.d)), _wgslsmith_f_op_vec3_f32(var_1.d * var_2.d)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-723f, var_2.b, -425f), vec3<f32>(var_1.b, -308f, -747f), true)), vec3<f32>(-317f, var_2.d.x, -660f), vec3<bool>(var_1.a, false, true))))), u_input.b.zw);
    return Struct_1(!all(select(!vec4<bool>(false, true, var_2.a, var_2.a), select(vec4<bool>(var_3.a, false, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, var_3.a, var_3.a), var_2.a), vec4<bool>(var_3.a, var_2.a, true, var_1.a))), var_3.d.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_3.e.x | var_1.c, _wgslsmith_add_i32(u_input.a.x, var_1.e.x), ~var_3.e.x, u_input.a.x), min(~u_input.b, max(u_input.b << (vec4<u32>(0u, var_0.a, 3913u, arg_2.x) % vec4<u32>(32u)), u_input.b))), var_2.d, var_1.e);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(min(u_input.a, arg_0.e) ^ arg_0.e, max(-vec2<i32>(1i, 26425i), vec2<i32>(14104i, arg_1))) | ~(vec2<i32>(u_input.a.x, arg_0.e.x) | _wgslsmith_add_vec2_i32(vec2<i32>(-20126i, u_input.c), u_input.b.xy)), ~(~vec2<i32>(u_input.b.x, arg_0.e.x)) ^ min(select(arg_0.e, arg_0.e, select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), vec2<bool>(arg_0.a, true))), vec2<i32>(_wgslsmith_add_i32(0i, arg_1), i32(-1i) * -4599i)));
    let var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d.x, arg_0.b, arg_0.b, arg_0.d.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, arg_0.b, arg_0.d.x, arg_0.b))))))) + vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-747f + arg_0.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - 1192f))), arg_0.b));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1617f, arg_0.d.x, 1561f, -951f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.b, var_2.x, arg_0.d.x) + vec4<f32>(-1000f, -339f, -356f, arg_0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 327f, arg_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, arg_0.b, var_2.x, -1658f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, arg_0.d.x, -275f, 325f), vec4<f32>(arg_0.b, -479f, var_2.x, arg_0.b))), vec4<f32>(-177f, arg_0.b, -1000f, arg_0.b))), arg_0.a)));
    let var_3 = vec4<bool>(arg_0.a, arg_0.a, any(select(vec2<bool>(arg_0.a, arg_0.a), select(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true)), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(arg_0.a, arg_0.a)), true)), (_wgslsmith_sub_i32(var_0.x >> (93751u % 32u), var_0.x >> (global2.a % 32u)) ^ var_0.x) != reverseBits(arg_0.e.x | -19778i));
    return var_2.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> f32 {
    global0 = array<Struct_2, 3>();
    let var_0 = arg_1;
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(func_2(global2.a, 74682u, vec2<u32>(28532u, global2.a)), 29116i)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(reverseBits(global2.a)), u_input.b.zxy, Struct_3(u_input.b ^ vec4<i32>(33832i, u_input.d, arg_0.x, -4110i), global2.a, _wgslsmith_f_op_f32(-arg_1.x), global0[_wgslsmith_index_u32(firstTrailingBit(22181u), 3u)]))).x, _wgslsmith_f_op_f32(2069f - 660f), var_0.x));
    let var_3 = Struct_3(vec4<i32>(abs(~arg_0.x), firstLeadingBit(50902i), var_1, -2147483647i), ~_wgslsmith_clamp_u32(global2.a, 0u, global2.a), _wgslsmith_f_op_f32(-var_0.x), global0[_wgslsmith_index_u32(global2.a, 3u)]);
    return _wgslsmith_f_op_f32(round(-1702f));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    global1 = abs(~u_input.a.x ^ -11641i);
    var var_0 = Struct_1(any(vec4<bool>(true, true, true, true)), -1000f, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.a), vec2<i32>(arg_1, -1i), select(false, true, true)), reverseBits(-vec2<i32>(u_input.b.x, -21120i))), ~(-vec2<i32>(u_input.a.x, u_input.d))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, arg_0, -513f)))))), firstLeadingBit(func_2(global2.a, 4294967295u, ~vec2<u32>(4294967295u, global2.a)).e >> (~select(vec2<u32>(global2.a, 4294967295u), vec2<u32>(0u, 2044u), true) % vec2<u32>(32u))));
    global1 = 2147483647i;
    var var_1 = func_2(~0u, 84034u, vec2<u32>(global2.a, global2.a));
    let var_2 = global2.a;
    return Struct_3(_wgslsmith_clamp_vec4_i32(reverseBits(abs(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(var_0.e.x, 0i, u_input.a.x, -1i), u_input.b))), -_wgslsmith_add_vec4_i32(vec4<i32>(54241i, var_0.e.x, var_1.e.x, -2147483647i), ~vec4<i32>(arg_1, -1i, var_0.c, var_1.e.x)), select(vec4<i32>(~u_input.a.x, 2147483647i, i32(-1i) * -12134i, 0i >> (global2.a % 32u)), vec4<i32>(u_input.b.x, u_input.c, var_1.e.x, -1726i) | firstTrailingBit(vec4<i32>(u_input.c, 41276i, 2147483647i, var_0.e.x)), var_1.a)), _wgslsmith_clamp_u32(0u, max(0u, countOneBits(~4294967295u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(128u, ~global2.a, 4294967295u), 63920u)), _wgslsmith_f_op_f32(ceil(arg_2.x)), Struct_2(5447u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.c, u_input.c)), -u_input.b.zxz), vec2<f32>(_wgslsmith_f_op_f32(-1266f * -676f), 479f)))), u_input.c, vec2<f32>(_wgslsmith_f_op_f32(826f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-828f, 1821f))), 1f));
    var_0 = Struct_3(reverseBits(-(var_0.a << (~vec4<u32>(36144u, 67473u, 1u, 6611u) % vec4<u32>(32u)))), _wgslsmith_add_u32(1u, ~global2.a), var_0.c, func_6(_wgslsmith_f_op_f32(743f - var_0.c), var_0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_0.d.a), select(var_0.a.xxw, vec3<i32>(0i, -67049i, u_input.a.x), false), func_6(-898f, u_input.b.x, vec2<f32>(356f, 1027f)))).yz)).d);
    global2 = Struct_2(max(~_wgslsmith_clamp_u32(49977u, 1u, 4294967295u) & ~func_6(var_0.c, -3177i, vec2<f32>(679f, -121f)).b, var_0.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~min(4294967295u, ~var_0.b)), global2.a, _wgslsmith_f_op_f32(max(var_0.c, -847f)), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), var_0.c)) + -372f)));
}

