struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-1286f, -1176f)), Struct_1(vec2<f32>(330f, 352f)), Struct_1(vec2<f32>(-629f, -242f)), Struct_1(vec2<f32>(860f, -533f)), Struct_1(vec2<f32>(-233f, 920f)), Struct_1(vec2<f32>(-1000f, -109f)), Struct_1(vec2<f32>(-2434f, 544f)), Struct_1(vec2<f32>(-1674f, 537f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c.x, u_input.c.x, u_input.c.x, _wgslsmith_add_i32(16120i, -70463i)), vec4<i32>(_wgslsmith_add_i32(u_input.c.x >> (u_input.b % 32u), firstTrailingBit(0i)) | abs(u_input.c.x), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(u_input.c.x, -69455i, -1i), vec3<i32>(u_input.c.x, u_input.c.x, 1i)), max(vec3<i32>(u_input.c.x, 23565i, 0i), ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), u_input.c.x, ((u_input.c.x << (1u % 32u)) >> (u_input.d % 32u)) ^ -_wgslsmith_mod_i32(2147483647i, 2147483647i)));
    var var_1 = ~u_input.d;
    global0 = array<Struct_1, 8>();
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.a.x)))));
    var_1 = 0u;
    return select(select(vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(vec2<bool>(false, false)), false), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), (u_input.c.x == -1i) | (4294967295u <= u_input.a.x)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))), vec4<bool>(false, select(false, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true))), 51377u == ~select(u_input.d, u_input.d, false), true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) || (firstLeadingBit(_wgslsmith_div_i32(2171i, var_0.x)) <= u_input.c.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(4294967295u), 8u)];
    global0 = array<Struct_1, 8>();
    var var_1 = ~((vec3<i32>(0i, ~arg_0.a.a.x, u_input.c.x) | vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, arg_1.a.a.x, -2147483647i), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(6320i, 20046i, arg_0.c), vec3<i32>(-60410i, arg_0.a.a.x, arg_1.a.a.x)))) ^ _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c.x, -2147483647i, -71856i), vec3<i32>(arg_0.b.a.x, arg_1.a.a.x, 15018i)), ~vec3<i32>(u_input.c.x, u_input.c.x, arg_0.a.a.x)), ~(-vec3<i32>(-10846i, 9038i, 2147483647i))));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(u_input.d, 1u), ~vec2<u32>(u_input.a.x, 91431u), !arg_1.a.b) | firstTrailingBit(u_input.a), firstTrailingBit(u_input.a >> (u_input.a % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b), ~u_input.d)), abs(~vec2<u32>(u_input.d, u_input.a.x)) & u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, var_0.a.x, var_0.a.x, 119f), vec4<f32>(arg_1.d.x, -1075f, 454f, arg_1.d.x)))) + vec4<f32>(arg_0.d.x, 861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1025f))), arg_1.d.x)));
    return select(!vec2<bool>(true, any(func_3(var_3.x))), vec2<bool>(arg_1.a.b, arg_0.a.b), false);
}

fn func_1() -> StorageBuffer {
    let var_0 = select(select(select(func_2(Struct_3(Struct_2(u_input.c, false), Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), false), 24906i, vec3<f32>(695f, -136f, -491f)), Struct_3(Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), false), Struct_2(u_input.c, true), 1i, vec3<f32>(722f, 1800f, 315f))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), vec2<bool>(~u_input.c.x == 25630i, select(u_input.b < u_input.b, true, true)), vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1695f * 354f))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(819f - -542f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.c.x == u_input.c.x, true))));
    var var_1 = select(vec4<bool>(var_0.x, all(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, true), var_0.x)) | var_0.x, !(!var_0.x), select(!var_0.x, true, false) == true), !select(vec4<bool>(var_0.x, false, 60337i == u_input.c.x, var_0.x), select(!vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, false, false)), false), !var_0.x), !(!vec4<bool>(false, false, !var_0.x, func_3(1000f).x)));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(~(vec4<u32>(u_input.d, u_input.a.x, u_input.d, 139u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.b) % vec4<u32>(32u)))), firstLeadingBit(vec4<u32>(0u, 126642u, u_input.a.x, 53052u) >> (vec4<u32>(u_input.b, u_input.d, u_input.d, 115742u) % vec4<u32>(32u)))), (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 0u, 23450u, u_input.a.x), vec4<u32>(u_input.d, 102652u, u_input.d, u_input.d) >> (vec4<u32>(108179u, u_input.a.x, 4294967295u, u_input.b) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(26364u, u_input.d, 0u, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(1675u, 0u, u_input.a.x, u_input.d), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 4294967295u)))) & ~firstTrailingBit(abs(vec4<u32>(u_input.b, 0u, 63228u, 43551u))));
    let var_3 = false;
    var_1 = vec4<bool>(true, any(!(!vec2<bool>(false, var_0.x))), all(vec4<bool>(var_1.x, all(vec2<bool>(false, true)), all(func_3(760f).zz), true)), false);
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(692f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = func_1();
}

