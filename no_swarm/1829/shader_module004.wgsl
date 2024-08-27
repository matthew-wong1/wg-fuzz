struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(24141u, 4294967295u, 4294967295u, 4294967295u, 1u, 45301u);

var<private> global1: array<f32, 23> = array<f32, 23>(-144f, -450f, 381f, -379f, 834f, 435f, -1795f, 341f, 345f, -1202f, -748f, 317f, 1088f, 501f, -1085f, -701f, 339f, -102f, -835f, -1005f, -482f, -1110f, 676f);

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = select(vec3<bool>(select(reverseBits(-29288i), u_input.d, true) < _wgslsmith_add_i32(firstTrailingBit(-2147483647i), u_input.d), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), all(vec2<bool>(false, false))), vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true)), any(vec4<bool>(true, true, true, true)), true));
    global1 = array<f32, 23>();
    var var_1 = Struct_1(select(~vec4<u32>(global0[_wgslsmith_index_u32(17279u, 6u)], 1u, global0[_wgslsmith_index_u32(1u, 6u)], u_input.c.x), max(vec4<u32>(0u, u_input.e.x, u_input.b.x, global0[_wgslsmith_index_u32(75724u, 6u)]), vec4<u32>(global0[_wgslsmith_index_u32(34139u, 6u)], u_input.e.x, u_input.b.x, 15354u)) >> (~u_input.c % vec4<u32>(32u)), !vec4<bool>(true, true, false, var_0.x)) >> (abs(_wgslsmith_add_vec4_u32(vec4<u32>(73966u, 1u, global0[_wgslsmith_index_u32(18163u, 6u)], 48387u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 30444u, global0[_wgslsmith_index_u32(62076u, 6u)], 48485u), u_input.e))) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(step(-1965f, global1[_wgslsmith_index_u32(18596u, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -1562f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-197f, global1[_wgslsmith_index_u32(0u, 23u)])))))), min(vec3<u32>(u_input.a.x, abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 6u)], 6u)], 1u)), ~_wgslsmith_add_u32(4294967295u, u_input.a.x)), countOneBits(~min(vec3<u32>(global0[_wgslsmith_index_u32(47186u, 6u)], u_input.b.x, 4294967295u), u_input.e.zyy))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(max(2147483647i, 22832i), ~(-85622i), 0i, 2147483647i), (vec4<i32>(u_input.d, u_input.d, u_input.d, 1i) & vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d)) ^ countOneBits(vec4<i32>(-1i, u_input.d, -1i, -1i))), countOneBits(~vec4<i32>(1i, -2147483647i, 0i, u_input.d) & (vec4<i32>(u_input.d, u_input.d, u_input.d, 12034i) ^ vec4<i32>(u_input.d, u_input.d, u_input.d, 75266i)))), vec3<bool>(false, true, var_0.x));
    global0 = array<u32, 6>();
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(~global0[_wgslsmith_index_u32(53584u, 6u)]), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 6u)], var_1.c.x, var_1.c.x, 35566u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), false), u_input.e), ~var_1.a.x, u_input.b.x), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 10715u, 0u, 0u), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 63598u, 1u), u_input.e))), var_1.b, _wgslsmith_add_vec3_u32(u_input.e.wwx, ~(~abs(var_1.c))), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.d << (global0[_wgslsmith_index_u32(1u, 6u)] % 32u)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzy, var_1.a.zww), u_input.a.x >> (0u % 32u), _wgslsmith_div_u32(60786u, 5980u)) % 32u), 1i, -_wgslsmith_dot_vec2_i32(var_1.d.xy, ~vec2<i32>(u_input.d, 48638i)), _wgslsmith_div_i32(-15280i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, -19376i), vec2<i32>(-1i, 2147483647i))) | _wgslsmith_mod_i32(~u_input.d, 1i)), var_0);
    return abs(_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(20245i, var_1.d.x, 2147483647i, -13917i), var_2.d), var_1.d)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    global1 = array<f32, 23>();
    global2 = array<Struct_1, 15>();
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, 2147483647i), _wgslsmith_add_i32(u_input.d, 1i)), func_3() ^ 0i, 20566i), vec3<i32>(948i, firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, u_input.d, 1i)), ~0i));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_0, abs(arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], 9764u, 72025u), vec3<u32>(arg_0, arg_0, global0[_wgslsmith_index_u32(214u, 6u)])), ~19756u), _wgslsmith_sub_vec4_u32(reverseBits(u_input.c), ~u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0 & arg_0, ~arg_0, ~arg_0, ~arg_0), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.b.x), ~u_input.a.x, _wgslsmith_mod_u32(u_input.e.x, 69573u), select(10689u, 4294967295u, arg_1.x))), vec4<u32>(~(~global0[_wgslsmith_index_u32(45751u, 6u)]), max(u_input.e.x, abs(global0[_wgslsmith_index_u32(u_input.e.x, 6u)])), ~4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0, 4294967295u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30475u, 23u)]))))), u_input.e.yyz, abs(countOneBits(vec4<i32>(-17256i, u_input.d, 0i, -61363i)) & abs(vec4<i32>(1i, var_0, 4543i, u_input.d) & vec4<i32>(u_input.d, -2147483647i, u_input.d, 441i))), arg_1);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, var_1.b.x));
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(48768u, min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(1u, 6u)] ^ var_1.c.x), 6u)] | arg_0, arg_0)), 15u)];
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(1211f * _wgslsmith_f_op_f32(select(-129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), arg_0.e.x)));
    global2 = array<Struct_1, 15>();
    let var_1 = arg_0.d.x;
    var var_2 = ~abs(1i);
    global0 = array<u32, 6>();
    return arg_0.d;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32((u_input.a.x << (~(arg_3 << (~arg_3 % 32u)) % 32u)) | u_input.a.x, 15u)];
    let var_1 = func_4(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(~global0[_wgslsmith_index_u32(64223u, 6u)]), countOneBits(~6310u)), 15u)]).x;
    let var_2 = -107f;
    var var_3 = select(select(select(select(vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x), select(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, true), vec4<bool>(true, false, var_0.e.x, var_0.e.x), true), select(vec4<bool>(false, var_0.e.x, true, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, true, false), var_0.e.x)), !vec4<bool>(true, var_0.e.x, true, true), select(select(vec4<bool>(true, false, var_0.e.x, false), vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.e.x, true, false)), select(vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(true, true, true, true), false), vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x))), vec4<bool>(var_0.e.x, !(var_0.d.x != arg_1.x), true, false), vec4<bool>(var_0.e.x, true, true, var_0.e.x)), vec4<bool>(!all(func_2(global0[_wgslsmith_index_u32(0u, 6u)], var_0.e).e.yz), false, var_0.e.x, arg_1.x == _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.x, -8148i) ^ var_0.d.zxy, countOneBits(arg_1.wxw))), -15556i < (arg_1.x & reverseBits(u_input.d | u_input.d)));
    let var_4 = false;
    return min(4294967295u, ~u_input.e.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = -arg_0.zz;
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~60222u, func_5(-11864i, func_4(func_2(23119u, vec3<bool>(true, true, false))), u_input.e.xzy, min(~4294967295u, 1u))), ~(u_input.a.x ^ func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_5(arg_1.x, vec4<i32>(var_0.x, u_input.d, u_input.d, arg_1.x), u_input.c.yxy, u_input.b.x), 6u)], 6u)], vec3<bool>(false, true, true)).a.x)), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_i32(min(max(u_input.d, -1i), 29189i), ~(~(-1637i)));
    let var_1 = -vec2<i32>(-43546i, -17939i);
    var var_2 = global2[_wgslsmith_index_u32(abs((4294967295u << ((u_input.c.x | u_input.c.x) % 32u)) >> (global0[_wgslsmith_index_u32(max(func_1(vec3<i32>(u_input.d, var_1.x, -1i), firstLeadingBit(vec4<i32>(u_input.d, 0i, var_0, 24861i))), 1u), 6u)] % 32u)), 15u)];
    var var_3 = u_input.c.zx;
    var var_4 = Struct_1(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), global1[_wgslsmith_index_u32(func_2(_wgslsmith_sub_u32(~var_2.c.x, var_3.x), vec3<bool>(all(vec4<bool>(var_2.e.x, false, false, false)), true, false)).a.x, 23u)], _wgslsmith_f_op_f32(f32(-1f) * -147f)), u_input.e.yxy, -abs(~(-vec4<i32>(-41729i, 1i, u_input.d, var_1.x))), !(!var_2.e));
    let var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37474u, 6u)] << (5710u % 32u), 23u)], var_2.b.x, 1084f, 372f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.b.x, var_2.b.x, var_2.b.x, -978f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 825f, 923f, var_4.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, global1[_wgslsmith_index_u32(var_2.a.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], var_2.b.x) - vec4<f32>(var_4.b.x, var_2.b.x, 1374f, -138f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, var_4.b.x, var_4.b.x, var_4.b.x))))))));
    var_4 = func_2(firstTrailingBit(select(abs(4294967295u ^ var_4.c.x), ~1u, true)), !(!select(vec3<bool>(false, var_4.e.x, var_2.e.x), vec3<bool>(false, true, true), select(var_4.e, var_4.e, var_2.e.x))));
    let var_6 = ~var_4.a | (vec4<u32>(~4586u ^ var_3.x, var_2.a.x, var_4.c.x, _wgslsmith_mult_u32(firstTrailingBit(58450u), u_input.e.x)) & abs(~vec4<u32>(39470u, 103296u, 1u, var_4.a.x) >> (firstLeadingBit(vec4<u32>(87652u, 90464u, u_input.b.x, 1u)) % vec4<u32>(32u))));
    let var_7 = ~func_4(Struct_1(reverseBits(u_input.c & var_6), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_4.b)), vec3<f32>(global1[_wgslsmith_index_u32(7776u, 23u)], var_4.b.x, 709f), true)), u_input.e.zzy, var_2.d, !(!vec3<bool>(var_4.e.x, true, false)))).yyx;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x, var_2.a.x >> (var_6.x % 32u));
}

