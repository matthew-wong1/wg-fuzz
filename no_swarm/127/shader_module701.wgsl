struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 5>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = !select(global3.a, global3.a, !(0u >= (u_input.b.x >> (1u % 32u))));
    var_0 = !(!(!select(vec4<bool>(var_0.x, false, global3.a.x, false), vec4<bool>(false, false, global1.a.b.x, true), vec4<bool>(false, true, false, false))));
    var var_1 = 58929u;
    global1 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, 19541u << ((global3.c.c & ~4294967295u) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.c, 4294967295u, 22874u) | vec3<u32>(global3.c.c, 1u, global1.a.c), select(vec3<u32>(u_input.a.x, u_input.b.x, 1u), vec3<u32>(63u, u_input.a.x, global3.c.c), var_0.xzz))), 5u)], _wgslsmith_add_vec4_i32(abs(vec4<i32>(firstTrailingBit(0i), max(33592i, -2147483647i), _wgslsmith_sub_i32(global1.b.x, global3.b), global3.b | 0i)), global1.b));
    var var_2 = Struct_4(global3.c, vec4<i32>(_wgslsmith_div_i32(-(2147483647i & u_input.c.x), -countOneBits(global1.b.x)), ~firstTrailingBit(abs(0i)), 0i, 0i));
    return -_wgslsmith_sub_vec4_i32(~select(var_2.b, vec4<i32>(2147483647i, var_2.b.x, u_input.c.x, 2147483647i), var_2.a.b.x), global1.b);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    let var_0 = global3.c.a;
    global3 = Struct_3(!(!global3.a), ~(~(0i | _wgslsmith_dot_vec4_i32(vec4<i32>(-22214i, arg_1.b.x, 0i, -2147483647i), vec4<i32>(u_input.c.x, 9262i, global1.b.x, 119012i)))), Struct_2(global3.c.a, arg_1.a.b, ~(~4294967295u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.a.b.xz) + _wgslsmith_f_op_vec2_f32(min(global3.c.a.b.yy, arg_1.a.a.b.xy))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.d * vec2<f32>(-114f, arg_0)), vec2<f32>(var_0.b.x, -747f)))));
    global1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-3276f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.c.a.b)) + vec3<f32>(var_0.a, global1.a.d.x, arg_0))), global1.a.b, 0u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -1531f)))), func_3(93784u));
    global3 = Struct_3(vec4<bool>(any(vec4<bool>(true, arg_1.a.b.x, true, global1.a.b.x == false)), true, arg_1.a.b.x, global1.a.b.x), 32682i, Struct_2(arg_1.a.a, global3.c.b, global3.c.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -346f), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(exp2(arg_1.a.d.x)), true)))));
    let var_1 = vec3<u32>(~arg_1.a.c, 23371u, ~global3.c.c);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), vec3<f32>(_wgslsmith_f_op_f32(-1020f + 241f), _wgslsmith_f_op_f32(-756f - arg_0), _wgslsmith_f_op_f32(-global3.c.d.x)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) * global1.a.d.x))), global0.b);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = global1.a.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(trunc(371f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-304f, 604f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * -247f))))));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(981f, global0.a)), _wgslsmith_f_op_f32(abs(643f))) - 524f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -127f));
    global0 = func_4(Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(-global0.b.x), Struct_4(global2[_wgslsmith_index_u32(1u, 5u)], vec4<i32>(global1.b.x, u_input.c.x, u_input.c.x, -1i)), global3.c.d.x), global1.a.b, global1.a.c >> (countOneBits(1u) % 32u), vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-327f, -505f)))), global1.b >> (select(~vec4<u32>(u_input.a.x, 1u, 0u, 1u), ~vec4<u32>(0u, u_input.d, global3.c.c, 0u), true) % vec4<u32>(32u))), ~_wgslsmith_mod_u32(0u << (u_input.b.x % 32u), select(1818u, 0u, false)) & ~(~_wgslsmith_add_u32(17415u, 1u)));
    return StorageBuffer(min(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 0u, global3.c.c, arg_0.x), vec4<u32>(global1.a.c, 21026u, arg_0.x, 2628u)), firstLeadingBit(vec4<u32>(54228u, 32447u, u_input.b.x, arg_0.x))), vec4<u32>(4294967295u, u_input.d, u_input.d, ~74355u)), global3.c.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, _wgslsmith_f_op_f32(-1206f * var_2))), global3.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(global1.b.zzy, ~firstLeadingBit(u_input.c)), ~global3.b));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_vec3_u32(firstLeadingBit(~(~vec3<u32>(global1.a.c, 3629u, global1.a.c))), ~vec3<u32>(global3.c.c, u_input.a.x, 4294967295u) << (vec3<u32>(17197u, min(u_input.a.x, global1.a.c), _wgslsmith_mult_u32(18454u, u_input.d)) % vec3<u32>(32u))));
}

