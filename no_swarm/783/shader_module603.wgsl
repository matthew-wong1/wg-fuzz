struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false));

var<private> global2: array<i32, 13>;

var<private> global3: vec3<f32> = vec3<f32>(1000f, -456f, 868f);

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = all(global1[_wgslsmith_index_u32(u_input.d.x, 32u)]);
    var var_1 = !vec4<bool>(var_0, var_0, any(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))) | var_0, 2147483647i <= (u_input.c.x | global0.a));
    global1 = array<vec4<bool>, 32>();
    let var_2 = Struct_4(!(!(!vec3<bool>(var_1.x, var_0, true))));
    var var_3 = Struct_5(-4597i);
    return -1000f;
}

fn func_2() -> Struct_2 {
    global2 = array<i32, 13>();
    let var_0 = global1[_wgslsmith_index_u32(min(0u, 59917u), 32u)];
    let var_1 = 1u;
    let var_2 = 17070i;
    global0 = Struct_5(~1i);
    return Struct_2(Struct_1(!vec3<bool>(any(global1[_wgslsmith_index_u32(36563u, 32u)]), true, any(var_0.xyz)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x))), -836f, vec3<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1000f)), _wgslsmith_f_op_f32(select(-804f, 1337f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 850f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, global3.x, 1000f) * vec3<f32>(930f, 1166f, 952f))))), Struct_1(vec3<bool>(any(var_0.zy), select(true, false, !var_0.x), all(select(var_0.xww, vec3<bool>(var_0.x, var_0.x, false), var_0.wwz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-847f * -1673f))) * _wgslsmith_f_op_f32(trunc(2031f))), global3.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, global3.x, 501f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(global3.x)), 108f, -219f))), vec3<f32>(-491f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1010f + global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(706f)) - _wgslsmith_f_op_f32(round(global3.x))))), Struct_1(var_0.zxz, -423f, global3.x, vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, 765f)) - _wgslsmith_f_op_f32(-680f + 676f)), global3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 585f, -137f)))), true);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    global1 = array<vec4<bool>, 32>();
    var var_0 = Struct_3(_wgslsmith_mod_i32(1i, select(select(-4843i, 2147483647i, arg_1.d.c.a.x), 1i, !arg_1.d.d) | _wgslsmith_dot_vec4_i32(arg_1.b, -vec4<i32>(-16224i, global2[_wgslsmith_index_u32(32967u, 13u)], global0.a, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), (abs(vec4<i32>(0i, arg_0, 51785i, 75341i)) >> (vec4<u32>(1u, ~arg_1.c.x, ~arg_1.c.x, ~0u) % vec4<u32>(32u))) >> (min(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1.c.x, 4294967295u), vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, u_input.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(38052u, 4294967295u, arg_1.c.x, 1u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x), vec4<u32>(32143u, u_input.b.x, arg_1.c.x, u_input.d.x))), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), ~u_input.d.x, ~1u)) % vec4<u32>(32u)), ~(~(arg_1.c << (arg_1.c % vec3<u32>(32u))) ^ u_input.b), func_2(), false);
    var var_1 = arg_0 ^ 2047i;
    global3 = var_0.d.c.e;
    var var_2 = firstTrailingBit(~u_input.b);
    return arg_1.d.c.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(exp2(global3.x)));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-12083i, Struct_3(0i, vec4<i32>(u_input.c.x, global0.a, global0.a, -1i), vec3<u32>(u_input.a, u_input.d.x, 63228u), Struct_2(Struct_1(vec3<bool>(true, false, true), global3.x, -653f, vec3<f32>(var_0.x, global3.x, 1582f), var_0), Struct_1(vec3<bool>(true, true, false), global3.x, 1603f, vec3<f32>(global3.x, global3.x, global3.x), vec3<f32>(406f, global3.x, global3.x)), Struct_1(vec3<bool>(false, false, false), var_0.x, global3.x, var_0, var_0), true), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-513f)) * _wgslsmith_f_op_f32(f32(-1f) * -1012f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1236f), var_0.x);
    let var_1 = reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.d.x), u_input.b), abs(~vec3<u32>(55474u, 14102u, 0u)))) >> (u_input.b % vec3<u32>(32u));
    global3 = func_2().b.d;
    let var_2 = Struct_1(vec3<bool>(!func_2().b.a.x, any(vec3<bool>(false, false, all(vec3<bool>(false, true, true)))), (_wgslsmith_f_op_f32(-global3.x) == global3.x) == true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) * _wgslsmith_f_op_f32(global3.x * -1000f)))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-172f * global3.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, 807f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(var_0 - var_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(597f, -146f, _wgslsmith_f_op_f32(-159f + -1256f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))));
    global1 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, 1463f, global3.x, -140f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(631f, var_2.d.x, global3.x, -172f)))))), ~abs(vec4<i32>(max(2147483647i, 77111i), 1i, min(global2[_wgslsmith_index_u32(0u, 13u)], global0.a), global0.a)));
}

