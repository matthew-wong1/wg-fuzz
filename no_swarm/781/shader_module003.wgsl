struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-14332i), vec4<i32>(-19625i, 36062i, 4280i, 1i), Struct_1(0i), vec3<u32>(1u, 0u, 1u), Struct_1(-10461i)), Struct_2(Struct_1(-68364i), vec4<i32>(-43036i, 15079i, -1i, -72744i), Struct_1(-31431i), vec3<u32>(0u, 41456u, 6018u), Struct_1(6202i)), 22346i, vec4<bool>(true, false, true, true), 10766i);

var<private> global1: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(2147483647i, 0i), vec2<i32>(-913i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(7551i, -2258i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-46200i, -66918i), vec2<i32>(26105i, i32(-2147483648)), vec2<i32>(-26064i, 11627i));

var<private> global2: array<i32, 4>;

var<private> global3: Struct_5 = Struct_5(Struct_2(Struct_1(-17831i), vec4<i32>(1i, -1i, 35241i, 2147483647i), Struct_1(-51721i), vec3<u32>(27038u, 21298u, 1u), Struct_1(2147483647i)), false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = global0.a.d.xy;
    global2 = array<i32, 4>();
    var var_1 = Struct_3(global0.b, global3.a, max(-(19305i ^ global3.a.c.a), -_wgslsmith_clamp_i32(min(global3.a.c.a, arg_1.a), -u_input.d, -2147483647i ^ u_input.c.x)), global0.d, 16256i);
    var var_2 = ~min(u_input.e.yx, ~(u_input.e.xx | _wgslsmith_div_vec2_u32(u_input.e.xy, vec2<u32>(arg_2, 26888u))));
    var var_3 = ~1956u;
    return arg_0 && true;
}

fn func_3() -> u32 {
    global1 = array<vec2<i32>, 11>();
    global1 = array<vec2<i32>, 11>();
    let var_0 = min(~abs(vec4<u32>(8358u, 1u, ~4294967295u, 1u)), vec4<u32>(~(~reverseBits(global3.a.d.x)), 0u, min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.b.d.x, 46608u, 4294967295u)), ~vec3<u32>(3325u, 2097u, global0.b.d.x)), u_input.e.x), max(1u, 22461u) | ~_wgslsmith_mult_u32(113869u, global0.a.d.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(-885f));
    var var_2 = Struct_3(global3.a, Struct_2(global0.b.e, vec4<i32>(2147483647i, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(global2[_wgslsmith_index_u32(1u, 4u)], u_input.c.x), global1[_wgslsmith_index_u32(4294967295u, 11u)], global0.d.ww), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.e.a, global0.c), vec2<i32>(global0.e, 2147483647i))), abs(-2147483647i)), global3.a.e, _wgslsmith_mult_vec3_u32(u_input.e, countOneBits(var_0.zzz)) ^ vec3<u32>(~global0.b.d.x, 0u, global3.a.d.x), global3.a.e), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global3.a.e.a), u_input.c.wzy) >> (~var_0.yyz % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_i32(global3.a.b.zyx, global0.a.b.yyy), u_input.c.wwy, all(global0.d.yy)), global3.a.b.wxz), global0.a.b.xyz), !vec4<bool>(global0.e > _wgslsmith_mult_i32(0i, 5341i), global3.b, false, global3.b), -16797i);
    return var_2.a.d.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    global1 = array<vec2<i32>, 11>();
    global0 = Struct_3(Struct_2(global0.b.e, -max(vec4<i32>(global0.b.c.a, -2147483647i, global2[_wgslsmith_index_u32(global3.a.d.x, 4u)], -20198i), vec4<i32>(-9205i, global3.a.e.a, -22247i, arg_1.b.x)), Struct_1(u_input.d), _wgslsmith_mod_vec3_u32(~vec3<u32>(5025u, global3.a.d.x, global0.b.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, global0.b.d.x), vec3<u32>(arg_0, arg_0, arg_1.d.x), vec3<u32>(0u, 81658u, 46072u))) & global0.a.d, Struct_1(global0.e)), arg_1, -global0.c, select(vec4<bool>(true, !global0.d.x || true, true, !global3.b), select(!(!vec4<bool>(global0.d.x, false, global3.b, global0.d.x)), !global0.d, global0.d), select(vec4<bool>(select(true, true, global3.b), !global3.b, global0.d.x, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global3.b, global3.b, false), !global0.d), global0.d)), global3.a.c.a);
    global1 = array<vec2<i32>, 11>();
    global2 = array<i32, 4>();
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.b, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(arg_1.d.x, 4u)], global2[_wgslsmith_index_u32(73808u, 4u)], u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, global0.b.b.x, -8251i, u_input.d), u_input.c))), arg_1.b, Struct_1(2093i), vec3<u32>(~0u, 70193u, _wgslsmith_div_u32(~arg_0, _wgslsmith_sub_u32(arg_1.d.x, 0u))), Struct_1(arg_1.c.a)), Struct_2(Struct_1(41148i), _wgslsmith_div_vec4_i32(abs(global3.a.b), vec4<i32>(i32(-1i) * -1i, 1i, ~global0.b.b.x, i32(-1i) * -28236i)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-939i, global0.e, -48848i, global2[_wgslsmith_index_u32(global0.a.d.x, 4u)]), abs(global0.b.b))), ~(~u_input.e), Struct_1(_wgslsmith_add_i32(-23933i, _wgslsmith_mod_i32(1i, -2147483647i)))), -2147483647i, vec4<bool>(true, false, global0.d.x, true), _wgslsmith_add_i32(global0.e, ~1i));
    return global3.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    var var_0 = vec3<bool>(any(vec2<bool>(true, global3.b)), func_2(true, Struct_1(_wgslsmith_dot_vec3_i32(global0.a.b.xxw, global0.b.b.zxz) & u_input.c.x), ~(~abs(global3.a.d.x)), true), func_4(func_3() >> (1632u % 32u), global0.b));
    var var_1 = Struct_5(global0.a, arg_0.x);
    var var_2 = 0u;
    let var_3 = arg_1;
    var var_4 = global0.d;
    return reverseBits(_wgslsmith_clamp_i32(min(-firstTrailingBit(global2[_wgslsmith_index_u32(global0.b.d.x, 4u)]), abs(var_1.a.a.a)), 1i, _wgslsmith_clamp_i32(-2147483647i, ~(-56767i), ~(-4674i))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(12734u, global3.a.d.x, 98448u, u_input.b.x) << (vec4<u32>(0u, 65734u, arg_3.d.x, global3.a.d.x) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.e.x, 2360u, global3.a.d.x, 7605u), vec4<u32>(global3.a.d.x, global0.a.d.x, global0.a.d.x, global3.a.d.x), vec4<bool>(arg_1, false, arg_0, arg_1))) >> (vec4<u32>(1u, abs(~arg_3.d.x >> (_wgslsmith_sub_u32(u_input.a, arg_3.d.x) % 32u)), global3.a.d.x, global0.a.d.x) % vec4<u32>(32u));
    var var_1 = Struct_1(firstTrailingBit(65302i));
    global3 = Struct_5(Struct_2(global0.a.c, _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, -9937i, global0.b.c.a, u_input.c.x), vec4<i32>(u_input.c.x, -u_input.c.x, -arg_3.c.a, global3.a.e.a)), global0.a.a, _wgslsmith_mod_vec3_u32(abs(max(vec3<u32>(global0.b.d.x, 0u, 19899u), vec3<u32>(global0.a.d.x, global0.a.d.x, arg_3.d.x))), ~firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, 33306u))), global3.a.e), !all(!vec4<bool>(arg_0, global0.d.x, true, true)));
    var var_2 = ~_wgslsmith_clamp_u32(var_0.x, arg_3.d.x, u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-138f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, 1355f)))))))));
    return Struct_5(Struct_2(Struct_1(1i), _wgslsmith_mod_vec4_i32(~(vec4<i32>(var_1.a, 2147483647i, u_input.c.x, 1i) & u_input.c), -arg_3.b), global0.a.e, arg_3.d, Struct_1(-1i)), !(!(arg_1 & true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, global0.d.x, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(0i, 8203i)), select(vec2<i32>(4908i, -48463i), vec2<i32>(global3.a.c.a, global3.a.a.a), false)) & func_1(global0.d.xwx, _wgslsmith_f_op_f32(f32(-1f) * -148f)), ~_wgslsmith_div_i32(25332i, 31643i), -1i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, global0.b.d.x), 4u)] >> (u_input.a % 32u), -2147483647i)), Struct_2(global0.a.a, -_wgslsmith_sub_vec4_i32(u_input.c >> (vec4<u32>(2658u, global0.b.d.x, 4294967295u, global3.a.d.x) % vec4<u32>(32u)), select(u_input.c, vec4<i32>(global2[_wgslsmith_index_u32(global3.a.d.x, 4u)], 48455i, 6910i, global3.a.a.a), global0.d)), global0.a.e, reverseBits(vec3<u32>(min(u_input.a, u_input.b.x), ~42011u, ~4192u)), Struct_1((i32(-1i) * -1i) & func_1(vec3<bool>(global3.b, global0.d.x, true), -1000f))));
    global0 = Struct_3(var_0.a, Struct_2(var_0.a.a, var_0.a.b, Struct_1(1i), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global0.a.d.x, 3393u), min(global3.a.d, ~global3.a.d)), var_0.a.c), _wgslsmith_add_i32(abs(u_input.c.x) << (0u % 32u), min(-global3.a.b.x, global0.e) ^ _wgslsmith_dot_vec2_i32(-global1[_wgslsmith_index_u32(29198u, 11u)], vec2<i32>(global3.a.a.a, -1i))), global0.d, ~(u_input.d | _wgslsmith_mult_i32(-var_0.a.a.a, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_0.a.d.x, 4u)], 55415i))));
    let var_1 = 35542i;
    global2 = array<i32, 4>();
    let var_2 = vec2<bool>(true, (var_0.a.d.x >= 46627u) || !(!func_4(u_input.a, Struct_2(var_0.a.a, vec4<i32>(-48416i, 2147483647i, var_1, -1i), global0.a.e, var_0.a.d, var_0.a.a))));
    let var_3 = ~_wgslsmith_mod_i32(2147483647i, ~1i);
    global0 = Struct_3(Struct_2(func_5(!all(global0.d), true, global0.a.b, func_5(true, true, _wgslsmith_sub_vec4_i32(global0.a.b, vec4<i32>(var_3, 1i, 14859i, global3.a.a.a)), Struct_2(Struct_1(var_3), vec4<i32>(u_input.c.x, 52519i, -18332i, -57330i), Struct_1(19404i), u_input.b, Struct_1(u_input.c.x))).a).a.e, vec4<i32>(u_input.c.x, var_0.a.c.a, func_5(false, all(vec4<bool>(true, true, false, var_0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, global2[_wgslsmith_index_u32(global3.a.d.x, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<i32>(-50725i, 32949i, global0.a.c.a, 1i)), func_5(true, var_0.b, u_input.c, Struct_2(Struct_1(global3.a.e.a), vec4<i32>(-18146i, var_0.a.a.a, 51086i, global0.c), Struct_1(1i), vec3<u32>(u_input.b.x, 1u, global3.a.d.x), var_0.a.c)).a).a.c.a, 0i), global0.b.c, min(var_0.a.d, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, var_0.a.d), ~global0.a.d.x, 8023u)), Struct_1(1i)), func_5(true, global3.b, -(~_wgslsmith_mod_vec4_i32(global0.a.b, vec4<i32>(u_input.c.x, 67274i, global2[_wgslsmith_index_u32(67765u, 4u)], u_input.c.x))), func_5(false, all(var_2), vec4<i32>(0i, global3.a.b.x, -1i >> (u_input.a % 32u), -2147483647i), func_5(true && var_2.x, global3.b, vec4<i32>(-2147483647i, 61168i, -2147483647i, var_0.a.c.a) & vec4<i32>(var_0.a.e.a, -16163i, var_1, 2147483647i), func_5(global0.d.x, true, global0.b.b, Struct_2(global3.a.e, vec4<i32>(var_0.a.c.a, var_3, 2640i, var_3), var_0.a.a, vec3<u32>(u_input.b.x, 56351u, u_input.e.x), Struct_1(global2[_wgslsmith_index_u32(31121u, 4u)]))).a).a).a).a, var_3, vec4<bool>(any(global0.d.xzz), true, false, true), _wgslsmith_clamp_i32(-global3.a.e.a, -2147483647i, abs(~(var_1 >> (u_input.a % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_add_u32(var_0.a.d.x & var_0.a.d.x, firstTrailingBit(_wgslsmith_clamp_u32(global0.a.d.x, global3.a.d.x, u_input.b.x))), ~_wgslsmith_add_u32(global3.a.d.x & 4294967295u, ~_wgslsmith_mod_u32(var_0.a.d.x, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1381f + -254f))), _wgslsmith_div_f32(-266f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1165f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), -1883f);
}

