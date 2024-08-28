struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 16>;

var<private> global2: array<f32, 7>;

var<private> global3: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3) -> i32 {
    let var_0 = any(select(global0.c.yyz, vec3<bool>(global0.c.x, global0.c.x, false), select(true, any(global0.c.zzz), true) || true));
    global3 = arg_2;
    let var_1 = vec3<u32>(~(arg_2.a.b.d | arg_2.a.b.e) << (max(0u ^ max(4294967295u, global3.a.c), u_input.a) % 32u), 36875u, ~global3.a.c);
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_vec3_f32(global3.a.a * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, 788f, 374f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -1000f, arg_1), vec3<f32>(1216f, -843f, arg_1), vec3<bool>(false, global0.c.x, var_0)))), vec3<f32>(-114f, -280f, _wgslsmith_f_op_f32(floor(1000f)))))));
    return arg_2.a.b.a;
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), -417f, global1[_wgslsmith_index_u32(~(~(~4294967295u)), 16u)], global0.b.x);
    global2 = array<f32, 7>();
    let var_1 = ~_wgslsmith_mod_u32(max(~1896u, ~_wgslsmith_sub_u32(global3.a.b.e, global0.a.e)), 4294967295u);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(var_0.wxx * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(367f, 1536f, global0.a.b.x) + vec3<f32>(global3.a.a.x, -1137f, 767f)), _wgslsmith_f_op_vec3_f32(-var_0.zwx)))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(0i, 29938i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(48279u, 16u)], var_0.x, global1[_wgslsmith_index_u32(73396u, 16u)], global0.b.x))), var_1, select(_wgslsmith_div_u32(71633u, 20766u), u_input.b.x & 1u, global0.c.x), _wgslsmith_mod_u32(var_1, ~0u)), max(var_1, global3.a.b.c)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, global2[_wgslsmith_index_u32(15079u, 7u)], 158f))))), Struct_1(~(global3.a.b.a | -33757i), _wgslsmith_f_op_vec4_f32(-global3.a.b.b), var_2.a.c, global3.a.b.d ^ global0.a.e, var_1), 1u));
    return vec2<i32>(abs(11353i), var_2.a.b.a);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = global3.a;
    let var_1 = !vec2<bool>(any(global0.c), true);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(sign(global3.a.b.b.wxz)), global0.a, ~(_wgslsmith_clamp_u32(var_0.c, global3.a.c, global0.a.e) & ~u_input.a)));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(9268i, _wgslsmith_clamp_i32(arg_3, reverseBits(-28854i), var_2.a.b.a)) ^ ~countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.a, var_0.b.a), vec2<i32>(-1i, 2147483647i))), func_3());
    var var_4 = Struct_3(global3.a);
    return var_2.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3.a.b.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -169f))))), 787f)), _wgslsmith_f_op_f32(-func_2(global0.a.b.x, 1f, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1550f), 1312f, global0.a.a, max(71411i, -19573i)).b.a, 2147483647i).a.x), _wgslsmith_mult_i32(countOneBits(global3.a.b.a), 0i), _wgslsmith_mod_i32(global0.a.a, global0.a.a));
    let var_1 = max(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(~2147483647i, arg_2.b.a), -1i), global3.a.b.a, global3.a.b.a, _wgslsmith_div_i32(42377i, _wgslsmith_mult_i32(arg_2.b.a, ~arg_2.b.a))), abs(-vec4<i32>(4119i | arg_2.b.a, global3.a.b.a, _wgslsmith_mult_i32(22661i, global0.a.a), 15957i)));
    var var_2 = ~global3.a.c;
    let var_3 = _wgslsmith_f_op_f32(-295f + -1817f);
    global0 = Struct_4(global3.a.b, global3.a.b.b.xyw, vec4<bool>(any(global0.c), any(arg_1), global0.c.x, true | (reverseBits(0i) >= global0.a.a)));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(-102f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.b.b.x)), 1800f, true & arg_1.x)))), global3.a.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3.a.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -821f))), global0.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -640f), global3.a.b.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.b, vec3<f32>(434f, 1216f, -949f))) * _wgslsmith_f_op_vec3_f32(ceil(global3.a.b.b.xxy))))));
    var var_1 = firstLeadingBit(-vec4<i32>(-74892i, ~_wgslsmith_div_i32(-1i, -1i), func_1(vec2<f32>(global2[_wgslsmith_index_u32(40772u, 7u)], global3.a.a.x), -512f, Struct_3(Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 7u)], 642f, 2965f), global0.a, global0.a.d))) | 1i, _wgslsmith_div_i32(-global3.a.b.a, min(global3.a.b.a, 14852i))));
    var var_2 = -2147483647i;
    var_2 = global0.a.a;
    let var_3 = Struct_4(global3.a.b, _wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(u_input.d, 117328u)), vec2<bool>(!(!global0.c.x), !(var_0.x != -1799f)), func_2(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.b.x))), global3.a.b.a, global0.a.a))), select(global0.c, select(!select(global0.c, global0.c, global0.c.x), select(!global0.c, select(vec4<bool>(false, global0.c.x, global0.c.x, true), global0.c, vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x)), vec4<bool>(global0.c.x, true, false, false)), global1[_wgslsmith_index_u32(0u, 16u)] >= -1503f), global0.c));
    global1 = array<f32, 16>();
    var_2 = -(~(~2147483647i));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(global0.a.c, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 1u, u_input.a, 2339u))), vec2<u32>(var_4.a.c, var_4.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1002f))), global3.a.a.yz, global0.a.c, ~u_input.c);
}

