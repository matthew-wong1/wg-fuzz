struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: array<vec3<u32>, 5>;

var<private> global3: Struct_1;

var<private> global4: i32 = 11066i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = -25777i;
    global3 = Struct_1(-1192f);
    let var_1 = _wgslsmith_mod_i32(max(var_0, 0i), -2147483647i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-520f, _wgslsmith_div_f32(-1116f, global3.a)), _wgslsmith_f_op_f32(-664f - global3.a)))));
    global3 = Struct_1(-930f);
    return reverseBits(max(select(~vec3<u32>(11179u, u_input.c.x, 61030u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, 58242u), vec3<u32>(u_input.d.x, arg_0, u_input.d.x)), true) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 0u), ~global2[_wgslsmith_index_u32(arg_0, 5u)]), firstLeadingBit(abs(vec3<u32>(arg_0, arg_0, arg_0)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_3(1684u);
    var var_1 = 977f;
    return Struct_2(arg_2.a, Struct_1(413f), true, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 5223u), ~var_0.yz, var_0.xz), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(2526f, arg_2.e.a)), -850f))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec3<i32> {
    global4 = ~(-u_input.e.x >> (reverseBits(~u_input.d.x) % 32u));
    var var_0 = any(vec2<bool>(true, true));
    global2 = array<vec3<u32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-475f)))))))));
    let var_2 = Struct_3(u_input.e.xy, !(!vec4<bool>(true, all(vec2<bool>(arg_1, arg_0.c)), any(vec3<bool>(arg_1, arg_1, false)), -1649f != arg_0.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a * arg_0.e.a), _wgslsmith_div_f32(-1000f, global3.a), false)), -203f, -1552f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(393f, global3.a, 750f, arg_0.e.a))), vec4<f32>(-252f, 1198f, -1000f, global3.a)))))), 0i);
    return u_input.e >> (_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(4294967295u, 1u, u_input.d.x))), global2[_wgslsmith_index_u32(arg_0.d.x, 5u)] | vec3<u32>(abs(1u), ~4828u, 4294967295u)) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = select(func_4(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a, 140f), vec2<f32>(552f, 335f), arg_2.c)), !arg_2.c, arg_2, vec2<bool>(true, arg_2.c)), !any(vec3<bool>(arg_2.c, false, arg_2.c))) | _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -16333i, 5697i), vec3<i32>(u_input.e.x, 0i, u_input.e.x)), _wgslsmith_mod_vec3_i32(u_input.e, -u_input.e)), vec3<i32>(countOneBits(-abs(-2147483647i)), reverseBits(u_input.e.x), u_input.e.x), !select(!(!vec3<bool>(arg_2.c, arg_2.c, arg_2.c)), !select(vec3<bool>(arg_2.c, true, arg_2.c), vec3<bool>(arg_2.c, arg_2.c, arg_2.c), vec3<bool>(false, arg_2.c, true)), select(vec3<bool>(arg_2.c, true, arg_2.c), vec3<bool>(true, true, true), select(vec3<bool>(arg_2.c, false, false), vec3<bool>(false, false, arg_2.c), arg_2.c))));
    var var_1 = u_input.b.zz;
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1800f));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(arg_1.x * -439f));
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(-898f > _wgslsmith_f_op_f32(func_1(1000f, vec4<f32>(global3.a, 1693f, global3.a, global3.a), Struct_2(vec4<f32>(global3.a, global3.a, global3.a, global3.a), Struct_1(1158f), false, u_input.d, Struct_1(global3.a)))), true | func_2(vec2<f32>(1400f, 1633f), false, Struct_2(vec4<f32>(global3.a, global3.a, 1320f, -478f), Struct_1(-192f), true, u_input.d, Struct_1(191f)), vec2<bool>(true, true)).c));
    let var_1 = 92513u;
    global2 = array<vec3<u32>, 5>();
    global1 = array<vec3<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, global3.a, global3.a)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-767f)))), _wgslsmith_f_op_f32(f32(-1f) * -1879f), 1f)), _wgslsmith_dot_vec3_i32(vec3<i32>(min(1i, max(u_input.e.x, u_input.e.x)), 1i, -1i), func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, global3.a) - vec2<f32>(global3.a, global3.a)), var_0, Struct_2(vec4<f32>(-1390f, global3.a, -422f, 324f), Struct_1(-169f), false, vec2<u32>(1u, var_1), Struct_1(global3.a)), vec2<bool>(true, true)), var_0)), global3.a, u_input.c.zz, global3.a);
}

