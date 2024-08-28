struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 10>;

var<private> global3: vec4<f32>;

var<private> global4: vec2<u32> = vec2<u32>(99194u, 60342u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(20524i, _wgslsmith_dot_vec2_i32(~arg_0.a, arg_0.a)) >> (~global4.x % 32u);
    let var_1 = ~(vec2<u32>(~4294967295u, u_input.a) & vec2<u32>(_wgslsmith_div_u32(4294967295u, 23593u), ~19920u)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.d, u_input.d), vec2<u32>(~firstLeadingBit(u_input.a), ~_wgslsmith_mult_u32(global4.x, 54131u))) % vec2<u32>(32u));
    let var_2 = countOneBits(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.b, global0.a), firstTrailingBit(vec4<i32>(1i, 67204i, -2147483647i, 1i))), firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, var_0, var_0))) >> (~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(37475u, u_input.e, var_1.x, 27875u), vec4<u32>(u_input.a, global4.x, 4294967295u, var_1.x))) % vec4<u32>(32u)));
    var var_3 = arg_0;
    let var_4 = select(select(vec4<bool>(select(1i < global0.a, -1271f < global3.x, all(vec4<bool>(true, false, false, false))), false, !any(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>((global4.x != 0u) || true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), false)), vec4<bool>(true, !(global0.a > -72637i), true, true), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec3<bool>(false, false, false)))));
    return arg_0.b.x;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(u_input.b, global1.a), global3.wx))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, 697f))) - _wgslsmith_f_op_f32(select(1f, -1000f, all(vec2<bool>(false, true))))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, global3.x, -1000f))))));
    global4 = ~(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, 13026u), ~vec2<u32>(arg_0.x, 88862u)) ^ min(vec2<u32>(5361u, ~86649u), global2[_wgslsmith_index_u32(abs(global4.x ^ 97047u), 10u)]));
    let var_1 = 668f;
    let var_2 = countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, arg_0.x, u_input.e, 168135u) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(65463u, arg_0.x, global4.x, u_input.e), vec4<u32>(0u, 1u, 4338u, arg_0.x))) % vec4<u32>(32u)), firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, global4.x, arg_0.x, 4294967295u), vec4<u32>(37380u, 1u, 101613u, 4294967295u))))));
    return _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(max(1000f, global3.x)));
}

fn func_1() -> vec2<f32> {
    var var_0 = ~(~(~global4.x));
    global3 = vec4<f32>(-790f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(f32(-1f) * -1058f)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.e, 1u), global2[_wgslsmith_index_u32(u_input.a, 10u)] >> (global2[_wgslsmith_index_u32(u_input.a, 10u)] % vec2<u32>(32u)))))), -640f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.wz)))));
    global0 = Struct_2(-8343i);
    var var_2 = true;
    return vec2<f32>(689f, var_1.a.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = ~(-12305i);
    var var_1 = Struct_2(global0.a | arg_2.a.x);
    var var_2 = Struct_2(u_input.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.b - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xz)), vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_2.b.x), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true))))));
    var var_4 = vec3<bool>(false, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_3.x, 4294967295u)) >> (~vec2<u32>(arg_3.x, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.d, u_input.d)) >= arg_3.x, true);
    return vec2<bool>(var_4.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_mod_i32(-2147483647i, countOneBits(~(-u_input.c))));
    let var_0 = 769f;
    var var_1 = ((vec2<i32>(-2147483647i, max(-2147483647i, u_input.c)) << (_wgslsmith_sub_vec2_u32(u_input.d, ~global2[_wgslsmith_index_u32(4294967295u, 10u)]) % vec2<u32>(32u))) ^ ~vec2<i32>(abs(global0.a), _wgslsmith_add_i32(u_input.c, global1.a))) ^ ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, global1.a) ^ vec2<i32>(global1.a, global0.a), vec2<i32>(u_input.c, global1.a)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.wz), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1484f + -1659f) * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-567f * global3.x))))));
    global4 = ~abs(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, global4.x), 10u)]));
    let var_3 = func_4(var_2.a.x, global4.x, Struct_3(-_wgslsmith_add_vec2_i32(-vec2<i32>(-17737i, u_input.b), vec2<i32>(0i, u_input.b)), _wgslsmith_f_op_vec2_f32(func_1())), global2[_wgslsmith_index_u32(max(u_input.d.x, u_input.d.x), 10u)]);
    let var_4 = var_3.x & true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~reverseBits(vec4<u32>(global4.x, 98829u, 50188u, global4.x))), 55914u, global3.wyy, select(vec4<u32>(global4.x, global4.x, 42718u, max(u_input.a, global4.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14997u, 4666u, u_input.e), vec4<u32>(87u, global4.x, u_input.a, 4294967295u)) % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, min(4294967295u, 0u), _wgslsmith_clamp_u32(0u, 11397u, 4294967295u), 50553u), vec4<u32>(global4.x, global4.x, 4294967295u, global4.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.e, 1u), vec4<u32>(u_input.a, 0u, global4.x, u_input.d.x)) % vec4<u32>(32u))), var_3.x));
}

