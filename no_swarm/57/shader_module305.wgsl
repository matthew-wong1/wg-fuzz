struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec4<f32> = vec4<f32>(-504f, 573f, -603f, 1823f);

var<private> global2: vec2<u32> = vec2<u32>(38553u, 10314u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, 1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, arg_2.x, arg_2.x, arg_2.x)))), !(!arg_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -542f, global1.x, arg_2.x), vec4<f32>(-1195f, global1.x, global1.x, arg_2.x))))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), -514f, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), arg_0.a));
    let var_0 = -reverseBits(countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_1, -1866i, -23116i, 1i), countOneBits(vec4<i32>(arg_1, arg_1, arg_1, -75627i)))));
    var var_1 = Struct_3(Struct_1(any(arg_0.c), arg_0.b, vec4<bool>(all(vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), !arg_0.a, true, any(vec2<bool>(arg_0.c.x, arg_0.c.x)))), var_0.wxw, vec3<u32>(_wgslsmith_sub_u32(abs(10490u), ~max(u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 40277u, u_input.a, 43073u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, arg_0.b)), ~(vec4<u32>(arg_0.b, 17646u, 0u, 0u) | vec4<u32>(0u, 116487u, arg_0.b, arg_0.b))), reverseBits(~_wgslsmith_sub_u32(arg_0.b, arg_0.b))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yx * vec2<f32>(-528f, 873f))) + global1.yw), var_0.ywz, Struct_1(!(u_input.a >= u_input.a), 0u, !arg_0.c), arg_0, false));
    var var_2 = Struct_3(arg_0, select(vec3<i32>(-66458i, -var_0.x, _wgslsmith_sub_i32(-arg_1, 2147483647i)), vec3<i32>(max(7563i, arg_1 ^ -62717i), -1i, 1i), !var_1.a.c.www), ~(~var_1.c), var_1.d);
    global2 = vec2<u32>(arg_0.b, var_1.d.d.b);
    return global2.x;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    global2 = max(reverseBits(~(~vec2<u32>(9515u, 0u))) | vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, global2.x)), vec2<u32>(1u, 23791u)), _wgslsmith_mult_u32(0u << (global2.x % 32u), u_input.a)), vec2<u32>(4294967295u, u_input.a));
    var var_0 = Struct_3(Struct_1(true, ~select(_wgslsmith_sub_u32(global2.x, 1u), _wgslsmith_mod_u32(global2.x, global2.x), !arg_1.c), select(select(vec4<bool>(arg_1.c, arg_1.c, arg_0, arg_1.c), select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_1.c, arg_0, true), arg_1.c), !arg_1.c), select(vec4<bool>(arg_1.c, false, false, true), vec4<bool>(true, arg_1.c, false, true), select(vec4<bool>(true, arg_1.c, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, arg_1.c, arg_1.c, arg_1.c))), !(!arg_1.c))), ~abs(select(~vec3<i32>(arg_1.b, arg_1.b, 2147483647i), vec3<i32>(arg_1.b, arg_1.b, arg_1.b) >> (vec3<u32>(10641u, global2.x, 32218u) % vec3<u32>(32u)), vec3<bool>(arg_0, arg_0, arg_1.c))), firstLeadingBit(firstLeadingBit(countOneBits(vec3<u32>(0u, 44966u, global2.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, arg_1.a.x))) * vec2<f32>(-746f, global1.x)), vec2<f32>(-1209f, _wgslsmith_f_op_f32(-global1.x)))), max(_wgslsmith_sub_vec3_i32(min(vec3<i32>(arg_1.b, arg_1.b, arg_1.b), vec3<i32>(-2147483647i, 1i, arg_1.b)), ~vec3<i32>(arg_1.b, -14966i, -1i)), -vec3<i32>(103041i, 24200i, -22060i)), Struct_1(true, ~11039u, vec4<bool>(true, !arg_0, global1.x <= 273f, true)), global0[_wgslsmith_index_u32(abs((77697u & global2.x) << (u_input.a % 32u)), 28u)], !arg_1.c));
    var var_1 = var_0.a.c.zzw;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.a.x, 579f, 1611f, -660f)))))), vec4<f32>(915f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(821f, 1000f))), 588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * -182f), 506f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-752f)), 1007f, all(vec4<bool>(arg_0, true, var_1.x, true)))), _wgslsmith_f_op_f32(abs(-121f)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1.a.x, var_2.x, 279f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -1246f, var_2.x, global1.x))), vec4<f32>(var_2.x, -1050f, var_2.x, 1000f))))));
    return var_0.d.d.c.ww;
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(0u), _wgslsmith_div_u32(abs(global2.x), ~(~abs(global2.x)))), 28u)];
    global2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(_wgslsmith_add_u32(1u, u_input.a) >> (global2.x % 32u)), u_input.a), ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, u_input.a, 0u), firstTrailingBit(vec4<u32>(var_0.b, 0u, 22133u, 1u)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1028f, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, global1.x, global1.x, 1000f) - vec4<f32>(265f, 182f, global1.x, -385f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, global1.x, -1560f, 1304f) - vec4<f32>(-716f, -771f, -289f, 193f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-916f, global1.x, global1.x, -382f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 379f, -766f, global1.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(select(-866f, global1.x, true)), -188f, _wgslsmith_f_op_f32(global1.x * 532f)))));
    global2 = countOneBits(select(select(~(~vec2<u32>(var_0.b, u_input.a)), (vec2<u32>(4294967295u, var_0.b) | vec2<u32>(var_0.b, 22896u)) << (max(vec2<u32>(u_input.a, var_0.b), vec2<u32>(1u, 74335u)) % vec2<u32>(32u)), any(var_0.c.xx)), vec2<u32>(func_2(global0[_wgslsmith_index_u32(~75692u, 28u)], 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1832f, 384f, -1180f) + vec3<f32>(global1.x, 1110f, -112f))), _wgslsmith_sub_u32(~u_input.a, ~u_input.a)), func_3(any(var_0.c.yy), Struct_4(global1.yw, -26685i, !var_0.a))));
    global2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(21065u, ~var_0.b), ~_wgslsmith_mult_u32(4294967295u, ~global2.x)), max((vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, var_0.b)) & ~max(vec2<u32>(global2.x, var_0.b), vec2<u32>(global2.x, 24940u)), vec2<u32>(_wgslsmith_div_u32(global2.x, u_input.a), func_2(global0[_wgslsmith_index_u32(global2.x, 28u)], -80874i, vec3<f32>(global1.x, global1.x, 691f))) & ~(~vec2<u32>(var_0.b, 1u))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, firstLeadingBit(~u_input.a)), vec2<u32>(~55542u, global2.x)));
    return Struct_2(global1.zw, vec3<i32>((i32(-1i) * -1i) >> (global2.x % 32u), _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, 0i, 0i) << (func_2(global0[_wgslsmith_index_u32(4294967295u, 28u)], 0i, vec3<f32>(global1.x, global1.x, -244f)) % 32u), 1i), -2147483647i), Struct_1(!(!all(vec4<bool>(true, var_0.c.x, var_0.c.x, false))), firstTrailingBit(func_2(global0[_wgslsmith_index_u32(u_input.a, 28u)], 0i, _wgslsmith_f_op_vec3_f32(-global1.zzw))), vec4<bool>(true, var_0.a, (var_0.a & var_0.c.x) && true, any(!var_0.c))), Struct_1((abs(38917u) & u_input.a) >= var_0.b, ~(~0u) & ~(var_0.b ^ var_0.b), var_0.c), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(global1.zwz));
    var var_1 = func_1();
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.yz))), vec3<i32>(var_1.b.x, var_1.b.x, ~var_1.b.x), Struct_1((any(vec2<bool>(var_1.d.a, false)) | !var_1.e) & false, 0u, var_1.c.c), func_1().d, var_1.c.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<u32>(min(_wgslsmith_mult_u32(abs(25323u), _wgslsmith_add_u32(global2.x, 4294967295u)), u_input.a | u_input.a), u_input.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.x >> (var_1.c.b % 32u), 1u), var_1.c.b, global2.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.c.b, ~4294967295u, var_1.d.b), ~vec3<u32>(u_input.a, 1u, var_1.c.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, var_1.a.x, -949f, var_0.x), vec4<f32>(2091f, -405f, 1411f, -527f)))))));
}

