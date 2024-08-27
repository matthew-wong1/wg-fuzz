struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), -1000f);

var<private> global1: Struct_3 = Struct_3(vec4<i32>(2147483647i, -63082i, -4039i, 2147483647i), 10450i, 7959u, vec2<bool>(true, false));

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-1i, -44761i, -1i, -19780i), i32(-2147483648), 23785u, vec2<bool>(true, false));

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<i32> {
    global2 = arg_1;
    let var_0 = Struct_2(Struct_1(!global3.ywx, arg_0.x), (~(~0i) ^ global1.a.x) & _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.b, arg_1.a.x), vec2<i32>(-2147483647i, ~u_input.c)));
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, -394f), arg_0.xy)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, var_0.a.b)), _wgslsmith_f_op_f32(-var_0.a.b))))));
    var_1 = arg_0.zx;
    return u_input.b;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(-global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, u_input.b.x, 36573i, ~1i), vec4<i32>(-_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 33232i), _wgslsmith_add_i32(countOneBits(0i), -2147483647i), -1i, -14455i)));
    var var_1 = Struct_3(~firstTrailingBit(-func_3(vec3<f32>(-432f, -1168f, 1803f), Struct_3(vec4<i32>(global2.b, u_input.a, -72380i, global1.a.x), -2147483647i, u_input.e, global1.d))), i32(-1i) * -12411i, global1.c & ~0u, !vec2<bool>(all(vec4<bool>(false, true, global2.d.x, global2.d.x)), select(global2.d.x, !global3.x, true)));
    var_1 = Struct_3(~vec4<i32>(-19609i, _wgslsmith_mod_i32(-2147483647i, global1.a.x) & _wgslsmith_mod_i32(var_1.b, -13462i), 28973i, _wgslsmith_dot_vec3_i32(global2.a.zyw, _wgslsmith_mod_vec3_i32(global2.a.xyx, global1.a.zzx))), ~1i, u_input.e, select(vec2<bool>(max(global1.c, 57118u) >= global1.c, false), select(vec2<bool>(!global1.d.x, global3.x), !global0.a.yz, !(false & global2.d.x)), all(vec4<bool>(false, var_1.d.x, global3.x, any(vec4<bool>(global0.a.x, true, global0.a.x, false))))));
    var var_2 = !global0.a;
    var var_3 = -global1.b;
    return Struct_3(global1.a, -(~(~39374i >> (global1.c % 32u))), global1.c, global2.d);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = global1.a.yy;
    var var_1 = _wgslsmith_dot_vec3_u32(~(~firstLeadingBit(u_input.d.wyz)), vec3<u32>(20240u, abs(1u), 32599u));
    global3 = arg_2;
    var var_2 = arg_0;
    var var_3 = Struct_1(vec3<bool>(true, global2.d.x, !(!global2.d.x)), -118f);
    return select(vec4<bool>(any(!(!vec3<bool>(arg_2.x, false, global1.d.x))), all(select(select(vec3<bool>(global0.a.x, global3.x, true), arg_2.zxz, vec3<bool>(global2.d.x, false, false)), vec3<bool>(var_3.a.x, true, var_3.a.x), global0.a.x)), func_2().d.x, !var_3.a.x), select(vec4<bool>(true, all(!global3.ww), !global0.a.x && false, all(select(global3.xyz, global0.a, arg_2.yyz))), !vec4<bool>(global0.b != var_3.b, true, true | global2.d.x, !global0.a.x), func_2().d.x), vec4<bool>(var_3.b < -1000f, false, all(!arg_0.d), (0i > _wgslsmith_add_i32(var_0.x, -1i)) || !var_2.d.x));
}

fn func_1() -> Struct_1 {
    global1 = Struct_3((vec4<i32>(_wgslsmith_clamp_i32(0i, -6522i, -2147483647i), _wgslsmith_div_i32(-10425i, global2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.a, global2.a.x)), global2.b) | -(vec4<i32>(35241i, -21388i, global1.a.x, u_input.b.x) ^ vec4<i32>(u_input.a, -30326i, global1.a.x, u_input.a))) << (u_input.d % vec4<u32>(32u)), -24712i, ~1u, select(select(vec2<bool>(true, !global0.a.x), select(!vec2<bool>(global3.x, global2.d.x), vec2<bool>(global0.a.x, true), select(vec2<bool>(global1.d.x, false), vec2<bool>(global2.d.x, global0.a.x), global0.a.x)), global2.d), vec2<bool>(false, true), any(!(!vec4<bool>(global3.x, global1.d.x, global1.d.x, global0.a.x)))));
    global3 = !select(func_4(func_2(), 1i & max(global1.a.x, u_input.c), select(select(vec4<bool>(global0.a.x, true, global3.x, true), vec4<bool>(true, true, global2.d.x, true), global0.a.x), !vec4<bool>(false, global1.d.x, global3.x, true), !vec4<bool>(true, global2.d.x, global1.d.x, global2.d.x)), vec4<u32>(global1.c, 1u, abs(global1.c), max(global1.c, global2.c))), select(select(!vec4<bool>(false, global3.x, global2.d.x, true), vec4<bool>(global2.d.x, global1.d.x, true, false), vec4<bool>(global3.x, global3.x, global1.d.x, true)), select(vec4<bool>(global3.x, false, false, global3.x), !vec4<bool>(global3.x, true, global2.d.x, global1.d.x), vec4<bool>(true, false, true, false)), vec4<bool>(global0.b <= global0.b, global0.a.x, true, true)), global0.a.x);
    global2 = func_2();
    global0 = Struct_1(global3.xzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(f32(-1f) * -362f))));
    var var_0 = u_input.b.x;
    return Struct_1(select(!global3.wyy, func_4(func_2(), abs(global2.a.x), !vec4<bool>(global2.d.x, true, false, false), abs(u_input.d)).xyx, global3.wwz), 444f);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global3 = vec4<bool>(!global1.d.x, false, true, arg_2.d.x);
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(359f, var_0.b), _wgslsmith_f_op_f32(max(-503f, global0.b))) * 946f), -1899f, _wgslsmith_f_op_f32(arg_0.a.b + global0.b), arg_0.a.b), vec4<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(192f - _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(select(-1229f, _wgslsmith_f_op_f32(-118f - _wgslsmith_f_op_f32(-global0.b)), false)))));
    let var_2 = Struct_2(func_1(), i32(-1i) * -7920i);
    global2 = Struct_3(-vec4<i32>(0i, max(global1.b, arg_0.b), firstTrailingBit(-80963i), global1.b) ^ u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(19911i, -1i, -2147483647i), abs(firstTrailingBit(-u_input.b.xww))), 0u, !select(global0.a.zz, func_2().d, vec2<bool>(global2.d.x | arg_2.d.x, all(vec3<bool>(false, true, false)))));
    return Struct_1(global0.a, _wgslsmith_f_op_f32(arg_0.a.b + 465f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(func_1(), -10629i), ~(~_wgslsmith_add_u32(~u_input.e, reverseBits(0u))), func_2());
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b - -1055f)));
    let var_1 = global1.a.wxz;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1415f, -1291f)));
    let var_3 = Struct_1(func_5(Struct_2(func_1(), 1i), abs(u_input.d.x), func_2()).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))))));
    var var_4 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, var_1.x), var_1.yy) & func_2().a.x, global1.b, 0i, ~global2.b) | (min(min(vec4<i32>(-34748i, global1.a.x, global1.a.x, -24485i), u_input.b), global2.a ^ global1.a) & ~global1.a), reverseBits(vec3<u32>(_wgslsmith_add_u32(~global1.c, ~33685u), ~(~u_input.d.x), u_input.d.x)));
}

