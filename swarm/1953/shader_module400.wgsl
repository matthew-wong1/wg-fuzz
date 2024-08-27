struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<i32>(30300i, -27775i, 11892i, 18487i)), Struct_1(vec4<i32>(66719i, -1i, -1i, 9982i)), Struct_1(vec4<i32>(2147483647i, -1i, 0i, -12377i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -34491i)), Struct_1(vec4<i32>(1i, 2693i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(48612i, 0i, -1i, -19141i)), Struct_1(vec4<i32>(-54103i, 35439i, -48803i, 0i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -5277i, 37182i)), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), -61169i)), Struct_1(vec4<i32>(-1i, 13036i, 2147483647i, 0i)), Struct_1(vec4<i32>(-94509i, -1562i, 0i, 23573i)), Struct_1(vec4<i32>(0i, 28685i, 0i, 0i)), Struct_1(vec4<i32>(2147483647i, 29188i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(-1i, 44077i, 1i, -14831i)), Struct_1(vec4<i32>(-1i, -16861i, -5467i, 0i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(25180i, -72963i, 1i, 65383i)), Struct_1(vec4<i32>(8268i, -1i, 0i, 1i)), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 49938i)), Struct_1(vec4<i32>(2147483647i, -1i, 48936i, -1i)), Struct_1(vec4<i32>(49609i, 1i, 4379i, 1i)), Struct_1(vec4<i32>(-2269i, 0i, 2147483647i, -64741i)), Struct_1(vec4<i32>(2147483647i, -1i, 19052i, 78902i)), Struct_1(vec4<i32>(60049i, 0i, i32(-2147483648), 10865i)), Struct_1(vec4<i32>(2147483647i, 32654i, 2147483647i, -2648i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, 24087i)), Struct_1(vec4<i32>(i32(-2147483648), 8811i, -57778i, 0i)), Struct_1(vec4<i32>(-312i, 0i, -41052i, 26172i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -41139i)), Struct_1(vec4<i32>(9545i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-1i, 36513i, 0i, -71486i)));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = 22607u;
    return _wgslsmith_sub_u32(min(global0[_wgslsmith_index_u32(~30595u, 28u)], global4.d) | _wgslsmith_mod_u32(_wgslsmith_mod_u32(54044u, global4.d | arg_1), 81331u), ~8217u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)))), -530f);
    global1 = var_0.x;
    return vec2<bool>(global2.x, true);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(min(global4.d, firstLeadingBit(~(~arg_0.x)) ^ 57095u), 31u)];
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - arg_1.x)));
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(min(~var_0.a, var_0.a), vec4<i32>(reverseBits(u_input.a), firstTrailingBit(-var_0.a.x), reverseBits(-u_input.a), _wgslsmith_dot_vec4_i32(var_0.a, -vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -20366i))), var_0.a));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(-var_0.a, var_2.a, select(vec4<i32>(max(-45290i, 1i), ~var_2.a.x, var_0.a.x & var_0.a.x, i32(-1i) * -2628i), ~(~var_0.a), select(!vec4<bool>(true, true, global4.a.x, global4.a.x), select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global4.b.x, true, global4.b.x, false), vec4<bool>(true, arg_2.c, arg_2.a.x, global2.x)), select(false, arg_2.c, arg_2.c)))));
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(abs(~vec2<u32>(0u, 43605u))), vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(33395u, 14408u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 1u), vec4<u32>(global4.d, global4.d, 4294967295u, 33927u)), 23224u) & ~22184u, _wgslsmith_clamp_u32(41025u, global0[_wgslsmith_index_u32(~arg_2.d, 28u)], firstLeadingBit(~arg_0.x)))), 31u)];
    return !global4.a;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(55718i, _wgslsmith_mult_i32(2147483647i, ~u_input.a)) << (global0[_wgslsmith_index_u32(~min(1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(45431u, 28u)], 28u)]), 28u)] % 32u));
    global3 = array<Struct_1, 31>();
    global2 = global4.b.xx;
    var var_1 = global3[_wgslsmith_index_u32(7424u, 31u)];
    let var_2 = global3[_wgslsmith_index_u32(8522u, 31u)];
    return select(vec2<bool>(func_2(global3[_wgslsmith_index_u32(~10334u, 31u)], ~0u) < global0[_wgslsmith_index_u32(0u, 28u)], true), func_4(vec2<u32>(~global0[_wgslsmith_index_u32(9008u >> (0u % 32u), 28u)], global4.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(158f, -703f, 1000f, -458f) + vec4<f32>(-1000f, -1583f, -364f, -987f)))), Struct_2(select(func_3(Struct_1(var_2.a), var_2.a, var_2.a.zwy, Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, var_2.a.x, var_1.a.x))), vec2<bool>(false, global2.x), global2.x), global4.b, 20775u < global0[_wgslsmith_index_u32(~global4.d, 28u)], ~(~global4.d))), global4.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = reverseBits(~_wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_1.x, 14965i, u_input.a, 0i) >> (vec4<u32>(62735u, 0u, 0u, 7392u) % vec4<u32>(32u))) ^ 41304i);
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(~abs(vec3<u32>(global4.d, 23634u, 88784u))), ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(15155u, 1480u, 4294967295u), vec3<u32>(arg_2.d, arg_2.d, 2132u)))), ~vec3<u32>(global4.d, global0[_wgslsmith_index_u32(1u, 28u)], 9071u | global4.d) | reverseBits(vec3<u32>(global4.d, 0u, min(0u, 20070u))));
    var var_2 = var_1;
    let var_3 = -(~(~reverseBits(_wgslsmith_clamp_i32(6571i, u_input.a, -10017i))));
    var var_4 = true;
    return _wgslsmith_add_i32(-17521i, -arg_0.a.x) >> (_wgslsmith_add_u32(global4.d ^ (abs(global0[_wgslsmith_index_u32(var_2.x, 28u)]) >> (_wgslsmith_mod_u32(33653u, global0[_wgslsmith_index_u32(1u, 28u)]) % 32u)), func_2(global3[_wgslsmith_index_u32(0u, 31u)], abs(~var_2.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 76771u;
    let var_1 = func_5(global3[_wgslsmith_index_u32(96445u, 31u)], select((_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -17268i, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a)) & (vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, -2147483647i, 1i))) & ~vec3<i32>(-1i, 0i, -12392i), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(4174i, u_input.a, 50382i) | vec3<i32>(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -1i), vec3<i32>(16179i, 2147483647i, 13983i)), firstTrailingBit(vec3<i32>(-2147483647i, -13039i, -37687i) | vec3<i32>(0i, -7958i, u_input.a))), global4.b), Struct_2(select(!select(global4.a, global4.a, vec2<bool>(global2.x, true)), func_1(), true), select(global4.b, !vec3<bool>(false, global2.x, global4.b.x), global4.c), true, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global4.d, 28u)], global4.d, global4.d), vec3<u32>(73899u, 4294967295u, 4294967295u)), ~vec3<u32>(1u, 4294967295u, global4.d))), global2.x);
    let var_2 = Struct_2(!global4.a, !global4.b, 0u > ~(~(16836u | global0[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_mod_u32(global4.d, ~(79728u & firstLeadingBit(var_0))));
    let var_3 = var_2;
    global4 = Struct_2(func_1(), select(select(var_2.b, select(var_3.b, vec3<bool>(false, var_3.a.x, global2.x), true), false), vec3<bool>(!var_3.b.x || (var_3.d > var_2.d), global4.a.x, global4.d == ~var_0), var_3.b), var_1 >= (var_1 << (global0[_wgslsmith_index_u32(var_0, 28u)] % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.d >> (1u % 32u), min(4294967295u, 1537u), _wgslsmith_mod_u32(var_2.d, var_3.d)), countOneBits((vec3<u32>(4294967295u, var_0, global4.d) | vec3<u32>(var_2.d, var_2.d, 4294967295u)) & ~vec3<u32>(0u, 4294967295u, 4493u))));
    global2 = func_1();
    global4 = var_3;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1552f, -1296f))))));
    var var_4 = firstTrailingBit((_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, 1i), -vec3<i32>(var_1, var_1, u_input.a)) << (vec3<u32>(global4.d, global4.d, ~var_0) % vec3<u32>(32u))) ^ vec3<i32>(-_wgslsmith_sub_i32(var_1, u_input.a), ~(u_input.a << (1u % 32u)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<u32>(~6612u, ~var_2.d), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(13644u, global0[_wgslsmith_index_u32(44344u, 28u)]), vec2<u32>(45566u, 0u)), firstTrailingBit(vec2<u32>(var_2.d, 0u))), true), vec3<f32>(1f, 1f, 1f), vec2<i32>(5888i, _wgslsmith_div_i32(abs(var_4.x), _wgslsmith_add_i32(var_1, 1i))), 1273f, 1000f);
}

