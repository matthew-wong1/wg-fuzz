struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<f32>(-1783f, -1561f, 774f)), vec2<bool>(true, false), vec2<i32>(-16983i, 1i), Struct_1(4294967295u, vec3<f32>(-1342f, 764f, 167f)));

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: f32 = 1804f;

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec2<f32> {
    global4 = array<Struct_2, 17>();
    global3 = -380f;
    let var_0 = Struct_3(Struct_2(Struct_1(arg_3.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1579f, global0.d.b.x, 855f)))), vec2<bool>(true, false), ~arg_3.a.c, arg_1.a.d), 7456u, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~4294967295u, global1.a.x ^ 18527u), ~(~vec3<u32>(arg_0.c.a.d.a, 4441u, global0.d.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_3.c.b)))));
    let var_1 = arg_0.d.c;
    var var_2 = arg_2;
    return vec2<f32>(_wgslsmith_div_f32(462f, -119f), _wgslsmith_f_op_f32(var_1.x - arg_0.a.a.b.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(vec2<u32>(18110u, _wgslsmith_div_u32(~u_input.a.x, ~100539u)), !(!select(global1.b, global1.b, select(true, false, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1380f, global1.c.x) + _wgslsmith_f_op_vec2_f32(func_2(Struct_5(global4[_wgslsmith_index_u32(1u, 17u)], global0.b, Struct_3(Struct_2(global0.a, global0.b, vec2<i32>(-7489i, -1i), global0.a), 0u, global0.d), Struct_4(global1.a, vec3<bool>(global0.b.x, false, global0.b.x), global1.c)), Struct_3(global4[_wgslsmith_index_u32(19008u, 17u)], global1.a.x, Struct_1(global1.a.x, vec3<f32>(global1.c.x, global1.c.x, -1000f))), Struct_4(u_input.a, global1.b, global0.a.b.xz), Struct_3(global4[_wgslsmith_index_u32(0u, 17u)], u_input.a.x, global0.d)))))))));
    var var_1 = Struct_4(_wgslsmith_div_vec2_u32(var_0.a, vec2<u32>(_wgslsmith_sub_u32(37386u, 0u), ~_wgslsmith_mod_u32(global1.a.x, 64012u))), vec3<bool>(all(vec2<bool>(var_0.b.x, true)), 315f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(719f * -724f))), ~_wgslsmith_sub_u32(4294967295u, global0.a.a) <= ~_wgslsmith_mod_u32(1u, 21626u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x + -1449f), global0.a.b.x))), var_0.c)));
    var var_2 = _wgslsmith_mod_i32(arg_0.x, global0.c.x);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -284f);
    var var_4 = global4[_wgslsmith_index_u32(abs(var_1.a.x), 17u)];
    return var_4.a;
}

fn func_3() -> bool {
    var var_0 = func_1(vec3<i32>(i32(-1i) * -47982i, 72106i, global0.c.x));
    let var_1 = _wgslsmith_add_u32(52069u, ~(~(~u_input.a.x)));
    var var_2 = vec2<bool>(all(global1.b.zz), all(global1.b.zy));
    let var_3 = -1323f;
    var var_4 = !select(select(select(!vec3<bool>(global1.b.x, true, true), global1.b, !global1.b), select(vec3<bool>(false, global1.b.x, false), vec3<bool>(global0.b.x, false, true), true), !global1.b), !global1.b, vec3<bool>(all(vec4<bool>(true, false, var_2.x, global1.b.x)), !global0.b.x && global1.b.x, func_1(vec3<i32>(0i, -2147483647i, -1i)).a <= ~0u));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.a, 6314u) >> (u_input.a % vec2<u32>(32u)), ~u_input.a), u_input.a) >> (global1.a % vec2<u32>(32u)), global1.a);
    let var_1 = max(~_wgslsmith_mod_vec3_i32(vec3<i32>(max(global0.c.x, global0.c.x), global0.c.x, 44140i << (global0.a.a % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.x, -1i, -29938i), -vec3<i32>(global0.c.x, 0i, 1i))), vec3<i32>(0i, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 16333i), global0.c), global0.c.x & 0i), _wgslsmith_add_i32((i32(-1i) * -52787i) & firstLeadingBit(global0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-10646i, global0.c.x, global0.c.x), vec3<i32>(global0.c.x, global0.c.x, -1i)))));
    let var_2 = func_1(_wgslsmith_add_vec3_i32(var_1, var_1) | vec3<i32>(-34668i, countOneBits(1i), ~min(var_1.x, 1i)));
    let var_3 = Struct_4(global1.a, !vec3<bool>(global1.b.x, global1.b.x, all(global1.b.xz) && true), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f * -742f)), global1.c.x, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.d.b.x, global1.c.x))))));
    let var_4 = Struct_4(var_3.a, select(vec3<bool>(true, _wgslsmith_add_i32(var_1.x, -28902i) > 1i, true), select(!(!var_3.b), !vec3<bool>(true, var_3.b.x, true), vec3<bool>(true, !global0.b.x, var_2.b.x >= var_2.b.x)), global1.b), _wgslsmith_f_op_vec2_f32(-global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, global0.c.x), var_1.x), 0i, func_3()), _wgslsmith_f_op_f32(f32(-1f) * -550f), -1i, global1.a);
}

