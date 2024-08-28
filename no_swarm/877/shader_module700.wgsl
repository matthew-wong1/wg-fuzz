struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(18495u, 1u, 0u);

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: array<Struct_4, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    global1 = global2[_wgslsmith_index_u32(42011u, 10u)];
    global3 = array<Struct_4, 8>();
    let var_0 = Struct_2(u_input.c << (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 314f, -255f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_2.d, 708f) + global1.xwy)))), Struct_1(u_input.d.x, max(arg_1.c, -(~0i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.c + global1.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2215f, arg_1.a.c.c.x)) - _wgslsmith_f_op_vec2_f32(global1.zz - vec2<f32>(arg_1.b.e.x, 260f))), !select(arg_1.d, true, arg_3.x))), _wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), vec3<i32>(~(-26174i | u_input.d.x), 905i, arg_2.b) & arg_1.a.d, _wgslsmith_f_op_vec3_f32(floor(arg_1.b.e)));
    global2 = array<vec4<f32>, 10>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a.b.zx)) - var_0.e.xy)));
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    var var_0 = 8734i;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1640f, _wgslsmith_f_op_f32(floor(536f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2400f)), _wgslsmith_f_op_f32(ceil(-1367f)), global1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(global0.x, 10u)], global2[_wgslsmith_index_u32(79710u, 10u)])) * global2[_wgslsmith_index_u32(~66747u >> (arg_0.x % 32u), 10u)])));
    global2 = array<vec4<f32>, 10>();
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    var var_0 = ~vec4<i32>(arg_0.b.d.x, -_wgslsmith_add_i32(u_input.d.x, 1i), func_4(abs(vec2<u32>(global0.x, u_input.e.x)), arg_0, func_3(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), arg_0, Struct_1(-2147483647i, 1i, vec2<f32>(-203f, global1.x), arg_1), vec3<bool>(arg_0.d, arg_0.d, false)), u_input.c), arg_0.a.c.b);
    global3 = array<Struct_4, 8>();
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(711f)) + _wgslsmith_f_op_f32(-235f - arg_1)))), _wgslsmith_f_op_f32(step(731f, _wgslsmith_f_op_f32(trunc(-109f))))));
    let var_2 = arg_0.a;
    let var_3 = abs(~arg_0.c ^ ~(-2147483647i));
    return vec3<bool>(!arg_0.d, arg_0.d, select(arg_0.d, true & any(vec2<bool>(true, true)), true));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    global2 = array<vec4<f32>, 10>();
    var var_0 = arg_1;
    var_0 = !arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zx) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * 1017f), _wgslsmith_div_f32(-929f, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1311f - 1371f), global1.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.yz), global1.xw))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)), 2406f)));
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(0u, global0.x, 28790u, u_input.b) & vec4<u32>(global0.x, global0.x, 85694u, u_input.c.x))), ~firstLeadingBit(abs(u_input.c))), 8u)];
    return Struct_2(countOneBits(reverseBits(~u_input.c) | select(vec4<u32>(1u, u_input.e.x, 4294967295u, global0.x), vec4<u32>(global0.x, global0.x, 1u, 58386u), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-2291f)), _wgslsmith_f_op_f32(f32(-1f) * -115f), var_2.e.b.c.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.wzy)) + _wgslsmith_f_op_vec3_f32(ceil(var_2.e.b.b))))), var_2.e.b.c, var_2.e.b.d, global1.ywz);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = func_5(903f, vec2<bool>(all(!func_2(Struct_3(Struct_2(u_input.c, global1.xzy, Struct_1(-4716i, u_input.d.x, global1.wz, 448f), vec3<i32>(u_input.a.x, u_input.d.x, u_input.a.x), vec3<f32>(-1132f, 604f, arg_2)), Struct_2(vec4<u32>(0u, global0.x, 61720u, 3319u), global1.zwz, Struct_1(u_input.d.x, u_input.a.x, vec2<f32>(-835f, arg_3), global1.x), u_input.a, global1.xyx), u_input.d.x, arg_1.x), global1.x)), arg_0.x));
    let var_1 = Struct_4(all(vec3<bool>(false, !arg_1.x, true)), vec3<u32>(1u, 26871u, var_0.a.x << (~(~var_0.a.x) % 32u)), min(countOneBits(firstTrailingBit(vec4<u32>(0u, global0.x, 12063u, var_0.a.x))), u_input.c), vec2<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b, var_0.d.x, 1i, var_0.c.b), vec4<i32>(7211i, 0i, 1i, -2147483647i))), u_input.a.x), Struct_3(func_5(_wgslsmith_f_op_f32(sign(arg_2)), vec2<bool>(true, true)), func_5(-730f, func_2(Struct_3(Struct_2(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 1u), global1.ywz, Struct_1(u_input.d.x, 5218i, var_0.c.c, 1292f), vec3<i32>(32605i, 1i, var_0.d.x), vec3<f32>(1181f, var_0.e.x, -322f)), Struct_2(u_input.c, vec3<f32>(1150f, var_0.c.d, arg_2), Struct_1(var_0.c.b, 0i, global1.xx, -810f), vec3<i32>(6304i, var_0.c.a, var_0.d.x), var_0.e), -1i, false), -500f).zy), u_input.a.x, true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e.x)) + 1000f))));
    var var_3 = reverseBits(var_0.c.b);
    var var_4 = arg_3;
    return var_1.e.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = vec3<u32>(~4294967295u, func_1(select(var_0, !var_0, false), !var_0, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))) & u_input.b, firstLeadingBit(_wgslsmith_sub_u32(~4294967295u, u_input.e.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-258f, _wgslsmith_div_f32(-1020f, global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1564f)), -1000f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(max(1u, 14689u) >> (_wgslsmith_add_u32(global0.x, 0u) % 32u), 10u)]) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1000f)), -1547f))));
    var var_2 = global3[_wgslsmith_index_u32(~35070u, 8u)];
    let var_3 = Struct_3(var_2.e.b, func_5(_wgslsmith_f_op_f32(min(var_2.e.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.b.e.x - 1734f) * var_2.e.a.b.x))), !select(vec2<bool>(false, true), func_2(var_2.e, var_1.x).zz, vec2<bool>(true, true))), _wgslsmith_add_i32(26449i, _wgslsmith_mult_i32(~u_input.d.x, ~_wgslsmith_sub_i32(var_2.d.x, var_2.e.b.c.a))), true);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(func_5(-1659f, !var_0).c.c.x, -614f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.b.x))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2008f * global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1763f, 787f))), var_4, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-603f + -1000f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(global0.x, 10u)]), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(global0.x, 10u)], false)))))), _wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 10u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.c, var_3.a.a), ~var_3.a.a), -u_input.a);
}

