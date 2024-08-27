struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-30531i, 2147483647i, 23811i, 2147483647i);

var<private> global1: Struct_2;

var<private> global2: u32 = 1u;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 33521i, vec4<bool>(false, true, false, true), vec4<f32>(646f, 1000f, -1410f, -210f), vec2<i32>(34366i, 221i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(global1.b, global3.d.wyy);
    var var_1 = Struct_1(select(!global3.c, !global3.a, global3.c), -9554i, !vec4<bool>(any(vec4<bool>(false, global3.c.x, global3.c.x, false)), any(global3.c), true, global3.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global3.d.x * 155f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1335f, 232f) - _wgslsmith_f_op_f32(1292f + global1.a)), global3.d.x, 805f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, 1176f, global1.a, 489f)) * vec4<f32>(global1.b.x, -1261f, global3.d.x, -1000f))))), global0.zz);
    let var_2 = true;
    let var_3 = firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(global3.e.x, 39924i), reverseBits(var_1.e))), -select(global3.e, vec2<i32>(global0.x, -19132i), var_1.a.yx) | abs(global3.e | var_1.e)));
    var_1 = Struct_1(vec4<bool>(false, var_2, all(var_1.a.wwy), var_2), _wgslsmith_div_i32(-(~var_1.e.x), _wgslsmith_add_i32(-14618i, ~var_1.b ^ (14064i & global3.b))), !var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(max(var_1.d.x, var_1.d.x)), 956f, 288f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(-101f, -755f, 1520f, 1168f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.d.x, -1419f, global3.d.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-556f, var_1.d.x, var_1.d.x, 1603f)))))), firstTrailingBit(~global3.e));
    return -48622i;
}

fn func_3() -> vec2<i32> {
    global0 = ~select(abs(~(~vec4<i32>(-6507i, -2147483647i, global3.e.x, global3.e.x))), ~(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -2147483647i, 2147483647i, 24033i), vec4<i32>(global3.b, 7246i, global0.x, 1i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global3.e.x, global0.x, global3.e.x), vec4<i32>(0i, global3.b, global0.x, global3.e.x))), !select(global3.c, select(global3.c, vec4<bool>(false, true, global3.c.x, false), vec4<bool>(false, global3.c.x, global3.c.x, false)), select(vec4<bool>(global3.a.x, global3.a.x, false, false), vec4<bool>(true, global3.c.x, false, false), global3.c.x)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-global3.d.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-954f)))))), global1.b);
    var var_0 = countOneBits(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.c, u_input.b, u_input.a) & vec3<u32>(u_input.b, u_input.c, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, ~0u, _wgslsmith_mod_u32(u_input.c, u_input.a)), ~(~vec3<u32>(u_input.b, u_input.a, u_input.b)))));
    var_0 = ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(~62724u, _wgslsmith_dot_vec3_u32(vec3<u32>(57654u, 7952u, var_0.x), vec3<u32>(var_0.x, u_input.b, 44317u)), ~u_input.a), vec3<u32>(u_input.a, u_input.c, 0u) >> (vec3<u32>(u_input.a, 1u, var_0.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(56046u, u_input.b, u_input.c), vec3<u32>(1u, u_input.c, var_0.x)), min(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(4294967295u, 83560u, 0u)))) & _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(var_0.x, u_input.a, 13656u)), (vec3<u32>(var_0.x, 22595u, var_0.x) ^ vec3<u32>(56187u, 21421u, u_input.c)) | ~vec3<u32>(31752u, u_input.a, 19821u)));
    let var_1 = select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, 4294967295u), ~(~vec3<u32>(var_0.x, 7020u, u_input.a)), abs(vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, u_input.a, var_0.x, 11426u), vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), 18639u, ~94988u, u_input.b)), _wgslsmith_div_u32(firstTrailingBit(var_0.x), u_input.a), _wgslsmith_sub_u32(var_0.x, ~var_0.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.yy) % 32u)), !(global1.a == 1274f));
    return vec2<i32>(global3.b, _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.e.x, global0.x), abs(abs(vec2<i32>(1873i, -10766i)))), (global0.x ^ (global0.x << (51699u % 32u))) | abs(24532i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.d.x, 409f, _wgslsmith_f_op_f32(ceil(global1.b.x))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.b))))));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-global1.b));
    let var_1 = _wgslsmith_mod_u32(~min(~4294967295u, u_input.c), ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(u_input.c & 4294967295u, ~0u)));
    let var_2 = Struct_2(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(1015f, 1626f)), _wgslsmith_f_op_f32(step(1233f, global1.b.x)), _wgslsmith_f_op_f32(-var_0.x)), global1.b)) - arg_0.d.zwz));
    var var_3 = var_2;
    return Struct_1(select(!(!arg_2.c), vec4<bool>((global3.b ^ 29674i) >= -global0.x, true, !arg_1.x || !arg_1.x, all(!arg_2.a)), !(!all(arg_2.c.zyy))), arg_0.e.x, arg_2.c, arg_0.d, max(_wgslsmith_add_vec2_i32(select(-arg_0.e, select(vec2<i32>(arg_2.e.x, 80019i), vec2<i32>(-1i, 2147483647i), false), true), arg_2.e), arg_2.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_i32(arg_0.b, func_3().x ^ global0.x);
    var var_1 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~select(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(u_input.c, u_input.a, 58394u), arg_1.a.yyw), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 19058u, u_input.c), vec3<u32>(66453u, 1u, u_input.a))), _wgslsmith_div_vec3_u32(~max(vec3<u32>(4294967295u, 5327u, u_input.a), vec3<u32>(1u, u_input.b, u_input.a)), ~vec3<u32>(1u, 4294967295u, u_input.a))));
    global0 = vec4<i32>(global3.e.x, -2147483647i, 0i, ~select(1i, 0i ^ -arg_0.b, arg_0.c.x));
    var var_2 = _wgslsmith_f_op_f32(-global3.d.x);
    var var_3 = Struct_2(-1276f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global3.d.yyy))), vec3<f32>(func_4(arg_0, func_4(Struct_1(vec4<bool>(true, true, true, arg_0.a.x), -2147483647i, vec4<bool>(global3.a.x, global3.c.x, arg_0.a.x, true), vec4<f32>(1000f, arg_0.d.x, 1497f, global1.a), vec2<i32>(2896i, arg_1.e.x)), vec2<bool>(arg_1.a.x, arg_0.a.x), Struct_1(vec4<bool>(global3.c.x, false, arg_1.a.x, true), -23793i, arg_0.a, vec4<f32>(708f, 140f, arg_1.d.x, global1.a), vec2<i32>(0i, global3.b))).a.zz, arg_1).d.x, arg_0.d.x, -338f))));
    return func_4(arg_1, func_4(Struct_1(arg_1.a, global3.e.x, vec4<bool>(arg_1.a.x, all(arg_1.a.yx), global3.a.x != arg_0.c.x, -46642i >= arg_0.e.x), vec4<f32>(_wgslsmith_div_f32(arg_0.d.x, global3.d.x), -795f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(-1325f, 173f)), arg_0.e), vec2<bool>(arg_0.c.x, abs(global3.e.x) <= 40658i), Struct_1(vec4<bool>(all(vec4<bool>(true, true, arg_0.c.x, true)), func_4(Struct_1(arg_0.c, 5320i, arg_0.a, vec4<f32>(arg_1.d.x, 858f, arg_0.d.x, global1.b.x), global0.yz), arg_0.c.xx, Struct_1(arg_1.c, 1960i, arg_1.c, vec4<f32>(2038f, global3.d.x, 859f, arg_0.d.x), arg_1.e)).c.x, all(vec3<bool>(arg_1.a.x, false, false)), false), 5128i, func_4(func_4(arg_0, global3.a.ww, arg_1), !vec2<bool>(arg_0.a.x, true), func_4(Struct_1(vec4<bool>(arg_0.c.x, false, false, true), arg_0.e.x, arg_1.a, vec4<f32>(-542f, 1235f, arg_1.d.x, 1237f), global3.e), vec2<bool>(false, arg_0.a.x), arg_1)).c, arg_0.d, global3.e)).a.xx, arg_0);
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(496f, arg_0.d.x), -1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(arg_0.d.yx)), global1.b.xy)))));
    var var_1 = func_5(func_4(Struct_1(!arg_0.a, ~func_2(global0.x), !arg_0.c, vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(step(-103f, -960f)), arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.d.x)), func_3()), global3.a.yw, Struct_1(global3.a, _wgslsmith_add_i32(min(arg_0.b, -52937i), -1i | global3.b), vec4<bool>(u_input.b <= 0u, true, all(global3.a), !arg_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(-global1.a), -592f, _wgslsmith_div_f32(-1802f, -419f), _wgslsmith_f_op_f32(-822f - -203f)), ~vec2<i32>(0i, 2147483647i))), arg_0);
    var var_2 = select(global3.a, global3.a, arg_0.a.x);
    let var_3 = Struct_2(var_0.x, global3.d.wzz);
    let var_4 = Struct_1(!arg_0.a, reverseBits(~13272i), vec4<bool>(select(!global3.a.x, !(!arg_0.c.x), false), !var_1.c.x, var_1.a.x, true), _wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), global3.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(119f, 340f, true)))))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, -34284i), max(global0.zw & vec2<i32>(2147483647i, arg_0.e.x), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b, -36672i), vec2<i32>(-34793i, -2787i)))), ~(vec2<i32>(2147483647i, arg_0.e.x) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | global3.e));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(59125u);
    global1 = Struct_2(268f, _wgslsmith_f_op_vec3_f32(func_1(Struct_1(global3.a, global3.e.x, !global3.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1053f, global1.b.x, 1076f, global1.a) + _wgslsmith_f_op_vec4_f32(global3.d - vec4<f32>(global1.b.x, global3.d.x, -1227f, global3.d.x))), vec2<i32>(global3.b >> (var_0 % 32u), min(-4179i, 1i))))));
    let var_1 = !(!vec2<bool>(false, global3.a.x));
    let var_2 = ~var_0 << (_wgslsmith_mult_u32((u_input.b >> (~var_0 % 32u)) << (select(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(37812u, 4294967295u, u_input.b, u_input.c), vec4<u32>(4294967295u, var_0, 3431u, u_input.b)), global3.a.x) % 32u), 1u) % 32u);
    var var_3 = false;
    let var_4 = global3.a.yyx;
    var var_5 = firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 4294967295u), vec2<u32>(1u, 1u)), 4294967295u), ~(~(~4294967295u)), var_0, 12712u));
    global1 = Struct_2(-230f, _wgslsmith_f_op_vec3_f32(round(global3.d.zzz)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~abs(select(vec4<u32>(u_input.b, var_2, 0u, 7837u), vec4<u32>(u_input.c, 0u, var_5.x, var_0), global3.a) ^ ~vec4<u32>(var_2, u_input.b, 1u, var_0)));
}

