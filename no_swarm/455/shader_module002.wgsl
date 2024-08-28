struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = ~u_input.a | (vec2<i32>(select(u_input.d.x, ~21794i, all(vec4<bool>(false, true, true, true))), reverseBits(-2147483647i)) & vec2<i32>(u_input.d.x << ((arg_1.x & 1u) % 32u), i32(-1i) * -42845i));
    var var_2 = false;
    let var_3 = Struct_1(arg_1.x, vec4<bool>(false, !(var_0.x != _wgslsmith_f_op_f32(-arg_0.x)), select(true, _wgslsmith_sub_u32(arg_1.x, arg_1.x) < _wgslsmith_sub_u32(arg_1.x, 1u), false), true & all(vec3<bool>(true, true, true))));
    return select(select(!select(select(var_3.b, var_3.b, var_3.b), select(var_3.b, var_3.b, var_3.b), select(vec4<bool>(true, var_3.b.x, var_3.b.x, var_3.b.x), var_3.b, false)), var_3.b, !vec4<bool>(true, var_3.b.x || var_3.b.x, any(vec3<bool>(true, false, false)), true)), select(var_3.b, vec4<bool>(true, var_3.b.x, true, any(vec4<bool>(var_3.b.x, false, var_3.b.x, var_3.b.x))), false), true == !any(!var_3.b.yy));
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = 1u;
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.d.a, 0u), _wgslsmith_clamp_u32(17321u, arg_0.d.a, 11957u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.a.a, 1u, 1u), arg_0.a.a)), 329f, ~arg_0.a.c << ((vec2<u32>(0u, 42457u) | _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.a.a, arg_0.a.a))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.a.b)))), _wgslsmith_div_f32(-132f, arg_0.a.d.x), arg_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), arg_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-339f - arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - arg_0.b), reverseBits(_wgslsmith_sub_vec4_i32(arg_0.c, arg_0.c)), arg_0.d);
    var var_2 = Struct_1(arg_0.d.a, select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.b, 2140f, 298f, -859f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1266f, arg_0.b.x, -1185f, var_1.a.d.x)))), vec2<u32>(arg_0.d.a, ~var_1.d.a)), vec4<bool>(!arg_0.d.b.x, true, false, true), vec4<bool>(!select(arg_0.d.b.x, arg_0.d.b.x, false), var_1.d.b.x, true, false)));
    var_0 = var_2.a;
    var var_3 = abs(~(~(~(~vec4<u32>(12452u, var_2.a, 0u, 4294967295u)))));
    return !vec4<bool>(all(func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.b, arg_0.b.x, var_1.b.x, 1718f))), select(vec2<u32>(1u, arg_0.a.a), vec2<u32>(4294967295u, 9284u), vec2<bool>(var_2.b.x, true))).yyw), !arg_0.d.b.x, !(var_1.a.a != 30143u) != var_1.d.b.x, false);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(~49955u, 1u);
    var_0 = 1u;
    let var_1 = select(!vec4<bool>(true, all(vec4<bool>(false, arg_1.x, false, true)) && true, true, any(!arg_1.xw)), func_2(Struct_3(Struct_2(firstTrailingBit(0u), _wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_add_vec2_i32(u_input.c.xy, vec2<i32>(-12905i, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2229f, -1345f, 831f) - vec3<f32>(-498f, -707f, -1161f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-473f, -673f)))), u_input.b, Struct_1(1u, !vec4<bool>(false, arg_1.x, false, arg_1.x)))), !all(!(!vec4<bool>(arg_1.x, false, false, arg_1.x))));
    var var_2 = _wgslsmith_f_op_f32(929f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-117f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1042f))))));
    var_2 = 1f;
    return vec2<i32>(-firstLeadingBit(arg_0), 19766i) ^ u_input.c.zz;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(682f))))), -429f, 110f, 781f));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -150f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, -2825f, 137f, 936f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -184f, _wgslsmith_f_op_f32(exp2(var_0.a.x))), vec4<bool>(true, true, true, true))))));
    var_0 = Struct_4(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), 557f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(round(var_0.a.x)))));
    var var_1 = Struct_3(Struct_2(min(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7694u, 1u, 11584u), vec3<u32>(6754u, 4294967295u, 24100u))), var_0.a.x, ~u_input.b.wy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.yyy))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-276f))), _wgslsmith_f_op_f32(select(-1827f, var_0.a.x, true))), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, arg_1, -11348i), vec4<i32>(u_input.c.x, 22381i, -2147483647i, u_input.b.x)), select(u_input.b, u_input.b, vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-51300i, -10286i, arg_1, arg_0.x), u_input.b)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 20419i, -64177i, arg_1)) & u_input.b, Struct_1(firstLeadingBit(0u), func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(var_0.a.x, -712f, var_0.a.x, 173f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, -334f, var_0.a.x, var_0.a.x)))), ~select(vec2<u32>(52024u, 13894u), vec2<u32>(14832u, 32710u), vec2<bool>(false, true)))));
    var_1 = Struct_3(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1619f), false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.b)))), ~(~min(~u_input.b, ~var_1.c)), Struct_1(var_1.d.a, vec4<bool>(false, var_1.d.b.x, -33002i <= abs(arg_1), var_1.d.b.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-1000f + var_0.a.x), _wgslsmith_f_op_f32(-255f * var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~max(1116u, ~_wgslsmith_mod_u32(1u, 59259u)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 347f))), -756f))), u_input.a ^ firstLeadingBit(vec2<i32>(u_input.d.x, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f - 1312f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-404f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f + 337f) * _wgslsmith_f_op_f32(-2135f * -127f))))));
    let var_1 = func_4(func_1(var_0.c.x, !vec4<bool>(true, false, any(vec4<bool>(false, false, false, true)), true)), 0i);
    let var_2 = countOneBits(min(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 45955u, var_0.a, var_0.a), vec4<u32>(var_0.a, var_0.a, 17209u, 0u), vec4<u32>(var_0.a, 1563u, var_0.a, var_0.a))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.a, 1u, 1u, 0u)), ~vec4<u32>(var_0.a, var_0.a, var_0.a, 63178u), reverseBits(vec4<u32>(4294967295u, var_0.a, 4294967295u, 1u)))), ~(~(vec4<u32>(var_0.a, var_0.a, 4663u, var_0.a) << (vec4<u32>(var_0.a, var_0.a, 1u, 0u) % vec4<u32>(32u))))));
    let var_3 = select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), func_3(vec4<f32>(-1330f, var_0.b, -1007f, var_1.a.x), vec2<u32>(16596u, 0u)).x != all(vec4<bool>(true, true, false, false)), (var_1.a.x < var_0.d.x) | all(vec2<bool>(false, false)), false), func_3(var_1.a, ~(~var_2.xy)), select(vec4<bool>(true, true, true, true), !func_2(Struct_3(Struct_2(0u, -624f, var_0.c, vec3<f32>(var_0.d.x, -2825f, 944f)), var_1.a.xw, vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, var_0.c.x), Struct_1(var_0.a, vec4<bool>(true, true, false, true)))), vec4<bool>(true, true, true, true))), vec4<bool>(all(func_3(_wgslsmith_f_op_vec4_f32(-var_1.a), vec2<u32>(0u, 4294967295u))), true, all(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -323f, 1326f, var_0.b), var_1.a, false)), var_2.xx)), false), func_2(Struct_3(Struct_2(var_2.x, _wgslsmith_f_op_f32(step(var_0.b, 2083f)), var_0.c, var_0.d), vec2<f32>(179f, _wgslsmith_f_op_f32(round(137f))), u_input.b, Struct_1(_wgslsmith_mod_u32(91329u, var_2.x), vec4<bool>(true, true, false, false)))));
    var_0 = Struct_2(abs(1u) >> (var_2.x % 32u), var_1.a.x, reverseBits(u_input.d), _wgslsmith_f_op_vec3_f32(var_1.a.yzw + var_1.a.xxx));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b, u_input.b) << (max(var_2, vec4<u32>(_wgslsmith_mult_u32(36514u, 41929u), 3025u, var_2.x, 59338u)) % vec4<u32>(32u)), countOneBits(var_0.c), vec2<i32>(var_0.c.x, countOneBits(0i)), -u_input.b);
}

