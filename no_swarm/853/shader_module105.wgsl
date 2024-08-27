struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 47346i;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, false, true), vec3<f32>(653f, 448f, -468f)), vec2<u32>(32712u, 1u));

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(14529u, 10338u), vec2<u32>(11218u, 4294967295u), vec2<u32>(52505u, 0u), vec2<u32>(0u, 1u), vec2<u32>(77439u, 19385u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u));

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, true), vec3<f32>(1000f, 1822f, 1061f)), Struct_2(vec2<bool>(true, false), vec4<bool>(true, true, false, false), vec3<f32>(1000f, -1691f, -684f)), Struct_2(vec2<bool>(true, false), vec4<bool>(true, false, false, true), vec3<f32>(-286f, -1009f, -1205f)), Struct_2(vec2<bool>(false, false), vec4<bool>(false, false, true, false), vec3<f32>(209f, 1382f, 372f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, true, false, false), vec3<f32>(-622f, 1284f, -342f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, false, false, false), vec3<f32>(694f, -199f, -554f)), Struct_2(vec2<bool>(false, false), vec4<bool>(false, true, true, false), vec3<f32>(1220f, -573f, -1680f)), Struct_2(vec2<bool>(false, false), vec4<bool>(true, false, false, true), vec3<f32>(954f, 989f, 350f)), Struct_2(vec2<bool>(true, true), vec4<bool>(false, false, false, false), vec3<f32>(-832f, 1547f, -896f)), Struct_2(vec2<bool>(true, false), vec4<bool>(true, false, true, false), vec3<f32>(-191f, 900f, -1507f)), Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec3<f32>(629f, -1129f, 154f)), Struct_2(vec2<bool>(true, true), vec4<bool>(false, false, false, true), vec3<f32>(2158f, -791f, -943f)), Struct_2(vec2<bool>(true, true), vec4<bool>(false, false, false, true), vec3<f32>(-249f, -166f, -342f)), Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, true), vec3<f32>(-1000f, -607f, 828f)), Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec3<f32>(-472f, 1262f, 613f)), Struct_2(vec2<bool>(false, true), vec4<bool>(true, true, false, true), vec3<f32>(-351f, 486f, -363f)), Struct_2(vec2<bool>(true, false), vec4<bool>(false, false, false, false), vec3<f32>(419f, 434f, 143f)), Struct_2(vec2<bool>(false, false), vec4<bool>(false, false, true, false), vec3<f32>(-643f, 492f, -260f)), Struct_2(vec2<bool>(false, false), vec4<bool>(true, false, true, true), vec3<f32>(711f, -1778f, -1221f)), Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, true), vec3<f32>(852f, -462f, -1746f)), Struct_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true), vec3<f32>(729f, -691f, -873f)), Struct_2(vec2<bool>(true, false), vec4<bool>(false, true, true, true), vec3<f32>(-199f, 300f, 924f)));

var<private> global4: i32 = 1i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global1 = Struct_3(Struct_2(vec2<bool>(global1.a.b.x, true), select(global1.a.b, select(global1.a.b, vec4<bool>(global1.a.a.x, true, global1.a.b.x, false), global1.a.b), vec4<bool>(all(global1.a.b.www), global1.a.b.x, all(global1.a.b.xxz), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.c)) - global1.a.c)), vec2<u32>(0u, 21380u));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.a.c.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(f32(-1f) * -1046f)), global1.a.c.x));
    let var_1 = Struct_3(Struct_2(select(select(vec2<bool>(false, global1.a.b.x), select(vec2<bool>(true, global1.a.a.x), global1.a.b.wx, vec2<bool>(global1.a.a.x, global1.a.b.x)), vec2<bool>(true, true)), vec2<bool>(global1.a.a.x, false), global1.a.b.x), global1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global1.a.c.x, -208f))), global1.a.c)) * global1.a.c)), firstLeadingBit(global1.b));
    global4 = u_input.d.x;
    var var_2 = vec2<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(var_1.a.c.x + 1000f)))));
    return -309f;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1042f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.c.x)) - _wgslsmith_f_op_f32(func_3(vec2<i32>(-46424i, u_input.d.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -302f))), -211f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1416f)) * _wgslsmith_f_op_f32(-389f + global1.a.c.x))))));
    return _wgslsmith_f_op_f32(round(var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(275f, global1.a.c.x))))) + global1.a.c.x);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    var var_1 = global3[_wgslsmith_index_u32(global1.b.x << (select(~_wgslsmith_add_u32(4294967295u, ~u_input.b.x), arg_2.b, arg_3 >= reverseBits(~u_input.a)) % 32u), 22u)];
    global0 = -arg_3;
    global2 = array<vec2<u32>, 7>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(u_input.d.yx)), _wgslsmith_f_op_f32(-601f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1022f, global1.a.c.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1521f)))))));
    return Struct_3(global3[_wgslsmith_index_u32(23297u >> (global1.b.x % 32u), 22u)], _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(global1.b.x, 34151u & u_input.b.x) >> (~_wgslsmith_mult_vec2_u32(u_input.b, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -25518i;
    global1 = func_4(global1.a.c.x, _wgslsmith_f_op_f32(func_1(Struct_1(2147483647i, reverseBits(u_input.b.x << (0u % 32u))), false != global1.a.b.x, global1.a.a.x)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 61385i, u_input.d.x, u_input.d.x), vec4<i32>(38138i, var_0, u_input.a, u_input.d.x) ^ vec4<i32>(2147483647i, var_0, 1i, -2147483647i)) >> ((select(u_input.b.x, 6955u, global1.a.a.x) ^ abs(3777u)) % 32u), _wgslsmith_mult_u32(~min(1u, u_input.b.x), u_input.b.x ^ ~15108u)), 0i);
    var var_1 = global1.a.c;
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(~1u, 22u)], global2[_wgslsmith_index_u32(global1.b.x, 7u)]);
    let var_3 = _wgslsmith_mod_u32(0u, firstTrailingBit(16441u) << ((min(abs(4294967295u), countOneBits(var_2.b.x)) >> (0u % 32u)) % 32u));
    let var_4 = Struct_2(vec2<bool>(var_2.b.x >= _wgslsmith_mult_u32(40370u, u_input.b.x), !var_2.a.a.x), !global1.a.b, vec3<f32>(_wgslsmith_f_op_f32(step(830f, var_2.a.c.x)), _wgslsmith_f_op_f32(244f + global1.a.c.x), var_1.x));
    let var_5 = any(!(!vec3<bool>(false, u_input.b.x == var_3, any(var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-720f))), var_2.a.c.x, Struct_1(firstTrailingBit(u_input.d.x), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x)), var_0).a.c.x, _wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a.a.x)), u_input.d.wxz, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-23317i, countOneBits(var_0), var_0), var_0), 2147483647i);
}

