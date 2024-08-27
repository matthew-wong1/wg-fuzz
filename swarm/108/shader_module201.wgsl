struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<i32, 9>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<u32, 5>();
    var var_0 = _wgslsmith_sub_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), arg_0.wy) << (reverseBits(vec2<u32>(4294967295u, 65390u)) % vec2<u32>(32u)), arg_0.zx) >> (vec2<u32>(30109u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17039u, 5u)], 5u)], 5u)], min(0u, 29115u), global0[_wgslsmith_index_u32(1u, 5u)]), 5u)], 5u)]) % vec2<u32>(32u)), ~(~vec2<i32>(min(arg_0.x, arg_0.x), arg_0.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)] % 32u))));
    let var_1 = u_input.a;
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(208f))))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1042f, 190f)) * -1019f), -215f), any(select(vec3<bool>(67156u >= global0[_wgslsmith_index_u32(4294967295u, 5u)], true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17638u, 5u)], 5u)], 9u)] >= u_input.a), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), true)));
    var_0 = arg_0.zx;
    return arg_0.x;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4294967295u), 1u), 5u)] << (_wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 54672u, arg_1.x, 1u), vec4<u32>(70498u, 38486u, 796u, 1u), arg_0), vec4<u32>(426u, arg_1.x, global0[_wgslsmith_index_u32(1u, 5u)], 0u))) % 32u)), 19u)];
    var var_1 = global1[_wgslsmith_index_u32(arg_1.x, 19u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(sign(-373f)), arg_0))), _wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1350f, var_0.b.x))), false)), var_0.c);
    var var_3 = Struct_1(vec2<u32>(firstTrailingBit(abs(0u)), var_2.c.a.x));
    global1 = array<Struct_2, 19>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xy) - _wgslsmith_div_vec2_f32(var_2.b.zx, var_2.b.xz));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = -1000f;
    let var_1 = ~(~_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(22724i, 5760i, 2147483647i, 22909i) | vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(16648u, 9u)], u_input.a)), ~firstLeadingBit(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(2290u, 9u)], -2147483647i, 1i))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1583f, 1178f), -459f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(185f, var_0))) * _wgslsmith_f_op_vec2_f32(func_3(true, ~vec2<u32>(4294967295u, 39085u))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(207f)), _wgslsmith_f_op_vec2_f32(func_3(all(vec3<bool>(arg_0, false, arg_0)), vec2<u32>(global0[_wgslsmith_index_u32(23938u, 5u)], 9808u))).x))));
    global2 = array<i32, 9>();
    let var_3 = Struct_1(max(vec2<u32>(~_wgslsmith_add_u32(0u, 0u), global0[_wgslsmith_index_u32(1u, 5u)]), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12749u, 5u)], 5u)], 5u)], 5u)], 5u)], 3764u) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90020u, 5u)], 5u)]) % vec2<u32>(32u)), select(vec2<u32>(4294967295u, 10103u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]), vec2<bool>(arg_0, arg_0))))));
    return any(!vec4<bool>(arg_0, _wgslsmith_div_f32(1775f, var_2.x) != _wgslsmith_f_op_f32(f32(-1f) * -477f), (var_3.a.x & var_3.a.x) != 820u, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(all(vec3<bool>(true, true, true)), -1i > (countOneBits(u_input.a) ^ (i32(-1i) * -2147483647i)), all(vec3<bool>(true, true, true)) & true, 1i == func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 9u)], global2[_wgslsmith_index_u32(5357u, 9u)]), vec4<i32>(u_input.a, u_input.a, 7064i, 0i)))));
    var var_1 = vec2<bool>(((43816u <= _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16573u, 5u)], 5u)], global0[_wgslsmith_index_u32(3742u, 5u)], 50042u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67529u, 5u)], 5u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]))) != true) || func_2(true), false);
    let var_2 = ~_wgslsmith_add_vec3_u32(~(min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 12789u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(27218u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(51081u, 5u)])) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74928u, 5u)], 5u)], 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55561u, 5u)], 5u)], 5u)], 5u)], 4294967295u) % vec3<u32>(32u))), ~(vec3<u32>(1u, 1u, 1u) >> (~vec3<u32>(0u, 98375u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72380u, 5u)], 5u)]) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, 9147u, 1u, 3416u), _wgslsmith_sub_vec4_u32(vec4<u32>(20792u, var_2.x, 0u, 4294967295u), vec4<u32>(62498u, var_2.x, global0[_wgslsmith_index_u32(var_2.x, 5u)], 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(459f))))))), vec3<u32>(_wgslsmith_sub_u32(var_2.x >> (1u % 32u), 1u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(8636u, 5u)], abs(~47772u)), 82962u << ((1100u | select(35347u, 1u, var_1.x)) % 32u)));
}

