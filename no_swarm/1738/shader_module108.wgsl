struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(1927f, -108f, -584f, -1328f), vec4<i32>(-32963i, i32(-2147483648), 2147483647i, -29181i), 48770u);

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec2<f32> {
    global1 = 1u;
    var var_0 = vec4<i32>(-(global0.b.x << (~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, global0.c) % 32u)), firstTrailingBit(-5471i), _wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -14032i), -firstLeadingBit(global0.b.x))), global0.b.x >> ((reverseBits(_wgslsmith_mult_u32(0u, 117455u)) | global0.c) % 32u));
    let var_1 = arg_0;
    global1 = ~u_input.a.x ^ ~62884u;
    var var_2 = !(!vec2<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)), ~u_input.a.x > reverseBits(78313u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.yx, vec2<f32>(-1000f, arg_1.x), false)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a.zx)))))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) * -1229f)), global0.a.x, global0.a.x, global0.a.x), ~vec4<i32>(-27186i >> (~4294967295u % 32u), (i32(-1i) * -2147483647i) & -u_input.c, (u_input.c ^ global0.b.x) ^ 1i, _wgslsmith_mult_i32(-45620i, global0.b.x)), _wgslsmith_mult_u32(u_input.d.x, arg_0.x));
    let var_0 = global0.b.x;
    let var_1 = Struct_4(vec2<bool>(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)), (min(0i, 13941i) > global0.b.x) | (all(vec3<bool>(true, false, true)) | true)));
    var var_2 = Struct_1(u_input.b.x, -1102f, var_1.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(global0.a.yz)), _wgslsmith_f_op_vec2_f32(func_3(firstTrailingBit(arg_0), vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + 220f), _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - -455f)))), select(vec2<bool>(global0.b.x >= global0.b.x, 2147483647i == u_input.b.x), !vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.x))));
    let var_3 = -236f;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(447f, _wgslsmith_f_op_f32(step(-544f, global0.a.x))))), 1437f, _wgslsmith_f_op_f32(sign(750f)))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = 169f <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(~vec4<u32>(global0.c, 1u, global0.c, 4294967295u), vec3<f32>(-306f, global0.a.x, 742f))).x, -1606f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))));
    global0 = Struct_3(global0.a, global0.b, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 73235u) ^ u_input.d, vec2<u32>(u_input.a.x, 4294967295u) | vec2<u32>(0u, global0.c)), ~global0.c));
    var var_1 = !all(!(!(!vec2<bool>(var_0, false))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, u_input.a.x)), vec3<u32>(u_input.d.x, 51646u, u_input.d.x) >> (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))), ~reverseBits(u_input.d.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.d.x), select(vec4<u32>(~(~u_input.d.x), _wgslsmith_clamp_u32(62914u, ~12057u, global0.c), _wgslsmith_sub_u32(_wgslsmith_mod_u32(2265u, 1u), 0u), 4294967295u), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c, 93451u, 0u, u_input.a.x), vec4<u32>(4294967295u, global0.c, global0.c, global0.c)), vec4<u32>(u_input.d.x, 0u, 63371u, global0.c)), reverseBits(~vec4<u32>(89467u, 65831u, 29153u, 883u))), vec4<bool>(var_0, any(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(true, false, var_0, true), vec4<bool>(true, true, var_0, false))), all(vec3<bool>(false, var_0, true)), any(select(vec4<bool>(false, false, true, var_0), vec4<bool>(true, var_0, false, var_0), true)))), ~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), vec4<u32>(4294967295u, 1u, u_input.d.x, u_input.d.x))));
    return Struct_1(abs(global0.b.x), arg_0.x, var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(124f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1176f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(u_input.a.x, global0.c, global0.c, 1u), vec3<f32>(-861f, 1011f, 562f))).x - _wgslsmith_f_op_f32(global0.a.x * -198f))) + vec2<f32>(-1258f, 1134f)));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(4294967295u);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -155f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), 2819f), -338f))).c;
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(21818u, var_0.a, u_input.d.x), vec3<u32>(1u, 4294967295u, var_0.a)), vec3<u32>(92552u, var_0.a, 4294967295u)) & (~vec3<u32>(48715u, 0u, 57923u) | ~vec3<u32>(global0.c, var_0.a, u_input.a.x))) >> (vec3<u32>(u_input.d.x, abs(var_0.a), _wgslsmith_sub_u32(var_0.a, 4294967295u)) % vec3<u32>(32u));
    var var_3 = -298f;
    let var_4 = _wgslsmith_f_op_f32(-arg_2.d.x);
    return Struct_3(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.x, arg_2.b, _wgslsmith_f_op_f32(round(var_4)), var_4), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), arg_2.c))), reverseBits(global0.b), ~var_2.x);
}

fn func_1() -> Struct_2 {
    global0 = func_5(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), u_input.d.x == 724u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec3<i32>(~firstLeadingBit(abs(-31408i)), u_input.c, global0.b.x), func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(global0.c, 1u, global0.c, global0.c) >> (vec4<u32>(0u, 1u, global0.c, global0.c) % vec4<u32>(32u)), vec4<u32>(32812u, 0u, u_input.a.x, u_input.d.x) & vec4<u32>(0u, u_input.d.x, 70884u, 0u))))));
    global1 = ~1u;
    var var_0 = -1000f;
    var var_1 = global0.b >> (~(~vec4<u32>(reverseBits(1u), 0u, ~4294967295u, 2806u)) % vec4<u32>(32u));
    var var_2 = global0.a.zzz;
    return Struct_2(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = min(vec4<u32>(~(var_0.a | abs(u_input.d.x)), 114017u, _wgslsmith_div_u32(~global0.c, ~abs(4294967295u)), ~(~global0.c)), vec4<u32>(~_wgslsmith_mod_u32(global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(11384u, 52894u), u_input.a)), ~func_1().a, ~var_0.a, u_input.d.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a.yx, vec2<f32>(_wgslsmith_f_op_f32(select(-1532f, global0.a.x, true)), 758f)) + vec2<f32>(_wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(-global0.a.x)), global0.a.x))));
    let var_3 = Struct_4(select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(func_4(vec3<f32>(929f, 713f, var_2.x)).c, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(~(-1i) != ~global0.b.x, false), vec2<bool>(false, true)));
    var var_4 = !var_3.a.x;
    var var_5 = all(vec3<bool>(all(!select(vec4<bool>(false, false, var_3.a.x, true), vec4<bool>(false, false, true, var_3.a.x), vec4<bool>(var_3.a.x, true, var_3.a.x, true))), !var_3.a.x, any(vec4<bool>(true, true, any(vec3<bool>(true, var_3.a.x, var_3.a.x)), !var_3.a.x))));
    var_4 = all(select(!select(!vec4<bool>(var_3.a.x, true, var_3.a.x, false), select(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, false), vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), vec4<bool>(false, true, true, var_3.a.x)), select(vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x), vec4<bool>(var_3.a.x, true, var_3.a.x, false), vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x))), !select(!vec4<bool>(var_3.a.x, false, false, true), !vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x), vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x)), select(!vec4<bool>(var_3.a.x, true, true, true), !select(vec4<bool>(false, false, false, var_3.a.x), vec4<bool>(true, var_3.a.x, false, var_3.a.x), vec4<bool>(true, false, var_3.a.x, true)), vec4<bool>(var_3.a.x, false | var_3.a.x, !var_3.a.x, all(vec4<bool>(var_3.a.x, var_3.a.x, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, -35058i);
}

