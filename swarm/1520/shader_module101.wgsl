struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(4294967295u, 0u), -1i, Struct_1(vec3<i32>(14268i, 9876i, 33788i), vec2<bool>(false, false), vec4<u32>(14682u, 4294967295u, 0u, 76697u), false, true), vec2<i32>(8613i, i32(-2147483648)));

var<private> global1: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> i32 {
    global1 = ~(~global0.c.c.x) ^ _wgslsmith_dot_vec3_u32(arg_1, min(abs(vec3<u32>(arg_1.x, arg_1.x, global0.a.x) >> (vec3<u32>(u_input.d.x, global0.c.c.x, 4294967295u) % vec3<u32>(32u))), select(vec3<u32>(global0.a.x, arg_1.x, 24169u), vec3<u32>(4294967295u, 1u, 8535u), select(vec3<bool>(false, true, global0.c.d), vec3<bool>(false, false, global0.c.e), vec3<bool>(global0.c.d, global0.c.d, true)))));
    global0 = Struct_2(min(u_input.d.zy, countOneBits(~u_input.d.xz) >> ((_wgslsmith_clamp_vec2_u32(u_input.d.xz, u_input.e.zz, vec2<u32>(u_input.e.x, 1u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.a.x), vec2<u32>(4010u, arg_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mult_i32(58856i, 0i), Struct_1(vec3<i32>(_wgslsmith_add_i32(1i, ~0i), ~arg_0.x ^ reverseBits(3025i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.x, global0.d.x), vec2<i32>(26426i, -2147483647i) ^ vec2<i32>(u_input.a.x, 1i))), select(!global0.c.b, !select(global0.c.b, global0.c.b, false), select(global0.c.b, !global0.c.b, vec2<bool>(global0.c.b.x, global0.c.e))), global0.c.c, global0.c.b.x | !(false & global0.c.d), any(!(!vec3<bool>(global0.c.b.x, false, true)))), vec2<i32>(0i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, global0.b, u_input.b.x), u_input.a) ^ arg_0.x) & vec2<i32>(-18432i, -1i));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1321f), 760f))))));
    global1 = ~_wgslsmith_clamp_u32(u_input.e.x, 26153u, 4294967295u);
    let var_1 = firstTrailingBit(u_input.e.yz >> (~vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x, 0u, u_input.e.x), 8729u) % vec2<u32>(32u)));
    return 1i;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = firstTrailingBit(abs(~(select(global0.c.c, vec4<u32>(1u, u_input.d.x, 37712u, global0.a.x), vec4<bool>(arg_0, arg_0, global0.c.b.x, global0.c.d)) & _wgslsmith_clamp_vec4_u32(global0.c.c, global0.c.c, vec4<u32>(u_input.d.x, global0.c.c.x, 1u, 0u)))));
    var var_1 = !(!(!select(!global0.c.b, global0.c.b, vec2<bool>(false, global0.c.e))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(667f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2400f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-405f)) * 881f))));
    var var_3 = Struct_3(Struct_2(~(select(u_input.d.zx, var_0.zx, true) << (~vec2<u32>(u_input.e.x, 24286u) % vec2<u32>(32u))), ~(~(-u_input.a.x)), global0.c, vec2<i32>(1i, ~(~u_input.a.x))), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global0.c.a.x, global0.d.x), ~vec3<i32>(-1i, -21847i, 1i)), ~(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, u_input.a.x, -2147483647i), vec3<i32>(global0.b, 12773i, global0.b))), func_3(vec4<i32>(global0.c.a.x, 6608i, 1i, global0.b) ^ u_input.a, _wgslsmith_mod_vec3_u32(global0.c.c.zzw, abs(var_0.zzx)))));
    var_0 = global0.c.c;
    return !(!(43956i == firstLeadingBit(var_3.a.c.a.x)));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(abs(-vec3<i32>(global0.d.x, global0.b, global0.c.a.x)), firstLeadingBit(vec3<i32>(arg_0.a.x, arg_0.a.x, 51084i)) & vec3<i32>(1i, 18546i, abs(u_input.b.x))), global0.c.b, ~global0.c.c, all(!vec3<bool>(false, false, arg_0.b.x)) && select(false, func_2(any(vec3<bool>(arg_0.b.x, false, false))), all(select(vec3<bool>(global0.c.e, global0.c.d, false), vec3<bool>(false, false, false), true))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1704f - -740f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1118f)))))));
    var_0 = Struct_1(global0.c.a, vec2<bool>(global0.c.d, false), ~(~arg_0.c), all(!(!(!vec4<bool>(global0.c.b.x, true, true, true)))), var_0.e);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, 224f) + vec2<f32>(-769f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-541f, 165f) - vec2<f32>(-910f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1177f, 1609f))))));
    var var_2 = global0.c.a.yy >> (~firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 1u), var_0.c.wx), vec2<u32>(1u, 1u), ~u_input.e.yy)) % vec2<u32>(32u));
    return vec3<u32>(reverseBits(0u), _wgslsmith_clamp_u32(~(~12942u), _wgslsmith_dot_vec4_u32(global0.c.c, vec4<u32>(arg_0.c.x, _wgslsmith_clamp_u32(global0.c.c.x, 7558u, u_input.e.x), select(arg_0.c.x, u_input.d.x, arg_0.e), global0.c.c.x)), min(min(53794u, global0.c.c.x) ^ ~0u, global0.a.x)), 0u);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(u_input.d.x, ~17990u ^ abs(~min(22712u, global0.a.x)));
    let var_1 = reverseBits(func_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global0.b, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)) & u_input.a.yyx, global0.c.b, ~(vec4<u32>(0u, global0.a.x, 0u, u_input.d.x) | vec4<u32>(53480u, global0.a.x, global0.c.c.x, global0.c.c.x)), false, !func_2(true))));
    var var_2 = ~var_1;
    let var_3 = Struct_1(vec3<i32>(~_wgslsmith_mult_i32(-1i, global0.b), select(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b.x, global0.b, -5328i), vec3<i32>(2147483647i, -1i, -53538i)), firstTrailingBit(vec3<i32>(global0.b, -2147483647i, u_input.a.x))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, global0.c.a.x, 0i), ~(-2869i)), func_2(global0.c.b.x)), u_input.a.x), global0.c.b, ~max(_wgslsmith_clamp_vec4_u32(select(global0.c.c, global0.c.c, arg_0), abs(vec4<u32>(0u, var_2.x, 0u, var_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 64029u, var_2.x, 58028u), vec4<u32>(84044u, u_input.e.x, u_input.e.x, var_1.x))), min(vec4<u32>(49363u, u_input.d.x, u_input.e.x, 4294967295u), ~vec4<u32>(0u, 4294967295u, var_2.x, 62858u))), any(vec4<bool>(all(!vec4<bool>(arg_0, arg_0, true, true)), any(vec3<bool>(arg_0, false, arg_0)), select(global0.c.d, global0.c.e && global0.c.b.x, arg_0), global0.c.b.x)), global0.c.d);
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(709f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1067f, _wgslsmith_div_f32(1443f, 119f)))))));
    return Struct_2(_wgslsmith_add_vec2_u32(select(firstTrailingBit(var_2.yz), var_1.yx, false), var_2.zy) >> (~vec2<u32>(~14614u, _wgslsmith_dot_vec4_u32(var_3.c, global0.c.c)) % vec2<u32>(32u)), _wgslsmith_mod_i32(-firstLeadingBit(var_3.a.x), 2147483647i), Struct_1(_wgslsmith_sub_vec3_i32(global0.c.a | reverseBits(vec3<i32>(1i, 1i, var_3.a.x)), abs(abs(u_input.a.yzy))), var_3.b, abs(vec4<u32>(global0.a.x, var_3.c.x, global0.c.c.x, global0.c.c.x) & vec4<u32>(1u, var_2.x, 4294967295u, var_2.x)), true, false), select(global0.c.a.zz, u_input.a.wy, !(!(var_4 >= 1099f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(true), func_1(any(vec3<bool>(true, true, true))).b);
    global1 = 4294967295u;
    global0 = func_1(false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-101f * 706f), -254f, true)), 143f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1346f, _wgslsmith_div_f32(-274f, -589f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(857f, -750f), vec2<f32>(-562f, -507f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-562f, 364f)))))))));
    global1 = ~_wgslsmith_sub_u32(firstLeadingBit(global0.a.x), abs(~min(u_input.d.x, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-558f, -494f, -473f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(global0.c.d, global0.c.e, var_0.a.c.e, global0.c.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-571f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, -836f, var_1.x, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 121f), vec4<f32>(var_1.x, -791f, var_1.x, var_1.x)), vec4<bool>(global0.c.e, global0.c.b.x, global0.c.e, false))))));
}

