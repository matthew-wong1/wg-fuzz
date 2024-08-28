struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<u32>;

var<private> global2: i32;

var<private> global3: array<u32, 32> = array<u32, 32>(45624u, 77459u, 4294967295u, 4294967295u, 28073u, 156953u, 37290u, 1u, 1u, 4294967295u, 4294967295u, 1u, 98772u, 16040u, 4294967295u, 1u, 16140u, 0u, 0u, 1u, 43881u, 2876u, 1u, 8704u, 1u, 57235u, 4294967295u, 0u, 46391u, 1u, 99597u, 1u);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global2 = -16458i;
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, _wgslsmith_f_op_f32(-arg_0.x))), global0.a.e, vec4<i32>(u_input.d, _wgslsmith_add_i32(u_input.d, -(~global0.a.c.x)), 0i, u_input.d), select(global0.a.d, global0.a.d, true), global0.a.e);
    global4 = var_0.b;
    return -10057i;
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_3(global0.a);
    let var_1 = global0.a.d;
    var var_2 = Struct_4(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)));
    var var_3 = global0.a.c;
    return _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(var_0.a.c, _wgslsmith_mult_vec4_i32(select(var_0.a.c, var_0.a.c, var_0.a.d), select(vec4<i32>(u_input.d, u_input.d, var_2.a.c.x, u_input.c), vec4<i32>(var_2.a.c.x, u_input.c, 4721i, var_3.x), global0.a.d))), _wgslsmith_add_vec4_i32(select(var_2.a.c, vec4<i32>(~var_0.a.c.x, firstLeadingBit(0i), -1i, var_0.a.c.x), (-1836i > global0.a.c.x) && false), var_0.a.c));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global1 = firstLeadingBit(u_input.a);
    let var_0 = ~(-(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, global0.a.c.x, u_input.d), global0.a.c.wyw), func_2(vec2<f32>(global0.a.e.a.x, global4.a.x)), global0.a.c.x ^ 13651i) >> (abs(_wgslsmith_div_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u))));
    let var_1 = vec3<i32>(var_0.x | var_0.x, -_wgslsmith_dot_vec4_i32((vec4<i32>(-2147483647i, var_0.x, var_0.x, global0.a.c.x) & global0.a.c) ^ func_3(4294967295u), global0.a.c), -62281i);
    global1 = vec3<u32>(1668u, reverseBits(u_input.e), global1.x);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global4.a, vec2<f32>(1000f, global0.b.x))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, global0.b.x)))))) - global0.b.wz));
    return global0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec3<u32> {
    var var_0 = !global0.a.d.x;
    global1 = _wgslsmith_mult_vec3_u32(abs(u_input.a), vec3<u32>(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global1.x, 32u)], 32u)] << (~u_input.a.x % 32u), u_input.a.x, global1.x));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_4(Struct_3(func_1(_wgslsmith_f_op_vec3_f32(select(global0.b.ywy, global0.b.xwy, false)))), global0.a.e, ~2147483647i, global0.a.d.x);
    var var_0 = max(vec4<u32>(min(840u, 44667u), 51527u, _wgslsmith_add_u32(global1.x, _wgslsmith_mult_u32(firstLeadingBit(global3[_wgslsmith_index_u32(38118u, 32u)]), abs(4775u))), 58519u), _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 32u)], 1u, 1u) ^ vec4<u32>(0u, 20225u, 1u, 4294967295u), reverseBits(~vec4<u32>(4294967295u, 18481u, global3[_wgslsmith_index_u32(0u, 32u)], 25944u))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(31960u, 1u, 56320u, global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], 0u, global1.x, global1.x)), vec4<u32>(34786u, u_input.e, u_input.a.x, 4294967295u) | vec4<u32>(0u, global1.x, u_input.b, 63607u))), ~(~(vec4<u32>(u_input.b, 74u, 0u, global1.x) & vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 40712u)))));
    var var_1 = select(max(abs(vec3<u32>(reverseBits(global1.x), 1u, abs(8147u))), abs(vec3<u32>(func_4(Struct_3(global0.a), Struct_1(global4.a), 13410i, global0.a.d.x).x, _wgslsmith_dot_vec2_u32(var_0.yw, global1.xx), ~global1.x))), reverseBits(reverseBits(~countOneBits(vec3<u32>(4294967295u, u_input.e, 1u)))), global0.a.d.x);
    let var_2 = Struct_2(global4.a, Struct_1(vec2<f32>(557f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(754f - global0.a.a.x), _wgslsmith_f_op_f32(round(global4.a.x)))))), global0.a.c, select(global0.a.d, global0.a.d, global0.a.c.x <= -16414i), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.b.xzw)))).e);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) * _wgslsmith_div_f32(global0.a.e.a.x, global0.b.x)), -453f, global4.a.x, -1401f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.a.b.a.x, global0.b.x, var_2.e.a.x)))), global0.a.d)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, -170f)))), var_2.b.a.x, global4.a.x, -1718f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.yy);
}

