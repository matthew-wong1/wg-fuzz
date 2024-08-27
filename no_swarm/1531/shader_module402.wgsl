struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, true, true), i32(-2147483648), vec2<u32>(50956u, 111234u), 328f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global1 = Struct_4(!vec3<bool>(global1.a.x, any(select(vec4<bool>(true, false, global1.a.x, false), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, true, true, global1.a.x))), select(!global1.a.x, true, any(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x)))), u_input.a, firstLeadingBit(global1.c | (vec2<u32>(1u, global1.c.x) & reverseBits(vec2<u32>(1u, 0u)))), _wgslsmith_f_op_f32(sign(arg_0.x)));
    let var_0 = select(vec4<bool>(!global1.a.x, !global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(all(select(global1.a.yx, vec2<bool>(global1.a.x, true), false)), false, !(false || global1.a.x), any(select(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, false, false), false))), vec4<bool>(select(global1.a.x, !global1.a.x, true), -1011f >= arg_0.x, global1.a.x, false), true), select(select(select(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), select(vec4<bool>(global1.a.x, global1.a.x, true, true), vec4<bool>(global1.a.x, global1.a.x, true, true), true), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x)), !vec4<bool>(global1.a.x, global1.a.x, false, true), true), select(select(vec4<bool>(false, true, global1.a.x, true), select(vec4<bool>(false, true, true, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), vec4<bool>(false, false, global1.a.x, false)), false), select(vec4<bool>(true, global1.a.x, false, false), vec4<bool>(true, false, global1.a.x, false), global1.c.x <= 4294967295u), false), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), countOneBits(4426i) == u_input.a)));
    let var_1 = _wgslsmith_dot_vec3_i32(min(~firstTrailingBit(reverseBits(vec3<i32>(11673i, u_input.a, u_input.b.x))), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(2147483647i, 49502i, 1899i) << (vec3<u32>(global1.c.x, global1.c.x, global1.c.x) % vec3<u32>(32u))), ~(vec3<i32>(u_input.b.x, -2147483647i, 13202i) & vec3<i32>(global1.b, global1.b, -2147483647i)), abs(vec3<i32>(-1115i, global1.b, -36549i)))), vec3<i32>(abs(_wgslsmith_sub_i32(~1i, reverseBits(1i))), 1i, 8440i));
    var var_2 = Struct_2(~abs(vec3<i32>(global1.b, var_1, _wgslsmith_add_i32(global1.b, u_input.a))));
    global0 = array<Struct_1, 10>();
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = Struct_2(-vec3<i32>(func_3(vec4<f32>(-546f, global1.d, global1.d, -677f)) & 12921i, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, 506f, -319f, global1.d))), _wgslsmith_sub_i32(2147483647i, arg_0.a.a)));
    let var_1 = Struct_5(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.d, 1941f, true))) == _wgslsmith_f_op_f32(-1f), (arg_1.x && arg_1.x) && all(vec4<bool>(arg_0.b.x, true, false, false)), arg_0.b.x));
    global1 = Struct_4(arg_1.yxy, min(reverseBits(_wgslsmith_div_i32(arg_2.a.x, -2147483647i)) | ~u_input.a, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-9626i, u_input.b.x, global1.b, 0i), vec4<i32>(arg_0.a.a, 0i, -1i, u_input.b.x)), -39028i, 30546i)), abs(vec2<u32>(global1.c.x, 45237u) ^ global1.c) ^ global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(343f, global1.d) + _wgslsmith_f_op_f32(f32(-1f) * -1859f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d))))) * global1.d));
    var var_2 = true;
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(abs(1u), ~arg_3), countOneBits(global1.c.x) | arg_0.a.b.x, 7397u), vec3<u32>(52797u, global1.c.x, global1.c.x));
    return true;
}

fn func_1() -> vec4<u32> {
    global1 = Struct_4(global1.a, 12392i, reverseBits(select(global1.c, ~global1.c, vec2<bool>(func_2(Struct_3(Struct_1(u_input.a, vec3<u32>(4294967295u, 4055u, global1.c.x)), global1.a), vec4<bool>(true, false, true, false), Struct_2(vec3<i32>(2147483647i, global1.b, global1.b)), 11688u), global1.a.x))), _wgslsmith_f_op_f32(-global1.d));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(512f, 438f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-244f, 593f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2621f, global1.d), vec2<f32>(global1.d, global1.d), false))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1241f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, 1000f) * vec2<f32>(global1.d, global1.d))))));
    let var_1 = global1.b;
    let var_2 = Struct_3(Struct_1(-13750i, vec3<u32>(~global1.c.x, _wgslsmith_mod_u32(global1.c.x << (global1.c.x % 32u), 0u), abs(global1.c.x))), vec3<bool>(all(select(!vec2<bool>(global1.a.x, false), select(vec2<bool>(global1.a.x, global1.a.x), global1.a.yz, global1.a.yz), true)), global1.a.x, global1.a.x));
    var var_3 = global1.a;
    return abs(select(vec4<u32>(global1.c.x >> (66732u % 32u), 28737u & countOneBits(var_2.a.b.x), 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 33413u, global1.c.x, var_2.a.b.x), vec4<u32>(var_2.a.b.x, 27452u, 84058u, 0u) ^ vec4<u32>(4294967295u, var_2.a.b.x, 12537u, 1u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(43558u, global1.c.x, global1.c.x, global1.c.x), ~vec4<u32>(19605u, global1.c.x, 47315u, var_2.a.b.x))), 30092u != global1.c.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<f32> {
    let var_0 = countOneBits(_wgslsmith_add_vec3_u32(arg_0.wwx, (min(arg_2.xwz, vec3<u32>(5196u, arg_0.x, global1.c.x)) ^ (vec3<u32>(global1.c.x, arg_2.x, 4083u) << (arg_0.xxw % vec3<u32>(32u)))) << (abs(min(arg_2.xxz, arg_0.xww)) % vec3<u32>(32u))));
    global1 = Struct_4(global1.a, u_input.b.x, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))) - _wgslsmith_f_op_f32(-arg_1.x)));
    var var_1 = vec2<f32>(global1.d, global1.d);
    var var_2 = vec2<i32>(global1.b, u_input.b.x);
    var_2 = -u_input.b;
    return _wgslsmith_f_op_vec4_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global1.c.x << (countOneBits(global1.c.x) % 32u), 10u)];
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(), vec4<f32>(global1.d, -1150f, -1000f, -1387f), vec4<u32>(30351u, 1u, var_0.b.x, 0u) & vec4<u32>(global1.c.x, global1.c.x, 4294967295u, 2047u)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, _wgslsmith_f_op_f32(select(global1.d, global1.d, true)), 907f, _wgslsmith_f_op_f32(118f - global1.d)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(556f, 956f, -1000f, global1.d))))))) + vec4<f32>(1347f, _wgslsmith_f_op_f32(1066f + global1.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.d))), global1.d));
    var var_2 = global1.a;
    var var_3 = Struct_5(!select(global1.a, global1.a, !global1.a));
    var_2 = select(!vec3<bool>(!global1.a.x, false, var_2.x), select(select(!(!var_3.a), vec3<bool>(false, var_0.a > u_input.a, !var_3.a.x), var_2.x), !(!var_3.a), vec3<bool>(any(global1.a), all(!global1.a), false)), (any(select(vec3<bool>(true, var_2.x, true), vec3<bool>(true, false, false), true)) || global1.a.x) || true);
    var_2 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b);
}

