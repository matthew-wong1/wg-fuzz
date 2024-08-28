struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_mod_u32(~firstTrailingBit(arg_0.c), abs(~(arg_0.c ^ arg_0.c)) ^ min(~(~arg_0.c), abs(arg_0.c)));
    var var_1 = arg_0;
    global0 = array<Struct_3, 9>();
    var var_2 = var_1.a.a.x;
    var var_3 = _wgslsmith_dot_vec2_i32(~u_input.a.xy, u_input.a.xz);
    return arg_0.c;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = true;
    global0 = array<Struct_3, 9>();
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1023f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) - vec4<f32>(arg_0.x, 1130f, arg_0.x, arg_0.x))), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), _wgslsmith_add_i32(u_input.b, -u_input.b), 1u ^ func_3(global0[_wgslsmith_index_u32(70997u, 9u)]));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.yyx))));
    return 916f;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = max(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u), min(vec2<u32>(65328u, 0u), vec2<u32>(4294967295u, 1u))), vec2<u32>(4294967295u, ~0u) | _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 27619u), vec2<u32>(0u, 4294967295u), arg_0), ~vec2<u32>(4294967295u, 60337u))), 1u >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(4294967295u, 4294967295u)), 1u) % 32u));
    var var_1 = any(!vec4<bool>(any(func_2(arg_1.zzz).a.b), any(vec3<bool>(false, arg_0, false)), false, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1)));
    var var_3 = u_input.a.xz;
    var var_4 = Struct_2(arg_0, func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + var_2.x))))).a, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - arg_1)))), !(!select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0)), select(vec2<bool>(true, false), !vec2<bool>(false, arg_0), !(!vec2<bool>(arg_0, false)))), _wgslsmith_mult_vec2_i32(~vec2<i32>(-u_input.a.x, ~var_3.x), vec2<i32>(4755i, firstTrailingBit(1i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)))), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(false, arg_0, true, true), all(vec2<bool>(true, arg_0))), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(!arg_0, arg_0))));
    return func_2(var_2.wzy).a;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = Struct_2(!func_4(!arg_0.c.x | true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a)))).c.x, arg_0, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -1000f, -589f, _wgslsmith_f_op_f32(-arg_0.a.x)), func_4(true, vec4<f32>(arg_0.a.x, 230f, arg_0.a.x, arg_0.a.x)).a), arg_0.b, arg_0.c), vec2<i32>(_wgslsmith_div_i32(-1i, ~(-u_input.a.x)), u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * -200f), arg_0.a.x, _wgslsmith_f_op_f32(floor(1546f)))), !(!(!vec4<bool>(arg_0.c.x, arg_0.b.x, arg_0.b.x, arg_0.c.x))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, 1436f))).a.b.zw));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.c.a.yzz, var_0.c.a.xzx)))).a;
    let var_2 = vec3<i32>(-1i, (_wgslsmith_sub_i32(47030i, var_0.d.x) & _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzx, vec3<i32>(-1i, 18742i, -2147483647i)), -1i)) | 1i, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, -2147483647i, 2147483647i), -vec3<i32>(var_0.d.x, var_0.d.x, 1i), firstLeadingBit(vec3<i32>(-37563i, 4188i, -1822i))), _wgslsmith_sub_vec3_i32(u_input.a.yyz, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.zxy, u_input.a.zxy), select(vec3<i32>(u_input.b, var_0.d.x, 20299i), vec3<i32>(var_0.d.x, var_0.d.x, u_input.b), vec3<bool>(true, false, true))))));
    let var_3 = abs(~(select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, arg_1)), vec2<u32>(25046u, arg_1), func_4(var_0.b.b.x, var_0.b.a).b.xz) | vec2<u32>(reverseBits(4294967295u), ~arg_1)));
    let var_4 = u_input.a.yyz;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(34958u, var_3.x, arg_1), vec3<u32>(var_3.x, 78073u, arg_1))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, arg_1, var_3.x), vec3<u32>(0u, 0u, 6227u), vec3<u32>(1u, 1u, 8801u)) | abs(vec3<u32>(var_3.x, var_3.x, arg_1)))), ~vec3<u32>(~var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1) & var_3, ~vec2<u32>(arg_1, 0u)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_5(func_4((any(vec3<bool>(false, false, true)) || true) && true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, 1710f, 427f, 1320f) + vec4<f32>(-530f, 674f, -490f, -157f))) * vec4<f32>(_wgslsmith_f_op_f32(-909f - -117f), _wgslsmith_f_op_f32(-347f + 759f), _wgslsmith_f_op_f32(abs(382f)), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec4<f32>(-580f, 707f, -898f, -162f), vec4<bool>(false, true, true, false), vec2<bool>(false, true)), -63037i, 48402u), true, false, vec2<u32>(4294967295u, 42029u)))))), 4294967295u), 9u)];
    var var_1 = true;
    let var_2 = func_2(var_0.a.a.wwy).a;
    global0 = array<Struct_3, 9>();
    var_1 = var_2.b.x;
    let var_3 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.a.x, -118f, -638f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, -377f)) + func_2(vec3<f32>(-143f, 761f, var_0.a.a.x)).a.a.zyy)))), vec4<u32>(var_0.c, var_0.c, var_0.c, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.c, var_0.c, var_0.c), vec3<u32>(0u, 1u, var_0.c), var_2.b.x), ~vec3<u32>(var_0.c, 6204u, var_0.c)) | 4294967295u), 1000f, 737f);
}

