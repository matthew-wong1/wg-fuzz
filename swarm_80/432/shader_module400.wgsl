struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<f32>(1988f, 124f, -1614f)), vec4<f32>(758f, 376f, 963f, -169f), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<f32>(1267f, -852f, -640f)), vec4<f32>(684f, -221f, -776f, 1831f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(1199f, -1000f, -264f)), vec4<f32>(-1231f, -797f, 150f, 1124f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(-896f, 1161f, -986f)), vec4<f32>(-380f, 867f, -962f, 833f), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<f32>(1000f, -277f, -721f)), vec4<f32>(1209f, -481f, 775f, -1348f), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<f32>(-965f, 502f, -351f)), vec4<f32>(-415f, -1062f, 451f, 1028f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(1088f, 2196f, 1533f)), vec4<f32>(-586f, -1020f, -2211f, -750f), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<f32>(2037f, 233f, 1117f)), vec4<f32>(431f, 148f, -720f, 521f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(-1000f, -1750f, -215f)), vec4<f32>(-291f, 752f, -606f, 511f), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<f32>(-881f, -1038f, 680f)), vec4<f32>(-463f, 1466f, -422f, 1555f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(1516f, 235f, -1000f)), vec4<f32>(-1106f, -2146f, -1000f, 211f), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<f32>(-1000f, -329f, -483f)), vec4<f32>(-496f, -691f, -305f, -327f), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<f32>(-2595f, 279f, -1238f)), vec4<f32>(167f, -2006f, 340f, -519f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(306f, 1329f, 324f)), vec4<f32>(-763f, 658f, 2774f, 624f), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<f32>(1000f, -992f, 993f)), vec4<f32>(258f, 1253f, 407f, 954f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(-1058f, 1001f, 606f)), vec4<f32>(-248f, 475f, 300f, -1836f), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<f32>(-739f, -1029f, 1291f)), vec4<f32>(614f, 1384f, -1145f, 1126f), vec2<bool>(false, false)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, 166f, arg_0.a.x)))), vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(floor(arg_0.a.x))), arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    var_0 = true;
    var var_2 = all(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), false), vec4<bool>(false, true, 4125i <= u_input.e.x, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, false, any(vec4<bool>(true, true, true, true)))));
    let var_3 = ~firstTrailingBit(firstTrailingBit(vec3<i32>(-5615i, u_input.e.x, u_input.e.x) << (vec3<u32>(1u, 37220u, u_input.c.x) % vec3<u32>(32u)))) & ~vec3<i32>(34799i, ~_wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.e.wx), abs(u_input.e.x >> (14858u % 32u)));
    return ~(~54783u);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = array<Struct_2, 17>();
    var var_0 = -131f;
    let var_1 = vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.a.a.x), arg_1);
    let var_2 = Struct_3(Struct_2(Struct_1(arg_0.b.ywx), _wgslsmith_f_op_vec4_f32(-arg_0.b), vec2<bool>(arg_0.c.x, !(arg_0.c.x || arg_0.c.x))));
    var var_3 = vec2<u32>(abs(26149u) | func_3(var_2.a.a), 11321u);
    return var_2.a.a;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    return func_2(global1[_wgslsmith_index_u32(37357u, 17u)], arg_0.a.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = -(_wgslsmith_div_i32(2147483647i, -1i) & arg_1) <= reverseBits(1i);
    var var_1 = (_wgslsmith_add_vec2_i32(vec2<i32>(min(1i, 58546i), ~17915i), u_input.e.xz) >> (u_input.a.zx % vec2<u32>(32u))) & u_input.e.wy;
    global0 = array<u32, 6>();
    var var_2 = !(!arg_0.a.c);
    var_2 = !(!arg_0.a.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.b.wzx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-232f, 320f, arg_0.a.b.x), arg_0.a.b.xyw)) + _wgslsmith_div_vec3_f32(vec3<f32>(-810f, 1585f, -738f), vec3<f32>(-2428f, arg_0.a.a.a.x, arg_0.a.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 6>();
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_dot_vec3_u32((~countOneBits(u_input.a) ^ _wgslsmith_sub_vec3_u32(~u_input.c.zwx, firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], 1u)))) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(1u, 17936u, 0u)), ~vec3<u32>(66841u, u_input.b, 1u) | reverseBits(vec3<u32>(u_input.b, 4294967295u, u_input.b))), (u_input.c.yyz >> (~vec3<u32>(66392u, u_input.b, 1u) % vec3<u32>(32u))) ^ ~(~vec3<u32>(u_input.c.x, u_input.d, 1u)));
    var_0 = var_1;
    let var_2 = _wgslsmith_add_vec2_i32(u_input.e.yx, ~vec2<i32>(u_input.e.x, u_input.e.x));
    global1 = array<Struct_2, 17>();
    var var_3 = u_input.c;
    let var_4 = Struct_2(func_4(Struct_3(Struct_2(func_1(Struct_2(Struct_1(vec3<f32>(1287f, 1084f, -1000f)), vec4<f32>(-395f, 376f, 1245f, -173f), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(773f, -243f, 1893f, -717f) * vec4<f32>(-106f, -907f, -1804f, 213f)), vec2<bool>(true, false))), 0i, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, 683f, -2540f, -610f)), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), -547f > func_2(Struct_2(Struct_1(vec3<f32>(1411f, -1927f, -2403f)), vec4<f32>(-375f, -1728f, -1480f, -721f), vec2<bool>(true, true)), 1602f).a.x), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), true & all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.b + var_4.b), _wgslsmith_f_op_vec4_f32(-var_4.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1205f, -1059f, var_4.a.a.x, var_4.a.a.x), vec4<f32>(var_4.a.a.x, 1323f, 725f, 1353f)) + _wgslsmith_f_op_vec4_f32(select(var_4.b, var_4.b, vec4<bool>(var_4.c.x, false, var_4.c.x, false))))))), 818i);
}

