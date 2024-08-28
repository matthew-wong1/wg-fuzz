struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: bool = false;

var<private> global2: array<u32, 7>;

var<private> global3: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1039f, 1113f)), _wgslsmith_f_op_f32(1032f + 1142f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), 1613f, true)))));
    var var_1 = ~countOneBits(global2[_wgslsmith_index_u32(0u, 7u)]);
    var var_2 = ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)];
    global0 = array<bool, 18>();
    let var_3 = 27229u;
    return vec2<u32>(~abs(29727u), ~(~4294967295u));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_5(u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(), ~vec2<u32>(0u, 11571u)), global2[_wgslsmith_index_u32(~4294967295u, 7u)]), 7u)], Struct_3(Struct_1(~4294967295u, select(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 0u), ~vec2<u32>(global2[_wgslsmith_index_u32(80098u, 7u)], 0u), vec2<bool>(false, true))), 1i & max(~u_input.a, u_input.a), abs(firstTrailingBit(u_input.b)) == -(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-419f, 1304f, 539f, 2157f), vec4<f32>(819f, -1000f, 1614f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(622f, 1095f, 544f, 1000f) + vec4<f32>(-286f, 422f, -249f, 584f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-556f, 635f, -1417f, -590f), vec4<f32>(375f, -1870f, -1000f, -967f)))), vec2<bool>(false, false)));
    var var_1 = Struct_4(Struct_1(~(~1u), var_0.c.a.b), Struct_2(!var_0.c.e.x, true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2013f, -1000f, 443f, 251f))), var_0.c.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x, var_0.c.d.x) * vec4<f32>(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x, var_0.c.d.x)) - vec4<f32>(var_0.c.d.x, 769f, var_0.c.d.x, 1248f)), !select(vec4<bool>(true, false, true, var_0.c.e.x), vec4<bool>(var_0.c.c, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46879u, 7u)], 18u)], global3.x, false), vec4<bool>(true, true, true, var_0.c.e.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.d - var_0.c.d))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.d.x + _wgslsmith_f_op_f32(abs(var_0.c.d.x))))))), 435f);
    var var_3 = select(vec4<bool>(true, true, ((var_0.c.e.x && false) && global3.x) | (_wgslsmith_mult_i32(var_0.c.b, u_input.c.x) != 34020i), select(_wgslsmith_f_op_f32(min(var_0.c.d.x, 676f)) >= _wgslsmith_div_f32(-264f, var_2), !all(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(1u, 18u)])), true)), vec4<bool>(true || !var_0.c.e.x, all(select(!vec4<bool>(false, true, var_1.b.b, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.a, 7u)], 7u)], 18u)]), select(vec4<bool>(var_1.b.a, true, var_0.c.e.x, global0[_wgslsmith_index_u32(var_1.a.b.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.a.b.x, 18u)], global3.x, true, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58536u, 7u)], 18u)])), select(vec4<bool>(true, var_0.c.e.x, var_1.b.b, true), vec4<bool>(false, var_0.c.e.x, false, var_1.b.b), vec4<bool>(true, global3.x, global3.x, global3.x)))), var_0.c.e.x, ~4294967295u == var_1.a.b.x), vec4<bool>(!(any(global3.xx) & !var_0.c.e.x), var_1.b.a, true, var_0.c.c));
    var var_4 = all(select(select(vec2<bool>(!var_1.b.b, false || var_1.b.b), global3.zw, vec2<bool>(true, true)), var_3.xy, !any(vec4<bool>(var_3.x, true, false, false))));
    return Struct_4(Struct_1(5201u, countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(1u, 7u)], ~var_1.a.a))), var_1.b, var_1.c);
}

fn func_1() -> Struct_5 {
    global0 = array<bool, 18>();
    var var_0 = func_2();
    let var_1 = 0u;
    global3 = select(select(!vec4<bool>(!global0[_wgslsmith_index_u32(var_0.a.b.x, 18u)], select(true, var_0.b.a, true), true, true), !vec4<bool>(global0[_wgslsmith_index_u32(abs(var_1), 18u)], all(vec3<bool>(true, var_0.b.a, true)), select(false, false, true), func_2().b.b), select(!select(vec4<bool>(var_0.b.b, false, true, var_0.b.b), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a.a, 18u)], global3.x, var_0.b.a), vec4<bool>(global0[_wgslsmith_index_u32(var_1, 18u)], true, global0[_wgslsmith_index_u32(0u, 18u)], var_0.b.b)), !select(vec4<bool>(false, true, var_0.b.b, var_0.b.b), vec4<bool>(global3.x, var_0.b.b, false, global3.x), vec4<bool>(true, true, false, false)), !vec4<bool>(global3.x, var_0.b.a, true, global3.x))), vec4<bool>(global3.x, all(!select(vec3<bool>(true, global3.x, true), global3.wxw, global3.zwy)), 0u <= _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1, 4294967295u, var_1)), ~vec3<u32>(1u, var_1, 47126u)), true), select(!select(!vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(71103u, 18u)]), select(vec4<bool>(false, true, var_0.b.b, global3.x), vec4<bool>(true, global0[_wgslsmith_index_u32(5851u, 18u)], var_0.b.b, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], var_0.b.b, var_0.b.b, var_0.b.a)), !global0[_wgslsmith_index_u32(41094u, 18u)]), select(vec4<bool>(!global0[_wgslsmith_index_u32(23861u, 18u)], true & var_0.b.b, true, all(vec4<bool>(global0[_wgslsmith_index_u32(697u, 18u)], false, false, global0[_wgslsmith_index_u32(var_0.a.a, 18u)]))), select(!vec4<bool>(var_0.b.a, global0[_wgslsmith_index_u32(0u, 18u)], global3.x, global3.x), vec4<bool>(true, global3.x, true, var_0.b.b), all(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 18u)], false, false, var_0.b.a))), global0[_wgslsmith_index_u32(~var_0.a.a, 18u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1, 10638u, max(var_0.a.a, var_0.a.b.x)), 18u)], any(global3.zyw), func_2().b.b)));
    global2 = array<u32, 7>();
    return Struct_5(firstLeadingBit(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.a, 16235i, 39893i, u_input.c.x)), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(22118i, 2147483647i)), u_input.c.x, -1i))), 40975u, Struct_3(var_0.a, ~1i, _wgslsmith_f_op_f32(-1154f - _wgslsmith_f_op_f32(ceil(var_0.b.c.x))) < var_0.b.c.x, var_0.b.c, select(select(select(vec2<bool>(true, var_0.b.b), global3.zw, global3.zy), select(vec2<bool>(var_0.b.b, global3.x), vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true), global3.x), vec2<bool>(false, true)), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)]), global3.zx, vec2<bool>(true, false)), global3.wy, vec2<bool>(true, var_0.b.b)), true)));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(0u, 13788u), _wgslsmith_dot_vec2_u32(max(var_0.c.a.b, arg_1.c.a.b), ~vec2<u32>(4294967295u, var_0.c.a.b.x)), ~max(arg_2.a.b.x | 25929u, 4294967295u), abs(var_0.c.a.b.x)));
    let var_2 = !(!(!(!select(var_0.c.e, var_0.c.e, var_0.c.e.x))));
    let var_3 = 0u;
    return Struct_1(4294967295u, arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -1118f;
    var var_2 = ~(~firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(14637u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(413u, 7u)], 7u)], 8626u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37183u, 7u)], 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(13893u, 7u)], 4294967295u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44962u, 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], global2[_wgslsmith_index_u32(0u, 7u)]))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1739f, 2148f, -1098f) + vec3<f32>(1000f, -725f, -1000f)), vec3<f32>(-1090f, _wgslsmith_f_op_f32(f32(-1f) * -255f), -2096f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, 349f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, -524f, -668f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2184f, -515f) + vec3<f32>(-679f, -1904f, -419f)))))));
    var var_4 = Struct_1(global2[_wgslsmith_index_u32(abs(~var_2.x), 7u)], firstLeadingBit(select(var_2.wy, var_2.zy, !vec2<bool>(var_0, global0[_wgslsmith_index_u32(0u, 18u)]))));
    let var_5 = func_4(var_3.x, func_1(), Struct_4(func_1().c.a, Struct_2(true, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3.x, var_3.x, 1610f) * vec4<f32>(var_3.x, -134f, var_3.x, -2960f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -1126f, -184f, -309f), vec4<f32>(-342f, -725f, var_3.x, var_3.x)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(471f + var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -260f), var_3.x)))));
    var_4 = Struct_1(_wgslsmith_clamp_u32(82670u, global2[_wgslsmith_index_u32(0u, 7u)] & func_1().c.a.a, _wgslsmith_clamp_u32(~67541u, ~4294967295u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_4.b.x, 7u)], 7u)], 1355u)) << (38356u % 32u)), vec2<u32>(var_4.b.x, min(_wgslsmith_dot_vec2_u32(min(vec2<u32>(31371u, 0u), var_2.yy), vec2<u32>(59277u, 122482u)), _wgslsmith_add_u32(var_2.x, min(1u, 84233u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 1i);
}

