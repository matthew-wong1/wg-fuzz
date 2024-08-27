struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), false, 2147483647i);

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-839f, -998f), vec2<f32>(1091f, 569f));

var<private> global4: array<Struct_3, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = global2.a;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zz & u_input.a.zz, ~_wgslsmith_mult_vec2_u32(u_input.a.ww, u_input.a.xw)), u_input.a.zy) >> ((~(u_input.a.x & u_input.a.x) & ~4294967295u) % 32u), 10u)];
    global1 = !select(select(vec2<bool>(global1.x, true), var_1.b.zx, select(!vec2<bool>(global1.x, false), select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), var_1.b.xx), var_1.b.xx)), select(select(var_1.b.zy, var_1.b.xz, var_1.b.zx), !var_1.b.xz, vec2<bool>(u_input.a.x == 60134u, true)), !global2.b);
    let var_2 = !any(select(vec4<bool>(12655u >= var_1.a.x, global1.x, any(var_1.b.zz), !global2.b), select(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global2.b, false, false, global1.x), vec4<bool>(global1.x, true, true, global2.b)), !vec4<bool>(false, false, global2.b, var_1.b.x), var_1.c.b.x > 426f), select(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, true, global2.b, false), true))));
    global2 = Struct_1(vec4<i32>(-1i) * -(~firstTrailingBit(global2.a)), var_1.b.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(-34879i, 2147483647i)), _wgslsmith_dot_vec2_i32(-global2.a.yz, global2.a.zy)), ~1i, 3007i));
    return false;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = Struct_3(~u_input.a, !vec3<bool>(all(vec4<bool>(arg_1.e.b.x, global1.x, global1.x, false)), arg_1.e.b.x, true), arg_1.d);
    global0 = array<i32, 8>();
    global2 = Struct_1(_wgslsmith_div_vec4_i32(~global2.a, vec4<i32>(19726i, firstTrailingBit(global0[_wgslsmith_index_u32(54796u, 8u)]), _wgslsmith_mult_i32(arg_0, global0[_wgslsmith_index_u32(var_0.a.x, 8u)]), global2.c) & firstLeadingBit(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.e.a.x, 8u)], 2147483647i, 1i, arg_0)))), !func_3(), _wgslsmith_dot_vec2_i32(arg_1.c, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, -38089i, 1i, 2147483647i), global2.a), select(arg_1.c.x, -1i, global1.x)) & arg_1.c));
    global2 = Struct_1(global2.a, all(vec4<bool>(all(vec4<bool>(arg_1.e.b.x, false, arg_1.e.b.x, true)), var_0.b.x, true, false)) && (~_wgslsmith_mult_u32(70721u, 39980u) != (4294967295u | (87805u | u_input.a.x))), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.c, -4213i), global2.c), abs(_wgslsmith_add_i32(arg_0, arg_0))));
    global2 = Struct_1(firstLeadingBit(abs(global2.a)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global2.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)])), arg_1.c | arg_1.c) > global2.a.x, _wgslsmith_mult_i32(global2.a.x, 32717i));
    return 14080i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<f32>(-966f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-1471f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.x - 949f), -505f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.x))), arg_1.a);
    let var_1 = abs(~(~(min(arg_1.e.a.x, 4294967295u) ^ u_input.a.x)));
    var var_2 = Struct_1(vec4<i32>(-1i, -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(4294967295u, var_1), arg_1.e.a.x), 8u)], -_wgslsmith_clamp_i32(func_2(global2.a.x, Struct_4(var_0.x, vec4<f32>(1203f, arg_1.b.x, -857f, 1683f), vec2<i32>(arg_1.c.x, arg_1.c.x), Struct_2(vec2<f32>(global3.b.x, global3.a.x), vec2<f32>(var_0.x, -612f)), Struct_3(vec4<u32>(arg_1.e.a.x, 41023u, 0u, 15558u), vec3<bool>(false, true, false), arg_1.e.c)), 0u, -469f), ~arg_0.x, firstTrailingBit(11851i)), 44880i), global2.b, min(abs(-global0[_wgslsmith_index_u32(~36923u, 8u)]), func_2(~global0[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_4(170f, var_0, vec2<i32>(global2.c, 21737i), arg_1.d, global4[_wgslsmith_index_u32(var_1, 10u)]), var_1, _wgslsmith_f_op_f32(round(2145f))) ^ arg_1.c.x));
    let var_3 = ~vec3<i32>(arg_1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_1), 8u)], -72387i & (global2.c ^ global2.a.x)) & global2.a.xzz;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global3.b.x, global2.b)) - _wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - 298f), 157f)))));
    return -389f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(u_input.a.x, 45702u);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a.x, 2284f, 187f, 1697f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 1085f, -326f, global3.b.x) - vec4<f32>(global3.b.x, -646f, global3.a.x, global3.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1374f, global3.b.x, 2007f, 714f) - vec4<f32>(global3.a.x, -766f, global3.a.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, -1281f, -1164f, -2003f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(485f + global3.a.x), _wgslsmith_f_op_f32(func_1(global2.a.ywy, Struct_4(global3.a.x, vec4<f32>(global3.b.x, global3.b.x, global3.a.x, 596f), global2.a.xy, Struct_2(vec2<f32>(-364f, global3.b.x), vec2<f32>(620f, global3.a.x)), Struct_3(u_input.a, vec3<bool>(true, false, global2.b), Struct_2(global3.a, global3.a)))))) + 256f), _wgslsmith_f_op_f32(trunc(-1064f)), -1378f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = vec4<bool>(global1.x, global0[_wgslsmith_index_u32(~min(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a.wzy)), 8u)] < global2.a.x, all(select(vec3<bool>(u_input.a.x < var_0.x, -926f < var_1.x, !global2.b), select(select(vec3<bool>(global2.b, false, global2.b), vec3<bool>(true, global1.x, global1.x), global1.x), !vec3<bool>(true, global2.b, true), select(vec3<bool>(false, true, false), vec3<bool>(global2.b, global1.x, global1.x), vec3<bool>(global2.b, false, false))), any(select(vec3<bool>(false, false, global2.b), vec3<bool>(global1.x, true, global2.b), global2.b)))), true);
    var var_3 = u_input.a.zxz;
    let var_4 = Struct_1(-select(global2.a, global2.a, all(select(var_2.zww, vec3<bool>(true, global1.x, var_2.x), global1.x))), any(select(var_2.xx, vec2<bool>(any(vec3<bool>(false, global1.x, true)), all(var_2.yz)), all(!var_2.xz))), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.wzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.xxw) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2342f, 654f, 669f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, var_1.x, -1476f)))) + vec3<f32>(global3.a.x, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b.x))))), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(1192f - _wgslsmith_f_op_f32(595f * _wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_div_f32(var_1.x, -992f), _wgslsmith_f_op_f32(1000f * global3.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1267f, -851f, 1290f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, -293f, 1000f, var_1.x))))))), u_input.a.x);
}

