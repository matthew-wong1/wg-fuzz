struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-1940f, 451f, -1284f, 1038f, 692f, 541f, -1219f, 333f, 1623f, 294f, 685f, 1485f, -1000f, -1489f, -597f, -1328f, -1626f, -231f, -1333f, 120f, 444f, 2011f, -439f, 277f, 303f, 589f, -740f, 257f, 2518f, 428f, -617f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_0 = arg_0;
    let var_1 = vec2<bool>(select(any(vec3<bool>(true, true, true)), true, false || select(0u < u_input.d.x, 1u < arg_0.d.x, any(vec2<bool>(false, true)))), true);
    global0 = array<f32, 31>();
    return !(arg_0.b < u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global0 = array<f32, 31>();
    let var_0 = _wgslsmith_add_u32(~reverseBits(select(countOneBits(u_input.d.x), u_input.d.x, func_3(Struct_2(-1000f, -2147483647i, 1i, vec2<u32>(4695u, 1u), u_input.d)))), u_input.d.x);
    var var_1 = (u_input.c ^ -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(74943i, u_input.b, -31632i)), select(vec3<i32>(u_input.e, u_input.e, -1i), vec3<i32>(u_input.c, -2147483647i, 1i), vec3<bool>(true, false, false)))) << ((~44506u ^ (u_input.d.x << (var_0 % 32u))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(674f)))))) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), 322f))));
    return u_input.d;
}

fn func_1() -> Struct_2 {
    let var_0 = ~abs(~u_input.a);
    global0 = array<f32, 31>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(52401u, 31u)], -1733i, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, -73995i) ^ vec2<i32>(-5078i, u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-73171i, 12527i), vec2<i32>(u_input.e, 40129i))) ^ -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.c, u_input.b))), ~(~vec2<u32>(var_0.x & var_0.x, u_input.d.x)), ~(~(~vec4<u32>(21527u, 1u, u_input.d.x, 71488u)) & min(~vec4<u32>(u_input.d.x, 1u, 94247u, var_0.x), func_2(Struct_1(vec2<f32>(490f, 2430f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(72417u, 31u)], 984f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)])), global0[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-203f, var_1.a), vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 31u)], -2581f))) * _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], var_1.a), vec2<f32>(841f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])))))));
    global0 = array<f32, 31>();
    return Struct_2(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -164f)))), u_input.c, ~u_input.b, _wgslsmith_clamp_vec2_u32(select(abs(_wgslsmith_mult_vec2_u32(var_1.e.zw, var_0)), var_0, vec2<bool>(true, true)), var_0, vec2<u32>(var_1.d.x, var_1.e.x)), ~vec4<u32>(~(0u << (var_1.e.x % 32u)), 1u, var_1.e.x, 0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = ~(1i ^ min(15888i, arg_1.c));
    let var_1 = u_input.c;
    global0 = array<f32, 31>();
    let var_2 = func_1();
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, arg_1.a)) * vec2<f32>(-460f, global0[_wgslsmith_index_u32(arg_0.x, 31u)]))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-734f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))), arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-723f, -2938f, var_2.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1969f, global0[_wgslsmith_index_u32(arg_1.d.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))))) - vec3<f32>(120f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -899f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.a, 892f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !vec4<bool>(true, true, all(vec2<bool>(true, true)), true);
    var var_2 = func_4(u_input.d, func_1(), global0[_wgslsmith_index_u32(~u_input.d.x, 31u)]);
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(func_1().a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(4294967295u, 31u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.xy), var_2.b.zx))));
}

