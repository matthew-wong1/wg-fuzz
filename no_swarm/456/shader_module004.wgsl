struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: array<Struct_2, 16>;

var<private> global3: bool = false;

var<private> global4: array<u32, 10>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(10058u, 23u)], _wgslsmith_div_f32(arg_2, -1000f), _wgslsmith_f_op_f32(ceil(371f)), _wgslsmith_f_op_f32(-arg_2))) * vec4<f32>(-241f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_f32(max(arg_2, -1000f))))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -416f)))))));
    let var_2 = -2147483647i ^ min(-51586i, u_input.c & 10776i);
    let var_3 = -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(var_2, -44522i, arg_1.x, u_input.c), vec4<i32>(2147483647i, var_2, var_2, -44870i), false), vec4<i32>(reverseBits(arg_1.x), var_2 | arg_1.x, abs(1i), 65627i ^ arg_1.x), vec4<i32>(u_input.c, abs(38644i), arg_1.x & u_input.c, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(-arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, var_2, 3231i), vec3<i32>(var_2, 2147483647i, -1i)), firstTrailingBit(u_input.c), _wgslsmith_sub_i32(-25757i, var_2)), -vec4<i32>(var_2, 1i, var_2, 1i)));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(-1157f - -996f), var_1, _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -385f, -1047f, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(arg_3, 23u)], var_0.x, 1580f, global0[_wgslsmith_index_u32(arg_0, 23u)]), false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1909f, var_1, 1058f, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-562f, 1612f, global0[_wgslsmith_index_u32(0u, 23u)], var_1) + vec4<f32>(1782f, -260f, arg_2, 334f)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_0.x), _wgslsmith_f_op_f32(-arg_2), global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 10u)], 23u)], _wgslsmith_f_op_f32(var_0.x - -873f))))), true));
    return _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(var_3.yx, abs(vec2<i32>(arg_1.x, min(var_2, var_3.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = abs(func_3(~(~_wgslsmith_mod_u32(u_input.a, 0u)), vec2<i32>(24155i, arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -197f), 34518u));
    global0 = array<f32, 23>();
    let var_1 = true;
    var var_2 = vec3<u32>(arg_2.b.b, global4[_wgslsmith_index_u32(abs(u_input.b), 10u)], _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(~(0u >> (u_input.b % 32u)), _wgslsmith_mult_u32(firstTrailingBit(arg_2.b.d.x), max(1u, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.e, _wgslsmith_f_op_f32(sign(-269f)), arg_0.a) - _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 32u)]));
    return arg_1.wxy;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(u_input.a, 10u)], 23u)], u_input.b, ~(~(u_input.c << (u_input.d % 32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(0u), ~u_input.d, global4[_wgslsmith_index_u32(~u_input.d, 10u)]), func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)], 27618u, u_input.c, vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44660u, 10u)], 10u)], global4[_wgslsmith_index_u32(1u, 10u)], u_input.b), -1916f), vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 10u)], u_input.d, 29736u), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29030u, 10u)], 16u)]) | ~vec3<u32>(u_input.d, u_input.a, 1118u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 23u)])), -667f), -1033f, true)) + global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4967u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global4[_wgslsmith_index_u32(24629u, 10u)], 47029u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 4294967295u, u_input.a)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b), 10u)])), 10u)], 23u)]));
    global3 = ~firstLeadingBit(74491u) > (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(67072u, u_input.b), var_0.d.x, _wgslsmith_mult_u32(u_input.b, u_input.a)), ~vec3<u32>(var_0.d.x, var_0.d.x, 8038u)) | ~1u);
    let var_1 = -min(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 36646i), vec2<i32>(var_0.c, 10810i))), ~vec2<i32>(u_input.c, -28729i), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, 26268i), abs(vec2<i32>(var_0.c, 2147483647i)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 12688i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_0.c, var_0.c, var_0.c), vec4<i32>(-2147483647i, 28566i, u_input.c, 9057i))), var_0.c));
    global4 = array<u32, 10>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(978f, -2055f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-316f, var_0.a))))) * vec2<f32>(global0[_wgslsmith_index_u32(max(4410u, var_0.d.x), 23u)], var_0.e)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1352f * -345f), global0[_wgslsmith_index_u32(~u_input.b, 23u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(294f, global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 23u)])))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))))));
    return StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e), -1717f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-907f * global0[_wgslsmith_index_u32(0u, 23u)]) + -1097f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~u_input.b, 16u)];
    let x = u_input.a;
    s_output = func_1();
}

