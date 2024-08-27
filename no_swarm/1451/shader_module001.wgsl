struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 17>;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = global0.xy;
    global1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), vec2<i32>(2147483647i, arg_1.b.b), min(select(2147483647i, _wgslsmith_mod_i32(0i, u_input.a.x), firstTrailingBit(-2147483647i) >= 2147483647i), (firstLeadingBit(16886i) & _wgslsmith_mult_i32(arg_1.c.b, 2147483647i)) | -reverseBits(529i)), arg_1.c.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e)), vec4<bool>(select(false, true, false), true, any(vec3<bool>(false, true, arg_2.x)), global0.x))))));
    global1 = Struct_3(_wgslsmith_f_op_f32(global3.e.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(f32(-1f) * -1104f)))), _wgslsmith_add_vec2_i32(max(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(arg_0.b, 1i)), 52619i), ~vec2<i32>(-23493i, 17292i)), ~vec2<i32>(~u_input.b, _wgslsmith_mult_i32(-70413i, u_input.d))), select(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.c.b, 1i, -41581i, arg_0.b), abs(abs(vec4<i32>(u_input.b, global3.c, -2147483647i, 1i)))), global0.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~76719u, arg_0.a.x ^ 10405u, arg_1.b.c.x), select(~global1.d, ~vec4<u32>(0u, global3.d.x, u_input.c, u_input.c), vec4<bool>(arg_3.x, arg_3.x, false, true))), vec4<f32>(558f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + arg_1.a))), 970f, _wgslsmith_div_f32(-2467f, global3.e.x)));
    var var_1 = Struct_3(1400f, -_wgslsmith_mult_vec2_i32(abs(~global3.b), vec2<i32>(20243i << (global1.d.x % 32u), _wgslsmith_div_i32(arg_0.b, global1.c))), -global3.b.x, vec4<u32>(u_input.c, 18385u ^ ~(~u_input.c), 30307u, ~countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.x, arg_1.a, -243f, arg_1.a)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(global3.e)))), global1.e, !(!vec4<bool>(false, false, arg_2.x, global0.x))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - arg_1.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.e.x * 941f))))), Struct_1(arg_0.c.xz, ~firstTrailingBit(1i), global1.d), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.d.x, _wgslsmith_dot_vec2_u32(arg_0.a, arg_1.c.a)), ~vec2<u32>(1u, global1.d.x)), 1i, arg_1.b.c));
    return vec4<u32>(_wgslsmith_div_u32(34559u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_2.c.c.x), arg_1.b.c.x, global3.d.x ^ 4294967295u), select(vec3<u32>(u_input.c, 4143u, global3.d.x) & arg_1.b.c.yyy, arg_0.c.yww ^ var_2.c.c.zyw, true))), var_1.d.x, ~_wgslsmith_clamp_u32(var_1.d.x >> (_wgslsmith_mult_u32(global1.d.x, global3.d.x) % 32u), ~(~global1.d.x), arg_1.c.a.x), arg_0.a.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(global3.e.x, vec2<i32>(global1.b.x << (global3.d.x % 32u), 0i), global1.c, min(func_3(Struct_1(vec2<u32>(u_input.c, global3.d.x), -1i, vec4<u32>(global1.d.x, global3.d.x, global3.d.x, global3.d.x)), Struct_2(-1070f, Struct_1(vec2<u32>(1u, 11696u), 2147483647i, vec4<u32>(4294967295u, global3.d.x, 5875u, global3.d.x)), Struct_1(global3.d.xw, global1.c, global1.d)), select(vec2<bool>(global0.x, true), global0.xy, global0.xx), vec3<bool>(global0.x, global0.x, global0.x)) >> (global1.d % vec4<u32>(32u)), vec4<u32>(1u, global3.d.x, 21627u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13515u, global1.d.x, u_input.c), global1.d.zzy), global3.d.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(-851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, global3.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) * global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e.x * -232f) + _wgslsmith_f_op_f32(ceil(675f))))));
    var var_1 = vec4<i32>(2349i, ~_wgslsmith_mod_i32(-u_input.b, u_input.d) << (0u % 32u), firstLeadingBit(var_0.b.x), ~_wgslsmith_mult_i32(u_input.b, 0i) ^ _wgslsmith_mult_i32(global3.c, -23405i));
    var_1 = vec4<i32>(i32(-1i) * -2147483647i, global3.b.x, i32(-1i) * -var_0.c, abs(_wgslsmith_div_i32(0i, -31492i) ^ global1.c) >> (abs(_wgslsmith_mult_u32(~u_input.c, reverseBits(var_0.d.x))) % 32u));
    var_1 = -(max(select(vec4<i32>(-31783i, -2147483647i, 18692i, var_0.b.x) & vec4<i32>(2147483647i, var_1.x, 21145i, var_1.x), vec4<i32>(var_1.x, var_1.x, 2147483647i, -51373i) | vec4<i32>(u_input.b, 1i, var_0.b.x, -1i), global0.x), vec4<i32>(var_1.x & var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, var_1.x, 0i), vec4<i32>(8817i, 0i, var_0.b.x, 32542i)), max(var_1.x, var_1.x), global3.b.x ^ 38291i)) ^ countOneBits(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 5699i, 2147483647i, -47888i), vec4<i32>(5251i, global3.b.x, global3.b.x, 34636i))));
    var var_2 = _wgslsmith_clamp_i32(-24181i, firstTrailingBit(_wgslsmith_div_i32(var_1.x, ~(-global3.b.x))), -2147483647i);
    return !vec4<bool>(true, true, !(firstLeadingBit(2147483647i) > _wgslsmith_mult_i32(var_1.x, global1.c)), true);
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(-913f, -480f);
    var var_2 = var_0.zzy;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), Struct_1(global3.d.xx, reverseBits(16961i), func_3(Struct_1(vec2<u32>(0u, 1u), -3829i, global3.d), Struct_2(-472f, Struct_1(global1.d.zw, global3.c, vec4<u32>(global1.d.x, global3.d.x, global3.d.x, global1.d.x)), Struct_1(vec2<u32>(global3.d.x, 27081u), -7361i, global3.d)), vec2<bool>(var_2.x, false), vec3<bool>(global0.x, var_0.x, global0.x)) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(global3.d.x, u_input.c, global3.d.x, global1.d.x), global1.d) >> (global1.d % vec4<u32>(32u)))), Struct_1(select(vec2<u32>(42925u, ~u_input.c), global1.d.zz, true), u_input.a.x, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1184u, 0u, 1u, global3.d.x), global1.d >> (vec4<u32>(62278u, global3.d.x, 0u, global3.d.x) % vec4<u32>(32u))))));
    let var_4 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = (u_input.a.x & 2147483647i) >> (19333u % 32u);
    global2 = array<vec4<bool>, 17>();
    var var_1 = vec3<i32>(_wgslsmith_div_i32(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -28663i, global1.c), vec3<i32>(arg_1.b.x, global1.c, u_input.a.x)), select(-1440i, 2147483647i, global0.x)), ~u_input.b), -countOneBits(global1.b.x & global1.b.x) | ~(76085i >> (firstLeadingBit(global1.d.x) % 32u)), _wgslsmith_clamp_i32(countOneBits(abs(-44050i)), 1i, select(i32(-1i) * -u_input.b, reverseBits(global1.c), !any(vec2<bool>(global0.x, false)))));
    var var_2 = global1.d.x;
    var_0 = ~u_input.a.x;
    return select(~_wgslsmith_mod_vec4_u32(~firstTrailingBit(global3.d), ~firstLeadingBit(vec4<u32>(6407u, arg_1.d.x, 87870u, 1u))), global1.d | _wgslsmith_mult_vec4_u32(abs(~global1.d), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.d.x, 1u, global3.d.x, 0u), vec4<u32>(arg_1.d.x, 29394u, global3.d.x, 25117u)) >> (vec4<u32>(u_input.c, 4294967295u, arg_1.d.x, 0u) % vec4<u32>(32u))), !(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(1000f, -u_input.a.zz, -1i, _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global3.d.x, 0u, 4294967295u, 21905u) >> (global3.d % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(abs(reverseBits(global1.d)), ~vec4<u32>(global1.d.x, global1.d.x, 7831u, u_input.c) | vec4<u32>(global1.d.x, global1.d.x, u_input.c, 32709u))), vec4<f32>(_wgslsmith_f_op_f32(abs(global3.e.x)), _wgslsmith_f_op_f32(-1497f + global3.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, global1.e.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.e.x)))));
    global2 = array<vec4<bool>, 17>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - global1.a), Struct_1(countOneBits(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(84620u, u_input.c)), _wgslsmith_mod_vec2_u32(global3.d.wz, vec2<u32>(41960u, 33986u)))), -u_input.d & (_wgslsmith_add_i32(u_input.b, global3.c) ^ _wgslsmith_mod_i32(global1.c, global1.b.x)), _wgslsmith_mod_vec4_u32(~global3.d ^ vec4<u32>(55296u, 66235u, 43016u, u_input.c), global1.d)), Struct_1(~vec2<u32>(_wgslsmith_mod_u32(u_input.c, global3.d.x), ~u_input.c), _wgslsmith_mod_i32(-2298i, -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), func_4(1401f, Struct_3(global1.a, vec2<i32>(u_input.a.x, 1i) & vec2<i32>(global3.b.x, global3.c), global1.b.x, vec4<u32>(0u, 4294967295u, 8231u, 4294967295u), _wgslsmith_f_op_vec4_f32(func_1())))));
    var var_1 = Struct_1(~func_3(Struct_1(global3.d.zy, 0i, vec4<u32>(global3.d.x, u_input.c, 0u, global1.d.x)), Struct_2(_wgslsmith_f_op_f32(select(-411f, var_0.a, true)), Struct_1(global1.d.zz, global1.c, var_0.b.c), Struct_1(global1.d.xz, 60230i, vec4<u32>(global1.d.x, 156582u, 1u, u_input.c))), !global0.wz, global0.yzw).yz, 13084i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.a.x, 1u) >> (global1.d.x % 32u), ~46665u), 0u, reverseBits(u_input.c >> (var_0.b.c.x % 32u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(80112u, 22790u, global3.d.x, 10549u), global1.d), ~(~0u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_1()).x, Struct_1(reverseBits(global3.d.wz), _wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), var_1.b << (global3.d.x % 32u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(9812u, 67840u, global1.d.x, global3.d.x), vec4<u32>(var_0.c.a.x, 16781u, 66876u, global1.d.x)), global1.d)), var_0.b);
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(func_1()).x, u_input.a.yy, ~_wgslsmith_div_i32(global3.b.x, ~(~var_1.b)), abs(~(~(vec4<u32>(var_0.c.c.x, 0u, 1u, var_2.b.c.x) & var_1.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), global3.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(176f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.e), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 764f, -150f, global1.a))))));
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c, global3.b.x, global3.c, 22443i), vec4<i32>(28892i, 2147483647i, var_0.b.b, u_input.d)), _wgslsmith_clamp_i32(var_2.b.b, 2147483647i, -1i)) >> (vec3<u32>(var_2.b.c.x | func_3(Struct_1(var_1.a, -2038i, global3.d), var_0, global0.yy, vec3<bool>(false, global0.x, global0.x)).x, global3.d.x, ~22842u) % vec3<u32>(32u)));
}

