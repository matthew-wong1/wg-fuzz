struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: u32 = 61714u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(max(-1327f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d - global0.d), global0.d)))), global0.d);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(359f, 1000f), vec2<f32>(-425f, global0.d), vec2<bool>(global0.a, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d)))) * vec2<f32>(_wgslsmith_f_op_f32(max(-1142f, -520f)), _wgslsmith_f_op_f32(round(-1046f)))), global1.x, true, u_input.c.x, ~_wgslsmith_mult_i32(u_input.c.x & 12740i, -2147483647i)), (global1.xy << (~(~vec2<u32>(0u, global1.x)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mult_u32(global1.x, global0.c), 78586u) % vec2<u32>(32u)), Struct_2(all(vec2<bool>(all(vec2<bool>(global0.a, global0.a)), global1.x > global1.x)), global0.b, min(_wgslsmith_clamp_u32(~1u, global0.c | 84835u, 16874u << (0u % 32u)), select(1u, ~global0.c, global0.a || global0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.d, 187f)))));
    var var_1 = -u_input.c << (~(~vec3<u32>(56372u, ~1u, abs(var_0.b.x))) % vec3<u32>(32u));
    global0 = Struct_2(!select(var_0.a.c, var_0.c.a, true), var_0.c.b ^ var_1.x, ~(~4294967295u), _wgslsmith_f_op_f32(-969f + var_0.a.a.x));
    global0 = Struct_2(global0.a, reverseBits(abs(0i)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f * _wgslsmith_f_op_f32(f32(-1f) * -554f))));
    let var_2 = _wgslsmith_mult_vec2_u32(global1.yz, select(~var_0.b, countOneBits(global1.yz >> (firstTrailingBit(var_0.b) % vec2<u32>(32u))), !any(select(vec4<bool>(var_0.c.a, var_0.a.c, false, false), vec4<bool>(true, true, var_0.a.c, global0.a), false))));
    return _wgslsmith_f_op_f32(-1915f + var_0.a.a.x);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global2 = 68054u ^ ~((42441u ^ countOneBits(global1.x)) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(103095u, global0.c, 1u), vec3<u32>(global0.c, global1.x, global0.c)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, global0.d)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d, 584f)))))), global1.x, false, ~_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 3848i, u_input.b, u_input.a), vec4<i32>(1i, global0.b, u_input.a, -19799i), vec4<i32>(46826i, global0.b, -45836i, u_input.a)), vec4<i32>(~(-43498i), _wgslsmith_mod_i32(-37466i, global0.b), -24381i, ~global0.b)), _wgslsmith_mod_i32(reverseBits(abs(global0.b) << (1u % 32u)), ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.c.x, global0.b)))));
    global0 = Struct_2(!(~countOneBits(var_0.b) >= ~global1.x), select(1180i, 1i, true), var_0.b, global0.d);
    let var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)), var_0.a.x), _wgslsmith_f_op_f32(func_3())), global0.c, true, global0.b, 68790i), ~select((vec2<u32>(4294967295u, 40302u) << (global1.yx % vec2<u32>(32u))) | ~vec2<u32>(global0.c, arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 55530u), vec2<u32>(global1.x, arg_0)), select(vec2<bool>(var_0.c, global0.a), vec2<bool>(var_0.c, false), vec2<bool>(true, global0.a))), Struct_2(true, 60910i, ~arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d))))));
    let var_2 = !global0.a;
    return countOneBits(select(select(~vec3<u32>(1u, 0u, 55276u), vec3<u32>(global1.x, arg_0, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(var_1.a.c, false, true), vec3<bool>(var_0.c, var_1.a.c, true))) ^ reverseBits(vec3<u32>(var_0.b, 5321u, arg_0)), ~vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, global1.x, global0.c), ~global0.c), select(vec3<bool>(!var_0.c, true, !var_2), select(select(vec3<bool>(true, var_1.c.a, false), vec3<bool>(true, var_1.c.a, true), vec3<bool>(global0.a, global0.a, true)), select(vec3<bool>(var_1.c.a, var_0.c, var_0.c), vec3<bool>(global0.a, var_0.c, var_1.a.c), vec3<bool>(false, var_2, true)), vec3<bool>(var_2, true, false)), all(!vec2<bool>(var_1.c.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~global0.c << (abs(firstLeadingBit(~26819u)) % 32u));
    global1 = func_1(~(~global1.x));
    var var_0 = select(!select(vec3<bool>(select(global0.a, true, global0.a), true, true), select(!vec3<bool>(global0.a, true, true), !vec3<bool>(global0.a, true, global0.a), select(true, global0.a, global0.a)), vec3<bool>(all(vec2<bool>(false, true)), 22256u >= global0.c, global0.a)), vec3<bool>(any(select(!vec4<bool>(global0.a, global0.a, false, global0.a), !vec4<bool>(global0.a, global0.a, false, true), select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(global0.a, global0.a, global0.a, false), false))), global0.b <= (global0.b >> (global0.c % 32u)), global0.d != -958f), false);
    global1 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(global1.yy, global1.yz), max(0u, reverseBits(1u)), 122284u);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, global0.d) - vec2<f32>(-1331f, -569f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -142f) - vec2<f32>(global0.d, global0.d))))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 23030u, global1.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, 1u) >> (vec4<u32>(42796u, 56174u, 4294967295u, global1.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 47219u, global0.c, 0u), vec4<u32>(6258u, 4294967295u, global0.c, global1.x)))), all(var_0.xx) & true, _wgslsmith_div_i32(0i, 15811i), -54274i), vec2<u32>(4294967295u, reverseBits(11839u)), Struct_2(global0.a, abs(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(2147483647i, 0i, 60045i))), ~(~global0.c), _wgslsmith_f_op_f32(global0.d + -655f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.d), vec3<u32>(~var_1.b.x, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(37930u, 0u, 18479u, global1.x)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global0.c, 54512u, global0.c, 4294967295u)), vec4<u32>(global0.c, global1.x, 4294967295u, global1.x), vec4<u32>(1u, 1u, global1.x, global1.x) ^ vec4<u32>(56521u, var_1.a.b, global0.c, global1.x))), max(53523u << (~global0.c % 32u), global0.c >> (~1u % 32u))));
}

