struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<f32, 4> = array<f32, 4>(172f, -408f, 182f, 1292f);

var<private> global3: array<Struct_1, 26>;

var<private> global4: array<vec3<i32>, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c.x, ~4294967295u) & ~(~u_input.d), ~(~abs(global0.c.xz)), ~(~vec2<u32>(1u, 4294967295u))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, _wgslsmith_mult_i32(810i, -u_input.a.x), ~0i), min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 2147483647i), ~vec4<i32>(u_input.a.x, -2147483647i, 0i, -5656i)), abs(vec4<i32>(u_input.b, 2147483647i, 0i, -88805i)))), ~(_wgslsmith_dot_vec3_i32(~global4[_wgslsmith_index_u32(var_0.a.x, 2u)], abs(vec3<i32>(u_input.a.x, -2147483647i, 42143i))) >> (global0.c.x % 32u)));
    global2 = array<f32, 4>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b, u_input.c.wyz);
    let var_3 = max(countOneBits(_wgslsmith_sub_u32(u_input.d.x | 26849u, ~u_input.d.x) >> (select(1u, 1u, !var_2.b) % 32u)), _wgslsmith_add_u32(u_input.c.x, 1u));
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~16998u), 72121u), firstTrailingBit(global0.c.yz), arg_0));
    var var_2 = vec3<u32>(~1u, 22167u, select(abs(4294967295u << (global0.c.x % 32u)), global0.c.x, !(!arg_1))) ^ vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, var_1.a.x & (arg_0.x >> (global0.c.x % 32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, var_1.a.x, 0u), vec3<u32>(46424u, 23195u, arg_0.x)), ~(func_3() >> (_wgslsmith_clamp_u32(global0.c.x, u_input.d.x, 1u) % 32u)));
    let var_3 = !select(select(vec3<bool>(true, !global0.b, global0.b), !select(vec3<bool>(false, false, arg_1), vec3<bool>(false, global0.b, false), vec3<bool>(true, global0.b, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, 15996i), u_input.a.zxy) < min(42337i, u_input.b)), vec3<bool>(any(!vec3<bool>(global0.b, false, global0.b)), arg_1, true), all(!select(vec2<bool>(arg_1, true), vec2<bool>(true, global0.b), vec2<bool>(true, global0.b))));
    var_2 = ~select(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(89516u, 0u, u_input.d.x, 1u), u_input.c)), ~52889u, arg_0.x), vec3<u32>(~56619u, var_1.a.x, ~103830u), !(!var_3));
    return var_2.x;
}

fn func_1() -> bool {
    var var_0 = (i32(-1i) * -(~(u_input.b & u_input.a.x))) | u_input.b;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, 1u, 14792u), select(u_input.c, u_input.c, false), ~u_input.c), vec4<u32>(1u, func_2(u_input.d, false, u_input.a.x), abs(global0.c.x), global0.c.x), !select(vec4<bool>(false, true, global0.b, true), vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(false, true, false, global0.b))), ~(~u_input.c) ^ firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(4294967295u, 1u, 0u, u_input.d.x)))), 4u)], !global0.b));
    global3 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), global0.c.zx)), ~vec2<u32>(105769u, 1u)) | vec2<u32>(10533u, u_input.c.x);
    let var_3 = _wgslsmith_mult_i32(14234i, reverseBits(_wgslsmith_div_i32(10241i, _wgslsmith_clamp_i32(u_input.a.x | -1i, abs(1i), firstTrailingBit(-1i)))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global1 = global0.c.x >> (_wgslsmith_dot_vec3_u32(~u_input.c.yxw, ~global0.c) % 32u);
    let var_0 = _wgslsmith_mod_i32(-31125i, reverseBits(i32(-1i) * -1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(184f, 241f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(step(arg_1.a, -1541f))))));
    let var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(~(~u_input.d), arg_1.c.yy));
    return global2[_wgslsmith_index_u32(arg_1.c.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 26>();
    global0 = Struct_2(_wgslsmith_f_op_f32(func_4(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, global0.b))), true, func_1()), Struct_2(global0.a, false, vec3<u32>(u_input.d.x & global0.c.x, ~69507u, u_input.c.x)), vec4<i32>(1i, u_input.b, min(u_input.b, firstLeadingBit(0i)), ~u_input.a.x >> (1u % 32u)), true)), _wgslsmith_f_op_f32(1839f + global0.a) >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 4u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(26213u, 4u)], global0.a)))), global0.c);
    global3 = array<Struct_1, 26>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(countOneBits(~(~vec2<u32>(72551u, global0.c.x))), (u_input.d & u_input.d) << (_wgslsmith_mod_vec2_u32(global0.c.zy, ~u_input.d) % vec2<u32>(32u))));
    global2 = array<f32, 4>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 4u)]), _wgslsmith_f_op_f32(754f + -977f))))), !global0.b, vec3<u32>(u_input.d.x, u_input.c.x, 1u ^ global0.c.x));
    let var_1 = global4[_wgslsmith_index_u32(reverseBits(~(~(var_0.a.x & 4294967295u)) >> (1u % 32u)), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)) + global0.a)), select(select(select(~vec2<i32>(-23322i, u_input.a.x), select(u_input.a.wz, vec2<i32>(u_input.b, u_input.b), vec2<bool>(global0.b, global0.b)), !global0.b), _wgslsmith_sub_vec2_i32(var_1.yz, select(u_input.a.zw, vec2<i32>(var_1.x, var_1.x), global0.b)), any(!vec4<bool>(false, global0.b, global0.b, global0.b))), firstTrailingBit(var_1.zy), select(!vec2<bool>(global0.b, global0.b), vec2<bool>(true, select(true, global0.b, global0.b)), vec2<bool>(global0.b, global0.b))));
}

