struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = all(!vec4<bool>(false, global0[_wgslsmith_index_u32(~(~u_input.e.x), 31u)], !all(arg_2), arg_2.x));
    var var_1 = -(-(~u_input.c.x) << (0u % 32u));
    var var_2 = arg_1;
    return -var_2.d.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1873f, -553f, -1391f, 331f))))), vec4<f32>(_wgslsmith_f_op_f32(step(2883f, _wgslsmith_f_op_f32(-948f * _wgslsmith_f_op_f32(floor(687f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f * -751f) + -358f) - -603f), 474f, 133f)));
    var var_2 = Struct_3(Struct_2(var_0.c, arg_3 >> (~arg_2.a.a.x % 32u), Struct_1(~u_input.b.yx, _wgslsmith_dot_vec4_i32(min(arg_1.d, vec4<i32>(28565i, arg_2.a.b, 1i, arg_2.c.b)), ~vec4<i32>(31843i, 2147483647i, -1i, -1i)))), -145f, Struct_2(Struct_1(vec2<u32>(~arg_1.c.a.x, arg_1.a.x), _wgslsmith_mult_i32(~(-62i), func_3(-449f, arg_1, vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 31u)], false), false))), arg_3, arg_2.c), var_0.d.yww);
    var var_3 = arg_2;
    return _wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.a.x, var_0.a.x, 40390u, 9573u), var_0.a), ~vec4<u32>(var_3.c.a.x, var_2.c.a.a.x, arg_1.a.x, var_3.a.a.x)), var_3.c.a.x), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.a.xwy, u_input.e.wxy), min(vec3<u32>(4294967295u, 4294967295u, arg_2.c.a.x), ~var_0.a.wxy)));
}

fn func_1() -> i32 {
    global0 = array<bool, 31>();
    let var_0 = Struct_5(Struct_4(u_input.e, vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a), ~func_2(true, Struct_4(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.e.x), vec2<u32>(u_input.a, 4294967295u), Struct_1(vec2<u32>(49554u, 50748u), -2147483647i), vec4<i32>(2147483647i, u_input.c.x, 13512i, 24569i)), Struct_2(Struct_1(u_input.e.wy, u_input.c.x), -24356i, Struct_1(u_input.b.zz, u_input.c.x)), 1i)), Struct_1(vec2<u32>(~u_input.d.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), -(~(-1i))), vec4<i32>(-51938i, ~(i32(-1i) * -1i), ~reverseBits(u_input.c.x), _wgslsmith_div_i32(u_input.c.x, u_input.c.x))));
    let var_1 = Struct_5(var_0.a);
    let var_2 = vec3<u32>(reverseBits(40368u), firstTrailingBit(var_1.a.c.a.x), _wgslsmith_dot_vec3_u32(u_input.b.yzy, var_0.a.a.xxx));
    var var_3 = (!(~(-2147483647i) > _wgslsmith_mod_i32(u_input.c.x, 0i)) && any(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(var_1.a.c.a.x, 31u)], global0[_wgslsmith_index_u32(var_2.x, 31u)])), global0[_wgslsmith_index_u32(~4294967295u, 31u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.a.a, vec4<u32>(1u, var_2.x, var_2.x, 42157u)), 31u)]))) || all(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(81398u, 31u)], global0[_wgslsmith_index_u32(44382u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), global0[_wgslsmith_index_u32(u_input.a, 31u)]));
    return var_1.a.d.x ^ var_0.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(-(func_1() >> (~4294967295u % 32u))) < u_input.c.x;
    var var_1 = 48679u;
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, abs(84260u)), u_input.d), u_input.c.x ^ 1i);
    var var_3 = Struct_1(_wgslsmith_add_vec2_u32(~(~vec2<u32>(298u, var_2.a.x)), var_2.a), -7217i);
    var var_4 = Struct_1(~u_input.b.zy >> (_wgslsmith_sub_vec2_u32(u_input.e.yx, _wgslsmith_div_vec2_u32(var_2.a, vec2<u32>(u_input.d.x, var_3.a.x)) | ~u_input.d) % vec2<u32>(32u)), 0i);
    var var_5 = Struct_3(Struct_2(Struct_1(abs(var_3.a), -(u_input.c.x ^ -27201i)), firstLeadingBit(_wgslsmith_sub_i32(0i, var_3.b << (0u % 32u))), Struct_1(min(~vec2<u32>(var_4.a.x, 60656u), _wgslsmith_mod_vec2_u32(vec2<u32>(33581u, u_input.e.x), var_3.a)), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -751f)))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_mult_u32(var_2.a.x, u_input.e.x), _wgslsmith_mult_u32(0u, var_4.a.x)), -var_2.b), var_2.b, Struct_1(~vec2<u32>(13800u, var_2.a.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, var_3.b), var_2.b))), vec3<i32>(max(-(i32(-1i) * -120i), var_4.b), var_2.b, 67091i));
    var var_6 = Struct_5(Struct_4(u_input.e, abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(93391u, var_5.a.c.a.x), u_input.d, vec2<u32>(0u, 8351u))), Struct_1(vec2<u32>(4967u, _wgslsmith_clamp_u32(48476u, 0u, 0u)), var_4.b), ~(-vec4<i32>(var_2.b, var_2.b, var_5.d.x, 0i)) << (u_input.b % vec4<u32>(32u))));
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1914f, 1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b * -973f) + 1179f)))) * 414f);
    let x = u_input.a;
    s_output = StorageBuffer(-31546i);
}

