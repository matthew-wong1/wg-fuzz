struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<u32>, 8>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = select(arg_2, vec2<bool>(all(select(select(global2.yyx, vec3<bool>(arg_1.x, arg_2.x, false), vec3<bool>(false, global2.x, false)), vec3<bool>(arg_2.x, true, true), !global2.wyy)), arg_0.x <= 2147483647i), ~min(~u_input.a.x, select(u_input.a.x, 4294967295u, arg_2.x)) >= ~u_input.a.x);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(247f)), global0.b, global0.c);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(754f, global1.x) + vec2<f32>(630f, global0.a)), vec2<f32>(935f, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1000f) - vec2<f32>(global0.c.a, global1.x))))))));
    var var_3 = _wgslsmith_clamp_vec3_u32(global0.b.ywz, ~firstTrailingBit(~u_input.a), u_input.a);
    return u_input.a;
}

fn func_2(arg_0: f32) -> i32 {
    global1 = vec2<f32>(arg_0, arg_0);
    let var_0 = Struct_5(u_input.a.x << (global0.b.x % 32u), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mod_u32(0u, min(41149u, global0.b.x))), ~min(18427u, u_input.a.x), 2267u));
    global3 = array<vec2<u32>, 8>();
    global0 = Struct_2(-266f, global0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(538f)))))));
    let var_1 = Struct_4(countOneBits(func_3(vec4<i32>(~0i, u_input.b, u_input.b, _wgslsmith_sub_i32(-20316i, 3364i)), !vec4<bool>(false, true, global2.x, true), global2.zy)));
    return -2147483647i;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(385f)))) * _wgslsmith_f_op_f32(abs(526f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - arg_0.d.a)))));
    let var_1 = arg_0.d.b.x;
    let var_2 = arg_0.d.b.x > min(global0.b.x, 4294967295u);
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(~23169i, max(arg_0.c.x, arg_0.c.x | func_2(-492f))), reverseBits(u_input.b));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -201f), vec3<bool>(true, true, var_2), (vec2<i32>(-1i) * -(arg_0.c | arg_0.c)) | vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b), _wgslsmith_add_i32(-var_3.x, ~2147483647i)), Struct_2(arg_0.a, ~vec4<u32>(1u, 7281u, var_1, abs(u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))))));
    return reverseBits(arg_0.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> vec2<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(round(arg_1.zz));
    var var_0 = Struct_4(~(~(~vec3<u32>(global0.b.x, global0.b.x, global0.b.x))));
    var var_1 = arg_0;
    var var_2 = ~(~(var_0.a << (u_input.a % vec3<u32>(32u))));
    var var_3 = Struct_3(-1515f, global2.wxx, firstLeadingBit(_wgslsmith_mod_vec2_i32(-var_1.yy, firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-11170i, -47343i), var_1.xw)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -562f), global0.b, Struct_1(global0.a)));
    return ~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.zw, arg_0.zy), countOneBits(2147483647i)) | vec2<i32>(var_1.x, ~var_3.c.x), -(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1634f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)) - -1000f)), vec3<bool>(global2.x | true, !(global2.x | (35129u >= global0.b.x)), global2.x), func_4(firstLeadingBit(vec4<i32>(func_1(Struct_3(-756f, vec3<bool>(false, true, true), vec2<i32>(59402i, 0i), Struct_2(1000f, vec4<u32>(54728u, u_input.a.x, u_input.a.x, global0.b.x), global0.c)), vec4<bool>(true, false, true, false)), ~2147483647i, u_input.b >> (global0.b.x % 32u), u_input.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c.a, global1.x, global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, global1.x, 533f) * vec3<f32>(global0.c.a, global1.x, 1197f))))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, global0.b.x, global0.b.x), ~global0.b), ~_wgslsmith_mult_u32(1u, 10998u))), Struct_2(_wgslsmith_f_op_f32(abs(-2073f)), global0.b, global0.c));
    let var_1 = vec3<f32>(-306f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -338f)), 635f), var_0.a);
    var var_2 = Struct_1(var_1.x);
    global2 = vec4<bool>(true && !var_0.b.x, !all(!var_0.b), var_0.d.b.x <= global0.b.x, 0i <= func_4(vec4<i32>(var_0.c.x, var_0.c.x, ~6680i, ~var_0.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1 - var_1))), 1u).x);
    global3 = array<vec2<u32>, 8>();
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(10871i, _wgslsmith_div_i32(54226i, -20451i)), u_input.b);
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1001f * _wgslsmith_f_op_f32(-var_0.d.c.a))));
    let var_4 = Struct_4(~_wgslsmith_sub_vec3_u32(~vec3<u32>(42608u, global0.b.x, 4294967295u), select(global0.b.yxx, u_input.a, true) | ~vec3<u32>(var_0.d.b.x, u_input.a.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-216f, global1.x, _wgslsmith_f_op_f32(-global0.c.a), global0.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1485f, -1659f, -520f) + vec3<f32>(764f, var_1.x, global1.x)))))), -1929f);
}

