struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(893f, Struct_1(vec2<u32>(1u, 98634u), 674f), Struct_1(vec2<u32>(15512u, 1u), -531f), vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(11251u, 1u), -1671f));

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(31263u, 4294967295u, 42680u), vec3<u32>(1u, 0u, 20174u), vec3<u32>(34063u, 4294967295u, 0u), vec3<u32>(1u, 16201u, 0u), vec3<u32>(46544u, 80016u, 50024u), vec3<u32>(30987u, 0u, 4294967295u), vec3<u32>(48970u, 1u, 39570u), vec3<u32>(90059u, 4294967295u, 15561u), vec3<u32>(41671u, 0u, 4294967295u), vec3<u32>(12689u, 1u, 0u), vec3<u32>(1u, 60053u, 0u), vec3<u32>(4294967295u, 9710u, 0u), vec3<u32>(1u, 0u, 26298u), vec3<u32>(0u, 17133u, 12785u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(15651u, 0u, 20898u), vec3<u32>(55292u, 33132u, 3536u), vec3<u32>(0u, 15674u, 52911u), vec3<u32>(4276u, 39868u, 908u), vec3<u32>(0u, 14629u, 51206u), vec3<u32>(32976u, 4294967295u, 5893u), vec3<u32>(152858u, 21910u, 29019u), vec3<u32>(36601u, 44172u, 4294967295u));

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.e.b;
    global1 = array<vec3<u32>, 25>();
    let var_1 = abs(80451u >> (global0.e.a.x % 32u));
    var var_2 = Struct_4(!select(global0.d, !global2.a, vec4<bool>(true, true, true, true)));
    let var_3 = Struct_5(arg_0.a > arg_0.a, arg_0);
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = all(!(!global0.d));
    global2 = Struct_4(select(select(global0.d, !vec4<bool>(var_0, global2.a.x, false, false), !global0.d.x), vec4<bool>(!(!global2.a.x), true, any(global2.a.yyy), false), !vec4<bool>(true, true, any(global2.a), global2.a.x)));
    global0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.c.b, _wgslsmith_f_op_f32(global0.b.b * global0.b.b))), -930f, !(!global2.a.x))))), global0.e, global0.e, select(!vec4<bool>(!var_0, select(true, global0.d.x, true), true, !global0.d.x), !vec4<bool>(true, global2.a.x, all(global0.d.yxz), true), false), Struct_1(u_input.a.yy, 1000f));
    var var_1 = vec4<bool>(all(select(vec2<bool>(!global2.a.x, all(vec3<bool>(global2.a.x, global0.d.x, global2.a.x))), vec2<bool>(true, select(false, var_0, global2.a.x)), (u_input.d ^ u_input.d) <= -u_input.d)), false, !func_3(Struct_2(-863f, Struct_1(vec2<u32>(0u, 35891u), global0.c.b), global0.e, !global0.d, Struct_1(global0.e.a, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global0.e.b, -171f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-427f - global0.c.b))) * _wgslsmith_f_op_f32(global0.e.b - _wgslsmith_f_op_f32(sign(-271f)))));
    global2 = Struct_4(!select(vec4<bool>(true, var_0, true, all(var_1.yy)), !global2.a, !var_0));
    return Struct_2(global0.c.b, global0.b, global0.c, global2.a, Struct_1(firstTrailingBit(~min(vec2<u32>(global0.b.a.x, 73424u), global0.c.a)), _wgslsmith_f_op_f32(round(global0.e.b))));
}

fn func_1() -> Struct_5 {
    global0 = func_2();
    let var_0 = !(!select(vec2<bool>(true & global2.a.x, global2.a.x), global2.a.yy, _wgslsmith_f_op_f32(min(298f, global0.a)) >= -821f));
    return Struct_5(all(global2.a.wz), func_2());
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = true;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.a.x), countOneBits(~global0.e.a.x), firstTrailingBit(~global0.b.a.x), u_input.e), vec4<u32>(firstLeadingBit(~4294967295u), 23216u, func_1().b.e.a.x, _wgslsmith_div_u32(~global0.b.a.x, u_input.e))), 4294967295u, _wgslsmith_div_u32(42078u, 1u));
    let var_2 = Struct_3(arg_0.b.d.x, ~(~(vec2<i32>(1i, u_input.d) | vec2<i32>(u_input.b, 28281i))) | vec2<i32>(-reverseBits(u_input.d), u_input.b << (select(88037u, 4294967295u, global2.a.x) % 32u)), ~4294967295u, arg_0.b.c.a);
    var var_3 = Struct_4(global2.a);
    var var_4 = Struct_1(u_input.a.wy, 1273f);
    return var_2.b;
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = -vec4<i32>(u_input.d, -2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.x), vec2<i32>(arg_0.x, u_input.b))) >> (countOneBits(38070u) % 32u), ~(u_input.b ^ u_input.b));
    return Struct_3(308f >= _wgslsmith_f_op_f32(-994f + _wgslsmith_f_op_f32(round(-1299f))), var_0.zx, 1u, global0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_5(_wgslsmith_sub_vec2_i32(func_4(func_1(), vec3<bool>(global0.b.a.x <= u_input.e, false, func_1().b.d.x)), vec2<i32>(_wgslsmith_mod_i32(~(-7997i), 1i), -9139i)));
    var var_2 = Struct_4(vec4<bool>(any(!(!global0.d.wy)), true, any(global2.a.xzx), all(func_2().d.xw)));
    let var_3 = abs(vec3<i32>(~reverseBits(~(-1726i)), _wgslsmith_mod_i32(var_1.b.x, min(-var_1.b.x, -var_1.b.x)), _wgslsmith_mod_i32(0i, ~var_1.b.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, global0.e.b, global0.c.b), vec3<f32>(-316f, global0.b.b, global0.b.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.c.b, global0.b.b), vec3<f32>(-1000f, 477f, global0.a)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-182f, -212f, -122f) - vec3<f32>(-696f, global0.c.b, global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.b, global0.e.b, global0.e.b) - vec3<f32>(1248f, global0.c.b, global0.b.b))))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) - _wgslsmith_f_op_f32(-global0.e.b)), -805f))));
    var var_5 = vec3<i32>(u_input.b, ~(~(u_input.b ^ -47816i)), max(-41584i, ~func_4(Struct_5(false, Struct_2(1442f, Struct_1(vec2<u32>(46371u, u_input.c), var_4.x), Struct_1(vec2<u32>(19142u, 33673u), global0.c.b), global0.d, global0.c)), vec3<bool>(var_2.a.x, false, global0.d.x)).x | _wgslsmith_mult_i32(-var_3.x, u_input.d >> (var_0 % 32u))));
    let var_6 = vec3<i32>(var_1.b.x, var_1.b.x, ~(-_wgslsmith_dot_vec2_i32(~var_5.yz, func_4(Struct_5(true, Struct_2(global0.c.b, global0.c, Struct_1(var_1.d, 671f), global2.a, global0.e)), global0.d.wwx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, -1747f), vec2<f32>(global0.c.b, 850f))), vec2<f32>(_wgslsmith_f_op_f32(round(-555f)), 1144f), var_2.a.wx))), var_4.x, global0.c.b, global0.e.a.x, max(~(-vec2<i32>(var_3.x, var_1.b.x)) & vec2<i32>(min(2147483647i, u_input.d), var_3.x), _wgslsmith_mult_vec2_i32(~select(var_5.zx, var_6.zx, vec2<bool>(true, false)), _wgslsmith_mult_vec2_i32(~var_3.yx, ~var_3.yy))));
}

