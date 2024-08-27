struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(35678u, 1u, 1u), 389f, vec2<u32>(5883u, 1u), vec3<i32>(17908i, 21588i, -20399i), 2158u);

var<private> global2: array<u32, 18> = array<u32, 18>(51384u, 117823u, 45031u, 71002u, 1u, 4294967295u, 42416u, 21079u, 53519u, 61821u, 51970u, 4294967295u, 4294967295u, 378u, 62992u, 1u, 65656u, 4294967295u);

var<private> global3: vec2<i32> = vec2<i32>(15038i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global0 = -min(-_wgslsmith_mod_i32(reverseBits(57528i), -global3.x), arg_0.x);
    let var_0 = true && !(arg_0.x < (_wgslsmith_add_i32(0i, 1i) | (1i ^ u_input.a)));
    global2 = array<u32, 18>();
    global1 = Struct_1(firstTrailingBit(abs(reverseBits(_wgslsmith_div_vec3_u32(global1.a, global1.a)))), 1f, ~global1.a.yz, ~(-arg_0), global2[_wgslsmith_index_u32(~1u, 18u)]);
    global0 = -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-3161i, abs(64347i), firstLeadingBit(-u_input.c)), _wgslsmith_div_i32(32361i, abs(~u_input.c)), select(-(1i ^ u_input.b), ~(i32(-1i) * -46791i), true));
    return var_0;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(arg_0.x, global1.c.x), ~global2[_wgslsmith_index_u32(arg_1.x, 18u)])), vec2<u32>(_wgslsmith_div_u32(4294967295u, 2447u) | (global2[_wgslsmith_index_u32(arg_1.x, 18u)] & 45231u), 42209u >> (~global1.c.x % 32u))), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.x, 10419u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28702u, 18u)], 18u)]), arg_0.xww, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(1u, 0u, 42451u))), _wgslsmith_f_op_f32(-global1.b), select(vec2<u32>(max(arg_0.x, 1u), arg_1.x), arg_0.wz, func_3(global1.d & global1.d)), global1.d, _wgslsmith_clamp_u32(29404u >> ((global1.e | 95655u) % 32u), 4294967295u, 36081u)), global1.b, vec3<f32>(global1.b, -1810f, _wgslsmith_f_op_f32(-global1.b)));
    let var_1 = !any(!vec3<bool>(any(vec2<bool>(false, true)), false, true));
    global3 = global1.d.zy;
    return 81081u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = Struct_2(select(~(~arg_2.b.c) << (global1.a.xz % vec2<u32>(32u)), ~arg_2.b.c, !select(!vec2<bool>(arg_3, false), select(vec2<bool>(arg_3, true), vec2<bool>(false, true), vec2<bool>(false, arg_3)), -763f < var_0.d.x)), var_0.b, arg_2.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.d)))));
    let var_2 = Struct_2(reverseBits(arg_2.b.c), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * arg_2.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_1.b.b, var_1.c), vec3<f32>(var_0.c, -880f, global1.b)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_1.d)), var_0.d))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_0.d, var_0.d, vec3<bool>(arg_3, arg_3, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_1.b.b, var_1.b.b) - vec3<f32>(-633f, 108f, global1.b)), var_1.d.x >= arg_1.b))))));
    global1 = Struct_1(max(vec3<u32>(~4294967295u, var_1.b.c.x, 0u), global1.a) & ~_wgslsmith_sub_vec3_u32(var_1.b.a, ~arg_1.a), _wgslsmith_f_op_f32(-arg_2.d.x), var_0.b.a.xz << ((_wgslsmith_add_vec2_u32(vec2<u32>(14944u, arg_1.a.x), vec2<u32>(45890u, arg_2.a.x) & global1.c) << (vec2<u32>(_wgslsmith_mod_u32(arg_2.a.x, 28167u), arg_2.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), -arg_2.b.d, arg_1.e);
    global3 = var_2.b.d.zz;
    return Struct_3(var_2, vec4<bool>(any(!vec2<bool>(false, arg_3)), false, !arg_3, any(select(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3)), select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, true, arg_3), arg_3), vec3<bool>(arg_3, arg_3, arg_3)))), arg_2, 46534i, Struct_2(~reverseBits(~vec2<u32>(var_1.a.x, arg_2.b.e)), arg_2.b, global1.b, arg_2.d));
}

fn func_1() -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 18u)] >> (global1.e % 32u);
    var var_1 = global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(max(reverseBits(12295u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32((0u << (global1.c.x % 32u)) | (4294967295u & global2[_wgslsmith_index_u32(var_0, 18u)]), 18u)], 31062u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, global1.c.x, global1.a.x), vec4<u32>(0u, 0u, 1u, 0u)))), 18u)], 18u)];
    global0 = -(~u_input.c) ^ global1.d.x;
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_3 = func_4(-select(_wgslsmith_mult_vec2_i32(global1.d.zx, vec2<i32>(global1.d.x, 10529i) & global1.d.zz), global1.d.xy, func_2(vec4<u32>(0u, global2[_wgslsmith_index_u32(26448u, 18u)], 4294967295u, global1.e), vec2<u32>(global2[_wgslsmith_index_u32(global1.a.x, 18u)], 8852u)) >= _wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(1u, global1.c.x, var_0))), Struct_1(vec3<u32>(~(20272u | global2[_wgslsmith_index_u32(global1.e, 18u)]), global1.a.x, func_2(vec4<u32>(global1.a.x, var_0, global2[_wgslsmith_index_u32(4294967295u, 18u)], var_0), vec2<u32>(global1.c.x, 1509u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.b, 454f))))), vec2<u32>(4294967295u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, global1.e, 49835u), vec4<u32>(global1.e, global2[_wgslsmith_index_u32(0u, 18u)], 1u, var_0)))), select(vec3<i32>(-23473i, 12025i, _wgslsmith_mod_i32(-1i, u_input.a)), global1.d, vec3<bool>(any(vec4<bool>(true, false, true, var_2.x)), any(vec3<bool>(true, var_2.x, false)), all(vec2<bool>(true, var_2.x)))), global1.e >> (global1.c.x % 32u)), Struct_2(global1.c, Struct_1(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1410f * global1.b), _wgslsmith_div_f32(global1.b, 580f))), select(global1.c, _wgslsmith_add_vec2_u32(global1.c, global1.a.xy), var_2.x), abs(abs(vec3<i32>(-1i, global3.x, global1.d.x))), var_0), _wgslsmith_f_op_f32(global1.b * global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1000f, -720f))))), any(!vec2<bool>(!var_2.x, var_2.x)));
    return Struct_3(Struct_2(vec2<u32>(global1.a.x << (~global2[_wgslsmith_index_u32(77081u, 18u)] % 32u), ~11657u), Struct_1(max(vec3<u32>(0u, 43914u, 4294967295u), global1.a) << (firstLeadingBit(vec3<u32>(4294967295u, global1.c.x, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_f32(-1706f, 1013f), ~max(vec2<u32>(0u, 4294967295u), vec2<u32>(13755u, 0u)), vec3<i32>(var_3.d, var_3.a.b.d.x, ~(-42783i)), ~_wgslsmith_add_u32(0u, var_3.c.a.x)), _wgslsmith_f_op_f32(-984f * _wgslsmith_f_op_f32(min(var_3.e.c, -1993f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -2150f, -518f) + var_3.c.d), vec3<f32>(1215f, global1.b, -1000f), false)))), select(vec4<bool>(max(global1.e, 39317u) <= var_0, true, false, true), !vec4<bool>(var_3.b.x, !var_2.x, var_3.b.x, true), !select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_3.b, var_3.b.x)), var_3.e, _wgslsmith_clamp_i32(u_input.b & -func_4(var_3.a.b.d.zy, var_3.e.b, Struct_2(vec2<u32>(1576u, var_3.c.a.x), var_3.c.b, 132f, var_3.e.d), var_3.b.x).c.b.d.x, max(-2147483647i, -2147483647i), func_4(var_3.a.b.d.zx ^ vec2<i32>(21314i, 1i), var_3.e.b, func_4(~vec2<i32>(0i, global3.x), func_4(var_3.c.b.d.xz, Struct_1(global1.a, var_3.e.d.x, global1.a.xy, global1.d, 42657u), var_3.e, true).c.b, Struct_2(global1.a.yy, Struct_1(var_3.c.b.a, -107f, var_3.c.b.a.xx, global1.d, var_0), 1430f, var_3.e.d), all(var_3.b.ywx)).e, false).e.b.d.x), var_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global0 = func_1().c.b.d.x;
    var var_0 = arg_1.b.zx;
    var var_1 = func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-15179i, global3.x & (-56572i ^ global3.x)), ~vec2<i32>(arg_2.b.d.x & 1i, _wgslsmith_div_i32(69613i, arg_2.b.d.x))), arg_3.c.b, Struct_2(arg_2.b.c, func_4(vec2<i32>(1i, global1.d.x), Struct_1(vec3<u32>(0u, arg_1.a.b.e, 4294967295u) >> (arg_2.b.a % vec3<u32>(32u)), -719f, vec2<u32>(global1.a.x, 27449u), ~arg_3.a.b.d, arg_2.a.x), arg_2, any(arg_3.b.zx)).a.b, arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.d - _wgslsmith_f_op_vec3_f32(-arg_3.e.d)) + vec3<f32>(644f, _wgslsmith_f_op_f32(exp2(arg_2.b.b)), global1.b))), any(arg_1.b));
    let var_2 = arg_0.d;
    let var_3 = all(arg_3.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, -1000f <= _wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))));
    global0 = u_input.a >> (~select(abs(global2[_wgslsmith_index_u32(3774u, 18u)]), _wgslsmith_mod_u32(~73145u, firstLeadingBit(31473u)), var_0.x | true) % 32u);
    var var_1 = select(select(vec4<bool>(true, any(!vec2<bool>(var_0.x, var_0.x)), any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x), false)), var_0.x), vec4<bool>(true, select(true, true, all(vec3<bool>(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(ceil(-945f)) >= 1023f, var_0.x), vec4<bool>(false && var_0.x, !(!var_0.x), any(vec3<bool>(true, false, false)) & !var_0.x, true)), !vec4<bool>(func_5(Struct_1(global1.a, global1.b, global1.a.xz, global1.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.x, 18u)], 18u)], 18u)]), Struct_3(Struct_2(vec2<u32>(38737u, 0u), Struct_1(global1.a, global1.b, vec2<u32>(9874u, 6109u), global1.d, global1.c.x), global1.b, vec3<f32>(-1477f, 366f, global1.b)), vec4<bool>(var_0.x, false, true, var_0.x), Struct_2(global1.c, Struct_1(vec3<u32>(4294967295u, 30595u, 38239u), -954f, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global1.e), global1.d, global1.c.x), 350f, vec3<f32>(-1223f, global1.b, global1.b)), global1.d.x, Struct_2(vec2<u32>(global1.e, 1u), Struct_1(global1.a, global1.b, vec2<u32>(global1.c.x, global1.a.x), vec3<i32>(-27907i, 31741i, global1.d.x), 17053u), 140f, vec3<f32>(1000f, global1.b, global1.b))), Struct_2(vec2<u32>(global1.e, 29470u), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(52130u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global1.e), -1000f, global1.a.xy, global1.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63754u, 18u)], 18u)], 18u)]), 389f, vec3<f32>(global1.b, global1.b, 2275f)), func_1()), var_0.x, false, _wgslsmith_f_op_f32(global1.b + -1000f) > 2366f), !func_4(~(-global1.d.xx), func_4(global1.d.zy, func_4(global1.d.xx, Struct_1(vec3<u32>(global1.e, 33405u, global1.c.x), 682f, global1.a.zy, vec3<i32>(global3.x, global3.x, global1.d.x), global2[_wgslsmith_index_u32(global1.c.x, 18u)]), Struct_2(global1.c, Struct_1(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25487u, 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.e, 18u)], 18u)]), -2220f, vec2<u32>(1u, global1.e), global1.d, 0u), global1.b, vec3<f32>(-1747f, global1.b, -1180f)), false).a.b, Struct_2(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), Struct_1(vec3<u32>(39702u, 0u, global1.c.x), 1436f, global1.a.xx, global1.d, 1u), global1.b, vec3<f32>(413f, global1.b, global1.b)), var_0.x).e.b, Struct_2(global1.c, func_1().e.b, _wgslsmith_f_op_f32(global1.b - global1.b), vec3<f32>(global1.b, 246f, -1305f)), 1u > global2[_wgslsmith_index_u32(4294967295u, 18u)]).b);
    var var_2 = !var_1.zxz;
    global2 = array<u32, 18>();
    global1 = func_4(_wgslsmith_clamp_vec2_i32(~vec2<i32>(55523i, -global3.x), ~(-vec2<i32>(-8323i, -2147483647i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, 0i)), reverseBits(vec2<i32>(-1065i, -1i))) ^ _wgslsmith_div_vec2_i32(global1.d.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, global1.d.x), global1.d.zx))), func_4(func_4(firstLeadingBit(vec2<i32>(-2147483647i, global3.x)), func_1().a.b, Struct_2(vec2<u32>(2893u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.x, 18u)], 18u)]), Struct_1(global1.a, -1000f, global1.a.xz, global1.d, 52896u), _wgslsmith_f_op_f32(-1050f * global1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(567f, 908f, global1.b), vec3<f32>(1473f, 248f, -2218f), var_0.x))), true).a.b.d.zx, Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1.c.x, 18u)], 4294967295u), 18u)], global2[_wgslsmith_index_u32(8497u, 18u)] & global1.a.x, firstTrailingBit(0u)), global1.b, vec2<u32>(1u, global2[_wgslsmith_index_u32(~0u, 18u)]), select(global1.d, _wgslsmith_mod_vec3_i32(global1.d, global1.d), true), global1.c.x), func_4(~vec2<i32>(u_input.b, global3.x) ^ (global1.d.zz ^ vec2<i32>(-11681i, global1.d.x)), Struct_1(abs(vec3<u32>(global1.a.x, 18295u, global1.a.x)), _wgslsmith_f_op_f32(sign(-1000f)), min(global1.c, vec2<u32>(12486u, 48u)), vec3<i32>(9295i, -2147483647i, global3.x), 72107u), Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(global1.c.x, 18u)], 0u) | vec2<u32>(global1.e, global1.e), func_1().e.b, func_1().a.d.x, vec3<f32>(global1.b, 1850f, -711f)), select(var_0.x, false, true) || (var_0.x | var_2.x)).c, !var_1.x | var_1.x).e.b, Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 1u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 18u)], 18u)], 18u)], global1.a.x)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)])), Struct_1(global1.a, -291f, global1.c, min(-vec3<i32>(2147483647i, global3.x, -1i), -global1.d), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + _wgslsmith_f_op_f32(global1.b * global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b, global1.b, global1.b)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-644f, global1.b, global1.b) + vec3<f32>(global1.b, global1.b, 2346f)))))), !(var_1.x | false)).c.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, _wgslsmith_div_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b + -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 1143f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1319f, global1.b), vec2<f32>(1523f, global1.b))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b, global1.b))))));
}

