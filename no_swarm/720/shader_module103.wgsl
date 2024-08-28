struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = global1.b;
    var var_1 = global1.b;
    let var_2 = vec3<u32>(0u, 4294967295u, 37874u);
    global0 = array<Struct_2, 26>();
    var_1 = Struct_1(var_1.c.x, ~vec4<u32>(var_0.b.x, _wgslsmith_sub_u32(var_1.b.x, 1u) >> (1u % 32u), var_2.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.b.b.x, arg_0.d.b.x), vec2<u32>(global1.d.b.x, global1.a.x), true), vec2<u32>(1u, 4294967295u))), u_input.b.xx, !all(vec2<bool>(true, true)));
    return var_1.c.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_3(!select(vec3<bool>(any(vec3<bool>(global1.b.d, global1.b.d, true)), any(vec3<bool>(global1.d.d, false, global1.b.d)), global1.b.d), select(vec3<bool>(true, true, true), vec3<bool>(false, true, global1.b.d), any(vec2<bool>(global1.d.d, global1.b.d))), true), Struct_1(-1i, vec4<u32>(u_input.c.x, ~u_input.c.x, u_input.c.x, u_input.c.x) & _wgslsmith_div_vec4_u32(max(arg_0, vec4<u32>(global1.d.b.x, global1.a.x, 4294967295u, 4294967295u)), vec4<u32>(global1.d.b.x, 20951u, 14696u, arg_0.x)), vec2<i32>(arg_2.x, _wgslsmith_mult_i32(u_input.b.x, abs(1i))), global1.b.d && any(vec4<bool>(global1.b.d, true, false, false))), -199f, global0[_wgslsmith_index_u32(54382u, 26u)]);
    let var_1 = select(var_0.a, select(!vec3<bool>(select(true, var_0.a.x, false), any(vec4<bool>(global1.d.d, global1.d.d, true, false)), global1.d.d), select(select(select(var_0.a, var_0.a, true), vec3<bool>(global1.d.d, true, true), true), select(select(vec3<bool>(global1.b.d, false, global1.d.d), vec3<bool>(false, false, var_0.a.x), var_0.d.d.d), select(var_0.a, vec3<bool>(global1.b.d, false, true), global1.b.d), vec3<bool>(global1.d.d, global1.d.d, true)), global1.c.x < -1125f), all(!vec4<bool>(global1.b.d, true, global1.b.d, global1.b.d)) & any(vec4<bool>(true, global1.d.d, global1.d.d, false))), any(!vec4<bool>(true, false, true, global1.b.d)));
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c.x) - var_0.c) - -707f), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)) | (-(arg_1 >> (80135u % 32u)) >= _wgslsmith_sub_i32(var_0.b.c.x, arg_2.x)), global1.d.d);
    global1 = Struct_2(arg_0.xy, Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(global1.b.c.x, u_input.a) ^ arg_2.ww), -vec2<i32>(arg_2.x, -1i)), ~_wgslsmith_mult_vec4_u32(arg_0, countOneBits(vec4<u32>(1u, arg_0.x, var_0.b.b.x, var_0.d.d.b.x))), vec2<i32>(_wgslsmith_add_i32(0i, ~(-2147483647i)), -1i), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -2071f, -1246f)))), var_0.b);
    global1 = Struct_2(_wgslsmith_mult_vec2_u32(global1.d.b.xx, global1.d.b.xy ^ ~vec2<u32>(var_0.b.b.x, arg_0.x)), global1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.d.c - vec3<f32>(1388f, var_0.d.c.x, 246f)))), var_0.d.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(527f)) - -413f), _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(global1.c.x - -393f))), _wgslsmith_div_f32(global1.c.x, 1000f)))), Struct_1(~reverseBits(~var_0.d.b.a), ~countOneBits(arg_0), reverseBits(~vec2<i32>(-36801i, 19821i)), true));
    return !(var_0.b.a <= (_wgslsmith_div_i32(min(var_0.b.c.x, arg_1), _wgslsmith_mult_i32(var_0.d.d.c.x, 30246i)) << (4294967295u % 32u)));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_2, 26>();
    var var_0 = -u_input.b.x << (u_input.c.x % 32u);
    let var_1 = false;
    global0 = array<Struct_2, 26>();
    let var_2 = Struct_3(vec3<bool>(func_3(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global1.d.b.x, 28233u)), 0u, 5338u), func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.x, 4294967295u), 26u)]), ~vec4<i32>(u_input.a, global1.b.c.x, u_input.b.x, 21502i) & u_input.b), true, all(vec3<bool>(true, true, true))), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1483f * global1.c.x), -1244f))), global0[_wgslsmith_index_u32(select(global1.b.b.x, 4294967295u, false), 26u)]);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.c * var_2.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.x;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global1.d.b.x), 26u)];
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(step(global1.c.x, 1417f)), _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.c))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))));
    global1 = Struct_2(reverseBits(firstTrailingBit(select(u_input.c.zx, var_1.b.b.zz | vec2<u32>(0u, 44765u), !vec2<bool>(var_1.b.d, global1.d.d)))), Struct_1(0i, vec4<u32>(~var_1.d.b.x, var_1.d.b.x, 4294967295u, ~41094u) << (vec4<u32>(1u | global1.a.x, var_1.a.x, var_1.b.b.x >> (48207u % 32u), ~66636u) % vec4<u32>(32u)), ~(vec2<i32>(-1i) * -global1.b.c), any(vec4<bool>(var_1.b.d & var_1.d.d, global1.d.d, !global1.d.d, all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec3_f32(sign(var_2)), Struct_1(~(-var_1.b.c.x) ^ firstTrailingBit(var_1.d.a), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.d.b.x, 9056u, 51522u, var_1.d.b.x), ~var_1.b.b), vec2<i32>(select(_wgslsmith_div_i32(2147483647i, u_input.b.x), _wgslsmith_clamp_i32(global1.d.a, u_input.a, -27049i), true != global1.d.d), -abs(var_1.d.a)), false));
    var var_3 = vec2<i32>(-862i, -10266i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(u_input.c.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(var_1.b.b.wx, vec2<u32>(u_input.c.x, global1.d.b.x)), vec2<u32>(4294967295u, 4939u)), var_1.b.b.x, countOneBits(_wgslsmith_sub_u32(u_input.c.x, var_1.a.x >> (u_input.c.x % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_f_op_f32(-var_2.x))))), -1009f));
}

