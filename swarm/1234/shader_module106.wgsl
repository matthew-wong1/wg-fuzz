struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1 = Struct_1(-162f, -1i, 278f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(86589u), ~53640u, 2793u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 26822u, 39162u, u_input.d), vec4<u32>(4294967295u, u_input.d, arg_1.x, arg_1.x) & vec4<u32>(arg_1.x, 54822u, 1u, u_input.c), vec4<u32>(u_input.c, u_input.d, arg_1.x, arg_1.x))), true || all(vec4<bool>(false, arg_1.x >= 68850u, select(false, false, false), arg_1.x <= u_input.c)));
    global1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1381f) * 324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))))), abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(-19962i, -970i, u_input.b, 2147483647i), ~vec4<i32>(global1.b, 34882i, global1.b, u_input.b)) >> (u_input.d % 32u)), 1421f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-466f)), -325f, global1.c));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_3 = true;
    return var_3;
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1516f, global1.a, 354f) * vec3<f32>(arg_0, global1.a, arg_0)), ~vec2<u32>(49747u, u_input.c))), vec3<bool>(true, any(vec4<bool>(true, false, false, false)) & true, true)));
    global0 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_f_op_f32(step(global1.a, arg_0));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-518f, _wgslsmith_f_op_f32(-arg_0))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1883f) * _wgslsmith_f_op_f32(f32(-1f) * -294f))), -344f), arg_0, firstLeadingBit(~(~min(vec4<u32>(u_input.c, u_input.d, 1u, 0u), vec4<u32>(u_input.d, 4294967295u, 6293u, u_input.c)))), vec4<i32>(_wgslsmith_mod_i32(arg_1, abs(firstTrailingBit(-12672i))), -2147483647i, global1.b, -750i), u_input.c);
    var var_3 = Struct_4(_wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, u_input.c, var_2.c.x, var_2.c.x) << (reverseBits(vec4<u32>(u_input.c, 1u, u_input.c, 6602u)) % vec4<u32>(32u))), vec4<u32>(39084u, _wgslsmith_add_u32(_wgslsmith_div_u32(46726u, var_2.c.x), 32676u ^ var_2.e), ~0u, reverseBits(_wgslsmith_clamp_u32(var_2.c.x, u_input.c, var_2.e)))), var_2, vec4<bool>(true && !var_0, false, true, true), select(select(vec4<bool>(var_0, any(vec4<bool>(var_0, var_0, true, true)), true, func_3(var_2.a.www, var_2.c.zz)), select(!vec4<bool>(true, var_0, true, var_0), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, false, true, var_0)), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(any(vec3<bool>(true, var_0, var_0)), var_0 && true, true, var_0 || true), !vec4<bool>(var_0, false, false, false), vec4<bool>(false, true, !var_0, true)), !(!(!vec4<bool>(true, false, var_0, false)))));
    return -1488f;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(select(arg_0.x, 811f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.c, global1.b))))));
    let var_1 = Struct_4(min(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), u_input.c | 33082u, firstTrailingBit(1u), 24705u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 46619u, u_input.d), vec4<u32>(u_input.d, 0u, 37393u, u_input.d)), vec4<u32>(0u, u_input.d, 15029u, 4123u))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(18871u, u_input.d, u_input.c, u_input.c) >> (vec4<u32>(50930u, u_input.d, 28563u, u_input.c) % vec4<u32>(32u)), vec4<u32>(98618u, u_input.c, u_input.d, 4294967295u) & vec4<u32>(10288u, u_input.d, 26224u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 53504u, 0u)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global1.c), arg_0.x, arg_0.x, 842f), var_0.x, vec4<u32>(~(~u_input.c), 22343u, ~u_input.d, u_input.d), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, 2147483647i, -2147483647i), abs(vec4<i32>(global1.b, 46028i, 0i, -1i))), ~select(firstLeadingBit(u_input.c), u_input.d, any(vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, any(vec4<bool>(true, false, false, false)), false, select(false, false, false))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(-1085f, _wgslsmith_f_op_f32(round(global1.a)), false)), _wgslsmith_f_op_f32(f32(-1f) * -265f), -1000f);
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return select(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, _wgslsmith_mod_i32(var_1.b.d.x, global1.b), u_input.b), var_1.b.d.zzz), _wgslsmith_dot_vec4_i32(firstLeadingBit(var_1.b.d), _wgslsmith_mult_vec4_i32(var_1.b.d, var_1.b.d)), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> StorageBuffer {
    let var_0 = select(vec2<bool>(false, !arg_1 & false), vec2<bool>(false, false), true);
    var var_1 = -1017f;
    var var_2 = Struct_5(countOneBits(0u), _wgslsmith_f_op_f32(1172f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(f32(-1f) * -543f))))), abs(2147483647i));
    global1 = arg_0;
    var var_3 = reverseBits(vec4<i32>(select(1i, 14247i, true), global1.b ^ (max(global1.b, 11506i) >> (~4294967295u % 32u)), select(-(~global1.b), u_input.a, all(var_0)), -select(u_input.b, global1.b << (1u % 32u), arg_1 & false)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(216f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f)), ~u_input.b, global1.a);
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_div_f32(-974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -645f))), global1.b), global1.a), _wgslsmith_mult_u32(6460u, _wgslsmith_div_u32(1u, ~304u)) == _wgslsmith_clamp_u32(~13040u << (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u), min(12986u, 0u), ~countOneBits(4294967295u)), global1.a);
}

