struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, true, true, false, true, false, true, false, true, false, true, true, true, true, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    return 0u;
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_4(arg_0.b, Struct_2(!(!vec3<bool>(global0[_wgslsmith_index_u32(61444u, 17u)], false, true)), arg_0.b), ~abs(u_input.b.zz), ~(~u_input.d), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - -1108f)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, -2147483647i)), ~u_input.b.zz), _wgslsmith_add_vec2_i32(select(select(vec2<i32>(u_input.c, -2147483647i), u_input.b.zx, arg_0.a.zy), -vec2<i32>(-1i, u_input.e), vec2<bool>(true, true)), _wgslsmith_div_vec2_i32(vec2<i32>(-1713i, u_input.e), u_input.b.zx >> (u_input.a.xx % vec2<u32>(32u)))), !(!global0[_wgslsmith_index_u32(u_input.a.x, 17u)]) | (u_input.a.x > (4294967295u | u_input.d))));
    var var_1 = u_input.c | -43016i;
    let var_2 = true;
    var_1 = ~_wgslsmith_add_i32(~1i, 2147483647i);
    let var_3 = var_0.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) + var_0.b.b));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(~37977u), 17u)], 1214f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(arg_0.d, arg_0.d, false), 520f))) - _wgslsmith_f_op_f32(-897f - _wgslsmith_f_op_f32(ceil(-500f)))), all(select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(117163u, 17u)], arg_0.d, global0[_wgslsmith_index_u32(32811u, 17u)])), vec4<bool>(true, !global0[_wgslsmith_index_u32(1u, 17u)], true, global0[_wgslsmith_index_u32(0u, 17u)] | global0[_wgslsmith_index_u32(53076u, 17u)]), false)));
    let var_1 = arg_0;
    global0 = array<bool, 17>();
    let var_2 = !select(select(vec4<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 17u)], false)), global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.d, 17u)], -826f > arg_0.a.x), vec4<bool>(!var_0.x, u_input.e >= arg_0.c.x, !arg_0.d, any(vec4<bool>(var_0.x, var_0.x, true, arg_0.d))), vec4<bool>(true, arg_0.d, var_0.x, any(vec4<bool>(false, true, arg_0.d, var_1.d)))), vec4<bool>(any(!var_0), all(!var_0.zz), any(select(var_0, vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, false), global0[_wgslsmith_index_u32(65301u, 17u)])), any(vec2<bool>(true, arg_0.d))), !select(vec4<bool>(false, arg_0.d, false, arg_0.d), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 17u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(false, true, true, true)), var_1.d));
    var var_3 = reverseBits(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.b, var_1.b, arg_0.b, 54954i) | (vec4<i32>(-69929i, 1i, u_input.b.x, var_1.b) >> (u_input.a % vec4<u32>(32u))), (vec4<i32>(-9893i, u_input.e, 0i, u_input.c) | vec4<i32>(2147483647i, 1i, 0i, var_1.c.x)) << (countOneBits(u_input.a) % vec4<u32>(32u)))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1079f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))), _wgslsmith_add_i32(var_1.c.x, 1i), u_input.b.zz, any(vec2<bool>(false, var_2.x)) & true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_2(!(!select(vec3<bool>(true, arg_0.d, global0[_wgslsmith_index_u32(39718u, 17u)]), select(vec3<bool>(false, arg_0.d, true), arg_1.d.a, arg_1.d.a), global0[_wgslsmith_index_u32(~u_input.d, 17u)])), _wgslsmith_f_op_f32(f32(-1f) * -242f));
    return Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-909f * 1568f))), arg_1.d, _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.e ^ _wgslsmith_add_i32(u_input.b.x, -3965i), abs(arg_0.c.x | u_input.e)), ~(-(u_input.b.xy & arg_0.c))), 3125u, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.xz) * arg_1.b.zw))), -51734i, ~vec2<i32>(_wgslsmith_sub_i32(39120i, u_input.c), arg_0.b), true));
}

fn func_5(arg_0: Struct_4) -> u32 {
    global0 = array<bool, 17>();
    let var_0 = 36845i << (u_input.d % 32u);
    global0 = array<bool, 17>();
    let var_1 = select(!vec4<bool>(false, !arg_0.e.d == select(global0[_wgslsmith_index_u32(4294967295u, 17u)], true, true), arg_0.e.a.x <= _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.b.a, arg_0.b.b))), global0[_wgslsmith_index_u32(arg_0.d, 17u)]), select(vec4<bool>(!any(arg_0.b.a), any(arg_0.b.a.xx) || arg_0.e.d, global0[_wgslsmith_index_u32(38323u, 17u)], true), select(vec4<bool>(false, true, select(arg_0.b.a.x, global0[_wgslsmith_index_u32(82929u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), false), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d, 17u)], false, true, arg_0.b.a.x)), all(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 17u)]))), func_2(Struct_1(arg_0.e.a, 34630i, vec2<i32>(30819i, u_input.c), select(false, true, false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.b.b, arg_0.b.b) - vec3<f32>(arg_0.b.b, arg_0.e.a.x, 1045f))))).d), select(vec4<bool>(arg_0.b.a.x, (u_input.d <= arg_0.d) || any(vec4<bool>(true, arg_0.e.d, true, global0[_wgslsmith_index_u32(u_input.d, 17u)])), true, arg_0.e.a.x > _wgslsmith_f_op_f32(137f + arg_0.a)), select(!(!vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.e.d, false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(31022u, 17u)], arg_0.e.d, true, false), vec4<bool>(false, arg_0.e.d, true, true), global0[_wgslsmith_index_u32(arg_0.d, 17u)]), !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false), vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, arg_0.b.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true))), vec4<bool>(true, true, global0[_wgslsmith_index_u32(func_4(func_4(Struct_1(arg_0.e.a, 35108i, vec2<i32>(-1i, arg_0.e.c.x), arg_0.e.d), Struct_3(arg_0.b.a.x, vec4<f32>(arg_0.e.a.x, -606f, -381f, 360f), 2808u, arg_0.b, global0[_wgslsmith_index_u32(arg_0.d, 17u)]), arg_0.b.a.yy).e, Struct_3(true, vec4<f32>(-2101f, -433f, arg_0.b.b, arg_0.a), 4294967295u, arg_0.b, false), vec2<bool>(arg_0.b.a.x, false)).d, 17u)], true)));
    var var_2 = func_4(func_4(func_2(func_4(arg_0.e, Struct_3(false, vec4<f32>(arg_0.b.b, 272f, -925f, arg_0.e.a.x), 4294967295u, arg_0.b, arg_0.b.a.x), var_1.wy).e, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-900f, 178f, 267f), vec3<f32>(-809f, arg_0.b.b, arg_0.e.a.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, -1620f, arg_0.a), vec3<f32>(-408f, -1351f, arg_0.a))))), Struct_3(arg_0.e.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1370f, 1901f, -610f, 434f) * vec4<f32>(arg_0.a, arg_0.b.b, -527f, arg_0.b.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, -150f, arg_0.b.b, 191f) - vec4<f32>(arg_0.b.b, -1554f, -1145f, arg_0.a)), all(var_1.yxx))), 1u, Struct_2(select(vec3<bool>(true, true, arg_0.b.a.x), vec3<bool>(true, false, arg_0.e.d), vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 17u)])), arg_0.b.b), all(vec2<bool>(true, var_1.x)) == arg_0.e.d), var_1.xx).e, Struct_3(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.e.a.x, -1199f, arg_0.e.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.b.b, -198f) - vec4<f32>(-1846f, arg_0.e.a.x, -915f, 1165f)))), 36766u, Struct_2(select(!var_1.xxz, select(var_1.yzz, vec3<bool>(true, true, var_1.x), var_1.x), arg_0.b.a), _wgslsmith_f_op_f32(-378f + 624f)), all(func_4(Struct_1(arg_0.e.a, 16029i, u_input.b.zz, true), Struct_3(true, vec4<f32>(arg_0.a, arg_0.a, -795f, arg_0.a), 4294967295u, Struct_2(arg_0.b.a, arg_0.e.a.x), true), !arg_0.b.a.yz).b.a.xy)), !(!(!func_4(arg_0.e, Struct_3(var_1.x, vec4<f32>(arg_0.b.b, 561f, 208f, -1000f), arg_0.d, arg_0.b, false), arg_0.b.a.zx).b.a.zz))).b;
    return ~73920u;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~arg_3.c;
    let var_1 = Struct_1(arg_3.b.zx, u_input.b.x, func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d.b, 1187f) * arg_3.b.ww)), u_input.c, reverseBits(vec2<i32>(u_input.c, u_input.b.x)), true), vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1460f))), arg_3.b.x)).c, abs(16125u) > _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(max(u_input.a.yw, vec2<u32>(arg_1.x, 54639u)), _wgslsmith_mult_vec2_u32(vec2<u32>(17105u, 17558u), u_input.a.zx)), arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(244f)) * _wgslsmith_f_op_f32(func_4(var_1, Struct_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, -356f, 653f, -174f)), ~arg_1.x, func_4(Struct_1(vec2<f32>(var_1.a.x, arg_3.b.x), -72967i, vec2<i32>(u_input.c, 2147483647i), false), Struct_3(arg_3.a, arg_3.b, 9762u, arg_3.d, global0[_wgslsmith_index_u32(arg_3.c, 17u)]), arg_3.d.a.zx).b, !arg_3.d.a.x), arg_3.d.a.zx).a * _wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1585f)) * var_2)), func_4(func_2(var_1, vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(var_2, 2007f)))), Struct_3(!all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 17u)], arg_3.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, arg_3.d.b, 579f, 1089f)))), 38071u, Struct_2(vec3<bool>(true, arg_3.e, true), _wgslsmith_f_op_f32(step(var_1.a.x, 1000f))), _wgslsmith_f_op_f32(max(var_1.a.x, 169f)) > _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), select(arg_3.d.a.yz, !arg_3.d.a.yy, arg_3.d.a.yz)).b, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, ~reverseBits(u_input.c)), u_input.b.yz), abs(~(~(4294967295u << (0u % 32u)))), Struct_1(func_2(var_1, _wgslsmith_f_op_vec3_f32(arg_3.b.wyz + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_2, -703f)))).a, _wgslsmith_sub_i32(var_1.c.x, func_2(Struct_1(arg_3.b.zy, 1i, var_1.c, global0[_wgslsmith_index_u32(0u, 17u)]), arg_3.b.wyz).c.x), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.c.x, -12599i, -2147483647i), vec4<i32>(-2147483647i, -3095i, 32252i, -2147483647i)), -1i)), true));
    global0 = array<bool, 17>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>(true, false, any(select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(24557u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)]), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))), 290f);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-109f * -313f), var_0.b)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-1235f - var_0.b)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(26255i, ~(-11710i)), select(vec2<i32>(u_input.c, u_input.b.x) ^ u_input.b.xx, ~u_input.b.xx, select(vec2<bool>(true, var_0.a.x), var_0.a.zz, var_0.a.zx))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.b.x, 14407i)), u_input.b.zx), ~abs(vec2<i32>(36185i, u_input.c) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)))), !var_0.a.x | false);
    let var_2 = func_6(vec2<u32>(u_input.d, ~func_1(var_0.a, var_1.b, min(4294967295u, u_input.a.x), u_input.a)), ~_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.d)), u_input.a.yy & firstLeadingBit(u_input.a.wy)), true, Struct_3(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -153f, var_0.b, 424f) + vec4<f32>(-1000f, var_1.a.x, var_1.a.x, var_0.b))), func_5(func_4(func_2(Struct_1(var_1.a, -2147483647i, vec2<i32>(u_input.e, u_input.e), false), vec3<f32>(-963f, var_0.b, 1228f)), Struct_3(false, vec4<f32>(334f, 191f, var_1.a.x, var_1.a.x), u_input.a.x, Struct_2(vec3<bool>(var_0.a.x, false, true), -1000f), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !vec2<bool>(var_1.d, var_1.d))), func_4(Struct_1(var_1.a, u_input.e, ~vec2<i32>(var_1.b, 2147483647i), func_2(Struct_1(vec2<f32>(-865f, var_1.a.x), -2147483647i, vec2<i32>(3147i, u_input.c), global0[_wgslsmith_index_u32(0u, 17u)]), vec3<f32>(var_0.b, var_1.a.x, -144f)).d), Struct_3(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, 1008f, var_0.b, var_0.b)), u_input.d, func_4(Struct_1(vec2<f32>(548f, 211f), -45995i, var_1.c, var_1.d), Struct_3(global0[_wgslsmith_index_u32(14447u, 17u)], vec4<f32>(-498f, -924f, 1241f, var_1.a.x), u_input.a.x, Struct_2(var_0.a, -1548f), true), vec2<bool>(true, true)).b, var_1.d), !(!var_0.a.xx)).b, global0[_wgslsmith_index_u32(~abs(u_input.d) << (8777u % 32u), 17u)]));
    var var_3 = var_0.a.x;
    var var_4 = vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(-1i, u_input.c), 0i, u_input.c) << (func_5(func_4(func_2(Struct_1(var_2.a, var_2.b, vec2<i32>(-2147483647i, -1i), global0[_wgslsmith_index_u32(3367u, 17u)]), vec3<f32>(var_0.b, -300f, -334f)), Struct_3(var_2.d, vec4<f32>(var_2.a.x, var_1.a.x, -1000f, 1406f), u_input.d, Struct_2(vec3<bool>(false, false, true), 274f), true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false))) % 32u), countOneBits(-(~var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mod_i32(var_1.c.x, abs(var_1.b & ~2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(round(1357f)), _wgslsmith_f_op_f32(-func_6(u_input.a.wx, vec2<u32>(u_input.a.x, u_input.d), true, Struct_3(false, vec4<f32>(var_1.a.x, -312f, var_1.a.x, var_1.a.x), 4294967295u, Struct_2(vec3<bool>(var_0.a.x, true, false), -841f), false)).a.x), -1505f, _wgslsmith_f_op_f32(272f * -334f)), 1753f);
}

