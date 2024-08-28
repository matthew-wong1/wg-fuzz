struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, 15402i), vec4<bool>(true, true, false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, -5887i), vec4<bool>(false, false, false, true)), vec4<f32>(462f, -525f, 162f, 1000f), Struct_1(vec2<i32>(69841i, 0i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(59462i, 11769i), vec4<bool>(true, false, true, false)), false);

var<private> global2: i32 = 1i;

var<private> global3: Struct_2;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(24697i, -14704i), vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(861f)), _wgslsmith_f_op_f32(-441f * arg_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(315f, global3.b.x), global1.b.wy, vec2<bool>(global1.e, true))) - vec2<f32>(938f, global1.b.x)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0))))), _wgslsmith_mod_vec3_u32(reverseBits(u_input.b) | _wgslsmith_add_vec3_u32(~u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(u_input.b, ~u_input.b)));
    var var_1 = vec3<u32>(min(min(u_input.b.x, max(1u, 0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.b.x, 1u, var_0.b.x, 28619u)), vec4<u32>(var_0.b.x, 24344u, 11546u, var_0.b.x)), select(vec4<u32>(57064u, 95739u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 40098u, var_0.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 35070u, u_input.b.x)), !global0.b.x))), var_0.b.x, abs(var_0.b.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -544f), vec2<f32>(var_0.a.x, -1092f)) + vec2<f32>(arg_1.x, var_0.a.x)))), var_0.b);
    let var_2 = _wgslsmith_clamp_vec2_i32(global1.a.a >> (countOneBits(_wgslsmith_add_vec2_u32(var_1.yz, u_input.b.yy)) % vec2<u32>(32u)), vec2<i32>(arg_2.x, global0.a.x), -firstLeadingBit(~vec2<i32>(global4.a.x, 20066i) | ~vec2<i32>(15660i, 50104i)));
    let var_3 = var_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec4<i32> {
    global3 = Struct_2(Struct_1(vec2<i32>(-2147483647i, arg_0.a.a.x), select(vec4<bool>(any(global3.d.b.xw), global1.d.b.x, true, all(vec4<bool>(true, arg_1.b.x, arg_0.e, arg_0.d.b.x))), select(arg_1.b, global4.b, global3.d.b), vec4<bool>(true, false, select(false, true, arg_1.b.x), global3.a.b.x))), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-156f, arg_0.b.x) - _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, -1000f))), vec3<f32>(arg_0.b.x, global3.b.x, -1000f), vec4<i32>(global4.a.x, 1i, abs(arg_1.a.x), i32(-1i) * -2147483647i))), arg_1, Struct_1(reverseBits(vec2<i32>(~2147483647i, global0.a.x >> (u_input.b.x % 32u))), vec4<bool>(true, true, true, !(u_input.a.x <= u_input.a.x))), true);
    var var_0 = !(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.a.x, arg_0.a.a.x)), global0.a) != -global1.d.a.x);
    let var_1 = global3.a;
    global2 = min(~_wgslsmith_div_i32(firstTrailingBit(var_1.a.x) & _wgslsmith_sub_i32(global4.a.x, 2147483647i), global0.a.x), i32(-1i) * -1i);
    var var_2 = _wgslsmith_mult_vec3_i32(reverseBits((firstTrailingBit(vec3<i32>(global0.a.x, global0.a.x, -26531i)) & abs(vec3<i32>(2147483647i, -2147483647i, 1i))) | vec3<i32>(1i | global0.a.x, ~global3.a.a.x, abs(global4.a.x))), reverseBits(-select(~vec3<i32>(arg_0.c.a.x, 21853i, global3.c.a.x), vec3<i32>(-2147483647i, 0i, global3.c.a.x), 1000f >= arg_0.b.x)));
    return ~(select(select(vec4<i32>(global0.a.x, 2147483647i, global3.c.a.x, global0.a.x), vec4<i32>(-2147483647i, -13413i, var_1.a.x, 0i), global0.b.x), vec4<i32>(1i, global4.a.x, arg_0.d.a.x, 1i) >> (vec4<u32>(54670u, 60477u, 4294967295u, 62849u) % vec4<u32>(32u)), !global1.c.b) >> (~(~vec4<u32>(arg_2.x, u_input.b.x, 0u, arg_2.x)) % vec4<u32>(32u))) << (firstTrailingBit(abs(~vec4<u32>(23508u, 1u, 29933u, arg_2.x) & (vec4<u32>(u_input.b.x, 23739u, arg_2.x, arg_2.x) | vec4<u32>(u_input.b.x, 1u, 47414u, 0u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    var var_0 = ~(~_wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(3803i, global4.a.x, global3.a.a.x, global4.a.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global4.a.x, -19950i, 10248i, global1.a.a.x), vec4<i32>(-2147483647i, global3.a.a.x, -1i, global0.a.x))));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~(-(~vec4<i32>(var_0.x, -30815i, global0.a.x, 2147483647i))), func_4(Struct_2(Struct_1(vec2<i32>(1i, -1i), global3.a.b), _wgslsmith_f_op_vec4_f32(func_3(arg_2.a, global3.b.zyw, vec4<i32>(global1.a.a.x, -9007i, 17167i, global1.d.a.x))), Struct_1(global1.a.a, vec4<bool>(arg_0.x, true, false, false)), global1.d, arg_0.x & true), global1.d, vec2<u32>(arg_1.b.x, abs(0u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1348f, arg_2.a.x, global1.b.x, 1107f)), _wgslsmith_f_op_vec4_f32(-global1.b))))), vec4<i32>(i32(-1i) * -21483i, -2147483647i, select(global3.c.a.x, reverseBits(global0.a.x >> (1u % 32u)), global4.b.x && true), _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(1i, ~(-1i), global4.a.x ^ -50014i), -firstLeadingBit(global3.c.a.x))), vec4<i32>(min(global1.a.a.x, global4.a.x ^ global1.d.a.x), global4.a.x, var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19960i, global0.a.x, -2147483647i, -1i), vec4<i32>(-19113i, -134i, global0.a.x, global1.c.a.x)), -1i, ~60016i)) ^ vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.a.x, global0.a.x), vec2<i32>(-2147483647i, -46959i)), var_0.x), global4.a.x, countOneBits(var_0.x), var_0.x));
    var var_1 = _wgslsmith_f_op_f32(step(1290f, _wgslsmith_f_op_f32(-global1.b.x)));
    var var_2 = arg_2;
    global4 = Struct_1(var_0.yz & -(~firstTrailingBit(global4.a)), vec4<bool>(global1.e, false, all(!(!vec4<bool>(global3.e, global0.b.x, global3.e, global0.b.x))), global0.b.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-240f)) - _wgslsmith_f_op_f32(trunc(global3.b.x))) * global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -704f)), -1000f));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<bool>(any(global4.b), select(all(global3.d.b), arg_0.x, true), true);
    let var_1 = 42556u;
    let var_2 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(49119i, global0.a.x, global0.a.x, 32165i), firstTrailingBit(vec4<i32>(1i, -5873i, 25345i, global0.a.x))), 34168i), vec4<bool>(true, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, global0.b.x), Struct_3(vec2<f32>(arg_1, 1192f), vec3<u32>(u_input.a.x, 58032u, 1u)), Struct_3(vec2<f32>(449f, arg_3.x), arg_2.b), vec4<u32>(7149u, 4294967295u, var_1, u_input.b.x))) == _wgslsmith_f_op_vec4_f32(func_3(arg_3.yx, global1.b.xwx, vec4<i32>(-15193i, global4.a.x, 0i, global3.c.a.x))).x, false, !(true & arg_0.x))), _wgslsmith_f_op_vec4_f32(abs(arg_3)), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a.x, global1.c.a.x), vec3<i32>(-63295i, 0i, global0.a.x)), _wgslsmith_mult_i32(-1i, global4.a.x)), select(!vec4<bool>(var_0.x, false, var_0.x, false), !global0.b, !(54841i >= global3.c.a.x))), Struct_1(global0.a, vec4<bool>(false, false, global3.a.b.x, all(global0.b.ywy))), arg_2.b.x < _wgslsmith_mod_u32(1u, 1u));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + arg_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - 1205f)), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), var_2.b);
    global1 = var_2;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a, ~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(18706u, u_input.b.x)), arg_2.b.xy | arg_2.b.zz)), ~(~var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(76679u, ~u_input.a.x, _wgslsmith_div_u32(func_1(global4.b.wxz, global1.b.x, Struct_3(global3.b.wx, u_input.b), global1.b), 0u) ^ _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, 0u)))) >> (~min(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(1u, u_input.a.x, 4294967295u)), vec3<u32>(~u_input.b.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u));
    global4 = Struct_1(global4.a, vec4<bool>(_wgslsmith_clamp_u32(u_input.a.x, var_0.x & 1u, _wgslsmith_mod_u32(u_input.a.x, u_input.b.x)) < var_0.x, _wgslsmith_mult_i32(2147483647i, global3.d.a.x) > 68882i, !(!global4.b.x), any(global1.c.b.wz)));
    global3 = Struct_2(Struct_1(global3.d.a, global4.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 222f, 251f, global3.b.x))))), global1.d, global1.c, global3.e);
    global0 = global1.a;
    global1 = Struct_2(global1.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1722f))))), _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), _wgslsmith_f_op_f32(abs(global1.b.x))))), 627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x))) * _wgslsmith_f_op_f32(851f + _wgslsmith_f_op_f32(-499f - global3.b.x)))), global1.c, Struct_1(abs(vec2<i32>(-17162i, global4.a.x)), global0.b), !(!global3.c.b.x));
    let var_1 = -2147483647i;
    var var_2 = !(!(var_0.x > _wgslsmith_sub_u32(u_input.a.x, u_input.b.x)));
    global1 = Struct_2(Struct_1(vec2<i32>(global1.a.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global4.a.x, -51862i, global1.a.a.x, 1i), vec4<i32>(global1.c.a.x, global3.d.a.x, 14198i, var_1), vec4<bool>(false, true, false, global1.a.b.x)), -vec4<i32>(var_1, global0.a.x, global1.c.a.x, 2147483647i))), vec4<bool>(true, !global3.a.b.x, global0.b.x, true)), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1581f + 1586f) * _wgslsmith_f_op_f32(global3.b.x * global1.b.x))), _wgslsmith_f_op_f32(trunc(global3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2115f - 671f))) * global3.b.x)), global3.d, global1.d, global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1), firstTrailingBit(u_input.a), global1.b.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global3.b.wz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.b.wx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, global1.b.x)))))), global1.b.x);
}

