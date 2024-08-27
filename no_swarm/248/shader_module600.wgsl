struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<i32, 16> = array<i32, 16>(i32(-2147483648), -39347i, i32(-2147483648), -27699i, -4181i, -1i, 22791i, 2147483647i, -3268i, 29648i, -62674i, 49108i, -48566i, 16287i, 66924i, 19674i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.b, arg_0.b, false)) * _wgslsmith_f_op_vec2_f32(min(arg_0.b, vec2<f32>(arg_0.b.x, 814f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(950f)), -502f)), vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.a.x), arg_0, _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67108u, 26u)], 26u)] >> (42447u % 32u))), vec2<u32>(firstLeadingBit(0u), u_input.a)), !(!((global1[_wgslsmith_index_u32(4294967295u, 16u)] >= 1i) == any(vec2<bool>(arg_0.c.x, arg_0.c.x)))), arg_0.b.x);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.x, countOneBits(1i), var_0.b.d >> (_wgslsmith_div_u32(1u, 11128u) % 32u)), abs(firstTrailingBit(min(var_0.a.a, vec3<i32>(2147483647i, -17848i, arg_0.d)))));
    var var_2 = ~(~vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)], 8859u)), vec4<u32>(u_input.a, u_input.a, 0u, 10775u))));
    global0 = array<u32, 26>();
    let var_3 = _wgslsmith_f_op_f32(-var_0.e);
    return 1u | ~var_0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    var var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(func_3(Struct_1(vec3<i32>(0i, 37343i, 1i), vec2<f32>(-1000f, -1208f), arg_0.c, 1i)), 26u)], ~(33910u << (0u % 32u)), ~(~42489u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~21788u, firstTrailingBit(14013u), firstTrailingBit(3901u)), ~abs(vec3<u32>(4294967295u, 52846u, u_input.a)), vec3<u32>(45908u, func_3(Struct_1(arg_0.a, arg_0.b, vec2<bool>(arg_0.c.x, false), global1[_wgslsmith_index_u32(u_input.a, 16u)])), firstTrailingBit(u_input.a)))));
    let var_1 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(-1825i, arg_0.d, -1i, 2147483647i)), vec4<i32>(-arg_1.a.x | 1i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-23443i, -20009i), arg_0.a.xz), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(92046u, u_input.a), 16u)]), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(16782u, 16u)], global1[_wgslsmith_index_u32(29343u, 16u)], 2147483647i, arg_0.a.x), min(vec4<i32>(arg_0.a.x, -20160i, global1[_wgslsmith_index_u32(4294967295u, 16u)], arg_0.d), vec4<i32>(arg_0.d, 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 16u)], 0i))), -arg_0.a.x)));
    global0 = array<u32, 26>();
    let var_2 = !arg_0.c.x;
    global0 = array<u32, 26>();
    return ~(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 7598u, var_0.x)), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)) | vec3<u32>(~global0[_wgslsmith_index_u32(var_0.x, 26u)] >> (firstTrailingBit(global0[_wgslsmith_index_u32(1u, 26u)]) % 32u), var_0.x, min(~u_input.a, global0[_wgslsmith_index_u32(34470u >> (var_0.x % 32u), 26u)])));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_clamp_i32(min(-arg_1.x, _wgslsmith_clamp_i32(i32(-1i) * -48748i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 24640u, 1u), vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], 0u, u_input.a) % vec3<u32>(32u))), 16u)], arg_1.x)), ~11221i, ~_wgslsmith_add_i32(arg_1.x | ~(-33481i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 16u)]));
    var_0 = arg_1.x;
    var var_1 = 1293f;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -926f))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(trunc(208f))), 496f)), 1000f));
    return Struct_1(-arg_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -754f)))))), !select(vec2<bool>(arg_0.x < arg_0.x, false), vec2<bool>(true, true), false), firstTrailingBit(select(40898i, -49059i, 86650u != u_input.a) << (~min(u_input.a, arg_0.x) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = ~(~abs(abs(~vec4<u32>(1u, global0[_wgslsmith_index_u32(arg_1, 26u)], 1u, arg_1))));
    let var_2 = vec2<u32>((_wgslsmith_sub_u32(0u, u_input.a) << (1u % 32u)) & ~(~arg_1), abs(0u)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_1.zw, abs(var_1.zw)), ~vec2<u32>(4294967295u, var_1.x)), ~(~var_1.zw), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, u_input.a, global0[_wgslsmith_index_u32(62501u, 26u)], 4294967295u)), vec4<u32>(var_1.x, 42471u, 47767u, u_input.a) ^ vec4<u32>(1u, var_1.x, 85647u, 1u)), ~u_input.a)) % vec2<u32>(32u));
    let var_3 = var_2.x;
    var var_4 = reverseBits(~(~(~vec4<u32>(var_3, var_1.x, 1u, arg_1) >> (vec4<u32>(20313u, 4294967295u, 10231u, 2558u) % vec4<u32>(32u)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 16>();
    var var_0 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a | global0[_wgslsmith_index_u32(u_input.a, 26u)], ~global0[_wgslsmith_index_u32(u_input.a, 26u)]) ^ vec2<u32>(0u, reverseBits(4294967295u))), ~(vec2<u32>(u_input.a, u_input.a) ^ ~(vec2<u32>(global0[_wgslsmith_index_u32(1u, 26u)], 4294967295u) | vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(5704u, 26u)]))));
    let var_1 = Struct_2(func_5(func_4(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4573u, 3347u)), abs(vec3<i32>(1i, global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(68403u, 16u)])) << (func_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(12550u, 16u)], -19962i, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<f32>(775f, 645f), vec2<bool>(true, true), -26759i), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 16u)], global1[_wgslsmith_index_u32(18713u, 16u)], -2304i), vec2<f32>(295f, -1564f), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 16u)]), true) % vec3<u32>(32u))), min(firstTrailingBit(28516u) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), vec2<u32>(0u, 0u)), 13946u)), Struct_1(vec3<i32>(21812i, -13359i, 10879i) | _wgslsmith_clamp_vec3_i32(max(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], 19419i), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)])), -vec3<i32>(2059i, global1[_wgslsmith_index_u32(4294967295u, 16u)], 0i), -vec3<i32>(10640i, 1402i, 21865i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-621f, 1577f)) + _wgslsmith_f_op_f32(abs(-446f))), -1422f), vec2<bool>(true, false), _wgslsmith_div_i32(~(i32(-1i) * -18759i), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.x, 26u)], 16u)] & select(-65959i, 2147483647i, false))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 1u), firstTrailingBit(min(vec2<u32>(0u, global0[_wgslsmith_index_u32(84996u, 26u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 0u)))), false, _wgslsmith_f_op_f32(ceil(501f)));
    var_0 = var_1.c;
    var var_2 = select(vec3<bool>(63983u > var_0.x, var_1.b.c.x || true, true), select(!(!select(vec3<bool>(var_1.a.c.x, var_1.a.c.x, true), vec3<bool>(var_1.d, false, var_1.a.c.x), vec3<bool>(var_1.d, var_1.a.c.x, true))), select(!vec3<bool>(false, var_1.b.c.x, var_1.d), vec3<bool>(func_4(var_1.c, var_1.a.a).c.x, var_1.a.c.x, var_1.d), false), vec3<bool>(!var_1.d, false && all(vec2<bool>(var_1.d, var_1.a.c.x)), all(!vec3<bool>(true, false, var_1.d)))), select(!select(!vec3<bool>(var_1.d, var_1.b.c.x, false), vec3<bool>(var_1.a.c.x, true, true), var_1.d), vec3<bool>(all(vec2<bool>(true, true)), true, false), !(!vec3<bool>(false, false, var_1.d))));
    return var_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<i32, 16>();
    var var_0 = Struct_2(func_1(), Struct_1(_wgslsmith_add_vec3_i32(-arg_0.a, arg_0.a) & vec3<i32>(abs(global1[_wgslsmith_index_u32(u_input.a, 16u)]), max(-3531i, -47420i), global1[_wgslsmith_index_u32(~4294967295u, 16u)]), arg_0.b, !(!arg_0.c), func_5(arg_0, ~(global0[_wgslsmith_index_u32(39321u, 26u)] & u_input.a)).d), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, ~40078u), max(min(vec2<u32>(global0[_wgslsmith_index_u32(33841u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(u_input.a, 1u)), vec2<u32>(1u, 0u))) ^ _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(u_input.a, 49006u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38817u, 26u)], 26u)], u_input.a) | ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a), ~vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(21587u, 26u)]) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), arg_0.c.x || all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_1 = Struct_2(func_1(), var_0.b, countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(45190u, 0u), ~var_0.c), var_0.c)), true, arg_0.b.x);
    let var_2 = var_1.a;
    var var_3 = vec3<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, var_1.c.x), ~4294967295u), ~_wgslsmith_mod_u32(func_2(arg_0, Struct_1(vec3<i32>(var_2.d, 188i, 2147483647i), vec2<f32>(var_1.e, var_2.b.x), vec2<bool>(false, true), 11601i), true).x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 26u)]) & var_1.c, ~var_1.c)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 16>();
    var var_0 = vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a | 0u), 26u)], ~(~countOneBits(28829u)), 39068u);
    let var_1 = func_6(func_1(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f * 941f)), _wgslsmith_f_op_f32(trunc(1238f)))))));
    global1 = array<i32, 16>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-631f, var_1.b.x, var_1.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, var_1.b.x, var_1.b.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(231f, -539f, -414f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, var_1.b.x, var_1.b.x)), var_1.c.x))));
    var var_3 = Struct_2(func_6(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-445f + 1337f), _wgslsmith_f_op_f32(-var_2.x)))))), var_1, var_0.yz, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1309f))) - 1898f));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(func_5(var_1, 52915u), u_input.a).b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.a.b.x, var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e + var_2.x) - var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1[_wgslsmith_index_u32(0u, 16u)] ^ -19616i), ~abs(~vec3<u32>(var_0.x, var_3.c.x, var_0.x)) & _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 19674u, global0[_wgslsmith_index_u32(68431u, 26u)]), vec3<u32>(1u, 40806u, 4294967295u), vec3<bool>(var_1.c.x, false, var_1.c.x)), func_2(func_6(var_3.b, var_2.x), func_1(), func_4(vec2<u32>(u_input.a, 4294967295u), vec3<i32>(var_3.b.a.x, -1i, var_1.d)).c.x), firstLeadingBit(reverseBits(vec3<u32>(4294967295u, 43214u, global0[_wgslsmith_index_u32(27017u, 26u)])))));
}

