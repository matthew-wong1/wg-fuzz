struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: vec3<i32>;

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-1000f, 637f, 1015f), vec3<f32>(1414f, -733f, 2001f), vec3<f32>(844f, 949f, 789f), vec3<f32>(-815f, -184f, -489f), vec3<f32>(-1272f, 141f, 1106f), vec3<f32>(1000f, -1000f, 1161f), vec3<f32>(820f, 224f, -1618f), vec3<f32>(-328f, -775f, 198f), vec3<f32>(-1376f, -1000f, 2380f), vec3<f32>(-1385f, 899f, -591f), vec3<f32>(899f, 215f, -244f), vec3<f32>(289f, 2597f, -188f), vec3<f32>(3384f, -223f, -818f), vec3<f32>(1142f, 183f, 2433f), vec3<f32>(167f, 1417f, -1000f), vec3<f32>(-1344f, -1143f, 539f), vec3<f32>(872f, -1605f, 1095f), vec3<f32>(-1621f, -1000f, -1030f), vec3<f32>(-1084f, 585f, -1000f), vec3<f32>(1850f, 624f, -1420f), vec3<f32>(-1009f, 1000f, -733f), vec3<f32>(-789f, -1138f, -2141f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = u_input.b;
    var_0 = min(~global0.b.x, ~16298u);
    global2 = vec3<i32>(u_input.a, -abs(-(u_input.a << (u_input.b % 32u))), _wgslsmith_sub_i32(-abs(1i), ~_wgslsmith_dot_vec4_i32(u_input.d >> (vec4<u32>(4294967295u, u_input.b, 18707u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a, global2.x, global2.x, global2.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.a)) + vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(1000f - global0.a.x)))), global0.b, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), -813f, -199f));
    let var_2 = select(max(firstTrailingBit(~u_input.e | 18458i), u_input.d.x), ~global2.x, true);
    return _wgslsmith_f_op_vec2_f32(abs(var_1.a));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<u32> {
    global2 = vec3<i32>(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(u_input.d.xy, _wgslsmith_add_vec2_i32(u_input.d.zw, vec2<i32>(arg_0, global2.x)))), 1i), global2.x << (abs(global0.b.x) % 32u), _wgslsmith_add_i32(~_wgslsmith_div_i32(4458i, 1i), firstTrailingBit(max(global2.x, ~u_input.d.x))));
    var var_0 = _wgslsmith_clamp_i32(~(-arg_0), ~(~(~(~arg_0))), global2.x);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-arg_1.c.x))), global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(-291f)).x, _wgslsmith_f_op_f32(min(1410f, _wgslsmith_f_op_f32(189f * global0.a.x))), 1f)));
    var var_1 = firstTrailingBit(~(-7499i));
    let var_2 = arg_2.x;
    return _wgslsmith_mult_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~24u, max(u_input.b, global0.b.x)), ~firstLeadingBit(arg_1.b)), vec3<u32>(~29858u, _wgslsmith_dot_vec2_u32(arg_1.b.xz, _wgslsmith_clamp_vec2_u32(arg_1.b.xz, arg_1.b.xx, vec2<u32>(u_input.b, global0.b.x))), abs(0u))), _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_1.b.x, 4294967295u, 43499u)), global0.b));
}

fn func_2() -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.c.xx), func_4(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.a, -24561i), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(max(global0.a.x, -1000f)))), ~vec3<u32>(0u, global0.b.x, 1u) << (_wgslsmith_mult_vec3_u32(global0.b, vec3<u32>(48972u, global0.b.x, 39915u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global0.b.x, 22u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.x, global0.a.x, -754f), vec3<f32>(global0.a.x, -716f, -1007f)))))), vec2<bool>(true, !all(vec3<bool>(true, true, false)))), global3[_wgslsmith_index_u32(1u, 22u)]);
    var var_0 = vec4<f32>(450f, global0.a.x, global0.a.x, global0.a.x);
    global1 = array<vec4<f32>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(max(var_0.x, global0.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) * vec2<f32>(1359f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-548f, 1572f))))) - vec2<f32>(-670f, -2040f)), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(u_input.b, 22u)], _wgslsmith_f_op_vec3_f32(round(var_0.wyz)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))))));
    global2 = ~max(vec3<i32>(~global2.x, -64624i, 2147483647i), min(max(u_input.d.yyz, vec3<i32>(u_input.d.x, global2.x, -1i)), u_input.d.zwz >> (var_1.b % vec3<u32>(32u)))) & _wgslsmith_mod_vec3_i32((u_input.d.zyw ^ abs(vec3<i32>(46551i, u_input.e, global2.x))) << (global0.b % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(select(u_input.a, 2147483647i, true), global2.x), global2.x, 26528i));
    return global2.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_div_i32(firstTrailingBit(u_input.c), 1i);
    let var_1 = arg_1.a.x;
    var var_2 = u_input.b;
    global3 = array<vec3<f32>, 22>();
    let var_3 = -u_input.d.zzx | (vec3<i32>(-1i) * -(-u_input.d.wxz & vec3<i32>(arg_0.x, u_input.a, -2147483647i)));
    return 934f;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -533f);
    var var_1 = (select(vec2<i32>(~(-1i), global2.x), abs(select(u_input.d.zy, vec2<i32>(global2.x, 0i), true)), vec2<bool>(true, true)) << (arg_0.b.zz % vec2<u32>(32u))) ^ global2.xz;
    var var_2 = (-_wgslsmith_mod_i32(1i, u_input.e) >= var_1.x) | (!any(vec4<bool>(true, true, true, true)) && any(vec3<bool>(select(false, true, true), global2.x == -60685i, false)));
    var_0 = arg_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(func_5(vec2<i32>(func_2(), 59787i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-983f, global0.a.x)), arg_0.a.x), global0.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.c)))), vec4<u32>(32736u, arg_0.b.x, func_4(-2147483647i >> (global0.b.x % 32u), arg_0, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))).x, select(~max(arg_0.b.x, u_input.b), 12879u, all(vec3<bool>(true, true, true))))));
    return abs(global0.b.x);
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> vec4<u32> {
    var var_0 = any(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_1(global0.c.zz, global0.b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec2<i32>(1i, 1i), Struct_1(global0.a, vec3<u32>(40710u, 4294967295u, u_input.b), global3[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<u32>(67517u, u_input.b, 22484u, arg_2))) * global0.a.x), global0.c.x, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1437f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -958f))).x));
    let var_2 = ~vec2<u32>(~_wgslsmith_mod_u32(var_1.b.x, 0u), 26818u) & global0.b.xx;
    global3 = array<vec3<f32>, 22>();
    let var_3 = 718f;
    return vec4<u32>(~(~_wgslsmith_mod_u32(arg_2, 27584u)), ~global0.b.x, abs(global0.b.x & 0u), max(~(var_1.b.x >> (_wgslsmith_sub_u32(1930u, global0.b.x) % 32u)), ~17546u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(47959u, 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)])) * global1[_wgslsmith_index_u32(61167u, 7u)]) * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.b << (71386u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, u_input.b, 37119u, 50950u), vec4<u32>(global0.b.x, global0.b.x, u_input.b, global0.b.x), vec4<u32>(u_input.b, 4294967295u, 77082u, u_input.b)), vec4<u32>(28298u, 4294967295u, global0.b.x, global0.b.x))), 7u)]), global0.a.x, func_1(Struct_1(global0.c.yz, global0.b, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, global0.b.x), 22u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(global0.a.x - global0.c.x)), 1149f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.x, -2662f), global0.c.zz)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.x, global0.a.x))), all(vec2<bool>(false, true))))))), reverseBits(global0.b) & (vec3<u32>(~4294967295u, 4294967295u, u_input.b) << (_wgslsmith_clamp_vec3_u32(~global0.b, ~var_0.ywz, var_0.zxw) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, 1106f, global0.c.x), vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(157f, global0.a.x, -863f))), global3[_wgslsmith_index_u32(var_0.x, 22u)]))), vec3<bool>(true, true, true))));
    let var_2 = ~var_1.b.x;
    let var_3 = vec2<i32>(1i, i32(-1i) * -firstTrailingBit(-1i));
    var var_4 = vec3<i32>(-38223i, _wgslsmith_add_i32(1i, u_input.a), firstTrailingBit(i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0.c.x) + 299f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-533f)), var_1.c.x))), u_input.d.wyy, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global0.c.x), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(var_1.a.x + 1875f)))));
}

