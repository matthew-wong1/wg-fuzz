struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-6434i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(27748i, arg_0, u_input.b.x), vec3<i32>(arg_0, 35441i, arg_0)), vec3<i32>(u_input.b.x, u_input.b.x, -27530i) & vec3<i32>(u_input.b.x, -39507i, u_input.b.x), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~abs(vec3<i32>(u_input.b.x, -22017i, -33011i))), ~_wgslsmith_mult_i32(-arg_0, ~arg_0)), -_wgslsmith_div_vec3_i32(-(vec3<i32>(-68994i, u_input.b.x, arg_0) & vec3<i32>(1i, u_input.b.x, u_input.b.x)), vec3<i32>(1i, u_input.b.x, 1i)));
    var var_1 = vec3<f32>(arg_1, 1f, arg_1);
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.a, abs(66492u)), ~(~6846u));
    var_0 = 55860i;
    global0 = !select(vec3<bool>(true, global0.x, any(vec4<bool>(global0.x, true, global0.x, global0.x))), vec3<bool>(!(!global0.x), !any(vec4<bool>(global0.x, true, false, global0.x)), true), arg_1 <= _wgslsmith_f_op_f32(var_1.x + 1000f));
    return vec3<bool>(any(global0.zz), any(select(!select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x), vec3<bool>(true, true, !global0.x), select(all(vec2<bool>(false, true)), !global0.x, all(vec2<bool>(true, false))))), all(select(!vec4<bool>(global0.x, false, false, global0.x), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, global0.x), true), !vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, true, true, global0.x)), select(!vec4<bool>(false, true, global0.x, false), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, false, false, true), global0.x), vec4<bool>(global0.x, false, true, true)))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(6146u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 0u), ~vec4<u32>(122732u, u_input.a, u_input.a, u_input.a)), select(u_input.a, 13088u | u_input.a, true), _wgslsmith_clamp_u32(72405u >> (u_input.a % 32u), ~u_input.a, u_input.a)), vec4<u32>(~28842u ^ u_input.a, 1u, 0u, 4294967295u)), global0.yy, u_input.b.x, ~countOneBits(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(22810u, u_input.a, 4294967295u, 62394u)))), 365f);
    let var_1 = Struct_1(min(abs(vec4<u32>(~29016u, ~var_0.d.x, 1u, ~65725u)), ~(~var_0.d)), select(select(global0.xy, !vec2<bool>(global0.x, global0.x), any(vec3<bool>(false, false, global0.x))), vec2<bool>(global0.x, global0.x), var_0.b), var_0.c, ~var_0.d, _wgslsmith_f_op_f32(max(-1723f, var_0.e)));
    var_0 = var_1;
    let var_2 = abs(~_wgslsmith_div_u32(1u, ~var_0.a.x));
    global0 = select(select(select(select(select(vec3<bool>(true, var_1.b.x, true), vec3<bool>(true, var_0.b.x, true), var_0.b.x), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, var_0.b.x, true), var_1.b.x), var_0.d.x < var_2), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, var_1.b.x)), select(select(vec3<bool>(global0.x, var_1.b.x, global0.x), vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(global0.x, var_0.b.x, false)), !vec3<bool>(var_0.b.x, var_1.b.x, var_0.b.x), !global0.x)), !(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), func_3(-2147483647i, var_0.e)), vec3<bool>(min(1i, u_input.b.x) >= -29830i, (_wgslsmith_f_op_f32(max(-1414f, -658f)) < _wgslsmith_f_op_f32(-1058f + var_0.e)) | true, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.c, var_0.c, 514i), vec4<i32>(var_0.c, var_1.c, u_input.b.x, var_1.c)) != 1i), !vec3<bool>(true, true, global0.x));
    return var_1.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~u_input.b);
    var var_1 = 679f;
    global0 = select(!select(!vec3<bool>(global0.x, false, false), vec3<bool>(func_2(), func_2(), true), !func_3(-11946i, -1204f)), vec3<bool>(global0.x & true, !global0.x, true & func_3(1i, -577f).x), select(vec3<bool>(global0.x, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -57082i, var_0.x, u_input.b.x), vec4<i32>(7235i, u_input.b.x, -2147483647i, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1926f)).x, true), !select(vec3<bool>(false, false, true), func_3(var_0.x, -1000f), global0.x), all(select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, global0.x)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x)), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, true), false)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -944f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -385f)))));
    var_0 = _wgslsmith_div_vec2_i32(u_input.b, -countOneBits(~u_input.b));
    return Struct_1(vec4<u32>(44901u, abs(~u_input.a), u_input.a, ~firstLeadingBit(u_input.a)) ^ (((vec4<u32>(24627u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 41936u, 4294967295u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(49689u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) ^ ~vec4<u32>(29659u, u_input.a, 17618u, 4294967295u)), !vec2<bool>(global0.x, global0.x), i32(-1i) * -28797i, ~(select(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 25021u), !vec4<bool>(true, false, true, global0.x)) | _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 28978u), ~vec4<u32>(u_input.a, u_input.a, 32833u, u_input.a))), var_2);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = select(select(vec3<bool>(true, func_3(~(-1i), arg_0.e).x, global0.x), select(vec3<bool>(global0.x, func_3(arg_3.c, arg_0.e).x, !arg_1.b.x), vec3<bool>(global0.x, !arg_3.b.x, global0.x), func_3(~u_input.b.x, _wgslsmith_f_op_f32(arg_3.e * arg_0.e))), !(!(!vec3<bool>(false, arg_3.b.x, false)))), !vec3<bool>(false, 522f < func_1().e, arg_3.b.x), !select(!select(vec3<bool>(global0.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_1.b.x), arg_0.b.x), vec3<bool>(arg_3.b.x, all(vec3<bool>(arg_1.b.x, true, false)), arg_1.b.x | false), func_3(arg_1.c, 784f)));
    var var_0 = arg_0.b.x;
    let var_1 = arg_0;
    var_0 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-303f)) - _wgslsmith_div_f32(-1673f, var_1.e)), -2248f, -1631f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e, -832f, -285f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 454f, var_1.e) - vec3<f32>(-569f, -1044f, 1603f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(895f, -768f, var_1.e) + vec3<f32>(arg_0.e, 1000f, arg_1.e)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, _wgslsmith_f_op_f32(abs(arg_1.e)), _wgslsmith_f_op_f32(min(arg_1.e, -147f))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.e))));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = arg_0;
    global0 = vec3<bool>(func_3(19023i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.e))))).x, true, true);
    let var_1 = ~(~firstLeadingBit(select(countOneBits(arg_0.a.zy), vec2<u32>(44070u, u_input.a) >> (var_0.d.zw % vec2<u32>(32u)), true)));
    let var_2 = 30750u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, var_0.e, 302f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(961f, 1466f, -356f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, var_0.e, var_0.e))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x))), -2313f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(f32(-1f) * -499f)))), ((0u ^ func_1().a.x) ^ 120093u) >> (~(~4294967295u) % 32u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(vec4<u32>(~104018u, reverseBits(u_input.a), 1u, 0u), global0.xz, firstLeadingBit(-1i), min(select(vec4<u32>(4294967295u, u_input.a, 35028u, 0u), vec4<u32>(u_input.a, u_input.a, 66890u, u_input.a), global0.x) >> (~vec4<u32>(u_input.a, 12297u, 57409u, u_input.a) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, 58619u) & vec4<u32>(u_input.a, 26001u, 17860u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(4294967295u, 55114u, u_input.a, 1u), global0.yx, u_input.b.x, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), 1971f), Struct_1(vec4<u32>(u_input.a, u_input.a, 30475u, 39245u), global0.yz, 1i, vec4<u32>(94926u, 25235u, u_input.a, 1u), -349f), _wgslsmith_dot_vec3_i32(vec3<i32>(10465i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 0i, 2147483647i)), func_1())) + 590f)));
}

