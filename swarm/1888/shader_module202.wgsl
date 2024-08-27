struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16>;

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(31559u, vec3<bool>(true, false, false)), Struct_1(16047u, vec3<bool>(false, false, true)), Struct_1(38239u, vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(1u, vec3<bool>(false, false, true)), vec3<bool>(false, false, false)));

var<private> global4: array<vec3<bool>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = vec2<i32>(countOneBits(abs(_wgslsmith_clamp_i32(1570i, 1i, u_input.b.x))), abs(u_input.b.x)) & _wgslsmith_mult_vec2_i32(u_input.b.xz >> (u_input.a.yy % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(20973i, 2147483647i), -184i), vec2<i32>(~(-25600i), ~1i)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-376f, arg_2.x, _wgslsmith_f_op_f32(-571f + arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, arg_2.x, 270f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_2.x) - vec3<f32>(arg_2.x, arg_1, -542f))), vec3<f32>(_wgslsmith_f_op_f32(-486f * arg_2.x), -766f, _wgslsmith_f_op_f32(-858f * -667f)))));
    let var_2 = firstTrailingBit(70288u << (u_input.a.x % 32u));
    global1 = array<vec3<i32>, 9>();
    var var_3 = Struct_3(Struct_2(global3.a.a, arg_0, Struct_1(1u, !(!vec3<bool>(true, true, arg_0.b.x))), select(global2.zww, select(select(arg_0.b, global2.xzw, true), global3.b.b.b, !global3.a.b.b), all(vec3<bool>(arg_0.b.x, global3.b.d.x, false)))), global3.b);
    return !vec3<bool>((_wgslsmith_clamp_u32(20447u, 20623u, 4294967295u) & ~0u) < u_input.a.x, false, any(vec3<bool>(any(arg_0.b), !global3.a.d.x, true | global3.b.d.x)));
}

fn func_2() -> Struct_3 {
    global3 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), select(global3.b.d, !vec3<bool>(global3.b.d.x, true, global3.b.b.b.x), true)), Struct_1(10282u, vec3<bool>(false | global2.x, global2.x, !global2.x)), global3.b.b, global3.b.a.b), Struct_2(Struct_1(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 83789u), func_3(global3.b.c, _wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global3.a.c.a, 16u)]), u_input.b & vec4<i32>(-27381i, u_input.b.x, u_input.b.x, 5407i))), global3.b.a, Struct_1(96482u, select(select(global2.wxz, vec3<bool>(false, global3.a.c.b.x, false), global2.xyw), !vec3<bool>(global2.x, false, global2.x), func_3(Struct_1(global3.b.b.a, vec3<bool>(true, global3.a.a.b.x, global2.x)), -553f, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], vec4<i32>(-12611i, -1633i, u_input.b.x, 76643i)))), !(!vec3<bool>(false, global2.x, global3.b.c.b.x))));
    let var_0 = select(vec2<u32>(0u, 0u) & ~(~vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a.xy, vec2<bool>(true, all(global3.a.c.b.yz)));
    let var_1 = global3.b.b.b.x;
    var var_2 = u_input.a.x;
    global2 = !(!select(!select(vec4<bool>(global2.x, true, global3.a.d.x, global2.x), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(true, true, true, true)), !(!vec4<bool>(false, true, global2.x, global3.b.a.b.x)), global2.x));
    return Struct_3(Struct_2(global3.a.c, global3.a.b, Struct_1(global3.a.b.a, vec3<bool>(global2.x, global2.x, !global3.b.d.x)), !vec3<bool>(!global2.x, false | global2.x, any(global3.a.a.b.zy))), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.c.a, 89079u, global3.b.a.a), ~vec3<u32>(var_0.x, 4294967295u, 0u)), func_3(Struct_1(var_0.x, vec3<bool>(false, false, global2.x)), _wgslsmith_div_f32(660f, -209f), vec2<f32>(2567f, -929f), vec4<i32>(57736i, 1i, u_input.b.x, u_input.b.x))), global3.b.c, global3.b.a, global3.b.b.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1197f, 475f)), 1f))), _wgslsmith_f_op_f32(sign(1644f))) * global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1u, arg_1.b.a), 16u)]);
    let var_1 = arg_1.b.b.x;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1305f) * global0[_wgslsmith_index_u32(abs(0u), 16u)]);
    var var_2 = arg_1.c;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), -423f))));
    return func_2().a.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global2 = select(vec4<bool>(arg_1.b.x, -2147483647i > ~u_input.b.x, arg_0.b.x, any(select(vec4<bool>(false, global2.x, global3.b.d.x, true), select(vec4<bool>(arg_2, arg_3.a.b.x, arg_3.a.b.x, global2.x), vec4<bool>(true, arg_2, false, arg_3.d.x), vec4<bool>(arg_2, arg_3.d.x, arg_1.b.x, true)), vec4<bool>(true, false, arg_2, false)))), !select(vec4<bool>(false, arg_2 || arg_3.a.b.x, func_4(global3.a, Struct_2(arg_3.b, Struct_1(arg_0.a, vec3<bool>(false, false, true)), Struct_1(4294967295u, vec3<bool>(arg_3.b.b.x, global2.x, false)), vec3<bool>(false, false, true)), Struct_3(global3.b, Struct_2(Struct_1(arg_0.a, global3.a.d), arg_3.c, global3.a.b, global3.a.b.b))).b.x, false | global2.x), !(!vec4<bool>(false, false, global3.a.c.b.x, false)), vec4<bool>(func_2().b.a.b.x, any(global3.a.c.b.yy), 41345u < arg_0.a, arg_0.b.x)), vec4<bool>(arg_2, arg_1.b.x, all(vec4<bool>(func_4(Struct_2(Struct_1(0u, global4[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_1(44341u, vec3<bool>(false, arg_1.b.x, arg_1.b.x)), global3.a.a, vec3<bool>(false, false, arg_1.b.x)), Struct_2(global3.a.a, Struct_1(arg_0.a, vec3<bool>(false, true, arg_1.b.x)), Struct_1(u_input.a.x, vec3<bool>(global2.x, global3.a.a.b.x, arg_3.d.x)), vec3<bool>(true, true, false)), Struct_3(Struct_2(arg_0, Struct_1(arg_3.c.a, global4[_wgslsmith_index_u32(14422u, 20u)]), arg_0, vec3<bool>(global2.x, false, arg_2)), Struct_2(Struct_1(arg_0.a, arg_1.b), Struct_1(global3.b.a.a, vec3<bool>(arg_2, arg_0.b.x, true)), Struct_1(11062u, vec3<bool>(false, arg_0.b.x, arg_3.d.x)), vec3<bool>(false, true, global2.x)))).b.x, true, all(global2.yw), select(true, arg_2, arg_2))), true));
    global0 = array<vec2<f32>, 16>();
    var var_0 = -2147483647i;
    var var_1 = arg_3.a.a >> (4294967295u % 32u);
    let var_2 = Struct_3(func_2().b, arg_3);
    return Struct_2(Struct_1(func_4(global3.b, func_2().a, func_2()).a, func_2().a.b.b), Struct_1(0u, vec3<bool>(arg_2, any(vec4<bool>(global2.x, true, false, arg_1.b.x)), any(vec2<bool>(false, false)))), func_4(func_2().b, func_2().a, Struct_3(func_2().b, arg_3)), select(!arg_3.a.b, !vec3<bool>(arg_0.b.x, select(arg_0.b.x, false, arg_0.b.x), func_4(var_2.a, global3.a, var_2).b.x), !arg_0.b));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> Struct_3 {
    global0 = array<vec2<f32>, 16>();
    let var_0 = arg_0.a.c.b.yz;
    var var_1 = Struct_3(func_5(global3.b.c, global3.a.c, global2.x && true, Struct_2(func_4(Struct_2(Struct_1(global3.b.a.a, global3.b.a.b), Struct_1(u_input.a.x, vec3<bool>(true, global3.b.a.b.x, false)), Struct_1(arg_0.b.b.a, global4[_wgslsmith_index_u32(4294967295u, 20u)]), global3.a.b.b), Struct_2(arg_0.b.a, arg_0.a.c, Struct_1(global3.a.b.a, vec3<bool>(var_0.x, true, arg_0.b.d.x)), vec3<bool>(global2.x, global2.x, false)), func_2()), Struct_1(countOneBits(52198u), vec3<bool>(var_0.x, arg_0.a.a.b.x, false)), func_2().a.b, vec3<bool>(all(vec4<bool>(true, false, global3.a.c.b.x, false)), true, global3.b.a.b.x))), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(9808u, 77830u, 4294967295u, 0u), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(38904u, 0u, arg_0.a.b.a, 1389u), u_input.a)), select(!vec3<bool>(global2.x, global2.x, global2.x), global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 20u)], global3.a.d.x)), func_2().b.c, func_5(Struct_1(~u_input.a.x, vec3<bool>(false, global2.x, true)), Struct_1(62051u, !global3.a.c.b), true, Struct_2(global3.b.b, Struct_1(0u, global4[_wgslsmith_index_u32(arg_0.b.b.a, 20u)]), global3.b.c, arg_0.b.b.b)).a, arg_0.a.d));
    global4 = array<vec3<bool>, 20>();
    let var_2 = arg_0;
    return func_2();
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    global1 = array<vec3<i32>, 9>();
    let var_0 = (55827u >= ~(~arg_0.a.b.a)) | !(global2.x == all(global3.a.d.xx));
    var var_1 = ~(~4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-643f)) + _wgslsmith_f_op_f32(floor(-371f)))));
    let var_3 = 17495i;
    return Struct_1(~(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(arg_0.b.c.a, 1u))), !vec3<bool>(var_0, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_3(global3.b, Struct_2(func_6(func_1(Struct_3(global3.b, Struct_2(Struct_1(42508u, global3.b.d), global3.a.a, global3.a.b, global3.b.a.b)), 1883f, global1[_wgslsmith_index_u32(~94466u, 9u)])), Struct_1(max(28039u, select(u_input.a.x, global3.a.c.a, true)), vec3<bool>(false, func_4(global3.a, Struct_2(global3.a.c, global3.b.b, Struct_1(global3.b.c.a, vec3<bool>(true, true, var_0)), vec3<bool>(global3.b.c.b.x, var_0, var_0)), Struct_3(Struct_2(global3.b.a, Struct_1(1u, global3.b.d), Struct_1(15529u, global2.zzx), global4[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_2(global3.a.b, global3.a.a, Struct_1(global3.a.c.a, vec3<bool>(true, var_0, global3.a.a.b.x)), vec3<bool>(false, var_0, false)))).b.x, true)), Struct_1(1u, global3.b.c.b), vec3<bool>(global3.b.d.x, func_6(Struct_3(Struct_2(Struct_1(global3.b.c.a, global2.xzw), Struct_1(0u, vec3<bool>(true, true, true)), global3.b.b, global2.xwx), Struct_2(Struct_1(global3.a.c.a, vec3<bool>(true, false, var_0)), global3.b.c, global3.a.b, vec3<bool>(false, var_0, true)))).b.x, _wgslsmith_sub_u32(u_input.a.x, global3.b.a.a) > 4294967295u)));
    let var_2 = vec3<bool>(true, !var_1.b.a.b.x == !func_5(func_4(var_1.a, var_1.a, Struct_3(Struct_2(Struct_1(var_1.a.b.a, global2.zyy), Struct_1(4294967295u, var_1.a.b.b), var_1.a.a, var_1.a.a.b), Struct_2(global3.b.a, Struct_1(7412u, vec3<bool>(global2.x, false, var_1.b.a.b.x)), global3.a.b, global4[_wgslsmith_index_u32(var_1.b.b.a, 20u)]))), global3.a.b, false, var_1.b).d.x, (u_input.a.x <= u_input.a.x) & global3.b.b.b.x);
    let var_3 = !select(select(vec4<bool>(false, true, true, !var_1.a.b.b.x), vec4<bool>(global3.a.b.b.x, true, false, false), global3.b.a.b.x), vec4<bool>(var_1.b.c.b.x, 1u <= ~var_1.a.c.a, func_6(Struct_3(Struct_2(Struct_1(4294967295u, vec3<bool>(global3.b.a.b.x, true, var_1.b.d.x)), var_1.a.c, Struct_1(31283u, vec3<bool>(var_1.b.d.x, true, global2.x)), vec3<bool>(global2.x, false, global3.b.d.x)), Struct_2(global3.b.a, var_1.b.c, global3.a.c, vec3<bool>(global3.a.d.x, true, false)))).a < _wgslsmith_sub_u32(u_input.a.x, 4294967295u), true), !(!select(vec4<bool>(var_1.b.d.x, true, false, var_2.x), vec4<bool>(var_0, false, global2.x, var_2.x), false)));
    var var_4 = Struct_2(func_5(func_4(Struct_2(func_4(var_1.a, var_1.a, var_1), func_5(Struct_1(global3.a.b.a, var_2), global3.a.b, true, Struct_2(Struct_1(4294967295u, var_3.zxz), global3.b.a, Struct_1(0u, global4[_wgslsmith_index_u32(u_input.a.x, 20u)]), global3.a.d)).b, var_1.b.c, vec3<bool>(true, false, var_3.x)), func_2().a, var_1), var_1.a.b, !all(!var_3), func_1(func_1(var_1, 404f, firstLeadingBit(vec3<i32>(-1i, -1i, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f - -241f)), vec3<i32>(-1i, select(u_input.b.x, u_input.b.x, true), ~u_input.b.x)).b).c, global3.b.a, Struct_1(15543u, vec3<bool>(!(!global2.x), true && (global3.b.b.b.x && false), any(vec2<bool>(true, true)))), !(!var_3.wzy));
    var var_5 = ~(var_1.b.c.a | (var_4.b.a & 0u));
    let var_6 = _wgslsmith_clamp_vec4_u32(~u_input.a, ~u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<u32>(4294967295u, 0u, ~func_2().a.c.a));
}

