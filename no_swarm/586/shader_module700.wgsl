struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_4) -> vec4<u32> {
    global0 = global1[_wgslsmith_index_u32(select(~(~0u), 0u, any(select(select(vec2<bool>(false, true), vec2<bool>(true, arg_2.c.x), !vec2<bool>(false, global0.b)), select(vec2<bool>(false, arg_2.e.c), select(vec2<bool>(true, global0.c.b), vec2<bool>(global0.b, true), arg_2.c.zy), vec2<bool>(arg_2.a.c, true)), arg_2.c.x))), 28u)];
    var var_0 = Struct_4(global0.c, _wgslsmith_f_op_vec4_f32(round(arg_2.b)), !select(select(!vec3<bool>(arg_2.a.b, true, true), vec3<bool>(global0.c.c, arg_2.e.c, false), true), vec3<bool>(true & global0.c.b, arg_2.c.x, false), arg_2.a.c), -vec2<i32>(~(-arg_2.d.x), arg_2.d.x), Struct_1(countOneBits(~abs(84314u)), !global0.b, true));
    var var_1 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(70141u, 0u, 17634u, 48401u), arg_0), arg_0), ~abs(~var_0.a.a), 1u | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, var_0.e.a), vec2<u32>(42215u, 0u))) ^ arg_2.a.a;
    var var_2 = vec4<i32>(firstLeadingBit(1i), countOneBits(u_input.a.x), 2147483647i, u_input.e);
    let var_3 = false;
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 0u, _wgslsmith_mult_u32(~4294967295u, global0.a.x | 4294967295u), ~(0u << (global0.a.x % 32u))), (~global0.a << (func_3(vec4<u32>(global0.a.x, global0.a.x, global0.c.a, 0u), 0u, Struct_4(global0.c, vec4<f32>(1979f, 275f, 996f, -364f), vec3<bool>(true, global0.c.b, global0.c.c), u_input.a, global0.c)) % vec4<u32>(32u))) << (min(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 25070u), arg_1.a), arg_1.a) % vec4<u32>(32u))), 28u)];
    var var_0 = _wgslsmith_dot_vec3_u32(global0.a.yyx, firstLeadingBit(vec3<u32>(23833u, 8693u, 1u)));
    global0 = arg_1;
    var var_1 = Struct_2(!vec4<bool>(false, true, arg_1.b & true, arg_1.c.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f * _wgslsmith_f_op_f32(-594f - 388f))), 1062f)));
    var var_2 = u_input.a.x;
    return global0.c;
}

fn func_1() -> vec2<bool> {
    global0 = Struct_3(_wgslsmith_mod_vec4_u32(~global0.a, firstTrailingBit(vec4<u32>(~4294967295u, ~0u, 134605u, u_input.c.x | 54725u))), any(!select(vec3<bool>(global0.b, false, false), !vec3<bool>(global0.c.b, false, true), vec3<bool>(true, true, true))), func_2(u_input.e, global1[_wgslsmith_index_u32(~u_input.c.x, 28u)]));
    let var_0 = Struct_2(vec4<bool>(!global0.b, any(vec2<bool>(true, global0.c.c && false)), false, func_2(~max(u_input.e, u_input.e), Struct_3(global0.a, all(vec4<bool>(global0.b, true, true, global0.c.c)), global0.c)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1161f + -367f)));
    let var_1 = Struct_2(!(!var_0.a), var_0.b);
    let var_2 = vec3<bool>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.e, u_input.a.x))) != ~1i, !any(vec2<bool>(!var_1.a.x, all(var_0.a.zzz))), all(!var_0.a));
    let var_3 = -_wgslsmith_dot_vec4_i32(~min(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.e, -9532i, u_input.a.x, 0i)), vec4<i32>(~0i, ~(-23334i), select(-23552i, u_input.e, false), u_input.e)) >> (~u_input.c.x % 32u);
    return !vec2<bool>(all(var_1.a.yyx), false & !var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let var_1 = true;
    global1 = array<Struct_3, 28>();
    var var_2 = Struct_3(global0.a, any(select(select(!vec3<bool>(true, global0.c.c, var_1), vec3<bool>(global0.c.c, var_1, var_1), true), select(vec3<bool>(global0.c.c, global0.c.c, true), vec3<bool>(true, global0.b, global0.b), all(var_0)), !vec3<bool>(global0.c.b, true, var_1))), global0.c);
    let var_3 = Struct_3(_wgslsmith_add_vec4_u32(~countOneBits(~vec4<u32>(0u, 1u, 1u, u_input.d)), global0.a), true, Struct_1(4294967295u, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1859f)) - _wgslsmith_f_op_f32(f32(-1f) * -1274f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1063f)), _wgslsmith_f_op_f32(2826f + 961f)))));
    let var_4 = Struct_2(select(!select(select(vec4<bool>(true, true, var_0.x, global0.c.c), vec4<bool>(global0.b, true, var_2.c.b, false), var_2.b), !vec4<bool>(false, var_3.b, false, var_2.c.c), vec4<bool>(global0.c.c, false, false, false)), !select(!vec4<bool>(true, false, var_1, true), select(vec4<bool>(var_2.c.b, var_3.b, var_0.x, true), vec4<bool>(var_0.x, var_1, var_1, true), var_0.x), !vec4<bool>(true, var_0.x, true, global0.b)), vec4<bool>(true, true, true, true)), 1f);
    let var_5 = Struct_1(0u, true & !(global0.c.a >= max(global0.c.a, var_3.c.a)), true);
    let var_6 = Struct_4(var_5, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(443f, var_4.b, 965f, 1809f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, -226f, -147f, 183f) + vec4<f32>(var_4.b, var_4.b, var_4.b, var_4.b)))))), vec3<bool>(any(select(select(var_4.a.xx, var_0, vec2<bool>(var_4.a.x, false)), vec2<bool>(var_3.c.c, true), vec2<bool>(var_5.b, true))), true, !((var_3.c.b | true) | true)), u_input.a, Struct_1(select(_wgslsmith_add_u32(51616u, 42751u), ~3463u, global0.b) ^ var_5.a, var_2.b, any(var_4.a.yzw)));
    var_2 = Struct_3(~var_3.a, var_3.c.b, func_2(~u_input.e, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_2.a.yy)), min(firstLeadingBit(firstTrailingBit(~var_6.d.x)), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.e, var_6.d.x) & u_input.a.x, 2147483647i)), vec2<f32>(var_4.b, -298f));
}

