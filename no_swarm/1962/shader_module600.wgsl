struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 6> = array<u32, 6>(0u, 62452u, 4294967295u, 1u, 31612u, 24886u);

var<private> global2: array<bool, 7> = array<bool, 7>(true, false, true, true, false, true, true);

var<private> global3: f32 = 341f;

var<private> global4: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = ~reverseBits(vec2<i32>(abs(-33797i) & firstTrailingBit(-15773i), min(countOneBits(1i), -2147483647i)));
    var var_2 = _wgslsmith_mult_i32(-1i, -21392i);
    global1 = array<u32, 6>();
    global3 = 1000f;
    return countOneBits(countOneBits(-vec4<i32>(_wgslsmith_sub_i32(var_1.x, var_1.x), 21050i ^ var_1.x, var_1.x, var_1.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = false;
    let var_1 = countOneBits(func_3(Struct_1(false, -130f, global0.c))) | vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(55909i, 11309i, 1i)), max(vec3<i32>(0i, -12701i, -1i), vec3<i32>(1i, 1i, 1i))), ~(-57231i), abs(~38106i >> (~4294967295u % 32u)));
    var var_2 = Struct_1(false, 775f, abs(global0.c));
    var var_3 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~1u ^ ~global1[_wgslsmith_index_u32(global0.c, 6u)], 11482u, select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14073u, 6u)], 6u)], global0.c, global2[_wgslsmith_index_u32(32073u, 7u)]) << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)] % 32u), _wgslsmith_sub_u32(~u_input.a, 13864u)), vec4<u32>(0u, u_input.a, ~global0.c, ~u_input.a) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(1415u, var_2.c, 35746u, 4294967295u), vec4<u32>(global0.c, 1u, global1[_wgslsmith_index_u32(103815u, 6u)], 79199u)));
    var var_4 = 1u;
    return Struct_1(!(any(!vec2<bool>(var_2.a, true)) || !var_2.a), var_2.b, u_input.a >> (var_3.x % 32u));
}

fn func_1(arg_0: f32) -> u32 {
    global4 = (reverseBits(global0.c) << (~48608u % 32u)) >> (44857u % 32u);
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = 1u;
    let var_3 = any(!(!select(!vec2<bool>(global0.a, global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<bool>(false, true), !vec2<bool>(var_0.a, true))));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b) + _wgslsmith_f_op_f32(-global0.b));
    var var_0 = firstLeadingBit(abs(vec2<u32>(global0.c, u_input.a & func_1(global0.b))));
    var_0 = vec2<u32>(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, 1u), ~53109u), 6u)] & select(global1[_wgslsmith_index_u32(u_input.a, 6u)], reverseBits(4294967295u), global2[_wgslsmith_index_u32(min(4294967295u, 17089u), 7u)])), reverseBits(~10088u));
    let var_1 = _wgslsmith_clamp_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(25177u, 6u)], 10203u, abs(37276u)), min(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 3308u), vec3<u32>(22151u, 23170u, var_0.x)), select(vec3<u32>(73163u, var_0.x, var_0.x), vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 6u)], var_0.x), global2[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.a, 6u)], 0u) & 4294967295u, 6u)]), global0.c > global0.c), ~0u, ~func_1(-1745f));
    global0 = func_2();
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global0.b, 2236f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -1859f, global0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1344f, 872f, global0.b))))));
    global2 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_3.x))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(826f * _wgslsmith_f_op_f32(f32(-1f) * -145f))))), vec2<u32>(func_2().c, abs(_wgslsmith_sub_u32(~u_input.a, ~var_0.x))));
}

