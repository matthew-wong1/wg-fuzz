struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec3<f32> = vec3<f32>(-187f, -944f, -534f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = ~(~vec2<i32>(_wgslsmith_mod_i32(max(2147483647i, 5491i), _wgslsmith_sub_i32(-3300i, 0i)), abs(-42178i)));
    var var_1 = ~(~arg_0);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(ceil(global1.x))) * vec3<f32>(global1.x, 164f, global1.x)))));
    let var_2 = var_0.x;
    let var_3 = ~66381u;
    return 11648i;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(61600u, 29u)];
    var var_1 = u_input.b << (_wgslsmith_dot_vec3_u32(var_0.d.zzy >> ((~var_0.d.xwx ^ _wgslsmith_mod_vec3_u32(vec3<u32>(8561u, var_0.d.x, var_0.d.x), vec3<u32>(13991u, 0u, var_0.d.x))) % vec3<u32>(32u)), ~(~abs(var_0.d.zzz))) % 32u);
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 49393u, var_0.d.x), reverseBits(vec3<u32>(u_input.a.x, 18356u, u_input.b))), ~u_input.b)), 29u)];
    var var_3 = var_2.c;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, _wgslsmith_f_op_f32(-1889f + var_3.x), global1.x))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(min(var_2.b, global1.x))))), -967f, global1.zx, var_0.d, !any(select(select(vec4<bool>(false, true, var_0.e, var_2.e), vec4<bool>(var_2.e, true, var_0.e, true), vec4<bool>(var_2.e, true, var_2.e, false)), vec4<bool>(var_2.e, true, var_2.e, false), all(vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_3.e;
    let var_1 = func_3(i32(-1i) * -select(1i, _wgslsmith_mod_i32(1614i, 2147483647i), arg_0.d.x > 93938u), ~min(_wgslsmith_div_i32(_wgslsmith_mult_i32(-59792i, 9512i), min(1i, 2147483647i)), _wgslsmith_sub_i32(2147483647i, 0i)), -vec4<i32>(_wgslsmith_mod_i32(~1i, -1i), i32(-1i) * -1i, 40005i, 1i), max(-33879i, _wgslsmith_clamp_i32(25941i, 1i, 2147483647i << (_wgslsmith_div_u32(73306u, arg_3.d.x) % 32u))));
    var var_2 = select(vec2<bool>(!arg_3.e, false), select(vec2<bool>(true, true), !(!select(vec2<bool>(var_1.e, true), vec2<bool>(arg_2.e, arg_0.e), false)), select(vec2<bool>(true, true), vec2<bool>(arg_3.e, all(vec4<bool>(arg_2.e, true, var_1.e, false))), arg_0.e && true)), !vec2<bool>(arg_0.e, false));
    var var_3 = var_1.e;
    global0 = array<Struct_1, 29>();
    return -vec2<i32>(4546i, _wgslsmith_sub_i32(~(~(-1i)), 1i));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = func_4(Struct_1(global1.x, global1.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global1.zz)))))), vec4<u32>(arg_0, 4294967295u, 1u, ~(~26768u)), 690f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - global1.x)))), global0[_wgslsmith_index_u32(countOneBits(arg_0), 29u)], func_3(abs(_wgslsmith_div_i32(0i, 1i)), -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, -36032i)), vec2<i32>(-2147483647i, 13023i)), _wgslsmith_div_vec4_i32(vec4<i32>(-23527i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, 1i), vec4<i32>(27937i, 43732i, 2147483647i, -2147483647i)), 1i, -1i), vec4<i32>(-69159i >> (arg_0 % 32u), ~0i, func_2(u_input.b), -2147483647i << (u_input.a.x % 32u))), ~(-14000i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1999f * -390f))), 577f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, -750f)))))), ~(~(~vec4<u32>(arg_0, 0u, u_input.b, arg_0))), true));
    var var_1 = abs(_wgslsmith_mult_u32(4294967295u, abs(~u_input.b)));
    var var_2 = min(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(u_input.b, 33399u)), ~min(~0u, u_input.b)), ~_wgslsmith_mult_u32(u_input.a.x, u_input.b));
    let var_3 = ~reverseBits(~(~vec4<u32>(arg_0, 0u, 13438u, 25132u)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(f32(-1f) * -874f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), -207f);
    return var_3.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~func_1(u_input.a.x) ^ ~vec3<u32>(u_input.a.x, u_input.a.x, 41563u)));
    global0 = array<Struct_1, 29>();
    var var_1 = firstTrailingBit(17148i);
    var var_2 = func_3(func_4(func_3(i32(-1i) * -2147483647i, 1i, vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 5821i), _wgslsmith_sub_i32(-2147483647i, -2147483647i)), func_3(_wgslsmith_clamp_i32(10310i, -2147483647i, 13925i), min(16009i, 0i), vec4<i32>(-2147483647i, -28225i, 1i, 15283i), 0i), func_3(i32(-1i) * -6168i, 1i, vec4<i32>(1i, 1i, 1i, 1i), countOneBits(-2147483647i)), func_3(abs(0i), _wgslsmith_div_i32(-19554i, 2147483647i), min(vec4<i32>(2147483647i, -2147483647i, 13381i, 10592i), vec4<i32>(-43956i, -2147483647i, 1i, 1i)), abs(-8170i))).x & min(1i, 2147483647i), firstLeadingBit(0i), vec4<i32>(2147483647i, _wgslsmith_sub_i32(-25547i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, -29125i), func_4(Struct_1(214f, -1088f, vec2<f32>(-1310f, 530f), vec4<u32>(u_input.a.x, 2122u, 4294967295u, var_0.x), true), global0[_wgslsmith_index_u32(var_0.x, 29u)], Struct_1(1090f, global1.x, vec2<f32>(-641f, global1.x), vec4<u32>(1u, 4294967295u, var_0.x, 1u), false), global0[_wgslsmith_index_u32(var_0.x, 29u)]).x)), 1i, min(i32(-1i) * -2147483647i, 0i)), _wgslsmith_add_i32(~0i, 0i));
    var_0 = ~var_2.d.wwx;
    var var_3 = false;
    var_1 = ~((firstTrailingBit(-8455i) | (34639i << (var_0.x % 32u))) ^ 3459i) & -2147483647i;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1077f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(308f)))))), 846f, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(2147483647i, -33914i, 53188i), vec3<i32>(-46994i, 523i, 34973i)), ~vec3<i32>(-1i, 0i, -7063i), vec3<i32>(12034i, 0i, -7697i)), ~(-vec3<i32>(-2147483647i, -1i, -38414i))), -1i, -20106i, firstLeadingBit(_wgslsmith_sub_i32(1i, -1i))), _wgslsmith_mult_u32(~_wgslsmith_div_u32(~var_2.d.x, u_input.a.x), var_0.x), ~reverseBits(4294967295u), _wgslsmith_f_op_f32(min(1184f, _wgslsmith_f_op_f32(-var_2.a))), var_2.d.xw);
}

