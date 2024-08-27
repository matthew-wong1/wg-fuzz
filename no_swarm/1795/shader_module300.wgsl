struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<i32, 28>;

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(all(vec3<bool>(false, true, true)));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1321f - -2316f) - _wgslsmith_f_op_f32(309f + -1000f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-2654f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f * 526f) * _wgslsmith_f_op_f32(floor(-1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(720f, 1220f, true))))), 1f, -500f, _wgslsmith_f_op_f32(f32(-1f) * -1040f)));
    var var_3 = var_0.a;
    var_3 = any(select(select(select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(var_0.a, false)), vec2<bool>(false, false)), vec2<bool>(var_0.a, false), any(vec3<bool>(var_0.a, var_0.a, var_0.a))), vec2<bool>(var_0.a, false), !select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true), var_0.a), vec2<bool>(true, true), !vec2<bool>(true, var_0.a))));
    return var_2.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec4<f32>(-1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-132f * -980f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_f32(f32(-1f) * -1306f))));
    global0 = array<Struct_1, 10>();
    var var_1 = vec4<bool>(arg_0.a, true, true, true);
    var var_2 = Struct_3(Struct_2(select(true, arg_0.a, true)), 1u, ~(-u_input.b.zwy), false, !var_1.yxy);
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2388f), 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), vec4<u32>(34231u, ~_wgslsmith_add_u32(4079u | var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 23889u, var_2.b, 20987u), vec4<u32>(var_2.b, 0u, var_2.b, 7870u))), ~_wgslsmith_sub_u32(var_2.b, 1u), _wgslsmith_mult_u32(11534u, ~var_2.b)), Struct_2(all(!var_1.yxy)), vec2<u32>(var_2.b, var_2.b));
    return var_3.c;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    return -11747i;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 10>();
    let var_0 = func_4(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~1u), 28u)], func_2(Struct_2(any(vec2<bool>(true, true)) && false)), !select(vec4<bool>(func_2(Struct_2(false)).a, true, all(vec2<bool>(true, true)), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))));
    var var_1 = -1086f;
    var var_2 = 4294967295u;
    return Struct_2(true);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_sub_u32(~var_0.b, _wgslsmith_add_u32(reverseBits(arg_0.d.x) & select(3491u, 1u, arg_0.c.a), ~142211u >> (_wgslsmith_clamp_u32(4294967295u, 6120u, arg_1.b) % 32u))) | countOneBits(_wgslsmith_sub_u32(countOneBits(5291u), 1u));
    global0 = array<Struct_1, 10>();
    return 116f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    global1 = array<i32, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(892f - -151f))))), _wgslsmith_f_op_f32(func_5(Struct_4(_wgslsmith_f_op_f32(-1000f * -277f), ~vec4<u32>(54627u, 1u, 4294967295u, 4294967295u), func_1(), vec2<u32>(29887u, 33922u)), Struct_3(Struct_2(true), 1u, _wgslsmith_mod_vec3_i32(u_input.b.wwz, vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])), all(vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))))) + vec2<f32>(-1506f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f * 180f))))));
    global0 = array<Struct_1, 10>();
    var var_1 = !select(vec4<bool>(func_2(Struct_2(true)).a, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 28u)] != -19720i, true, false), vec4<bool>(true, !all(vec2<bool>(false, true)), any(vec2<bool>(true, true)) && (-37472i >= u_input.a.x), true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global2 = false;
    global2 = false;
    let var_2 = vec3<u32>(~12221u, 21296u, min(1u, ~70739u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -43316i, ~select(~(~vec3<u32>(0u, 4294967295u, var_2.x)), reverseBits(~var_2), vec3<bool>(var_1.x, true, var_1.x)), min(u_input.a.x, -max(-2147483647i, global1[_wgslsmith_index_u32(~var_2.x, 28u)])), -_wgslsmith_add_i32(u_input.b.x, global1[_wgslsmith_index_u32(var_2.x, 28u)]));
}

