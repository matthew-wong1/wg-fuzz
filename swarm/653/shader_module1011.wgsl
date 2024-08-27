struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(56021u, 1u, 0u);

var<private> global1: vec4<i32> = vec4<i32>(-8901i, 1i, i32(-2147483648), 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> bool {
    global0 = (_wgslsmith_sub_vec3_u32(u_input.a.wxz, ~vec3<u32>(u_input.b, 1u, 4294967295u)) << (countOneBits(vec3<u32>(~6327u, reverseBits(global0.x), _wgslsmith_mod_u32(0u, global0.x))) % vec3<u32>(32u))) >> (u_input.a.yww % vec3<u32>(32u));
    let var_0 = vec3<u32>(global0.x, countOneBits(u_input.a.x & global0.x), _wgslsmith_mult_u32(global0.x, select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, global0.x), u_input.a.wwz) >> ((u_input.a.x << (u_input.d % 32u)) % 32u), true)));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(global0.x, 0u), 0u, abs(~_wgslsmith_mult_u32(~global0.x, ~37701u)));
    let var_2 = global0.x;
    global1 = vec4<i32>(i32(-1i) * -32868i, -select(global1.x, _wgslsmith_sub_i32(u_input.c << (global0.x % 32u), -global1.x), any(vec2<bool>(true, arg_0.x))), 26316i, global1.x);
    return 715f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1619f, -2025f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1507f), arg_1.x)))) + -156f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> Struct_4 {
    return Struct_4(func_3(vec3<bool>(false, false, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1867f, 104f, -628f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, -1020f, 1236f)), false))) | true, ~u_input.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(u_input.d, u_input.a.x, arg_0.x);
    return Struct_1(37597u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_4 {
    global1 = select(~select(vec4<i32>(global1.x, -1i, u_input.c, 14899i) ^ vec4<i32>(arg_1, arg_1, 0i, global1.x), -vec4<i32>(global1.x, -7814i, 1i, 40912i), vec4<bool>(false, true, arg_0.c, arg_0.c)) | vec4<i32>(arg_1, 2147483647i, -43871i, select(-2147483647i, ~u_input.c, u_input.c < arg_1)), vec4<i32>(firstTrailingBit(global1.x), _wgslsmith_div_i32(min(global1.x, global1.x), u_input.c), global1.x, u_input.c) ^ _wgslsmith_add_vec4_i32(~(~vec4<i32>(global1.x, 21806i, global1.x, global1.x)), abs(~vec4<i32>(arg_1, -31890i, u_input.c, global1.x))), !select(!arg_0.c, true, (arg_0.d.a << (4294967295u % 32u)) == global0.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(711f, arg_2, arg_2), vec3<f32>(arg_2, 435f, 1372f)) * vec3<f32>(arg_2, 314f, arg_2)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-892f, arg_2, arg_2) + vec3<f32>(arg_2, arg_2, arg_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -737f) + vec3<f32>(556f, 220f, arg_2)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, -311f, arg_2) * vec3<f32>(802f, -938f, arg_2)))))));
    let var_1 = true;
    var var_2 = global1.x < _wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_div_i32(u_input.c, -2147483647i), _wgslsmith_clamp_i32(arg_1, 58022i, 10247i)), _wgslsmith_mod_vec2_i32(vec2<i32>(24279i, arg_1) >> (vec2<u32>(18320u, u_input.d) % vec2<u32>(32u)), global1.zz)), vec2<i32>(_wgslsmith_add_i32(global1.x, max(-1i, 2147483647i)), _wgslsmith_div_i32(2147483647i, -18802i)));
    global1 = -select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(global1.x, -2147483647i), -67756i, max(7176i, u_input.c)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 17354i, -2147483647i, -1i), vec4<i32>(arg_1, global1.x, 36514i, -1i)), -vec4<i32>(global1.x, global1.x, 2147483647i, global1.x))), vec4<i32>(0i, -1i, -global1.x & _wgslsmith_sub_i32(2147483647i, u_input.c), select(-1i, countOneBits(global1.x), true)), select(!select(vec4<bool>(var_1, var_1, var_1, arg_0.c), vec4<bool>(false, true, var_1, true), vec4<bool>(arg_0.c, true, true, arg_0.c)), select(select(vec4<bool>(false, false, var_1, false), vec4<bool>(true, var_1, false, arg_0.c), arg_0.c), select(vec4<bool>(arg_0.c, true, var_1, true), vec4<bool>(var_1, var_1, arg_0.c, false), false), false), vec4<bool>(all(vec2<bool>(arg_0.c, var_1)), true, !var_1, !var_1)));
    return func_2(21588u, arg_0.d.a, _wgslsmith_f_op_f32(abs(arg_2)));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    let var_0 = abs(firstTrailingBit(vec4<i32>(abs(firstLeadingBit(global1.x)), ~(~u_input.c), _wgslsmith_mod_i32(firstTrailingBit(global1.x), u_input.c), -39914i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f + -563f)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1111f, _wgslsmith_f_op_f32(round(-392f)), _wgslsmith_f_op_f32(trunc(1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(393f, _wgslsmith_f_op_f32(step(1925f, -920f)))), _wgslsmith_f_op_f32(trunc(-143f)), -2021f)), all(vec4<bool>(all(vec2<bool>(arg_1.a, true)), !(!arg_1.a), true, true)), ~arg_1.b | ~firstLeadingBit(arg_1.b), var_0, ~firstLeadingBit(countOneBits(global1.xz)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(555f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1619f)) * _wgslsmith_f_op_f32(abs(923f))));
    var var_4 = var_2.a.zz;
    return Struct_4(func_4(Struct_2(Struct_1(arg_0 | 24294u), Struct_1(1u | u_input.a.x), all(vec4<bool>(var_2.b, arg_1.a, true, false)), Struct_1(reverseBits(var_2.c))), _wgslsmith_div_i32(-_wgslsmith_sub_i32(var_0.x, 64044i), var_0.x), var_4.x).a, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 746f;
    global0 = ~u_input.a.xwz;
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, _wgslsmith_div_u32(4294967295u, global0.x), firstTrailingBit(124114u), u_input.d), firstLeadingBit(~(~u_input.a)));
    var_0 = -1000f;
    var var_2 = firstTrailingBit(u_input.b | ~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-105f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(178f))))) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-356f * -819f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-109f))))));
    let var_4 = func_5(_wgslsmith_dot_vec2_u32(~vec2<u32>(46215u, u_input.b), ~u_input.a.ww), func_4(Struct_2(func_1(vec2<f32>(299f, 216f), vec2<f32>(872f, 1000f), true, global1.x), Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.x, global0.x, global0.x, u_input.b))), select(false, true, true) && true, Struct_1(u_input.a.x)), ~u_input.c, -955f));
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-388f))));
    global0 = reverseBits(~vec3<u32>(157763u, ~var_4.b, func_4(Struct_2(Struct_1(4294967295u), Struct_1(4294967295u), var_4.a, Struct_1(75355u)), 2147483647i, -1000f).b) << (u_input.a.xyx % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_5, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_5 - 336f), _wgslsmith_f_op_f32(trunc(363f)))), _wgslsmith_f_op_f32(-614f - 529f)))), -111f);
}

