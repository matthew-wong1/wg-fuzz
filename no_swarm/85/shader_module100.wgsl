struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-539f, 549f, 508f, 697f)));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec3<bool>, 10>;

var<private> global3: vec2<u32> = vec2<u32>(1u, 15314u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -544f) * _wgslsmith_f_op_f32(-global0.a.a.x)), arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(global0.a.a.x - _wgslsmith_f_op_f32(abs(global0.a.a.x)))));
    return ~90591u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    global0 = Struct_2(global0.a);
    let var_0 = Struct_2(arg_1);
    global0 = Struct_2(global0.a);
    let var_1 = u_input.b;
    var var_2 = 12499u;
    return Struct_2(var_0.a);
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 27>();
    var var_0 = select(~vec4<i32>(abs(~0i), u_input.b.x, max(u_input.b.x & -25434i, u_input.b.x), _wgslsmith_clamp_i32(0i, select(u_input.a, u_input.a, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-2147483647i, 2147483647i)))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), ~vec2<i32>(-1460i, -34927i)), u_input.b.x, u_input.a, countOneBits(u_input.a) >> (~global3.x % 32u)), true || any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a.zxw));
    var var_3 = _wgslsmith_f_op_vec4_f32(-global0.a.a);
    return max(~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, 0u), 40727u, 1u)), ~(~16669u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 10>();
    global0 = func_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global3.x, 42634u)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.c, 1u), vec2<u32>(67979u, 19870u)) & vec2<u32>(u_input.c, 0u), vec2<u32>(19602u & global3.x, u_input.c >> (global3.x % 32u)))), global1[_wgslsmith_index_u32(39387u, 27u)], firstLeadingBit(abs(vec3<u32>(u_input.c, global3.x, global3.x) | vec3<u32>(0u, 4294967295u, u_input.c)) | vec3<u32>(~84837u, 1u, func_1(global1[_wgslsmith_index_u32(4294967295u, 27u)], global0.a.a.www))), u_input.c);
    var var_0 = countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global3.x, 24718u, 43707u), ~vec3<u32>(u_input.c, 27740u, 21270u)), vec3<u32>(~u_input.c, func_3(), min(14208u, 0u)), ~(vec3<u32>(global3.x, 41103u, global3.x) | vec3<u32>(global3.x, 23788u, global3.x)))) ^ select(~select(vec3<u32>(13758u, 1u, global3.x), vec3<u32>(1u, 20466u, 43979u), global2[_wgslsmith_index_u32(global3.x, 10u)]) ^ ~(vec3<u32>(38763u, u_input.c, global3.x) | vec3<u32>(1u, u_input.c, u_input.c)), vec3<u32>(~0u, global3.x, ~0u) | ~vec3<u32>(47188u, global3.x, u_input.c), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, 1000f) - vec4<f32>(global0.a.a.x, global0.a.a.x, -760f, global0.a.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(step(global0.a.a.x, global0.a.a.x)), 1612f, _wgslsmith_f_op_f32(-global0.a.a.x)))));
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(reverseBits(2330i), ~firstLeadingBit(1i)), -(i32(-1i) * -30050i), u_input.b, _wgslsmith_div_i32(~u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1943f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.yxx + vec3<f32>(-397f, global0.a.a.x, var_1.a.x))))));
}

