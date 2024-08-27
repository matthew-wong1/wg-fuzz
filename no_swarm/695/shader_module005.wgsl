struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-50653i, i32(-2147483648), 27568i), vec3<i32>(-6734i, -373i, -69660i), vec3<i32>(50032i, 12558i, -2416i), vec3<i32>(1i, -20092i, 0i), vec3<i32>(-1i, 36792i, -12761i), vec3<i32>(58914i, i32(-2147483648), -1i), vec3<i32>(-1i, -59290i, 0i), vec3<i32>(51006i, -2117i, 56039i), vec3<i32>(-1i, i32(-2147483648), 5209i), vec3<i32>(23658i, 2147483647i, 20210i), vec3<i32>(39976i, 2147483647i, -11794i), vec3<i32>(i32(-2147483648), -1807i, 43527i), vec3<i32>(11127i, 0i, 1i), vec3<i32>(4884i, 17539i, 1i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 9610i, -26451i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(23075i, 1i, 70116i), vec3<i32>(0i, 1i, 10967i), vec3<i32>(1594i, -49250i, 0i), vec3<i32>(20736i, 2627i, 53584i), vec3<i32>(-1i, 2147483647i, 36447i), vec3<i32>(49064i, -1i, -4966i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(2147483647i, i32(-2147483648), -107615i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-13298i, 14855i, -1i));

var<private> global2: Struct_2 = Struct_2(true, Struct_1(23333i, 14658u), -271f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_5(Struct_4(~(~abs(u_input.a.yy)), Struct_2(false, global2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c)))), Struct_1(i32(-1i) * -35882i, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(0u, 4294967295u)))), false, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * 667f)))), global2.c, 140f, global2.c), Struct_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -43688i) << (vec2<u32>(global2.b.b, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-1i, 1i) ^ vec2<i32>(arg_0, global2.b.a)), Struct_2(global2.a, Struct_1(1i, u_input.b), _wgslsmith_f_op_f32(round(-839f))), global0[_wgslsmith_index_u32(reverseBits(reverseBits(0u << (u_input.a.x % 32u))), 22u)], all(vec4<bool>(true, true, true, true)), ~vec4<u32>(~u_input.a.x, abs(93250u), 63723u, global2.b.b)));
    global2 = var_0.a.b;
    global1 = array<vec3<i32>, 27>();
    var var_1 = select(vec4<bool>(!global2.a, var_0.b, (0i >> (~global2.b.b % 32u)) <= -17975i, true), select(vec4<bool>(all(vec3<bool>(true, true, true)), true, select(select(false, true, false), true, true), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), select(vec4<bool>(global2.a, false, false, false), vec4<bool>(false, var_0.a.b.a, global2.a, var_0.a.b.a), vec4<bool>(true, var_0.a.b.a, false, global2.a))), !(!vec4<bool>(global2.a, true, false, var_0.b)), select(vec4<bool>(var_0.d.b.a, false, global2.a, false), vec4<bool>(var_0.d.b.a, var_0.d.d, true, false), vec4<bool>(var_0.b, var_0.a.b.a, true, global2.a))), global2.a), select(!((11742u << (u_input.a.x % 32u)) <= 19064u), !global2.a, true));
    global0 = array<Struct_1, 22>();
    return _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.d.e, vec4<u32>(var_0.a.c.b, u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(u_input.b, global2.b.b))), var_0.d.e.yx), var_0.d.e.ww);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = global2.b.a;
    let var_1 = Struct_1(arg_2, ~(arg_0 ^ _wgslsmith_clamp_u32(~101458u, ~1135u, _wgslsmith_mult_u32(arg_0, arg_0))));
    let var_2 = arg_3.a.x;
    global0 = array<Struct_1, 22>();
    var var_3 = arg_3;
    return true;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(func_4(~(~11567u), global2.b.b, -2147483647i, Struct_4(countOneBits(func_3(2147483647i)), Struct_2(true, Struct_1(arg_0, u_input.b), _wgslsmith_f_op_f32(arg_1 + -595f)), global2.b)), global0[_wgslsmith_index_u32(global2.b.b, 22u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)))))));
    global2 = var_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(global2.c, arg_1)), arg_1), arg_1) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c, _wgslsmith_f_op_f32(-arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(966f, global2.c) + _wgslsmith_f_op_f32(abs(global2.c))), global2.c), !vec2<bool>(any(vec2<bool>(false, global2.a)), var_1.a != true))));
    global1 = array<vec3<i32>, 27>();
    return global0[_wgslsmith_index_u32(~((abs(1u) >> (abs(~4294967295u) % 32u)) >> (_wgslsmith_clamp_u32(~11103u, 0u, ~u_input.a.x) % 32u)), 22u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), global2.c);
    return Struct_2(!all(vec3<bool>(global2.a, false, global2.a)) & !global2.a, func_2(_wgslsmith_mod_i32(reverseBits(global2.b.a), -(~(-2147483647i))), _wgslsmith_f_op_f32(max(818f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -174f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(select(vec2<u32>(~(~130624u), global2.b.b), vec2<u32>(~50292u, min(u_input.b, 6367u)) >> (u_input.a.xy % vec2<u32>(32u)), global2.a));
    let var_0 = global2.b.b;
    global2 = Struct_2(true, global0[_wgslsmith_index_u32(67661u, 22u)], _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(round(-1519f))));
    let var_1 = Struct_5(Struct_4(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.xy, u_input.a.xy), _wgslsmith_div_vec2_u32(u_input.a.yz, ~u_input.a.yx)), Struct_2(true, func_1(u_input.a.zz & vec2<u32>(1u, global2.b.b)).b, _wgslsmith_f_op_f32(global2.c - global2.c)), func_2(global2.b.a, global2.c)), global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(898f + global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2323f * 707f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -811f)) * global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + global2.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-484f, -898f, global2.c, -172f), vec4<f32>(-298f, global2.c, 713f, -173f))), vec4<f32>(global2.c, global2.c, -2205f, -1978f))))), Struct_3(global2.b.a, Struct_2(select(!global2.a, true, true), global2.b, _wgslsmith_f_op_f32(-1f)), func_2(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f + 176f) + global2.c)), !global2.a, vec4<u32>(firstLeadingBit(~14432u), abs(global2.b.b), ~0u, min(~4294967295u, 15753u))));
    global2 = Struct_2(any(vec2<bool>(all(select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, global2.a), vec2<bool>(false, false))), any(select(vec3<bool>(global2.a, global2.a, var_1.b), vec3<bool>(global2.a, var_1.d.d, false), global2.a)))), Struct_1(global2.b.a, 104497u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(global2.c * 2179f)) * -476f))));
    let var_2 = u_input.a.x << (((max(firstLeadingBit(var_1.a.b.b.b), 4294967295u) << (37758u % 32u)) >> (23815u % 32u)) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, global2.c) - vec2<f32>(-713f, var_1.d.b.c)), _wgslsmith_f_op_vec2_f32(var_1.c.yy + _wgslsmith_f_op_vec2_f32(var_1.c.wx - vec2<f32>(global2.c, global2.c)))))));
    let var_4 = var_1;
    var var_5 = _wgslsmith_f_op_f32(-910f * 1282f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.e);
}

