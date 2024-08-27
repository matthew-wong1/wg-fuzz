struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    let var_0 = u_input.b.x != 18206i;
    var var_1 = -1321f;
    var var_2 = Struct_1(false, vec2<u32>(firstTrailingBit(u_input.a), ~(~global1.x)));
    global0 = array<vec3<u32>, 17>();
    let var_3 = Struct_3(Struct_2(var_2.b.x, Struct_1(true, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, var_2.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.x, 1u), vec2<u32>(var_2.b.x, 44404u), var_2.b), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 34388u), var_2.b))), global1.x));
    return u_input.d.x;
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a & u_input.d.x, 50186u >> (u_input.a % 32u), abs(~select(26941u, global1.x, true)), firstTrailingBit(~u_input.a)), vec4<u32>(global1.x, 22671u, 0u, 4294967295u));
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    global1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~func_3(Struct_4(true), vec2<f32>(1988f, -834f), Struct_4(true), vec3<bool>(false, true, false)), 52403u), 66939u), ~(~1u), ~abs(0u), ~global1.x);
    global1 = vec4<u32>(~_wgslsmith_add_u32(27446u, 1u), global1.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(~global1.x, ~4294967295u, _wgslsmith_mult_u32(112238u, global1.x), global1.x), ~(~vec4<u32>(global1.x, 6441u, u_input.c.x, 18009u)), vec4<bool>(true, true, true, true)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 1u, 1u), vec4<u32>(27964u, 1u, u_input.a, 1u)) & select(vec4<u32>(global1.x, 1u, 42870u, 123181u), vec4<u32>(12195u, 4294967295u, 52792u, u_input.a), vec4<bool>(false, true, true, false)))), 18217u);
    return Struct_2(global1.x, Struct_1(true, u_input.c.zy >> (select(vec2<u32>(u_input.d.x, u_input.d.x) << (u_input.d.yz % vec2<u32>(32u)), u_input.d.zz, all(vec3<bool>(false, true, true))) % vec2<u32>(32u))), countOneBits(u_input.d.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    global0 = array<vec3<u32>, 17>();
    let var_0 = u_input.b.x;
    let var_1 = func_2();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -1287f)) - _wgslsmith_f_op_f32(arg_2 - -1785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) + 674f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2))), -102f)), arg_2, all(!(!vec4<bool>(arg_0.a, var_1.b.a, var_1.b.a, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f))));
    global1 = min(firstLeadingBit(reverseBits(vec4<u32>(arg_0.b.x, 0u, 0u, global1.x) << (reverseBits(vec4<u32>(1u, global1.x, arg_0.b.x, 50713u)) % vec4<u32>(32u)))), max(vec4<u32>(arg_0.b.x, (var_1.a & var_1.a) >> (reverseBits(arg_0.b.x) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 35362u, arg_0.b.x, arg_0.b.x), vec4<u32>(var_1.b.b.x, 5172u, global1.x, 4294967295u) | vec4<u32>(41493u, var_1.b.b.x, 1u, 4294967295u)), var_1.b.b.x), vec4<u32>(max(var_1.b.b.x, _wgslsmith_clamp_u32(global1.x, 22056u, var_1.a)), reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(34288u, 1u))), global1.x, ~1u)));
    return _wgslsmith_dot_vec3_i32(-((firstTrailingBit(vec3<i32>(u_input.b.x, -1i, u_input.b.x)) & u_input.b) & -(u_input.b >> (vec3<u32>(15329u, arg_0.b.x, var_1.a) % vec3<u32>(32u)))), vec3<i32>(var_0, _wgslsmith_sub_i32(abs(2147483647i), -(~u_input.b.x)), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-(2147483647i ^ u_input.b.x), max(func_1(Struct_1(false, u_input.c.zz), u_input.b.xz, -1000f), ~u_input.b.x)), u_input.b.x, ~(-1i)) | (firstTrailingBit(u_input.b) ^ vec3<i32>(_wgslsmith_mod_i32(~2147483647i, _wgslsmith_sub_i32(u_input.b.x, 2147483647i)), -1i, _wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -18499i), vec3<bool>(false, false, true)), u_input.b)));
    global1 = firstLeadingBit(reverseBits(select(~vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 1u, global1.x, global1.x), ~vec4<u32>(1u, global1.x, u_input.d.x, u_input.a)), true)));
    var var_1 = func_2();
    var var_2 = Struct_4(!var_1.b.a);
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(var_0.x >> (~global1.x % 32u), var_0.x, ~(~u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-467f, _wgslsmith_f_op_f32(401f * 237f), _wgslsmith_f_op_f32(max(-1000f, 577f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(-104f, _wgslsmith_f_op_f32(floor(-344f)), _wgslsmith_f_op_f32(-180f - -2564f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-681f, 222f, -336f), vec3<f32>(1175f, -1443f, -830f))))));
}

