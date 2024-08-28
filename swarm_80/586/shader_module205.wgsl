struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

var<private> global2: array<vec4<bool>, 22>;

var<private> global3: array<vec2<u32>, 23>;

var<private> global4: Struct_5 = Struct_5(-585f, Struct_2(6301u, vec4<i32>(0i, -3119i, 15706i, -35646i), true, Struct_1(vec2<f32>(1822f, 331f), true, true, 304f, vec4<u32>(0u, 4294967295u, 36854u, 1u))), Struct_1(vec2<f32>(154f, -274f), true, false, -1467f, vec4<u32>(1u, 47053u, 1u, 21496u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -3255i), global4.b.b.yxw) >> (select(arg_2.a.e.x, 12954u, false) % 32u), 1i);
    let var_1 = arg_1;
    var var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, abs(~0u), 1u, reverseBits(1u)), ~vec4<u32>(global0.a, 43879u & global4.c.e.x, ~1u, 68492u));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a.a - _wgslsmith_f_op_vec2_f32(max(global4.b.d.a, _wgslsmith_f_op_vec2_f32(abs(var_1.b.zx))))), var_1.a.c, all(select(select(global2[_wgslsmith_index_u32(global0.d.e.x, 22u)], global2[_wgslsmith_index_u32(arg_2.a.e.x, 22u)], arg_2.a.c), !global2[_wgslsmith_index_u32(var_2.x, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)])), global4.a, vec4<u32>(var_2.x, ~_wgslsmith_dot_vec4_u32(global0.d.e, vec4<u32>(46510u, 1u, arg_2.a.e.x, u_input.b)), 1u, reverseBits(var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.x, 1116f, _wgslsmith_f_op_f32(f32(-1f) * -2288f)) - arg_1.b));
    global3 = array<vec2<u32>, 23>();
    return vec4<f32>(-1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1858f - var_1.a.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.d.d)), _wgslsmith_f_op_f32(-global0.d.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) + _wgslsmith_f_op_f32(-var_1.a.d))))));
}

fn func_2() -> Struct_5 {
    global2 = array<vec4<bool>, 22>();
    let var_0 = vec4<bool>(global0.c, !(all(vec4<bool>(true, true, global4.c.b, false)) && all(select(vec4<bool>(global0.c, false, global4.c.b, true), global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)]))), global4.c.c, !global0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.b.yxw, Struct_3(global4.c, vec3<f32>(648f, _wgslsmith_f_op_f32(floor(global4.b.d.a.x)), -578f)), Struct_4(global0.d, _wgslsmith_f_op_f32(-236f - _wgslsmith_f_op_f32(-global4.b.d.a.x)), -125f))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.zz, vec2<f32>(var_1.x, -310f)))))), false, 0u != global4.c.e.x, var_1.x, _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global4.b.a, 0u, u_input.b, global0.a)), ~global4.b.d.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(var_1.ywx)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zz)), vec2<bool>(!global4.c.c, var_0.x)))), global0.d.c, true, global4.b.d.a.x, _wgslsmith_div_vec4_u32(~vec4<u32>(global4.b.d.e.x, 1u, 0u, abs(1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(13075u, global0.d.e.x, global4.b.a, var_2.a.e.x), vec4<u32>(57330u, 19594u, 0u, 4294967295u)), global4.b.d.e, firstTrailingBit(global0.d.e)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(global0.d.e.x, global4.c.e.x, var_2.a.e.x, 1u), vec4<u32>(81402u, global4.c.e.x, 4294967295u, global0.d.e.x)), global4.c.e))));
    return Struct_5(-686f, global4.b, Struct_1(var_1.zw, !any(select(var_0.yzw, vec3<bool>(var_3.b, global4.c.b, true), vec3<bool>(global0.c, var_0.x, true))), true, 535f, _wgslsmith_mod_vec4_u32(vec4<u32>(43212u, var_2.a.e.x, ~1u, firstLeadingBit(1u)), firstTrailingBit(vec4<u32>(global4.c.e.x, global4.b.a, 1u, var_3.e.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: f32) -> u32 {
    let var_0 = func_2();
    global1 = false;
    let var_1 = firstLeadingBit(var_0.c.e.xzx ^ (var_0.b.d.e.zww ^ (~vec3<u32>(global0.a, 4294967295u, 4294967295u) >> (var_0.c.e.yyw % vec3<u32>(32u)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(arg_0.x * global4.b.d.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2190f * _wgslsmith_f_op_f32(-arg_0.x)))) < _wgslsmith_f_op_f32(-339f * arg_3);
    global4 = var_0;
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, 4294967295u, ~func_1(_wgslsmith_f_op_vec2_f32(-global4.b.d.a), global3[_wgslsmith_index_u32(4294967295u, 23u)], Struct_4(Struct_1(vec2<f32>(global4.a, global4.c.d), true, false, global4.c.d, global0.d.e), 949f, 133f), _wgslsmith_f_op_f32(global4.b.d.a.x * -415f))) ^ vec3<u32>(~(~abs(u_input.b)), 4294967295u, func_2().c.e.x & u_input.b);
    global1 = global0.d.b;
    global0 = global4.b;
    let var_1 = vec4<i32>(u_input.c, -(~_wgslsmith_add_i32(u_input.a.x, ~2147483647i)), firstTrailingBit(~_wgslsmith_clamp_i32(-global0.b.x, 0i, u_input.c)), ~(-116i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.d.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.e.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(71558u, 1u, var_0.x, u_input.b), global0.d.e))), vec2<u32>(u_input.b, ~(~7995u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d) * _wgslsmith_f_op_f32(step(-1348f, _wgslsmith_f_op_f32(min(global4.c.d, global0.d.a.x))))), func_2().b.b.yx ^ ~select(vec2<i32>(9508i, u_input.c) ^ u_input.a.xx, ~vec2<i32>(-19137i, 22969i), global0.b.x != global0.b.x), vec4<f32>(global0.d.d, 739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.d)), -781f));
}

