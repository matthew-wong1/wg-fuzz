struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(310f, _wgslsmith_f_op_f32(f32(-1f) * -544f)) * vec2<f32>(857f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(max(990f, arg_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zz))) - _wgslsmith_f_op_vec2_f32(arg_1.xx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - vec2<f32>(-1043f, 449f)) * vec2<f32>(arg_1.x, 1187f))))));
    let var_1 = Struct_3(arg_1.yxz);
    let var_2 = true;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)) + vec3<f32>(_wgslsmith_div_f32(arg_1.x, var_1.a.x), -1446f, arg_1.x))));
    return _wgslsmith_add_u32(abs(u_input.a), 1u) & arg_2;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 32>();
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(-39936i, 14438i, -2147483647i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(-5352i, -53486i, 2147483647i), vec3<i32>(2048i, -1i, -2147483647i))), ~1i, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(-15988i, 21371i), -19062i)));
    var var_1 = !(!vec3<bool>(var_0.x <= -var_0.x, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))));
    var var_2 = vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -713f) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2136f), _wgslsmith_f_op_f32(round(608f))))) && (_wgslsmith_mod_u32(func_3(Struct_1(false, 76467u, vec4<u32>(9013u, arg_0.x, 1u, 0u)), vec4<f32>(-1437f, 589f, 1425f, -524f), 16152u), ~u_input.b.x) <= _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.yx, vec2<u32>(4294967295u, 17657u)), vec2<u32>(arg_0.x, u_input.b.x))), !((arg_0.x != _wgslsmith_clamp_u32(u_input.a, arg_0.x, arg_0.x)) || select(true, var_1.x, var_1.x)));
    var var_3 = Struct_2(vec4<bool>(true, var_2.x, false & !any(vec4<bool>(false, var_1.x, true, false)), false), Struct_1(var_0.x <= ~(-var_0.x), 0u, ~u_input.b));
    return var_3.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 32>();
    global1 = u_input.a < arg_1.b.c.x;
    var var_0 = func_2(u_input.b);
    var_0 = func_2(abs(vec4<u32>(u_input.a, u_input.b.x, arg_2.b ^ var_0.c.x, 0u)) >> (_wgslsmith_clamp_vec4_u32(arg_2.c, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b, 0u, 0u, 1u), select(var_0.c, var_0.c, arg_1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_1.b.c.x, arg_1.b.c.x, 0u), func_2(var_0.c).c)) % vec4<u32>(32u)));
    let var_1 = true;
    return global0[_wgslsmith_index_u32(~4294967295u & arg_2.c.x, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, 828f, 1214f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-218f)), _wgslsmith_f_op_f32(sign(2023f)), _wgslsmith_f_op_f32(step(658f, -1492f))))));
    var var_1 = func_1(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(true, _wgslsmith_add_u32(u_input.a, 14488u), vec4<u32>(7370u, 4294967295u, 0u, 93587u))), Struct_1(u_input.a < ~u_input.a, reverseBits(~(~u_input.b.x)), ~max(~vec4<u32>(31860u, 40591u, u_input.b.x, u_input.a), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(4294967295u, 8809u, u_input.a, u_input.b.x), vec4<u32>(0u, 26090u, 45527u, 10179u)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-799f, 639f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), !var_1.b.a)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_div_vec3_f32(vec3<f32>(1089f, 977f, var_0.a.x), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(783f, var_0.a.x, -1742f))))));
    var var_2 = func_1(all(!var_1.a.yxy), Struct_2(!(!(!var_1.a)), func_1(all(func_1(false, Struct_2(vec4<bool>(false, var_1.a.x, var_1.a.x, false), Struct_1(var_1.a.x, u_input.b.x, var_1.b.c)), Struct_1(var_1.b.a, 4294967295u, vec4<u32>(6157u, var_1.b.b, 64870u, 0u))).a), func_1(true, global0[_wgslsmith_index_u32(var_1.b.b, 32u)], Struct_1(var_1.b.a, 1u, vec4<u32>(var_1.b.b, 43575u, var_1.b.c.x, 47643u))), func_2(~vec4<u32>(u_input.b.x, 1u, var_1.b.b, u_input.b.x))).b), func_1(func_2(select(var_1.b.c, vec4<u32>(var_1.b.c.x, 22215u, var_1.b.c.x, u_input.a), !vec4<bool>(var_1.a.x, false, false, var_1.b.a))).a, Struct_2(!(!var_1.a), Struct_1(var_1.b.a, 1u, vec4<u32>(var_1.b.b, 0u, 17266u, var_1.b.b))), var_1.b).b).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(~1i >> (var_1.b.b % 32u), 32295i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -53051i), vec2<i32>(-12717i, 0i)))));
}

