struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<u32, 8> = array<u32, 8>(27434u, 1u, 68794u, 96287u, 83764u, 63345u, 0u, 1u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_1(arg_1.c.wyw, arg_1.b, vec4<i32>(_wgslsmith_sub_i32(-u_input.a, ~u_input.a | abs(u_input.a)), -1i, abs(_wgslsmith_clamp_i32(arg_1.c.x, i32(-1i) * -2147483647i, firstLeadingBit(27975i))), u_input.a));
    let var_1 = arg_2.x;
    var var_2 = arg_1;
    var var_3 = var_0.c.x;
    let var_4 = max(arg_1.c.ywz, var_0.a);
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-588f * _wgslsmith_f_op_f32(abs(593f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec3<i32>(u_input.a, arg_1.x, 0i) ^ -(reverseBits(vec3<i32>(2147483647i, 0i, 58782i)) & arg_0.c.xwz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.b))), vec4<i32>(arg_1.x, -(arg_1.x ^ -16103i) ^ -countOneBits(arg_1.x), arg_1.x, ~_wgslsmith_mod_i32(arg_1.x, _wgslsmith_div_i32(u_input.a, 0i))));
    var_0 = Struct_1(firstLeadingBit(firstLeadingBit(vec3<i32>(-14830i, arg_1.x, 2147483647i))) << (vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 8u)], 57446u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66186u, 8u)], 8u)]), 60712u), 72096u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-395f, 1120f))), var_0.c);
    var_0 = Struct_1(~arg_0.a, var_0.b, vec4<i32>((-6782i >> (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]) % 32u)) ^ ((1i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)] % 32u)) | _wgslsmith_mult_i32(0i, u_input.a)), 37954i, abs(_wgslsmith_sub_i32(2147483647i << (global1[_wgslsmith_index_u32(0u, 8u)] % 32u), min(-37248i, 2147483647i))), arg_1.x ^ _wgslsmith_mult_i32(2147483647i ^ arg_2.x, -21333i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1437f + _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -135f)), _wgslsmith_f_op_f32(select(var_0.b.x, -1404f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -498f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16639u, 8u)], 8u)], global1[_wgslsmith_index_u32(99331u, 8u)]), _wgslsmith_add_u32(0u, 1u)), 28u)], !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))))));
    var var_2 = vec3<u32>(firstLeadingBit(firstLeadingBit(~global1[_wgslsmith_index_u32(21507u, 8u)] >> (abs(47504u) % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53273u, 8u)], 8u)], 8u)], 8u)] | global1[_wgslsmith_index_u32(1u, 8u)], 8u)], ~1u, min(global1[_wgslsmith_index_u32(59927u, 8u)], 4294967295u) & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 1u | _wgslsmith_sub_u32(19331u, global1[_wgslsmith_index_u32(0u, 8u)])), vec4<u32>(~countOneBits(21838u), 0u, ~_wgslsmith_clamp_u32(57452u, global1[_wgslsmith_index_u32(25282u, 8u)], global1[_wgslsmith_index_u32(34448u, 8u)]), abs(global1[_wgslsmith_index_u32(38408u, 8u)] >> (global1[_wgslsmith_index_u32(4294967295u, 8u)] % 32u)))), global1[_wgslsmith_index_u32(~(~(~global1[_wgslsmith_index_u32(6269u, 8u)] << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)] % 32u))), 8u)]);
    return 20717u;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    var var_0 = ~vec4<i32>(~u_input.a, u_input.a, u_input.a, (u_input.a >> (func_2(Struct_1(vec3<i32>(2147483647i, -34698i, 0i), vec2<f32>(arg_0, 456f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<i32>(u_input.a, -24324i), vec2<i32>(u_input.a, u_input.a)) % 32u)) << (abs(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(132237u, 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(0u, 8u)])) % 32u));
    var var_1 = (vec4<i32>(_wgslsmith_mod_i32(min(u_input.a, -7659i), var_0.x), u_input.a, -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, 728i), 1i)) ^ vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -u_input.a), u_input.a, abs(-48467i))) ^ vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(var_0.x, -5313i)) & 2147483647i, i32(-1i) * -1i, -1i, var_0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), arg_0, arg_0);
    var var_3 = Struct_1(-vec3<i32>(i32(-1i) * -2147483647i, var_1.x, countOneBits(var_0.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.x), var_0.yy)), var_2.yz, vec4<i32>(u_input.a, _wgslsmith_mult_i32(abs(-23616i) | var_0.x, ~(-var_0.x)), firstLeadingBit(var_1.x), u_input.a));
    global1 = array<u32, 8>();
    return 88774i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1457f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1618f, var_0, 2142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(161f, var_0, true)))))));
    let var_2 = _wgslsmith_add_u32(~(~(global1[_wgslsmith_index_u32(4294967295u, 8u)] & firstLeadingBit(0u))), select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(70806u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)] % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 64008u, global1[_wgslsmith_index_u32(36602u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), vec4<u32>(13454u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)])) % 32u), 8u)], 8u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 8u)], 8u)])), 8u)], false));
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let var_3 = Struct_1(vec3<i32>(func_1(767f, select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-37501i, u_input.a, 3813i, 2147483647i), vec4<i32>(u_input.a, 22839i, -2147483647i, -32339i)), ~vec4<i32>(u_input.a, u_input.a, 24929i, 16535i)), 51697i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -697f))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), reverseBits(max(-_wgslsmith_mult_vec4_i32(vec4<i32>(4202i, 0i, -4690i, u_input.a), vec4<i32>(u_input.a, u_input.a, -10892i, u_input.a)), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -18483i, u_input.a, u_input.a), true) ^ select(vec4<i32>(u_input.a, -14590i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -22794i, -23217i), false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -670f);
}

