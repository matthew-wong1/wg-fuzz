struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<u32>(4294967295u, 53003u)), Struct_4(vec2<u32>(60570u, 0u)), Struct_4(vec2<u32>(20116u, 1u)), Struct_4(vec2<u32>(0u, 1u)), Struct_4(vec2<u32>(63404u, 41942u)), Struct_4(vec2<u32>(36758u, 12194u)), Struct_4(vec2<u32>(1u, 11718u)), Struct_4(vec2<u32>(34822u, 4080u)), Struct_4(vec2<u32>(16099u, 1u)), Struct_4(vec2<u32>(0u, 4294967295u)), Struct_4(vec2<u32>(1u, 1u)), Struct_4(vec2<u32>(1u, 1u)), Struct_4(vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec2<u32>(0u, 52050u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(4294967295u, 28166u)), Struct_4(vec2<u32>(4601u, 0u)), Struct_4(vec2<u32>(1u, 8019u)), Struct_4(vec2<u32>(9721u, 35826u)), Struct_4(vec2<u32>(4294967295u, 65485u)), Struct_4(vec2<u32>(4294967295u, 16116u)), Struct_4(vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec2<u32>(0u, 9627u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = Struct_2(-1i, _wgslsmith_add_i32(firstTrailingBit(arg_0.x), 16442i));
    let var_1 = Struct_2(-1i, ~min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b, var_0.a), -12944i), u_input.a.x));
    global2 = array<Struct_4, 23>();
    let var_2 = Struct_1(~(~global0.a), vec2<u32>(abs(19889u), ~global0.a));
    global0 = var_2;
    return global0.b;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_1, arg_0), 27u)], _wgslsmith_add_vec3_u32(select(~(vec3<u32>(4294967295u, arg_1, global0.b.x) | vec3<u32>(25531u, global0.b.x, arg_0)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, 1u, global0.b.x), vec3<u32>(arg_0, arg_0, 0u), ~vec3<u32>(arg_0, arg_0, 0u)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)))), vec3<u32>(abs(arg_0), _wgslsmith_sub_u32(104025u, 34411u), 1u) >> (min(~vec3<u32>(arg_0, 1u, global0.a), firstLeadingBit(vec3<u32>(arg_1, global0.b.x, arg_1))) % vec3<u32>(32u))), u_input.b, Struct_1(0u, select(func_3(u_input.a), vec2<u32>(arg_0, arg_0), true)));
    global1 = array<Struct_2, 27>();
    var var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(arg_0, 28094u)), _wgslsmith_div_u32(4294967295u, max(global0.a, var_0.b.x)))) | _wgslsmith_sub_u32(func_3(u_input.a).x, abs(~0u)), 23u)];
    var var_2 = min(~select(~0u, min(1u, 21536u), select(false, false, true)) ^ _wgslsmith_dot_vec2_u32(var_1.a, var_1.a), global0.a);
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f - _wgslsmith_f_op_f32(f32(-1f) * -574f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-358f + -1000f)))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(261f))))), _wgslsmith_f_op_f32(f32(-1f) * -1766f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(floor(-294f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x)));
    var_0 = -10873i >= _wgslsmith_add_i32(-32763i, ~firstTrailingBit(2147483647i));
    var var_1 = !(max(_wgslsmith_clamp_u32(global0.a ^ global0.a, 4294967295u & global0.a, global0.a), _wgslsmith_clamp_u32(~9130u, global0.a, global0.b.x)) < countOneBits(0u));
    let var_2 = -8559i;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(378f, arg_1.x, -520f, arg_1.x) * _wgslsmith_f_op_vec4_f32(func_2(global0.a, global0.a, 1i))) + vec4<f32>(_wgslsmith_f_op_f32(min(-272f, 1205f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-107f - arg_1.x), _wgslsmith_f_op_f32(abs(738f))))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~global0.b));
    var var_1 = !(u_input.b < u_input.a.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec2<f32>(1165f, 405f), u_input.a.x, vec4<bool>(true, false, false, true))) + _wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec2<f32>(650f, 444f), 49684i, vec4<bool>(true, true, false, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-605f, 684f, true)))))), 593f, -964f);
    global2 = array<Struct_4, 23>();
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(55186i, 39539i, 1i, u_input.a.x), u_input.a), -34353i, u_input.a.x), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16114i, -41807i), u_input.a.zz), 17000i, _wgslsmith_clamp_i32(15896i, 18423i, u_input.a.x))), select(-vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), u_input.a.xyw, !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))), u_input.a.x, -(~_wgslsmith_add_i32(u_input.a.x & u_input.b, 1i)), _wgslsmith_dot_vec2_i32(~(u_input.a.xz << (_wgslsmith_sub_vec2_u32(global0.b, global0.b) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.a.zx | vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(u_input.b, u_input.a.x)) >> (~func_3(vec4<i32>(-1i, 2147483647i, u_input.b, u_input.b)) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_mod_u32(countOneBits(9996u), 7428u) | _wgslsmith_add_u32(abs(74887u), _wgslsmith_div_u32(var_0.x, var_0.x));
    var var_5 = true;
    global0 = Struct_1(_wgslsmith_div_u32(select((global0.b.x ^ 1u) | countOneBits(var_0.x), global0.b.x, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), firstTrailingBit(_wgslsmith_add_u32(39624u, global0.b.x))), firstTrailingBit(_wgslsmith_mult_vec2_u32(var_0, vec2<u32>(16219u, global0.b.x))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, global0.a, var_0.x), vec4<u32>(global0.b.x, global0.b.x, 1u, var_0.x)), ~global0.a), vec2<u32>(~global0.b.x, ~4294967295u), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, vec2<u32>(4294967295u, var_0.x)), vec2<u32>(var_0.x, 4294967295u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x, global0.b.x, firstTrailingBit(var_0.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 0u), vec4<u32>(43355u, var_0.x, global0.a, global0.a)))));
}

