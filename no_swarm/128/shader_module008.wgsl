struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(11151u, 70849u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-742f, 1024f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-379f)), _wgslsmith_f_op_f32(trunc(297f)), all(vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(180f, -629f))))))));
    let var_1 = vec3<bool>(true, (0u >> (firstLeadingBit(~global1.x) % 32u)) <= ~0u, var_0);
    var var_2 = Struct_1(vec2<i32>(arg_1, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(reverseBits(u_input.c), arg_1))), !(!var_0), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(-1i, arg_1, arg_1, -52890i))), (vec4<i32>(u_input.c, -18639i, 2147483647i, arg_1) | vec4<i32>(-2147483647i, u_input.b, -1i, arg_1)) << (vec4<u32>(0u, 80448u, 1u, global1.x) % vec4<u32>(32u))), u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 7032i), vec2<i32>(u_input.a.x, u_input.b))));
    var var_3 = !(!(select(global1.x, global1.x, var_2.b) >= abs(~0u)));
    var var_4 = Struct_1(vec2<i32>(abs(min(-9576i << (global1.x % 32u), countOneBits(-54544i))), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_2.c.x, -2147483647i, -14172i), u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 37300i, u_input.b), u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 4294967295u), min(vec4<u32>(30556u, 1u, 17509u, 1u), vec4<u32>(global1.x, global1.x, 4294967295u, 5925u))), ~select(vec4<u32>(1u, 23134u, global1.x, 0u), vec4<u32>(0u, 1u, global1.x, 4294967295u), vec4<bool>(false, false, arg_0, false))) == 4294967295u, vec2<i32>(_wgslsmith_add_i32(-7181i, var_2.a.x), _wgslsmith_clamp_i32(u_input.c, -12073i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, 1i, arg_1, arg_1), vec4<i32>(2147483647i, -39738i, arg_1, 0i)))));
    return vec2<bool>(!var_0, -1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-318f, 1000f)))));
}

fn func_2() -> vec2<u32> {
    var var_0 = vec3<i32>(max(countOneBits(~(u_input.c & 1i)), ~u_input.b), u_input.c, -340i);
    global1 = select(vec2<u32>(~global1.x, global1.x), ~vec2<u32>(countOneBits(global1.x), global1.x) & vec2<u32>(0u, (global1.x | global1.x) >> (global1.x % 32u)), !select(select(vec2<bool>(false, false), func_3(false, var_0.x), vec2<bool>(false, true)), vec2<bool>(true, true), !(4294967295u <= global1.x)));
    var var_1 = false;
    var var_2 = ~36851u;
    var_0 = _wgslsmith_add_vec3_i32(u_input.a, u_input.a);
    return vec2<u32>(abs(~global1.x), global1.x);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global1 = ~(_wgslsmith_mult_vec2_u32(func_2(), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, global1.x), vec4<u32>(global1.x, 0u, 24437u, 30841u)), 1u)) | select(~vec2<u32>(global1.x, 25702u), ~vec2<u32>(global1.x, 0u) & firstLeadingBit(vec2<u32>(67630u, global1.x)), vec2<bool>(true, true)));
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0))));
    let var_0 = true;
    var var_1 = Struct_3(Struct_2(Struct_1(countOneBits(vec2<i32>(1i, u_input.b)), true, select(firstTrailingBit(vec2<i32>(26050i, -88281i)), select(vec2<i32>(21811i, 1i), u_input.a.zz, vec2<bool>(false, var_0)), true)), global1.x));
    return !select(select(vec2<bool>(!var_1.a.a.b, all(vec4<bool>(var_1.a.a.b, true, false, var_0))), select(func_3(var_0, u_input.b), select(vec2<bool>(true, true), vec2<bool>(var_1.a.a.b, var_1.a.a.b), var_0), true), arg_0 < 781f), vec2<bool>(var_0, _wgslsmith_f_op_f32(step(1594f, arg_0)) <= 414f), var_1.a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-578f)) + _wgslsmith_f_op_f32(floor(-1312f)));
    var var_0 = !func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2755f - -1000f)), _wgslsmith_f_op_f32(max(-1547f, _wgslsmith_f_op_f32(floor(1000f))))));
    var var_1 = Struct_3(Struct_2(Struct_1(reverseBits(vec2<i32>(u_input.a.x, u_input.c)), !func_1(-447f).x, countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -79133i), vec2<i32>(u_input.c, 1868i)))), abs(~85671u)));
    global1 = vec2<u32>(~var_1.a.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(global1.x, var_1.a.b)), select(vec2<u32>(1u, 1u), vec2<u32>(var_1.a.b, var_1.a.b), true)), abs(~vec2<u32>(49419u, var_1.a.b))));
    var_1 = Struct_3(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-864f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1543f))))) - _wgslsmith_f_op_f32(1057f - _wgslsmith_f_op_f32(abs(464f)))), global1.x, 1u);
}

