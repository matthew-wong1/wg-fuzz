struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<Struct_5, 27>;

var<private> global2: array<Struct_2, 16>;

var<private> global3: vec2<i32> = vec2<i32>(21557i, -42929i);

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = !arg_1;
    let var_1 = Struct_1(~2147483647i ^ arg_0.a, arg_1.x, arg_2);
    let var_2 = -34117i;
    global2 = array<Struct_2, 16>();
    let var_3 = ~(~reverseBits(vec3<u32>(abs(4294967295u), 4294967295u, u_input.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -544f)), arg_2.x, false)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 665f, arg_0), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(Struct_1(13163i, global4.x, vec4<f32>(arg_0, arg_0, -1630f, arg_0)), vec2<bool>(false, global4.x), vec4<f32>(-343f, arg_0, arg_0, 308f))), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(796f, arg_0, 1349f), vec3<f32>(861f, -1000f, arg_0))))))));
    global4 = vec2<bool>(global4.x, any(vec4<bool>(u_input.b.x == u_input.b.x, !global4.x, true, all(vec4<bool>(global4.x, global4.x, global4.x, global4.x)))) | all(vec3<bool>(1u >= u_input.b.x, global4.x, any(vec4<bool>(global4.x, global4.x, false, global4.x)))));
    global1 = array<Struct_5, 27>();
    var var_1 = u_input.a;
    let var_2 = Struct_2(u_input.b.x, Struct_1(global3.x, true, vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(767f, var_0.x)), 883f, _wgslsmith_f_op_f32(arg_0 - var_0.x))));
    return global2[_wgslsmith_index_u32(firstLeadingBit(0u), 16u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> vec4<bool> {
    let var_0 = u_input.b.xx;
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(var_0.x, 16u)], vec3<bool>(arg_3 && !(!global4.x), true, arg_3 & (69457u > arg_0.a)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~44615u, 29283u, u_input.b.x >> (var_0.x % 32u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), u_input.b, u_input.b), ~u_input.b, arg_1.d.x)), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_0.b.c);
    var var_3 = vec3<u32>(~39509u, 50952u, ~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.a.a, u_input.b.x), ~u_input.b.x)));
    global1 = array<Struct_5, 27>();
    return select(!arg_1.d, arg_1.d, _wgslsmith_mult_u32(1u, var_1.a.a) <= 12885u);
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = arg_1.d.xw;
    let var_1 = arg_1.a.b;
    let var_2 = Struct_1(countOneBits(-(~(-27473i))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, -536f, 1009f, arg_1.e)))))));
    var var_3 = !(!vec4<bool>(any(vec3<bool>(false, arg_1.a.b, global4.x)), true, true, all(vec2<bool>(false, false))));
    global1 = array<Struct_5, 27>();
    return func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(arg_1.e - var_2.c.x)))), Struct_4(arg_1.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.c.x, -1000f))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-979f, 1000f, 152f)))), vec4<bool>(arg_1.a.b && true, arg_1.b.c.x < _wgslsmith_f_op_f32(-1454f + -631f), (4369i >> (u_input.b.x % 32u)) == -global3.x, any(!arg_1.d)), 1504f), 1i, any(select(var_3.yy, select(select(vec2<bool>(false, true), var_0, vec2<bool>(true, true)), var_0, vec2<bool>(true, false)), vec2<bool>(false, any(arg_1.d.zwx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(all(vec4<bool>(true, true, global4.x, all(vec4<bool>(global4.x, global4.x, global4.x, false)))), !(global3.x <= _wgslsmith_clamp_i32(u_input.a, global3.x, -2147483647i)), global4.x, true), select(!select(!vec4<bool>(false, false, true, global4.x), func_1(true, Struct_4(Struct_1(global3.x, true, vec4<f32>(-453f, -1000f, 924f, -297f)), Struct_1(global3.x, global4.x, vec4<f32>(-1000f, -1006f, -1040f, -1000f)), vec3<f32>(791f, -304f, 526f), vec4<bool>(true, false, global4.x, global4.x), 733f)), vec4<bool>(global4.x, true, global4.x, false)), !vec4<bool>(global4.x & true, global4.x, global4.x & false, func_1(true, Struct_4(Struct_1(38507i, global4.x, vec4<f32>(439f, 434f, -527f, -928f)), Struct_1(-36247i, false, vec4<f32>(-1161f, -191f, 754f, -1198f)), vec3<f32>(767f, 272f, -251f), vec4<bool>(global4.x, false, false, true), -580f)).x), global4.x), true);
    global2 = array<Struct_2, 16>();
    var var_1 = Struct_4(func_2(-412f).b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * -768f)))).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1090f, -716f))), _wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(485f)) - -844f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-609f, -296f, _wgslsmith_f_op_f32(abs(-376f)))))), vec4<bool>(any(func_1(global4.x, Struct_4(Struct_1(-14850i, false, vec4<f32>(1700f, 2919f, -1000f, 658f)), Struct_1(-1i, var_0.x, vec4<f32>(-357f, 769f, 1734f, 991f)), vec3<f32>(-342f, -874f, 1000f), vec4<bool>(global4.x, global4.x, var_0.x, false), -548f))) & var_0.x, !(!(global4.x && true)), !func_4(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], Struct_4(Struct_1(-45312i, false, vec4<f32>(-1850f, 326f, -926f, 366f)), Struct_1(u_input.a, false, vec4<f32>(-1465f, -129f, 1000f, -839f)), vec3<f32>(-555f, 349f, -1821f), vec4<bool>(var_0.x, true, false, false), -1637f), u_input.a, false).x || false, !(global4.x != (2147483647i > u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-983f, -1379f, var_0.x))), _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(805f + 1000f)))))));
    let var_2 = var_1.c.x;
    global2 = array<Struct_2, 16>();
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1062f, var_1.b.c.x, _wgslsmith_div_f32(152f, var_3.b.c.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-684f, 567f, var_1.e) * var_3.b.c.yww) * _wgslsmith_f_op_vec3_f32(exp2(var_1.b.c.zxw)))) - var_1.b.c.ywy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.c.x)), _wgslsmith_f_op_f32(var_3.b.c.x - -591f))), _wgslsmith_dot_vec3_u32(~(~u_input.b >> (vec3<u32>(48280u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(4294967295u, ~1u, u_input.b.x)), abs(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.a, var_3.a.a, global3.x), vec3<i32>(48025i, 1i, var_1.b.a))));
}

