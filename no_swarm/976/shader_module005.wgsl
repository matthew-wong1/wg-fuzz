struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: vec3<i32> = vec3<i32>(-395i, i32(-2147483648), 7394i);

var<private> global3: Struct_2 = Struct_2(vec3<f32>(423f, 1556f, 843f), vec2<i32>(0i, 20737i), Struct_1(vec4<bool>(false, false, true, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = ~2147483647i;
    let var_1 = !all(!(!(!vec4<bool>(false, global3.c.a.x, false, true))));
    var var_2 = vec3<i32>(9766i, -39078i, 45997i);
    let var_3 = vec4<i32>(15968i, _wgslsmith_clamp_i32(abs(_wgslsmith_mult_i32(global2.x, firstLeadingBit(global2.x))), _wgslsmith_clamp_i32(~(-2147483647i), -1i, min(_wgslsmith_mod_i32(-1i, u_input.a), -2147483647i)), _wgslsmith_add_i32(reverseBits(var_0), abs(var_0)) & _wgslsmith_mult_i32(~22360i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, u_input.a, -28786i), global1[_wgslsmith_index_u32(arg_0, 1u)]))), 54928i, -5118i);
    let var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(331f, -1000f)), global3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-3076f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f), 907f)))), firstTrailingBit(var_3.zy), global3.c);
    return _wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, ~(~0i)), global2.yx, !select(vec2<bool>(true, true), select(var_4.c.a.yy, vec2<bool>(true, var_1), global3.c.a.yw), vec2<bool>(false, false))), var_3.zz);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.x, arg_2, -236f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global0.x, -611f) * vec3<f32>(global0.x, arg_2, 907f))) - global3.a)));
    let var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(61892u, 1u)], ~vec4<i32>(u_input.b, -2147483647i, 1252i, arg_3.x)), -(vec4<i32>(1i, -2147483647i, arg_3.x, -19095i) << (vec4<u32>(31901u, 56547u, 31689u, 0u) % vec4<u32>(32u)))) ^ ~global1[_wgslsmith_index_u32(17606u, 1u)]);
    let var_1 = vec2<bool>(arg_0.x, false);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1733f, 474f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 - arg_2))))), reverseBits(vec2<i32>(-(~11053i), -var_0.x)), Struct_1(!vec4<bool>(!var_1.x, true, false, all(global3.c.a))));
    let var_3 = abs(-var_2.b & global3.b);
    return select(vec2<bool>(false && var_2.c.a.x, _wgslsmith_add_u32(1u, 70867u) < abs(_wgslsmith_clamp_u32(0u, 29857u, 4294967295u))), var_2.c.a.yy, global3.c.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1923f * _wgslsmith_f_op_f32(f32(-1f) * -487f));
    var var_1 = ~(~1u);
    let var_2 = select(global3.c.a.xz, global3.c.a.yx, func_4(vec3<bool>(any(!global3.c.a.wyx), _wgslsmith_f_op_f32(select(-1060f, 572f, global3.c.a.x)) > _wgslsmith_div_f32(global0.x, -427f), true), global3.c.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), func_3(30691u) & firstTrailingBit(global3.b)));
    var var_3 = ~_wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(24651u, 1u), ~4294967295u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + -279f) * global3.a.x)) >= 1236f;
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.x)), _wgslsmith_f_op_f32(-1318f * 411f), global0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global0.x, global0.x) + global3.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1480f, 605f))))), global2.xz, Struct_1(!select(vec4<bool>(true, global3.c.a.x, var_2.x, var_2.x), select(global3.c.a, vec4<bool>(false, false, var_4, var_2.x), vec4<bool>(global3.c.a.x, var_4, false, true)), true)));
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(func_2().c, !select(func_2().c.a.yyw, arg_0.c.a.zzx, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1223f))), _wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 15780u))) | ~77930u, arg_0.c);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, -728f, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1322f)), -1000f, _wgslsmith_f_op_f32(global3.a.x - -213f))))), !(!func_2().c.a.xxz)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> bool {
    global0 = global3.a;
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global3.a.x, global3.a.x)), _wgslsmith_f_op_vec3_f32(func_5(func_2()))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1596f + 1238f), _wgslsmith_f_op_f32(global3.a.x + global3.a.x), _wgslsmith_f_op_f32(691f * 1004f)) * global3.a)), global2.zz, Struct_1(func_2().c.a));
    let var_0 = func_2().c;
    global1 = array<vec4<i32>, 1>();
    global2 = vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -50054i, 2147483647i, 1i), -arg_0), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, global3.b.x, 1i, -67689i), global1[_wgslsmith_index_u32(0u, 1u)]))), _wgslsmith_div_i32(arg_1, -40884i), ~24617i);
    return any(vec3<bool>(func_4(vec3<bool>(global0.x == 396f, true, var_0.a.x || false), !select(global3.c.a.yy, vec2<bool>(global3.c.a.x, global3.c.a.x), global3.c.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.x, -1461f)), _wgslsmith_f_op_f32(global0.x - -941f), global3.c.a.x)), global2.zx).x, true, any(vec4<bool>(var_0.a.x | global3.c.a.x, false | global3.c.a.x, all(global3.c.a.yzw), func_4(var_0.a.wxy, vec2<bool>(false, false), global3.a.x, arg_0.wz).x))));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global1 = array<vec4<i32>, 1>();
    let var_0 = vec2<i32>(min(-8979i, global3.b.x), _wgslsmith_dot_vec2_i32(abs(global3.b), -global2.xy));
    let var_1 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -101934i, _wgslsmith_clamp_i32(26779i, global2.x, u_input.a)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, global2.x), -1i)) << (max(countOneBits(vec2<u32>(4294967295u, arg_1.d)), vec2<u32>(0u, ~arg_1.d)) % vec2<u32>(32u)), min(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, 17766i), var_0), -1i), vec2<i32>(u_input.a, countOneBits(global2.x))) >> (~vec2<u32>(max(1u, arg_1.d), min(arg_1.d, arg_1.d)) % vec2<u32>(32u)));
    let var_2 = Struct_4(select(~0u, _wgslsmith_div_u32(firstLeadingBit(arg_1.d & arg_1.d), arg_1.d), true), Struct_2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), -302f), ~abs(~var_0), Struct_1(!func_2().c.a)));
    var var_3 = !var_2.b.c.a.zy;
    return arg_1;
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_4(4294967295u, Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 651f, -931f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, global3.a.x, global0.x) * vec3<f32>(-1381f, arg_1.c, global0.x))), -27853i != global2.x)), -global2.yz, func_6(false, Struct_3(func_2().c, vec3<bool>(false, true, false), -1272f, _wgslsmith_add_u32(arg_1.d, arg_1.d), func_2().c)).a));
    let var_1 = Struct_4(~(~_wgslsmith_div_u32(var_0.a, 11866u)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a - _wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(global0.x, -1005f, 756f))) * _wgslsmith_f_op_vec3_f32(-var_0.b.a)), var_0.b.b, var_0.b.c));
    global2 = _wgslsmith_add_vec3_i32(select(vec3<i32>(_wgslsmith_sub_i32(global2.x, var_1.b.b.x), -25400i, -1i) ^ abs(vec3<i32>(25499i, 0i, global2.x)), vec3<i32>(-47725i, countOneBits(-arg_0), -_wgslsmith_add_i32(44848i, global3.b.x)), !var_1.b.c.a.x), max(_wgslsmith_div_vec3_i32(vec3<i32>(-global2.x, i32(-1i) * -26531i, ~global3.b.x), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(41772i, var_1.b.b.x, var_0.b.b.x)), -vec3<i32>(global3.b.x, -26469i, -40393i))), -max(vec3<i32>(-1i, var_0.b.b.x, var_0.b.b.x) >> (vec3<u32>(arg_1.d, arg_1.d, arg_1.d) % vec3<u32>(32u)), max(vec3<i32>(-25355i, 0i, 12934i), vec3<i32>(var_0.b.b.x, -4578i, -1i)))));
    var_0 = var_1;
    var var_2 = _wgslsmith_div_vec4_i32(~global1[_wgslsmith_index_u32(var_1.a, 1u)], ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.b.x, var_0.b.b.x, 5668i, -28647i), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(var_1.a, 1u)], global1[_wgslsmith_index_u32(arg_1.d, 1u)]))));
    return ~func_3(5256u).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -6131i;
    var var_1 = func_7(-24495i, func_6(func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(17261u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]), global1[_wgslsmith_index_u32(55448u, 1u)] ^ global1[_wgslsmith_index_u32(20171u, 1u)]), 1i), Struct_3(global3.c, global3.c.a.zww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1u, Struct_1(global3.c.a))), !(!func_6(!global3.c.a.x, Struct_3(Struct_1(global3.c.a), vec3<bool>(global3.c.a.x, false, global3.c.a.x), 1125f, 45919u, global3.c)).a.a));
    global2 = abs(vec3<i32>(max(41050i, -45702i), global3.b.x, global3.b.x));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * global3.a.x) - _wgslsmith_div_f32(-474f, -1724f)), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(global3.a.x + 570f)))), select(vec2<i32>(24661i, 1i), global2.yx, !global3.c.a.x), Struct_1(vec4<bool>(!global3.c.a.x, true, !(true && global3.c.a.x), true)));
    var var_3 = global3.a.yx;
    global0 = global3.a;
    var var_4 = func_2();
    global2 = vec3<i32>(max(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0, global2.x), _wgslsmith_mult_i32(global2.x, var_2.b.x)) >> (~85918u % 32u), 31108i), -max(global2.x, ~global2.x), func_3(max(max(_wgslsmith_mult_u32(39605u, 101009u), ~1145u), 4294967295u)).x);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4.b, vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, var_0), vec4<i32>(var_4.b.x, var_2.b.x, -27905i, -38509i)), u_input.a), func_6(countOneBits(-1i) < func_7(-48212i, Struct_3(Struct_1(var_2.c.a), vec3<bool>(var_4.c.a.x, global3.c.a.x, var_2.c.a.x), -809f, 4294967295u, var_4.c), var_4.c.a), Struct_3(func_2().c, func_6(var_4.c.a.x, Struct_3(Struct_1(vec4<bool>(var_2.c.a.x, false, false, global3.c.a.x)), global3.c.a.yyx, 288f, 22472u, Struct_1(var_2.c.a))).a.a.ywz, _wgslsmith_f_op_f32(global0.x + 346f), 0u, Struct_1(var_4.c.a))).e.a.xz), vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.x)))) * var_2.a.x), global0.x), vec2<u32>(4294967295u, abs(_wgslsmith_add_u32(24990u, _wgslsmith_div_u32(46464u, 23572u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(select(4294967295u, 0u, var_2.c.a.x), firstTrailingBit(7638u), 26367u), 1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(66092u, 0u)), ~vec2<u32>(1u, 1u)), select(4294967295u, 61929u, true)), vec4<u32>(max(~1u, select(692u, 4294967295u, global3.c.a.x)), ~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), firstLeadingBit(vec3<u32>(4294967295u, 16391u, 10860u))), ~_wgslsmith_mod_u32(33435u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u))));
}

