struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<bool, 20>;

var<private> global3: f32;

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec4<i32>(-1i, 1i, i32(-2147483648), -31248i)), Struct_1(vec3<i32>(1i, -6515i, 54515i), vec4<i32>(-47024i, -19358i, i32(-2147483648), -30279i)), Struct_1(vec3<i32>(1i, -5895i, 9885i), vec4<i32>(1i, 2147483647i, -1i, -16650i)), Struct_1(vec3<i32>(40330i, -1i, 16187i), vec4<i32>(-25909i, 2147483647i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(54370i, 0i, 1i), vec4<i32>(12588i, 1i, i32(-2147483648), 5807i)), Struct_1(vec3<i32>(-5i, 16671i, 0i), vec4<i32>(-29858i, -50712i, -60583i, -1i)), Struct_1(vec3<i32>(25926i, 0i, 621i), vec4<i32>(9717i, -1i, -28484i, 1553i)), Struct_1(vec3<i32>(-60906i, -25201i, i32(-2147483648)), vec4<i32>(2147483647i, -13548i, -1i, -49286i)), Struct_1(vec3<i32>(-41905i, -1i, -24457i), vec4<i32>(1i, -7388i, -12491i, 30549i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -39451i), vec4<i32>(-1i, -1i, -1i, 2147483647i)), Struct_1(vec3<i32>(18705i, 1i, i32(-2147483648)), vec4<i32>(3291i, i32(-2147483648), 25963i, 3537i)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec4<i32>(3556i, 20146i, 0i, 0i)), Struct_1(vec3<i32>(0i, 2147483647i, 27105i), vec4<i32>(19744i, -46082i, 37073i, 4884i)), Struct_1(vec3<i32>(29761i, -33379i, 0i), vec4<i32>(44150i, i32(-2147483648), 1i, 31715i)), Struct_1(vec3<i32>(27941i, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, 43260i, -13441i)), Struct_1(vec3<i32>(-9867i, 3155i, 65831i), vec4<i32>(-1941i, -1i, 12899i, -1i)), Struct_1(vec3<i32>(1i, -1i, -1i), vec4<i32>(28485i, -37688i, 1i, 1i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = ~arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(534f - arg_0.a), arg_0.a) * arg_0.a), _wgslsmith_f_op_f32(trunc(global1.a.a.x)))));
    global2 = array<bool, 20>();
    var var_2 = Struct_4(global1.a.a, global1.a.e.wxw, -30581i, global1.a.d, select(vec4<bool>(false, true, all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(26141u, 20u)]), vec2<bool>(false, global1.a.e.x), vec2<bool>(false, false))), abs(31418u) <= _wgslsmith_mult_u32(u_input.c, global1.b)), !select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], true, false, global1.a.b.x), global1.a.e, global1.a.b.x), !(!select(global1.a.e, vec4<bool>(global1.a.b.x, true, false, global2[_wgslsmith_index_u32(global1.b, 20u)]), true))));
    global3 = _wgslsmith_f_op_f32(max(-462f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1473f - 473f)))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(sign(var_1)), global1.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a)))), _wgslsmith_f_op_vec3_f32(global1.c + global1.c)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global1.a.d.a.x * 580f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1817f);
    global4 = array<Struct_1, 17>();
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-2019f + 2564f)), (select(vec4<u32>(4294967295u, global1.b, global1.b, 53459u), vec4<u32>(0u, 82431u, u_input.c, 0u), global2[_wgslsmith_index_u32(u_input.b, 20u)]) << (~vec4<u32>(u_input.c, u_input.b, 9699u, 7634u) % vec4<u32>(32u))) & vec4<u32>(u_input.c ^ 6324u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b, 4294967295u)), u_input.c, min(0u, 2562u))))));
    let var_3 = global1.a.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.a.x));
}

fn func_1() -> Struct_1 {
    global0 = -countOneBits(~2147483647i);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, global1.c.x, 778f), vec4<f32>(1832f, 269f, global1.c.x, 1184f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.a.d.a.x, -562f, global1.c.x)), vec4<bool>(true & global1.a.e.x, global1.b < 0u, global2[_wgslsmith_index_u32(global1.b, 20u)], u_input.d.x < 1399i))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a.a.x, global1.a.a.x), _wgslsmith_f_op_f32(sign(-1000f)), 511f, _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2166f, -211f, global1.c.x, global1.a.a.x), vec4<f32>(global1.a.d.a.x, global1.c.x, -1199f, 347f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(353f, global1.a.a.x, 2357f, global1.a.a.x)))))));
    var var_1 = vec4<f32>(global1.a.d.a.x, _wgslsmith_f_op_f32(floor(989f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-1043f * global1.a.a.x)))))), 214f);
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f + 161f)) - -1937f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(global1.a.d.a.x * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + var_1.x))), vec3<bool>(global1.a.b.x, any(select(global1.a.e, select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(global1.b, 20u)], false, global2[_wgslsmith_index_u32(global1.b, 20u)]), global1.a.e, false), vec4<bool>(true, false, true, global1.a.b.x))), true), global1.a.c, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, var_1.x) + _wgslsmith_f_op_vec2_f32(select(var_0.xw, var_1.zy, global2[_wgslsmith_index_u32(50581u, 20u)]))))), global1.a.e);
    global1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(var_0.x, 233f), _wgslsmith_f_op_f32(step(1100f, -945f)))), global1.a.b, 2147483647i, Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(1000f, 1659f)), vec2<f32>(var_1.x, 462f)))), var_2.e), u_input.c, _wgslsmith_f_op_vec3_f32(abs(var_0.xwy)));
    return global4[_wgslsmith_index_u32(global1.b, 17u)];
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    var var_0 = global1.a.d;
    return Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(max(global1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.a.a, global1.a.a))))), select(vec3<bool>(true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.b, 20u)], false, true)), true), vec3<bool>(global1.a.e.x, !global1.a.e.x, all(global1.a.b.yy)), vec3<bool>(false, global1.a.e.x, true)), 0i, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2159f, var_0.a.x))) + global1.c.xz)), select(!(!global1.a.e), vec4<bool>(global1.a.b.x, true, !global2[_wgslsmith_index_u32(global1.b, 20u)], false), any(global1.a.e.xyw))), 1u, global1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(-2147483647i);
    let var_0 = func_4(func_1());
    global3 = -1000f;
    let var_1 = var_0.b;
    global0 = _wgslsmith_dot_vec4_i32((vec4<i32>(global1.a.c, _wgslsmith_div_i32(u_input.d.x, 0i), -152i, 35448i) ^ select(~vec4<i32>(-18144i, -4758i, global1.a.c, 0i), vec4<i32>(21454i, 16164i, 1i, 2147483647i), true)) >> (vec4<u32>(~var_1, firstTrailingBit(abs(38934u)), 38624u, var_1) % vec4<u32>(32u)), vec4<i32>(abs(-_wgslsmith_mult_i32(0i, global1.a.c)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-41229i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, global1.a.c), vec4<i32>(-1i, var_0.a.c, u_input.a, -34170i))), -8288i), -2147483647i, _wgslsmith_mult_i32(abs(var_0.a.c), max(_wgslsmith_div_i32(var_0.a.c, 49572i), _wgslsmith_div_i32(global1.a.c, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d.a.x - global1.c.x) - _wgslsmith_f_op_f32(-global1.c.x)));
}

