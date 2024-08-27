struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true));

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = ~select(max(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.d, u_input.c, -1i), vec4<i32>(arg_1.c.a, arg_1.c.a, u_input.b.x, 13608i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c, 1i, arg_1.c.a), vec4<i32>(arg_1.a.a, 0i, 11416i, arg_1.a.a)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c, 11968i, u_input.d), vec4<i32>(u_input.b.x, u_input.b.x, -12457i, 1i), vec4<i32>(arg_1.a.a, u_input.b.x, arg_1.c.a, -76616i))), abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.b.x, -2147483647i), vec4<i32>(u_input.d, arg_1.b.a, -2147483647i, arg_1.a.a))), false);
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.b))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-327f - arg_2.x), arg_1.c.b)), false);
    global1 = vec2<u32>(_wgslsmith_sub_u32(~min(u_input.a, u_input.a), countOneBits(_wgslsmith_mult_u32(4294967295u, u_input.a))), u_input.a) << (_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a) & ~(~vec2<u32>(0u, 4294967295u)), firstLeadingBit(vec2<u32>(u_input.a, 1u) >> (vec2<u32>(12368u, 92568u) % vec2<u32>(32u))) << (~(vec2<u32>(u_input.a, 0u) & vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = ~(~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, global1.x), ~vec2<u32>(u_input.a, global1.x))));
    var var_2 = firstLeadingBit(arg_1.c.a);
    return select(vec3<bool>(~(u_input.b.x | 2147483647i) >= -2147483647i, arg_1.a.c, var_1.x & all(global0[_wgslsmith_index_u32(0u, 14u)])), vec3<bool>(var_1.x, arg_0, all(select(select(var_1, vec2<bool>(true, false), true), !var_1, var_1))), vec3<bool>(true, !(!(arg_0 | true)), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = vec2<bool>(true, true);
    var_0 = u_input.d;
    let var_2 = any(!select(!select(vec3<bool>(false, arg_0.c, true), vec3<bool>(false, true, true), true), select(!vec3<bool>(arg_2, true, true), !vec3<bool>(arg_2, false, false), select(vec3<bool>(var_1.x, true, arg_0.c), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_0.c, arg_2, arg_0.c))), func_3(true, Struct_2(Struct_1(arg_0.a, arg_1, var_1.x), Struct_1(arg_0.a, arg_0.b, var_1.x), arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -738f)))));
    global1 = max(vec2<u32>(~(~u_input.a), ~(~select(u_input.a, 4294967295u, true))), vec2<u32>(global1.x, u_input.a ^ ~u_input.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(arg_1 - arg_0.b), arg_2))), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-314f)) + arg_1)))) * arg_1);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> u32 {
    global0 = array<vec4<bool>, 14>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(228f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-3271f, 1571f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-775f - 227f) + _wgslsmith_f_op_f32(func_2(Struct_1(10893i, 1713f, false), 520f, arg_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f * _wgslsmith_f_op_f32(f32(-1f) * -1452f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f)))))));
    var var_1 = arg_1.x;
    var_1 = all(vec4<bool>(any(select(!arg_1, !arg_1, arg_0)), arg_0.x, false, arg_1.x));
    let var_2 = true;
    return ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, ~_wgslsmith_add_u32(0u, global1.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(6160u, global1.x), vec2<u32>(u_input.a, global1.x)), firstLeadingBit(~vec2<u32>(46342u, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(_wgslsmith_sub_vec2_u32(~max(vec2<u32>(u_input.a, global1.x) & vec2<u32>(4294967295u, 8933u), vec2<u32>(global1.x, 10068u) & vec2<u32>(1u, u_input.a)), vec2<u32>(~(~global1.x), _wgslsmith_add_u32(func_1(vec2<bool>(false, true), vec2<bool>(false, true)), max(5503u, u_input.a)))));
    global1 = ~(~(_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.a, global1.x), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(79687u, global1.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, u_input.a) | vec2<u32>(global1.x, u_input.a), vec2<u32>(4294967295u, 75932u) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, -1635f, 189f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, -225f, 624f) - vec3<f32>(670f, -278f, -2305f))) - vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(461f, -1006f, 946f) + vec3<f32>(1191f, -1000f, -405f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(340f))), -776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f))), _wgslsmith_f_op_f32(f32(-1f) * -670f)));
    let var_1 = ~1i;
    let var_2 = Struct_2(Struct_1(u_input.b.x & var_1, _wgslsmith_f_op_f32(-var_0.x), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), true))), Struct_1(var_1, _wgslsmith_f_op_f32(787f * -2017f), true), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, var_1, 198i, -2147483647i), -vec4<i32>(18588i, u_input.b.x, var_1, var_1)), _wgslsmith_f_op_f32(floor(-2526f)), -2147483647i > (1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -23622i, var_1, 1690i), vec4<i32>(u_input.d, 1i, var_1, 57662i)))));
    global0 = array<vec4<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1415f, -1752f, var_0.x) * var_0)), var_0) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(846f, 229f, 496f), var_0))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.c.b * _wgslsmith_f_op_f32(874f * var_2.b.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1041f, -904f), 661f)), _wgslsmith_f_op_f32(-1660f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 161f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.c.b, 1033f, var_2.b.b) + vec4<f32>(384f, -800f, -1298f, var_2.b.b)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.a << (global1.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_2.c.a, u_input.b.x, var_1), vec4<i32>(-5893i, 2147483647i, var_2.b.a, -29378i))), u_input.b), global1.x);
}

