struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(0u, 56456u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 44030u), vec2<u32>(4543u, 0u), vec2<u32>(62744u, 25337u));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<vec2<u32>, 6>();
    var var_0 = ~(-abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, global1.a.x, global1.c.a), vec3<i32>(arg_0.a, -1614i, arg_0.a))));
    let var_1 = Struct_2(_wgslsmith_clamp_vec2_i32(-global1.a, global1.a, vec2<i32>(2147483647i, abs(65629i)) >> (~(arg_1 >> (vec2<u32>(global1.b, global1.b) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_sub_u32(27250u, ~40732u & u_input.b), global1.d, global1.d);
    var var_2 = var_1.c;
    var var_3 = ~(~vec4<u32>(_wgslsmith_div_u32(98638u & arg_1.x, min(var_1.b, global1.b)), ~arg_1.x, 1u, _wgslsmith_mod_u32(u_input.b, firstTrailingBit(2979u))));
    return Struct_2(-vec2<i32>(-reverseBits(28141i), u_input.a), ~countOneBits(4294967295u), Struct_1(1i, !all(select(vec2<bool>(true, global2.b), vec2<bool>(true, var_2.b), vec2<bool>(global2.b, global1.c.b)))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.a, arg_0.a << (35869u % 32u), var_0.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(global2.a, var_0.x), -var_0.x)), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec2<bool> {
    let var_0 = global1.c.b;
    global1 = func_2(Struct_1(~(-global2.a), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, global2.b), global1.d.b))), arg_0 ^ select(global0[_wgslsmith_index_u32(arg_1.x & (0u >> (global1.b % 32u)), 6u)], select(arg_1.wx, vec2<u32>(11620u, 8516u) & vec2<u32>(arg_1.x, u_input.b), !vec2<bool>(global2.b, global2.b)), !(!vec2<bool>(global1.c.b, global1.c.b))));
    return select(vec2<bool>(true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, global2.b, false), false))), select(vec2<bool>(!(arg_2.x == arg_2.x), global2.b && true), vec2<bool>(true, true), vec2<bool>(global1.d.b & !global1.d.b, global2.b)), select(select(vec2<bool>(select(global2.b, global1.c.b, false), true), vec2<bool>(global1.c.b && true, true), global2.b), vec2<bool>(global1.c.b, all(select(vec4<bool>(false, global1.d.b, global2.b, global2.b), vec4<bool>(global1.c.b, global2.b, global2.b, false), global2.b))), true));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-835f, _wgslsmith_f_op_f32(select(-1227f, _wgslsmith_div_f32(1000f, 1807f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1793f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -171f, -1176f), vec3<f32>(-1277f, -1565f, 662f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(895f, -1248f, -2195f)))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-619f, -155f, 1283f))))))), vec3<f32>(_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(abs(-1245f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -2138f)))));
    global0 = array<vec2<u32>, 6>();
    var var_1 = ~min(u_input.b, 51268u) | ~firstTrailingBit(global1.b);
    let var_2 = _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(~(vec3<i32>(u_input.a, global1.d.a, u_input.a) << (vec3<u32>(13044u, 0u, global1.b) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, 0i, u_input.a), -vec3<i32>(global2.a, global1.a.x, -2147483647i)))), abs(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a, 0i, 20112i), vec3<i32>(-1i, global2.a, -1i))));
    let var_3 = u_input.a;
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(72363u, 53133u), global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<u32>(4294967295u, global1.b, u_input.b, global1.b) ^ vec4<u32>(u_input.b, 968u, 1u, global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, -892f, -119f)), u_input.a)));
    let var_1 = func_3(Struct_1(global2.a, true));
    global1 = func_2(var_1, min(select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, global1.b), 6u)], _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global1.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b, u_input.b), global0[_wgslsmith_index_u32(1u, 6u)], vec2<u32>(u_input.b, u_input.b))), all(!vec2<bool>(true, var_0.x))), global0[_wgslsmith_index_u32(global1.b, 6u)] & abs(global0[_wgslsmith_index_u32(~13555u, 6u)])));
    global2 = global1.c;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(141f - 847f), 1702f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(181f - 766f)))))));
    var var_3 = -8590i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(5701i, max(global1.d.a, u_input.a) ^ -12360i), u_input.a), vec4<u32>(global1.b, _wgslsmith_add_u32(u_input.b, global1.b | global1.b), global1.b << (60654u % 32u), ~(_wgslsmith_div_u32(global1.b, 20069u) & ~0u)));
}

