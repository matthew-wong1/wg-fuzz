struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -100f;

var<private> global1: array<bool, 26> = array<bool, 26>(true, false, true, true, false, true, true, false, true, true, false, false, false, true, true, false, false, false, false, false, true, false, true, false, false, true);

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(~(~(vec4<u32>(25763u, u_input.c.x, u_input.d.x, 24175u) << (~u_input.b % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1427f)))), 408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2767f, 1520f)) + -1659f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) * _wgslsmith_f_op_f32(f32(-1f) * -2301f))))), vec2<f32>(_wgslsmith_f_op_f32(743f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1536f)))), 1225f), max(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, u_input.d.x), u_input.b)) >> (abs(11294u) % 32u), 36029u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-167f + 418f)))));
    var var_1 = global2[_wgslsmith_index_u32((_wgslsmith_clamp_u32(var_0.d, _wgslsmith_div_u32(var_0.d, 4294967295u) & 65649u, firstTrailingBit(var_0.a.x) & 1u) >> (~countOneBits(1u) % 32u)) >> (~_wgslsmith_div_u32(select(_wgslsmith_div_u32(1u, 1u), min(var_0.a.x, 0u), !global1[_wgslsmith_index_u32(var_0.a.x, 26u)]), _wgslsmith_mult_u32(~8340u, u_input.c.x)) % 32u), 6u)];
    var_1 = Struct_2(false, var_1.b, vec4<u32>(_wgslsmith_mult_u32(reverseBits(var_0.d), _wgslsmith_mult_u32(var_0.d, 42756u)), u_input.d.x, ~(~u_input.c.x), 4294967295u) | ~reverseBits(var_1.c << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_vec2_f32(-var_0.c));
    return vec3<u32>(abs(_wgslsmith_mult_u32(var_1.c.x, 3154u)), _wgslsmith_dot_vec4_u32(~u_input.b, abs(var_1.b.a)), 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.b.zxx, func_3());
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(sign(1970f))));
    global1 = array<bool, 26>();
    let var_2 = var_0.x;
    let var_3 = firstTrailingBit(var_0.xy);
    return Struct_1(u_input.b | u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 839f, 907f, 304f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, 962f, -182f, -827f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(150f, -1000f, -1195f, 313f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(367f, -416f, 571f, 236f), vec4<f32>(167f, 498f, 2279f, 1012f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1792f), _wgslsmith_f_op_f32(abs(1047f)), _wgslsmith_f_op_f32(1281f * 956f), _wgslsmith_f_op_f32(step(554f, -1485f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1640f)) + -403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1877f * _wgslsmith_f_op_f32(sign(-335f))))), _wgslsmith_div_u32(~11406u, ~_wgslsmith_div_u32(var_0.x, u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(295f)) - _wgslsmith_f_op_f32(sign(-1379f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = ~(~(-4690i << (_wgslsmith_div_u32(arg_0.a.x, 0u) % 32u)) >> (reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 32270u, arg_0.d), vec3<u32>(arg_0.a.x, 0u, arg_0.a.x)), abs(u_input.c.x))) % 32u));
    var var_1 = -max(vec3<i32>(~_wgslsmith_add_i32(0i, u_input.e.x), 0i, -2147483647i), u_input.e.ywx);
    global1 = array<bool, 26>();
    var var_2 = func_2();
    var var_3 = vec2<bool>(!(!global1[_wgslsmith_index_u32(1u, 26u)]), min(-select(54790i, 2147483647i, arg_2.x), firstLeadingBit(-var_0)) < -14657i);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(arg_0.b, var_2.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-182f, 903f, arg_0.e, 274f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_2.e, 1113f, arg_0.c.x))))) - vec4<f32>(_wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(trunc(var_2.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e * -1324f), _wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_f_op_f32(f32(-1f) * -1033f), 523f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~arg_1.a.x), 6u)];
    var var_1 = var_0.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f));
    global2 = array<Struct_2, 6>();
    let var_2 = ~arg_1.d;
    return -1649f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, -555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(168f))), -108f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-814f, -1886f), _wgslsmith_f_op_f32(select(-128f, -449f, global1[_wgslsmith_index_u32(16817u, 26u)])), _wgslsmith_div_f32(615f, 109f), -1636f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1429f, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(-793f)), Struct_1(~(~vec4<u32>(0u, 0u, u_input.b.x, 0u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<u32>(u_input.d.x, 0u, 0u, u_input.d.x), vec4<f32>(-1081f, -396f, -756f, 1010f), var_0.xz, u_input.b.x, var_0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(12155u, 26u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(27898u, 26u)], global1[_wgslsmith_index_u32(12739u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zz)), ~(u_input.b.x & u_input.b.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)), global2[_wgslsmith_index_u32(3577u, 6u)], min(vec3<u32>(~u_input.b.x, _wgslsmith_mult_u32(18431u, 0u), u_input.d.x), ~vec3<u32>(u_input.b.x, u_input.d.x, 1u)))));
    global2 = array<Struct_2, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(func_2(), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], false, global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(select(false, false, false), 1u == u_input.b.x, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(73162u, 26u)], true), !vec3<bool>(true, global1[_wgslsmith_index_u32(27826u, 26u)], true), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 26u)])), !select(!vec3<bool>(global1[_wgslsmith_index_u32(32u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true), vec3<bool>(true, false, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], false)), false), vec4<bool>(any(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), global1[_wgslsmith_index_u32(u_input.d.x, 26u)])), true, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x)) <= select(1u, u_input.b.x, global1[_wgslsmith_index_u32(min(u_input.b.x, 0u), 26u)]), !any(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(10860u, 26u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(22131u, 26u)], global1[_wgslsmith_index_u32(8030u, 26u)], false)))))).x;
    var var_2 = Struct_1(func_2().a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) * _wgslsmith_f_op_f32(-var_0.x)), -600f, -650f, 1061f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.yz, vec2<f32>(_wgslsmith_div_f32(-443f, -117f), _wgslsmith_div_f32(469f, 216f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(4294967295u, 26u)], true, global1[_wgslsmith_index_u32(60533u, 26u)]))))), u_input.b.x, 1000f);
    global0 = 910f;
    var var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 6u)];
    var_0 = var_3.b.b;
    global1 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, -u_input.a, var_0.zx, vec2<u32>(_wgslsmith_clamp_u32(min(var_2.d, u_input.c.x), ~var_2.a.x, 30196u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(137624u, u_input.c.x, var_3.b.d), vec3<u32>(4294967295u, 1u, u_input.d.x)) % 32u), 75886u));
}

