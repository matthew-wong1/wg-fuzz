struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 7>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> u32 {
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 386f, 766f, -326f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, -521f, -536f, arg_2))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2, arg_2, -139f)) - vec4<f32>(-1745f, arg_2, -556f, -1094f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -608f, -925f, arg_2)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(132f, arg_2, -750f, arg_2) * vec4<f32>(arg_2, -724f, arg_2, arg_2)))))))));
    var var_1 = u_input.c;
    global0 = -358f;
    return ~1u;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    return vec4<bool>((u_input.b.x | (_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(u_input.b.x, 22378i, global1.c, -9847i)) & u_input.b.x)) >= u_input.a.x, true, !all(vec3<bool>(true, true, true)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_2(~vec3<u32>(global1.b, global1.a.x, reverseBits(_wgslsmith_clamp_u32(47408u, global1.b, 39934u))), abs(global1.b), 24960i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 2085f))))) + 544f);
    var_0 = Struct_2(global1.a, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, ~1u), ~_wgslsmith_clamp_u32(0u, 55168u, global1.a.x), (global1.a.x ^ u_input.c) ^ 67789u), countOneBits(arg_1.x));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -3838f);
    var var_1 = vec4<u32>(abs(reverseBits(40575u)), 2460u, u_input.c & ((47818u ^ var_0.b) << (_wgslsmith_dot_vec3_u32(global1.a, var_0.a) % 32u)), ~u_input.c) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(~var_0.a.x, _wgslsmith_dot_vec2_u32(var_0.a.yx, vec2<u32>(var_0.b, var_0.a.x)), 0u, firstTrailingBit(1u)), ~vec4<u32>(global1.a.x, ~1u, global1.a.x, firstTrailingBit(var_0.b))) % vec4<u32>(32u));
    return !arg_0.x;
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    let var_0 = global3[_wgslsmith_index_u32(arg_0, 10u)];
    var var_1 = vec4<bool>(true, true, any(vec3<bool>(~arg_0 >= (global1.b | arg_0), _wgslsmith_add_u32(var_0.d.x, arg_0) >= ~global1.b, true)), func_4(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, false)), func_3(global3[_wgslsmith_index_u32(37894u, 10u)])), abs(max(_wgslsmith_mult_vec4_i32(var_0.c, vec4<i32>(-1i, var_0.c.x, 9027i, var_0.c.x)), vec4<i32>(-2147483647i, 58386i, var_0.c.x, -4590i) | var_0.b))));
    global3 = array<Struct_1, 10>();
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(-1528f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - -944f)), _wgslsmith_f_op_f32(-var_0.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = arg_0.b;
    var var_1 = var_0.x;
    global2 = array<vec3<f32>, 7>();
    global3 = array<Struct_1, 10>();
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec3<f32>, 7>();
    global3 = array<Struct_1, 10>();
    global1 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, arg_0.d.x)), _wgslsmith_mult_u32(7850u, u_input.c), 0u), func_5(global3[_wgslsmith_index_u32(~u_input.c, 10u)], arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -381f, 851f, 782f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 2073f, arg_0.a, arg_0.a)))).d.x, ~u_input.c), 0u, u_input.a.x);
    global2 = array<vec3<f32>, 7>();
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.d.x, 44833u), select(select(global1.a.yz, arg_0.d, false), vec2<u32>(4294967295u, 28604u), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))) ^ arg_0.d), vec2<u32>(_wgslsmith_mod_u32(~46185u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 10561u), vec3<u32>(u_input.c, u_input.c, 1u)) | firstTrailingBit(u_input.c)), _wgslsmith_mod_u32(global1.a.x, abs(~global1.b))));
    return global3[_wgslsmith_index_u32(4214u, 10u)];
}

fn func_7(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~(4294967295u >> (global1.a.x % 32u))), ~firstTrailingBit(_wgslsmith_mult_u32(global1.a.x, global1.b))), ~1u);
    var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_2.d.x, ~u_input.c, countOneBits(71073u)), vec3<u32>(69015u, ~global1.b, ~(~arg_2.d.x)));
    global1 = Struct_2(~(_wgslsmith_clamp_vec3_u32(~global1.a, vec3<u32>(40449u, 1u, u_input.c), min(global1.a, vec3<u32>(global1.b, 4294967295u, u_input.c))) >> (vec3<u32>(_wgslsmith_add_u32(arg_2.d.x, 1u), 4294967295u, 143316u) % vec3<u32>(32u))), ~(~global1.b), -6826i);
    var var_1 = vec3<f32>(1000f, arg_2.a, 1080f);
    var var_2 = vec4<bool>(!any(vec3<bool>(arg_2.d.x != arg_2.d.x, func_3(Struct_1(var_1.x, arg_2.c, arg_2.c, arg_2.d)).x, true)), arg_0, !arg_0, !(var_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))));
    return vec4<u32>(global1.b, 4294967295u, _wgslsmith_add_u32(63760u, 1u), arg_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(false, vec2<i32>(2147483647i, ~14871i), func_6(func_5(Struct_1(433f, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.b.x, 13072i), vec4<i32>(global1.c, -1i, 43550i, 27463i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.c, 16210i, 0i, global1.c), vec4<i32>(global1.c, 0i, 16479i, 19484i)), global1.a.yy), global3[_wgslsmith_index_u32(~func_1(vec4<bool>(false, true, true, false), Struct_2(vec3<u32>(3915u, u_input.c, 8341u), global1.b, global1.c), 719f), 10u)], _wgslsmith_f_op_vec4_f32(func_2(~70359u)))), vec4<i32>(_wgslsmith_div_i32(global1.c, firstLeadingBit(~(-18378i))), u_input.b.x, min(_wgslsmith_sub_i32(abs(u_input.a.x), u_input.a.x), 1i), u_input.b.x | 1i));
    let var_1 = countOneBits(~37905u);
    let var_2 = 1u;
    let var_3 = 485f;
    var var_4 = global3[_wgslsmith_index_u32(8403u << (_wgslsmith_dot_vec2_u32((~vec2<u32>(0u, 1u) ^ ~global1.a.yy) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_1, var_1), _wgslsmith_add_vec2_u32(var_0.zz, global1.a.zz)), _wgslsmith_add_vec2_u32(max(var_0.zy | global1.a.xy, var_0.yw), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.ww))) % 32u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(func_5(Struct_1(_wgslsmith_f_op_f32(-312f - 805f), min(var_4.b, var_4.b), abs(var_4.c), vec2<u32>(global1.a.x, var_1)), Struct_1(var_3, ~var_4.b, select(vec4<i32>(-1i, u_input.b.x, global1.c, global1.c), var_4.c, vec4<bool>(true, false, false, true)), func_7(true, var_4.b.xw, global3[_wgslsmith_index_u32(var_2, 10u)], vec4<i32>(-9456i, u_input.b.x, global1.c, u_input.a.x)).yy), vec4<f32>(_wgslsmith_div_f32(913f, var_3), func_6(Struct_1(var_4.a, vec4<i32>(u_input.a.x, -1i, var_4.c.x, u_input.b.x), var_4.c, vec2<u32>(11784u, var_4.d.x))).a, _wgslsmith_f_op_f32(max(-830f, -453f)), _wgslsmith_f_op_f32(floor(var_3)))).a)), ~(-(select(-2743i, -1i, false) | -11062i)), ~vec2<i32>(-50711i, ~global1.c), vec4<i32>(-global1.c, _wgslsmith_mod_i32(global1.c, 0i) ^ ~(i32(-1i) * -43540i), 6108i, ~_wgslsmith_mod_i32(26411i, countOneBits(-26124i))), -(global1.c ^ select(global1.c, 1i, true)));
}

