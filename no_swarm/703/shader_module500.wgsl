struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 4294967295u;

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 22>;

var<private> global4: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1835f, 524f, -111f), vec3<f32>(1000f, 1642f, -136f), vec3<f32>(1962f, 213f, -804f), vec3<f32>(-2403f, -463f, -1158f), vec3<f32>(-661f, 1311f, 918f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    var var_0 = select(!vec3<bool>(all(global0.b) || !global0.b.x, true, any(select(vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(global0.b.x, global0.b.x, false, arg_2)))), select(select(select(!vec3<bool>(global0.b.x, false, true), vec3<bool>(arg_2, true, global0.b.x), true), vec3<bool>(global0.b.x | arg_2, global0.b.x, global0.b.x), select(select(vec3<bool>(arg_2, false, false), vec3<bool>(true, arg_2, true), true), select(vec3<bool>(false, arg_2, global0.b.x), vec3<bool>(false, true, global0.b.x), arg_2), global0.b.x)), vec3<bool>(!global0.b.x || all(vec3<bool>(true, arg_2, true)), arg_2, !(!arg_2)), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(0i, global0.c)) >= global0.c) | true), vec3<bool>(true, any(select(select(global0.b, global0.b, false), select(global0.b, global0.b, true), select(global0.b, global0.b, vec2<bool>(global0.b.x, arg_2)))), any(vec3<bool>(16444u == arg_3.x, !arg_2, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f * arg_1) * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-989f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-748f, 1106f))), -537f));
    var var_2 = global0.a.a.a.x;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.a.b.x & _wgslsmith_dot_vec4_u32(global0.a.b, vec4<u32>(26828u, global0.a.b.x, arg_3.x, 4294967295u)), _wgslsmith_mod_u32(firstLeadingBit(54242u), firstLeadingBit(global0.a.b.x))), arg_0.d) ^ ~(~min(u_input.a, global0.a.b.x) >> (1u % 32u));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global4[_wgslsmith_index_u32(49273u, 5u)], global4[_wgslsmith_index_u32(48924u, 5u)], arg_2)) + vec3<f32>(global0.a.a.c, arg_0.c, 465f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + arg_1) * var_1.x) - arg_1), 279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_div_f32(var_1.x, global0.a.a.b.x))))), 593f, ~(~arg_0.d));
    return var_4.d;
}

fn func_2() -> i32 {
    var var_0 = vec2<u32>(~u_input.a & ~u_input.a, firstTrailingBit(23768u & (max(u_input.a, u_input.a) << (func_3(global0.a.a, global0.a.a.b.x, global0.b.x, global0.a.b.zw) % 32u))));
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.a.a * vec3<f32>(global0.a.a.b.x, -1000f, 356f)), vec3<f32>(global0.a.a.a.x, 556f, global0.a.a.b.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.b.x, -420f, 567f), global0.a.a.b), _wgslsmith_f_op_vec3_f32(min(global4[_wgslsmith_index_u32(u_input.a, 5u)], vec3<f32>(547f, global0.a.a.a.x, -1431f))))), -173f, u_input.a), _wgslsmith_div_vec4_u32(global0.a.b, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.a, 13387u, global0.a.b.x), min(global0.a.b, global0.a.b)))), global0.b, -12783i);
    var var_1 = select(!select(!(!vec3<bool>(false, true, global0.b.x)), vec3<bool>(any(global0.b), true, false & global0.b.x), select(select(vec3<bool>(global0.b.x, false, true), vec3<bool>(false, false, true), false), !vec3<bool>(global0.b.x, global0.b.x, true), !vec3<bool>(false, global0.b.x, true))), !select(!vec3<bool>(false, global0.b.x, false), select(select(vec3<bool>(false, false, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, global0.b.x, global0.b.x), true), false), !global0.b.x), true);
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -212f), global0.a.a.a.x));
    var_0 = _wgslsmith_mod_vec2_u32(global0.a.b.yx, (~global0.a.b.xw | vec2<u32>(var_0.x, 1u)) ^ vec2<u32>(u_input.a & ~global0.a.b.x, _wgslsmith_div_u32(~655u, ~u_input.a)));
    return -31593i;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(Struct_2(global0.a.a, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a.d, 4294967295u, 1u, global0.a.b.x), global0.a.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, var_0, var_0), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), global0.a.b), ~global0.a.b)), global0.b, -13752i);
    global3 = array<vec3<u32>, 22>();
    var var_2 = ~vec4<u32>(53010u, ~_wgslsmith_div_u32(var_1.a.b.x, 6513u), 20132u, u_input.a) >> (~(select(global0.a.b >> (vec4<u32>(u_input.a, 1u, 48277u, 13724u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(var_1.a.b, var_1.a.b), vec4<bool>(true, global0.b.x, global0.b.x, false)) << (global0.a.b % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = global0.a;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-107f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.a.x), 327f), -758f) + _wgslsmith_f_op_vec3_f32(min(global0.a.a.b, _wgslsmith_f_op_vec3_f32(min(var_1.a.a.a, var_1.a.a.a))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f - -1008f) * var_3.a.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(1301f + var_3.a.b.x)), _wgslsmith_f_op_f32(-var_3.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.a.c), _wgslsmith_f_op_f32(global0.a.a.b.x - var_1.a.a.c))), var_3.a.c)), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_mult_u32(47276u, firstLeadingBit(abs(global0.a.b.x))) << (abs(11579u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec4_i32(~(~vec4<i32>(-2147483647i, 5983i, -38874i, global0.c)), select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 13152i, 1i, u_input.b), vec4<i32>(0i, 2147483647i, 0i, var_1.c)), vec4<i32>(global0.c, -26936i, 6732i, global0.c), select(vec4<bool>(var_1.b.x, var_1.b.x, true, false), vec4<bool>(var_1.b.x, true, true, var_1.b.x), vec4<bool>(var_1.b.x, false, true, global0.b.x))))), vec2<i32>(u_input.b, countOneBits(2147483647i)));
}

