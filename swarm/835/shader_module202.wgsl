struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_5) -> vec4<bool> {
    global2 = array<Struct_2, 10>();
    global1 = Struct_5(Struct_1(firstLeadingBit(countOneBits(0u))), Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(global1.b.a.a.x)), _wgslsmith_f_op_f32(max(arg_2.b.a.a.x, global1.b.a.a.x)), -306f, _wgslsmith_f_op_f32(-348f * 621f))), global1.a, 74541u), vec3<bool>(true, any(!select(vec4<bool>(true, global1.c.x, arg_0, false), vec4<bool>(false, true, global1.c.x, arg_0), vec4<bool>(false, false, arg_2.c.x, false))), true));
    var var_0 = all(global1.c);
    var_0 = arg_2.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_2.b.a.a.xyx, _wgslsmith_f_op_vec3_f32(arg_2.b.a.a.xzw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.b.a.a.yxy)))), true))));
    return !select(select(select(vec4<bool>(global1.c.x, arg_0, arg_2.c.x, false), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, global1.c.x, true), vec4<bool>(false, false, false, true)), !vec4<bool>(true, true, true, arg_2.c.x)), !vec4<bool>(global1.c.x, false, global1.c.x, arg_2.c.x), true), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.c.x, true, true, global1.c.x), vec4<bool>(arg_0, false, arg_2.c.x, global1.c.x)), vec4<bool>(arg_0, false, arg_2.c.x, arg_2.c.x), select(vec4<bool>(arg_0, arg_2.c.x, false, true), vec4<bool>(global1.c.x, false, global1.c.x, arg_0), vec4<bool>(global1.c.x, arg_0, arg_2.c.x, arg_0))), select(vec4<bool>(arg_0, any(vec2<bool>(arg_2.c.x, true)), false, all(vec4<bool>(arg_0, arg_2.c.x, arg_0, false))), select(!vec4<bool>(arg_0, global1.c.x, true, true), select(vec4<bool>(arg_0, true, global1.c.x, arg_2.c.x), vec4<bool>(global1.c.x, false, true, global1.c.x), false), select(vec4<bool>(global1.c.x, arg_2.c.x, arg_2.c.x, true), vec4<bool>(false, arg_2.c.x, false, false), vec4<bool>(false, true, true, arg_0))), vec4<bool>(!global1.c.x, true, global1.c.x, true)));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(global1.b.c, 10u)];
    var var_1 = ~_wgslsmith_sub_i32(u_input.b, -(~u_input.b));
    let var_2 = global1.c;
    let var_3 = any(!select(func_3(global1.b.a.a.x >= var_0.a.x, vec3<i32>(2147483647i, u_input.a.x, -2147483647i), Struct_5(global1.b.b, Struct_4(Struct_2(var_0.a), global1.a, 4294967295u), vec3<bool>(true, var_2.x, global1.c.x))), !vec4<bool>(var_2.x, var_2.x, global1.c.x, true), !(u_input.d.x == u_input.d.x)));
    global1 = Struct_5(Struct_1(u_input.d.x), Struct_4(global1.b.a, global1.a, 0u), global1.c);
    return arg_0;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_5 {
    global1 = Struct_5(Struct_1(~(~u_input.d.x)), Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, -1663f, arg_0.b.a.a.x, arg_0.b.a.a.x))) - _wgslsmith_f_op_vec4_f32(exp2(arg_0.b.a.a)))), global1.a, global0.a), arg_0.c);
    var var_0 = arg_2.x;
    let var_1 = u_input.d.x;
    var var_2 = !(!(!vec3<bool>(!arg_0.c.x, any(vec3<bool>(arg_0.c.x, arg_0.c.x, false)), global1.c.x | arg_0.c.x)));
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(527f, arg_0.b.a.a.x, -244f, arg_0.b.a.a.x), vec4<f32>(-554f, 1082f, 1000f, 1870f), vec4<bool>(global1.c.x, false, false, var_2.x))) * vec4<f32>(-800f, arg_2.x, 144f, 2316f)) - vec4<f32>(arg_0.b.a.a.x, 1908f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -933f)))), Struct_1(firstTrailingBit(min(arg_0.a.a, u_input.d.x))), global0.a);
    return Struct_5(global1.b.b, var_3, arg_0.c);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.d.x, 0u));
    var var_1 = vec2<i32>(50702i, ~arg_0);
    global2 = array<Struct_2, 10>();
    var var_2 = 19155u;
    var var_3 = Struct_1(abs(global1.a.a));
    return Struct_5(arg_2.b.b, Struct_4(global2[_wgslsmith_index_u32(global1.b.c, 10u)], arg_2.b.b, ~16055u), arg_3.wzx);
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    var var_0 = vec4<bool>(func_4(arg_0, arg_0.b.a.a.x < _wgslsmith_f_op_f32(max(296f, 302f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.a.a.x, 585f)), _wgslsmith_f_op_f32(1328f + arg_0.b.a.a.x)) + global1.b.a.a.zx), Struct_3(_wgslsmith_add_vec3_i32(-u_input.c.wwy, u_input.c.zxx))).c.x, global1.c.x, false, arg_0.c.x);
    let var_1 = ~(~(~(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a, global0.a, 7480u), vec3<u32>(u_input.d.x, 0u, 0u)) ^ ~vec3<u32>(global0.a, u_input.d.x, 22415u))));
    var var_2 = reverseBits(abs(u_input.c));
    global1 = arg_0;
    var var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1, var_1), var_1.x, ~1u, func_5(u_input.c.x, global1.c.zz, Struct_5(Struct_1(arg_0.b.c), Struct_4(global2[_wgslsmith_index_u32(84036u, 10u)], arg_0.a, 1u), vec3<bool>(arg_0.c.x, global1.c.x, false)), vec4<bool>(var_0.x, arg_0.c.x, true, global1.c.x)).a.a) << (((vec4<u32>(global0.a, 1u, 0u, 1u) << (vec4<u32>(global0.a, arg_0.a.a, global0.a, u_input.d.x) % vec4<u32>(32u))) ^ (vec4<u32>(var_1.x, 81413u, 4294967295u, global1.b.b.a) ^ vec4<u32>(35163u, 0u, var_1.x, u_input.d.x))) % vec4<u32>(32u)), select(~(~vec4<u32>(1612u, u_input.d.x, 0u, 2808u)), countOneBits(~vec4<u32>(global1.a.a, arg_0.a.a, var_1.x, arg_0.b.c)), global1.c.x)), 4294967295u, arg_0.a.a, ~149802u);
    return func_4(Struct_5(arg_0.b.b, global1.b, func_3(global1.c.x, abs(func_2(Struct_3(var_2.zzw)).a), arg_0).yzy), select(var_2.x, u_input.c.x, any(func_5(-24404i, arg_0.c.yx, arg_0, vec4<bool>(true, global1.c.x, var_0.x, var_0.x)).c)) >= (_wgslsmith_clamp_i32(firstTrailingBit(0i), ~var_2.x, countOneBits(62685i)) << (33670u % 32u)), arg_0.b.a.a.xx, func_2(Struct_3(var_2.zyz))).a;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    let var_0 = arg_1.a.x;
    global0 = func_6(func_5(-(firstLeadingBit(u_input.c.x) & abs(48970i)), vec2<bool>(global1.c.x, (-863f <= arg_1.a.x) && any(vec4<bool>(false, global1.c.x, true, true))), func_4(Struct_5(Struct_1(u_input.d.x), Struct_4(arg_1, Struct_1(0u), arg_0), !vec3<bool>(global1.c.x, false, true)), true || global1.c.x, global1.b.a.a.ww, func_2(Struct_3(vec3<i32>(-1i, u_input.c.x, u_input.c.x)))), vec4<bool>(any(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x)), true, !global1.c.x, true)));
    var var_1 = u_input.b >> (~(arg_0 & 42838u) % 32u);
    var var_2 = func_4(func_5(firstLeadingBit(_wgslsmith_div_i32(u_input.a.x << (global1.b.b.a % 32u), -16847i)), global1.c.xx, func_4(Struct_5(Struct_1(12283u), func_5(-1654i, global1.c.zz, Struct_5(Struct_1(72508u), global1.b, vec3<bool>(global1.c.x, false, global1.c.x)), vec4<bool>(global1.c.x, true, true, global1.c.x)).b, global1.c), global1.c.x, _wgslsmith_div_vec2_f32(arg_1.a.zy, _wgslsmith_f_op_vec2_f32(-arg_1.a.yw)), Struct_3(vec3<i32>(33010i, -10957i, u_input.b))), !(!select(vec4<bool>(true, global1.c.x, global1.c.x, false), vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), true))), func_5(-2147483647i & u_input.c.x, global1.c.xz, Struct_5(func_5(~(-2147483647i), !vec2<bool>(global1.c.x, false), func_4(Struct_5(global1.a, global1.b, global1.c), true, vec2<f32>(950f, -211f), Struct_3(u_input.c.wyz)), func_3(false, u_input.c.ywx, Struct_5(Struct_1(global0.a), Struct_4(arg_1, global1.a, 29521u), vec3<bool>(global1.c.x, global1.c.x, false)))).a, func_4(Struct_5(global1.b.b, global1.b, global1.c), select(global1.c.x, global1.c.x, global1.c.x), global1.b.a.a.zw, func_2(Struct_3(u_input.c.wwz))).b, global1.c), vec4<bool>(true, false, !(arg_2 == arg_0), (2147483647i > u_input.c.x) && true)).c.x, global1.b.a.a.yz, func_2(Struct_3(~(u_input.c.zyx & vec3<i32>(u_input.b, u_input.b, 2147483647i)))));
    var var_3 = func_4(func_5(u_input.b, var_2.c.xx, func_4(func_4(func_4(Struct_5(Struct_1(1u), Struct_4(Struct_2(vec4<f32>(arg_1.a.x, var_2.b.a.a.x, 134f, 676f)), var_2.a, 52880u), vec3<bool>(false, true, false)), var_2.c.x, vec2<f32>(3043f, var_2.b.a.a.x), Struct_3(vec3<i32>(19318i, u_input.a.x, u_input.a.x))), all(vec4<bool>(false, true, var_2.c.x, global1.c.x)), _wgslsmith_f_op_vec2_f32(step(var_2.b.a.a.ww, var_2.b.a.a.yw)), Struct_3(u_input.c.xxy)), false, var_2.b.a.a.xy, func_2(Struct_3(vec3<i32>(u_input.c.x, 2467i, u_input.a.x)))), func_3(_wgslsmith_f_op_f32(arg_1.a.x * 648f) >= _wgslsmith_f_op_f32(min(arg_1.a.x, 554f)), ~max(u_input.c.wyz, u_input.c.xwx), Struct_5(func_5(36318i, global1.c.xy, Struct_5(var_2.b.b, var_2.b, vec3<bool>(var_2.c.x, true, true)), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false)).a, func_5(1i, global1.c.yx, Struct_5(Struct_1(global1.a.a), Struct_4(Struct_2(vec4<f32>(arg_1.a.x, -662f, arg_1.a.x, -572f)), Struct_1(93809u), var_2.a.a), var_2.c), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true)).b, global1.c))), !(!(true | any(vec2<bool>(var_2.c.x, true)))), global1.b.a.a.yz, func_2(Struct_3(vec3<i32>(-22707i, u_input.a.x, u_input.c.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, -1i), u_input.c.ywx)))).b.a;
    return _wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.a.x, -7522i), -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wwx, u_input.c.ywx), -44052i)), min(vec2<i32>(u_input.b, u_input.b), min(u_input.c.ww & u_input.c.wz, vec2<i32>(u_input.a.x, u_input.a.x)) & func_2(func_2(Struct_3(vec3<i32>(2147483647i, u_input.b, u_input.a.x)))).a.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.a.a.x, -1833f))))))));
    let var_1 = vec4<bool>(59795u == u_input.d.x, global1.c.x, global1.c.x, true);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_add_u32(global1.a.a, global0.a) & ~18999u), _wgslsmith_mult_u32(~abs(4294967295u), ~(~u_input.d.x)), reverseBits(min(70777u, global0.a))));
    let var_3 = true;
    let var_4 = _wgslsmith_dot_vec2_i32(func_1(35916u, Struct_2(vec4<f32>(489f, _wgslsmith_f_op_f32(global1.b.a.a.x - global1.b.a.a.x), var_0, _wgslsmith_f_op_f32(round(-216f)))), 4294967295u), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(186f, _wgslsmith_f_op_f32(min(376f, _wgslsmith_f_op_f32(min(-1421f, 1854f)))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(global1.b.a.a.x))))), global1.b.a.a);
}

