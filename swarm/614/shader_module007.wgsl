struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<f32> = vec4<f32>(-779f, 790f, 204f, -1833f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, -1215f), _wgslsmith_div_f32(-1191f, 1000f), global1.x, arg_2.a.a.c) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-618f, arg_2.a.c.c, -222f, 180f), vec4<f32>(-960f, arg_2.a.d, global1.x, 585f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-355f, -3762f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c.c, arg_2.a.c.c, -398f, -769f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, arg_2.a.a.c, 1889f, global1.x), vec4<f32>(arg_2.a.b.x, arg_2.a.a.c, global1.x, global1.x))), !vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.a.c.b.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 678f, global1.x, arg_2.a.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1269f, global1.x, arg_2.a.c.c, arg_2.a.a.c) + vec4<f32>(global1.x, global1.x, global1.x, 1000f))))));
    global0 = ~(-arg_2.a.c.a.wyx);
    let var_1 = _wgslsmith_f_op_f32(abs(global1.x));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(-173f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - var_0.x), _wgslsmith_f_op_f32(max(global1.x, arg_2.a.a.c)))), _wgslsmith_f_op_f32(abs(arg_2.a.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(global1.x)))))), vec4<f32>(229f, arg_2.a.c.c, -224f, var_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-775f, arg_2.a.b.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1590f * _wgslsmith_f_op_f32(-var_0.x))), -549f));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(func_3(select(vec3<u32>(7726u, u_input.b.x << (0u % 32u), u_input.b.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(1u, u_input.b.x, u_input.b.x)) & reverseBits(u_input.b.x), 4294967295u, _wgslsmith_add_u32(58206u, ~62228u)), false), 73675u, Struct_3(var_0, select(arg_2.xy, arg_0.a.b.yw, var_0.a.b.yw))));
    global0 = select(firstLeadingBit(~var_0.c.a.wxx), arg_0.a.a.wyw, !select(vec3<bool>(false, all(vec4<bool>(false, arg_1.x, true, var_0.c.b.x)), !arg_2.x), select(!vec3<bool>(arg_1.x, false, true), !arg_2, select(arg_0.a.b.wxw, vec3<bool>(arg_0.c.b.x, false, false), arg_0.a.b.yzw)), vec3<bool>(true, any(vec2<bool>(arg_1.x, true)), arg_1.x != false)));
    let var_1 = Struct_3(arg_0, select(arg_0.a.b.ww, select(select(vec2<bool>(false, arg_0.c.b.x), select(arg_0.a.b.yy, var_0.c.b.yz, vec2<bool>(true, arg_0.c.b.x)), true), !vec2<bool>(arg_2.x, true), arg_1), true));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.c, var_0.a.c, -1375f, arg_0.d), vec4<f32>(arg_0.d, arg_0.b.x, -1077f, 261f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(227f, -626f, arg_0.b.x, var_0.b.x) * vec4<f32>(1189f, 454f, global1.x, arg_0.b.x))), vec4<f32>(-1378f, _wgslsmith_div_f32(global1.x, arg_0.a.c), _wgslsmith_f_op_f32(1000f + var_1.a.b.x), -2184f))));
    return ~_wgslsmith_mod_i32(-(~(~u_input.a)), 10441i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = !select(vec2<bool>(true, all(arg_0.b)), vec2<bool>(any(select(vec3<bool>(arg_1.x, arg_0.b.x, arg_0.b.x), arg_0.b.yyx, arg_0.b.x)), arg_1.x), arg_1);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(329f, -2532f, global1.x, -227f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 746f, global1.x) - vec4<f32>(733f, arg_0.c, -482f, 1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, arg_0.c, -1489f, arg_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, global1.x, global1.x, global1.x), vec4<f32>(-458f, arg_0.c, global1.x, -1353f)), vec4<f32>(-861f, -406f, global1.x, arg_0.c), arg_0.b.x)) * vec4<f32>(arg_0.c, -865f, -1216f, _wgslsmith_f_op_f32(-1383f - 1051f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x)) * global1.x), -800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1966f), 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -410f)))) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 185f), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-747f)) * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x)));
    var var_2 = min(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(select(arg_0.a, arg_0.a, arg_0.b), vec4<i32>(0i, u_input.a, 0i, global0.x)), vec4<i32>(func_2(Struct_2(arg_0, var_1.xy, arg_0, var_1.x), vec2<bool>(arg_1.x, arg_1.x), vec3<bool>(var_0.x, false, true)), -firstTrailingBit(global0.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_0.a), _wgslsmith_div_vec4_i32(arg_0.a, arg_0.a)), 1i)), reverseBits(firstTrailingBit(arg_0.a)));
    global1 = var_1;
    return Struct_2(Struct_1(reverseBits(vec4<i32>(global0.x, firstLeadingBit(arg_0.a.x), var_2.x << (u_input.b.x % 32u), -2147483647i)), vec4<bool>((var_0.x && arg_1.x) || arg_1.x, true, arg_0.a.x <= arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.x, arg_0.a.x), vec3<i32>(arg_0.a.x, 25084i, -6335i)) == u_input.a), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1181f * 312f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 115f))))))) + _wgslsmith_f_op_vec2_f32(sign(var_1.xw))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1510f), 220f) - global1.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 24743u)), 21352u, Struct_3(arg_1, select(vec2<bool>(true, arg_1.c.b.x), vec2<bool>(false, arg_1.c.b.x), arg_1.c.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.d, _wgslsmith_f_op_f32(abs(global1.x)))), arg_1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(294f, 1293f, true))), -824f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1745f), -157f), arg_1.c.c, _wgslsmith_f_op_f32(-1210f - -1346f), _wgslsmith_f_op_f32(-arg_1.b.x))));
    global0 = arg_1.c.a.zxw;
    global0 = -(_wgslsmith_clamp_vec3_i32(firstTrailingBit(arg_1.c.a.xzy), vec3<i32>(global0.x, u_input.a, -67318i) | vec3<i32>(-32349i, arg_0, 52892i), vec3<i32>(1i, -2147483647i, -25729i)) << (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u))) & (-vec3<i32>(-1i, func_1(Struct_1(vec4<i32>(arg_0, -1i, 1i, arg_1.a.a.x), arg_1.a.b, global1.x), vec2<bool>(false, true)).a.a.x, -2147483647i) & countOneBits(arg_1.a.a.zxz));
    var var_0 = arg_1.c.b.yzy;
    let var_1 = arg_1.a.a.zz;
    return Struct_2(Struct_1(vec4<i32>(select(select(29282i, u_input.a, true), _wgslsmith_mult_i32(0i, u_input.a), var_0.x), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 17164i), var_1 ^ global0.yz), 48860i), func_1(arg_1.a, select(select(var_0.xy, vec2<bool>(true, false), false), func_1(arg_1.a, vec2<bool>(var_0.x, var_0.x)).a.b.zz, vec2<bool>(var_0.x, arg_1.c.b.x))).c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.c, global1.x)) + _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_vec2_f32(-arg_1.b), Struct_1(vec4<i32>(_wgslsmith_mod_i32(~(-12788i), _wgslsmith_add_i32(arg_1.a.a.x, 32184i)), -reverseBits(-2147483647i), ~var_1.x, arg_1.c.a.x), arg_1.c.b, -1020f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) * _wgslsmith_f_op_f32(floor(-508f))))) - _wgslsmith_f_op_f32(f32(-1f) * -735f)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-283f, -447f, arg_0.c.c, global1.x), vec4<f32>(-492f, arg_0.a.c, global1.x, 1215f), vec4<bool>(false, false, true, arg_0.a.b.x)))) - vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(select(global1.x, arg_0.a.c, false)), _wgslsmith_f_op_f32(max(global1.x, -397f)), -1665f)))));
    global1 = vec4<f32>(global1.x, 548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - arg_0.b.x))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-709f, global1.x, global1.x, global1.x))) - vec4<f32>(957f, -804f, -209f, 686f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2248f), _wgslsmith_f_op_f32(-arg_0.b.x), -951f, _wgslsmith_f_op_f32(select(-172f, arg_0.b.x, arg_0.c.b.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, _wgslsmith_f_op_f32(290f * arg_0.a.c), _wgslsmith_f_op_f32(-467f - arg_0.d), 954f), _wgslsmith_f_op_vec4_f32(func_3(~vec3<u32>(~0u, ~u_input.b.x, abs(u_input.b.x)), ~(~_wgslsmith_div_u32(4294967295u, u_input.b.x)), Struct_3(arg_0, arg_0.c.b.xx))), !arg_0.c.b));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, global1.x, arg_0.b.x, -1399f) + vec4<f32>(arg_0.d, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1342f, global1.x, arg_0.b.x, 924f) + vec4<f32>(arg_0.c.c, arg_0.a.c, global1.x, -226f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1424f, -1000f, 862f, global1.x))))))));
    return firstLeadingBit(_wgslsmith_sub_vec4_u32(select(~select(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, arg_2), vec4<u32>(arg_2, 491u, 22997u, 1u), arg_0.c.b.x), vec4<u32>(firstTrailingBit(21695u), max(arg_2, arg_2), u_input.b.x | u_input.b.x, ~4294967295u), arg_0.a.b.x), vec4<u32>(abs(firstLeadingBit(17520u)), 34100u, ~u_input.b.x | _wgslsmith_add_u32(71483u, u_input.b.x), abs(52171u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), true)), all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    global0 = firstTrailingBit(vec3<i32>(-1i) * -firstTrailingBit(select(vec3<i32>(-1i, u_input.a, -49782i), vec3<i32>(0i, 2147483647i, u_input.a), var_0.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b.x, ~countOneBits(u_input.b.x), 14509u ^ u_input.b.x, ~1u), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 51840u, u_input.b.x, u_input.b.x), u_input.b), _wgslsmith_div_vec4_u32(u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b.x, 53831u, 4294967295u)))), func_5(func_4(global0.x, func_1(Struct_1(vec4<i32>(u_input.a, global0.x, 60545i, -44788i), vec4<bool>(var_0.x, true, var_0.x, var_0.x), 678f), select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), var_0.x))), select(func_1(Struct_1(vec4<i32>(89924i, u_input.a, 0i, u_input.a), vec4<bool>(var_0.x, false, false, var_0.x), global1.x), !vec2<bool>(var_0.x, var_0.x)).a.b.x, true, u_input.b.x > ~u_input.b.x), 109152u, vec4<i32>(37712i, -6653i >> (1u % 32u), -select(0i, 1i, true), -12285i)));
    let var_2 = -(global0.x | _wgslsmith_clamp_i32(max(global0.x, -1i), -22545i, -(u_input.a ^ global0.x)));
    global0 = -vec3<i32>(var_2, global0.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(21376u), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.b.x, 1u, 13735u)), vec3<u32>(abs(u_input.b.x), ~u_input.b.x, min(0u, 4294967295u)))));
}

