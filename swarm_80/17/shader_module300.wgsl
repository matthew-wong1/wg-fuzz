struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: array<u32, 28>;

var<private> global3: array<u32, 4> = array<u32, 4>(1u, 1u, 115395u, 4294967295u);

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = vec2<f32>(global4.b, _wgslsmith_f_op_f32(-global4.b));
    var var_1 = true;
    global4 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~23084u, 4u)], 30u)];
    global2 = array<u32, 28>();
    var var_2 = Struct_1(_wgslsmith_clamp_i32(2147483647i, min(_wgslsmith_mod_i32(countOneBits(0i), 1i), _wgslsmith_clamp_i32(~(-2614i), _wgslsmith_div_i32(0i, global4.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, -51824i), vec2<i32>(global4.a, u_input.c)))), (i32(-1i) * -2147483647i) | u_input.e), var_0.x, global4.c);
    return ~(~u_input.b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    global4 = Struct_1(-_wgslsmith_clamp_i32(u_input.c, firstTrailingBit(~arg_1.d.x), _wgslsmith_mod_i32(~var_0.d.x, _wgslsmith_add_i32(-22800i, var_0.d.x))), global4.b, arg_1.c.wzy);
    global4 = Struct_1(~(~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.d.x, arg_1.b.a, 0i), vec4<i32>(arg_2.a, 0i, -35476i, arg_1.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1141f)))), _wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(672f)))))), select(vec3<bool>(any(vec2<bool>(false, global4.c.x)), true, all(var_0.c.xx)), vec3<bool>(true, true, false), vec3<bool>(all(!arg_2.c.zx), any(vec4<bool>(arg_0, true, true, arg_1.b.c.x)), global4.c.x)));
    let var_1 = vec4<i32>(1i, 2147483647i | _wgslsmith_dot_vec2_i32(var_0.d.zz, arg_1.d.xy), ~_wgslsmith_sub_i32(-12839i, _wgslsmith_sub_i32(-30546i, -31296i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.d.xy, vec2<i32>(-4656i, 1i)) & 0i, _wgslsmith_add_i32(arg_2.a, arg_1.b.a) | -u_input.c)) & (select(~select(vec4<i32>(-1i, 2147483647i, -8119i, global4.a), vec4<i32>(u_input.c, -1i, var_0.d.x, var_0.d.x), arg_1.b.c.x), vec4<i32>(_wgslsmith_add_i32(arg_1.b.a, 2147483647i), 21007i, firstTrailingBit(u_input.e), global4.a), !arg_1.c) & vec4<i32>(firstTrailingBit(~(-2147483647i)), var_0.b.a, -countOneBits(var_0.b.a), select(arg_1.b.a, 11366i, var_0.b.c.x) << (_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(u_input.a, 28u)]) % 32u)));
    let var_2 = !(!(!vec2<bool>(!arg_0, all(global4.c))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(arg_1.b.b, 1545f, arg_2.b)))), _wgslsmith_f_op_vec3_f32(var_0.e - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-307f, global4.b)), _wgslsmith_f_op_f32(step(arg_2.b, 1000f)), -1111f), _wgslsmith_f_op_vec3_f32(-var_0.e)))), arg_0));
}

fn func_2(arg_0: i32, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_3(Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f + -1025f)), global4.c), arg_1, Struct_2(1617f, Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), vec3<bool>(true, global4.c.x, !global4.c.x)), !(!vec4<bool>(global4.c.x, global4.c.x, false, global4.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0 & 55016i, 1i), reverseBits(global1[_wgslsmith_index_u32(u_input.d, 25u)]) | vec3<i32>(arg_0, -28350i, arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(false, Struct_2(-909f, global0[_wgslsmith_index_u32(49352u, 30u)], vec4<bool>(true, global4.c.x, global4.c.x, global4.c.x), vec3<i32>(0i, u_input.e, 1i), vec3<f32>(global4.b, global4.b, global4.b)), global0[_wgslsmith_index_u32(4294967295u, 30u)])) + vec3<f32>(786f, -613f, 1392f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, arg_1, arg_1))))), ~1u);
    global2 = array<u32, 28>();
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, 18707i, -1i, -87115i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, 0i, global4.a), vec4<i32>(1i, var_0.a.a, -12010i, arg_0)), vec4<bool>(global4.c.x, global4.c.x, false, var_0.a.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0, 89589i, 0i), max(vec4<i32>(-2147483647i, -49091i, 2147483647i, 2147483647i), vec4<i32>(-1i, 1i, 31413i, arg_0)))) << (~select(~35486u, global2[_wgslsmith_index_u32(firstLeadingBit(5149u), 28u)], !global4.c.x) % 32u), -arg_0);
    global3 = array<u32, 4>();
    let var_2 = vec3<i32>(-arg_0, ~1i, _wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(-2147483647i | global4.a, max(var_0.a.a, 0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(26696i, -2147483647i, select(arg_0, arg_0, var_0.c.c.x)), global1[_wgslsmith_index_u32(19304u, 25u)])));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1300f, 540f, -482f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, var_0.a.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, global4.b, arg_1, 620f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.e.x - 752f) - -1562f)), 1915f), vec3<f32>(var_0.c.e.x, _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.e.x)) + -531f)), var_0.d << (_wgslsmith_clamp_u32(4373u, 9794u, var_0.d) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-557f + 116f), global4.b, !vec3<bool>(!(global4.b <= -1000f), any(!vec4<bool>(global4.c.x, global4.c.x, global4.c.x, global4.c.x)), false));
    var var_1 = -2147483647i;
    let var_2 = var_0.c.x && global4.c.x;
    let var_3 = _wgslsmith_add_vec3_u32(~vec3<u32>(func_1(), (u_input.a >> (1u % 32u)) & ~49587u, _wgslsmith_div_u32(53115u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 4u)] & global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 28u)], 28u)], 4u)], 4u)])), vec3<u32>(~_wgslsmith_clamp_u32(57875u, 54021u, 16813u), 0u, ~u_input.b) ^ vec3<u32>(~global3[_wgslsmith_index_u32(func_1(), 4u)], ~1u, _wgslsmith_mod_u32(14252u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(53739u, 4u)], u_input.b))));
    var var_4 = !(global4.c.x || var_2);
    let var_5 = Struct_4((true != var_2) | select(all(select(vec2<bool>(true, false), vec2<bool>(global4.c.x, false), var_0.c.xy)), var_0.c.x, var_0.c.x), 58836u);
    global1 = array<vec3<i32>, 25>();
    global0 = array<Struct_1, 30>();
    let var_6 = select(vec4<bool>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(152932u, 4u)], ~var_5.b) != ~func_1(), global4.c.x, var_0.c.x, !var_5.a), !(!vec4<bool>(true, select(var_0.c.x, var_0.c.x, true), global4.c.x, !var_2)), !var_2);
    let x = u_input.a;
    s_output = func_2(~u_input.e, -804f);
}

