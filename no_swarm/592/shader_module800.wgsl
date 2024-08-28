struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(22398u, 1u), Struct_1(true, vec2<u32>(0u, 43346u), -246f, 0u), vec3<bool>(true, false, false), vec4<bool>(true, true, true, false), Struct_1(false, vec2<u32>(71376u, 10713u), 634f, 0u));

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: array<i32, 12>;

var<private> global3: vec2<f32> = vec2<f32>(-2812f, 1380f);

var<private> global4: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, false, false, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    let var_0 = 333f;
    var var_1 = global0.e;
    var_1 = global0.b;
    var var_2 = global0.b;
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(firstTrailingBit(46211u), 12u)], 1i) << (vec2<u32>(1u, ~10890u) % vec2<u32>(32u)), u_input.a);
    return _wgslsmith_mult_i32(var_3.x, 22655i);
}

fn func_1() -> vec4<bool> {
    var var_0 = any(global0.d.xyw);
    var var_1 = !(all(!(!vec4<bool>(global0.d.x, global0.d.x, global0.b.a, global0.e.a))) & !(global0.b.a | !global0.e.a));
    var var_2 = global0.b.a;
    let var_3 = ~(~firstTrailingBit(abs(vec4<u32>(1u, global0.b.b.x, 1u, global0.b.d) | vec4<u32>(global0.b.d, global0.a.x, global0.b.b.x, 29935u))));
    let var_4 = Struct_3(-func_2(), global0.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(57090u, 12u)], 1544i) << (59209u % 32u), select(-global2[_wgslsmith_index_u32(global0.a.x, 12u)], func_2(), global0.d.x || global0.c.x)) <= 9148i);
    return global0.d;
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = Struct_2(abs(~(vec2<u32>(global0.a.x, 0u) >> (global0.a % vec2<u32>(32u)))), Struct_1(all(!vec4<bool>(false, arg_0.x, true, false)), global0.b.b, global0.e.c, abs(~global0.e.b.x)), select(vec3<bool>(!arg_0.x, !(global0.b.a || false), abs(global0.e.b.x) > ~global0.e.d), select(arg_0, vec3<bool>(arg_0.x, any(global0.c), any(vec4<bool>(true, false, arg_0.x, global0.e.a))), !vec3<bool>(global0.c.x, global0.c.x, false)), global0.e.a), select(select(select(global0.d, global0.d, vec4<bool>(true, false, false, false)), select(select(vec4<bool>(true, global0.d.x, false, false), vec4<bool>(global0.c.x, global0.d.x, global0.e.a, global0.e.a), global0.d), select(global0.d, vec4<bool>(global0.d.x, true, arg_0.x, true), true), vec4<bool>(global0.b.a, true, arg_0.x, true)), all(vec3<bool>(arg_0.x, global0.e.a, false))), func_1(), select(global0.d, select(select(global0.d, global0.d, vec4<bool>(true, global0.d.x, arg_0.x, global0.d.x)), global0.d, true), all(!vec4<bool>(true, arg_0.x, true, true)))), global0.b);
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(157f, -289f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 655f) - vec2<f32>(604f, -378f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, 228f)), vec2<f32>(-294f, global0.b.c))))));
    let var_1 = Struct_3(_wgslsmith_div_i32(-abs(14668i), -2147483647i), global0.e, select(global0.b.a, global0.e.a, global0.e.d < global0.b.b.x));
    let var_2 = Struct_3(-23744i, Struct_1(any(select(!global0.d, select(vec4<bool>(global0.b.a, var_1.b.a, var_1.c, true), vec4<bool>(true, global0.e.a, global0.d.x, var_1.b.a), false), true)), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(4294967295u, var_1.b.b.x)), global0.a, vec2<u32>(48448u >> (global0.e.d % 32u), ~global0.a.x)), global0.b.c, _wgslsmith_dot_vec2_u32(var_1.b.b, ~_wgslsmith_sub_vec2_u32(global0.b.b, global0.b.b))), all(!vec4<bool>(true, !var_1.c, false, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.c, -667f, 304f, 680f) - vec4<f32>(601f, -992f, global0.e.c, 1195f)) - _wgslsmith_div_vec4_f32(vec4<f32>(960f, global0.b.c, var_2.b.c, global3.x), vec4<f32>(var_0.x, var_0.x, -300f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-644f, -167f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(550f * 1408f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, var_1.b.c, var_1.b.c, var_0.x)) - vec4<f32>(-267f, 822f, -1338f, 1028f))), vec4<f32>(787f, _wgslsmith_f_op_f32(f32(-1f) * -1525f), var_1.b.c, -424f)));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(517f, global0.e.c)))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1816f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1439f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-451f, -485f))))));
    let var_0 = Struct_2(~abs(vec2<u32>(0u >> (0u % 32u), 1u)), Struct_1(any(func_1()) != false, vec2<u32>(abs(_wgslsmith_div_u32(global0.b.d, 0u)), 29794u), _wgslsmith_f_op_f32(-1402f * global0.b.c), _wgslsmith_mult_u32(global0.b.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(119790u, 6532u), 21816u))), vec3<bool>(true, global0.e.a, true), !func_3(select(vec3<bool>(true, true, global0.e.a), func_1().xxx, global0.d.zwz)), Struct_1(true, firstLeadingBit(~countOneBits(global0.e.b)), _wgslsmith_f_op_f32(round(257f)), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, global0.a.x, 44176u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e.b.x, global0.e.d, 18754u), vec3<u32>(1u, 43133u, 40503u)))));
    global2 = array<i32, 12>();
    global4 = array<Struct_4, 5>();
    var var_1 = ~vec2<u32>(128479u, var_0.e.b.x);
    let var_2 = 0u;
    var var_3 = true;
    let var_4 = Struct_2(vec2<u32>(~var_0.e.b.x | 4294967295u, ~0u), var_0.e, !vec3<bool>(global0.c.x | select(true, global0.d.x, global0.b.a), false, true), !(!(!var_0.d)), var_0.b);
    global2 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-vec2<i32>(abs(-40609i), u_input.a.x), ~countOneBits(vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_clamp_vec2_i32(abs(u_input.b), u_input.b, reverseBits(-vec2<i32>(u_input.b.x, 1i)))), vec3<f32>(global0.b.c, _wgslsmith_f_op_f32(-1000f - 489f), 683f));
}

