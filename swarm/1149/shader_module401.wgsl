struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec3_i32((vec3<i32>(_wgslsmith_clamp_i32(34973i, 1i, -2147483647i), -3368i, 4800i) >> (countOneBits(~vec3<u32>(u_input.a, 4294967295u, 4294967295u)) % vec3<u32>(32u))) >> (~vec3<u32>(_wgslsmith_mod_u32(38u, 4294967295u), min(u_input.b, u_input.a), 1183u ^ u_input.b) % vec3<u32>(32u)), -vec3<i32>(1i, 1i, 1i));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(min(firstTrailingBit(0u), var_2), ~var_2, select(_wgslsmith_add_u32(u_input.b, 0u), select(u_input.a, 0u, global0.a), true))), ~select(select(abs(vec3<u32>(u_input.b, 41768u, var_2)), vec3<u32>(1u, 4294967295u, var_2) ^ vec3<u32>(1u, var_2, var_2), !vec3<bool>(true, global0.a, arg_1.a)), vec3<u32>(u_input.a, 4294967295u, ~11044u), global0.a));
    var_3 = max(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_3.x, 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_2, 69094u), vec3<u32>(var_3.x, var_2, 36823u))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 89758u) ^ vec2<u32>(var_2, 0u), var_3.yz << (select(vec2<u32>(var_2, var_2), var_3.zz, arg_1.a) % vec2<u32>(32u))), u_input.a ^ var_2));
    return ~firstLeadingBit(vec2<i32>(i32(-1i) * -5214i, 62216i));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(arg_3.x, 32u)];
    return (firstLeadingBit(arg_3.zyy) ^ arg_3.zwy) >> (arg_3.zyw % vec3<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~arg_2.zx;
    var var_1 = reverseBits(1i);
    var_0 = vec2<u32>(max(reverseBits(var_0.x), _wgslsmith_mod_u32(arg_2.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.b, 24474u), vec4<u32>(1u, var_0.x, var_0.x, 46654u)), abs(u_input.b)))), 34927u);
    let var_2 = global2[_wgslsmith_index_u32(arg_2.x | max(u_input.b, 15102u), 32u)];
    var var_3 = vec4<i32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1378f)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(max(195f, -161f)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))), global2[_wgslsmith_index_u32(22793u, 32u)]).x, _wgslsmith_div_i32(-37843i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(8035i, -13196i, 2147483647i, 324i), vec4<i32>(23685i, 44099i, 6790i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 9662i), vec2<i32>(-1i, 1i))), -abs(-40623i))), 64791i, -2147483647i);
    return arg_2.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    global2 = array<Struct_1, 32>();
    let var_0 = global2[_wgslsmith_index_u32(~func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -702f), _wgslsmith_f_op_vec2_f32(min(arg_3, vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(252f))))), func_4(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 561f)), global2[_wgslsmith_index_u32(0u >> (u_input.b % 32u), 32u)]), arg_1, vec4<i32>(max(12143i, -11141i), _wgslsmith_sub_i32(19861i, -17853i), _wgslsmith_add_i32(0i, -1i), _wgslsmith_mod_i32(-1i, -2147483647i)), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 0u), 0u, arg_2, ~4294967295u)), vec2<bool>(any(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), arg_0)), all(vec4<bool>(true, arg_0, true, arg_0)))), 32u)];
    global0 = Struct_1(!all(select(!vec4<bool>(true, global0.a, arg_0, true), select(vec4<bool>(false, false, false, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), false), !var_0.a)));
    global0 = Struct_1(false);
    var var_1 = global2[_wgslsmith_index_u32(arg_2, 32u)];
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(0u) != _wgslsmith_add_u32(42347u, ~(u_input.b & 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.a, 335f, 7227u, vec2<f32>(-1000f, 565f))) * _wgslsmith_div_f32(-316f, 678f)) + _wgslsmith_f_op_f32(floor(449f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1363f + -543f) - _wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-621f))))))));
    var var_2 = 1213f;
    var_1 = vec2<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1613f * var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.x))))))));
    var var_3 = ~(~(~vec4<u32>(~u_input.a, ~38142u, 31996u, ~42222u)));
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    var var_0 = select(~(u_input.b & func_1(firstLeadingBit(1u))), func_1(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-349f))))) != _wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(sign(-1493f)), u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))));
    var_0 = 1538u;
    global1 = false;
    global2 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f + _wgslsmith_div_f32(295f, 533f))), 112520u, -2945f, vec3<u32>(_wgslsmith_div_u32(1u | _wgslsmith_div_u32(u_input.a, u_input.b), u_input.b), u_input.a, 0u), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, 0i, -24402i, 37370i)), vec4<i32>(select(-1i, 4180i, true), _wgslsmith_mult_i32(63598i, -2793i), _wgslsmith_div_i32(-1i, 18083i), 1i)) | (_wgslsmith_sub_i32(56605i, _wgslsmith_add_i32(2147483647i, -14798i)) & select(-2147483647i, ~(-4757i), any(vec2<bool>(false, global0.a)))));
}

