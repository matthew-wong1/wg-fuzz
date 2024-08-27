struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = u_input.b.x ^ 1u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + arg_0.c.x) - _wgslsmith_f_op_f32(select(arg_0.c.x, -1458f, true))))));
    global2 = vec4<bool>(global2.x, !any(!(!vec4<bool>(false, true, global0.x, false))), false, global2.x);
    var var_2 = abs((_wgslsmith_sub_vec3_i32(vec3<i32>(24082i, u_input.d.x, arg_0.a.x), u_input.d | u_input.d) | vec3<i32>(-2147483647i, -u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_0.a.x, -14571i, arg_0.b), vec4<i32>(arg_0.b, -47249i, u_input.c.x, arg_0.a.x)))) | u_input.c);
    global0 = global2.xx;
    return all(select(!select(!vec4<bool>(global0.x, global2.x, global2.x, global0.x), select(vec4<bool>(global2.x, global0.x, global0.x, true), vec4<bool>(false, false, true, true), global2.x), select(vec4<bool>(true, false, false, global2.x), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x)), vec4<bool>(select(u_input.d.x >= var_2.x, true, arg_0.c.x <= var_1), !(u_input.a.x > 1u), false, !(95885u < u_input.a.x)), !global2.x));
}

fn func_2() -> Struct_3 {
    var var_0 = false;
    let var_1 = !global0.x;
    global2 = select(select(!vec4<bool>(global2.x, global0.x, func_3(Struct_1(u_input.d.yz, u_input.d.x, vec4<f32>(236f, 457f, 542f, 304f))), true), !select(!vec4<bool>(var_1, global0.x, false, false), select(vec4<bool>(true, var_1, global0.x, global0.x), vec4<bool>(true, global2.x, false, false), true), vec4<bool>(false, global2.x, false, global2.x)), 1402f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-223f)))), !vec4<bool>(!any(global2.xz), all(vec2<bool>(global2.x, true)), any(!vec3<bool>(var_1, true, global0.x)), !(!global0.x)), vec4<bool>(false, any(!select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(global0.x, true, global2.x, global2.x), true)), !(!all(vec4<bool>(true, false, false, false))), any(select(vec2<bool>(false, true), global2.xx, true)) | (var_1 || global2.x)));
    let var_2 = -select(abs(vec4<i32>(~u_input.c.x, 1i, _wgslsmith_div_i32(u_input.d.x, -5538i), select(u_input.d.x, -2147483647i, false))), ~select(vec4<i32>(-2147483647i, u_input.c.x, 19649i, u_input.d.x), ~vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, -45557i), true), u_input.b.x != 43064u);
    var_0 = select(!(!global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1508f)), _wgslsmith_f_op_f32(f32(-1f) * -383f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f - 1191f) - -1000f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f))), global2.x);
    return Struct_3(all(global2.yxw), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, 795f)), vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1333f, -150f)))))), Struct_1(-u_input.c.zz, 1i, vec4<f32>(_wgslsmith_f_op_f32(sign(696f)), _wgslsmith_f_op_f32(690f + -1237f), _wgslsmith_f_op_f32(1370f + -635f), _wgslsmith_f_op_f32(step(260f, -394f))))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2().b.b;
    let var_2 = Struct_3(false, func_2().b);
    var var_3 = firstTrailingBit(30160i);
    let var_4 = any(vec4<bool>(!any(vec3<bool>(global0.x, false, var_2.a)), -(~u_input.d.x) == max(~var_1.a.x, 0i >> (u_input.a.x % 32u)), global2.x, all(!global2.zz)));
    return Struct_2(vec2<f32>(930f, var_0.b.b.c.x), var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~10333u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), u_input.a.x), u_input.a.x) ^ u_input.a;
    let var_1 = ~vec3<u32>(17688u, u_input.b.x, 0u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1291f * -1354f) - 327f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(924f)), -1000f)) + -129f), -1526f)));
    let var_3 = _wgslsmith_mult_u32(u_input.b.x, var_0.x);
    global1 = 0i;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_4.b.a.x), max(select(func_2().b.b.a, u_input.d.yz, vec2<bool>(global0.x, false)), vec2<i32>(u_input.c.x, 43705i) >> (select(vec2<u32>(var_1.x, 28704u), var_1.zy, global2.xz) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(-var_4.b.a, ~u_input.c.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(118f)) * var_2.x));
}

