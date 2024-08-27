struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0i, 0u, 4294967295u), Struct_1(14724i, 0u, 79678u), Struct_1(0i, 4294967295u, 41966u), Struct_1(2147483647i, 4294967295u, 20391u), Struct_1(12582i, 28983u, 16132u), Struct_1(i32(-2147483648), 59150u, 9901u), Struct_1(0i, 1u, 46874u), Struct_1(-1i, 0u, 1u), Struct_1(-39599i, 65493u, 23578u), Struct_1(-10676i, 4294967295u, 30011u), Struct_1(-9864i, 49276u, 0u), Struct_1(15315i, 1u, 0u));

var<private> global2: array<f32, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.c;
    let var_1 = 4686u;
    let var_2 = true;
    let var_3 = vec3<i32>(countOneBits(u_input.a.x), 0i, countOneBits(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(u_input.a.xxw, u_input.a.xwy), 1i >> (var_0 % 32u), 25497i)));
    global1 = array<Struct_1, 12>();
    return abs(~u_input.a.x);
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 6>();
    var var_0 = !(!(!vec2<bool>(true, u_input.a.x != 0i)));
    var var_1 = abs(-16909i);
    let var_2 = Struct_1(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(1i, -u_input.a.x)), reverseBits(abs(func_3(global0[_wgslsmith_index_u32(0u, 22u)])))), _wgslsmith_add_u32(abs(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30177u), vec2<u32>(37047u, 4294967295u)) % 32u)), ~(~1u)), _wgslsmith_mult_u32(~select(0u, ~11623u, false), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 1u, 0u, 50928u)))));
    var var_3 = Struct_1(_wgslsmith_sub_i32(var_2.a, -(~(~u_input.a.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 64960u) ^ vec2<u32>(6670u, var_2.c), vec2<u32>(1u, var_2.c) | vec2<u32>(70238u, var_2.c)), var_2.b), abs(~(vec2<u32>(21680u, var_2.c) ^ vec2<u32>(0u, 518u)))), 9173u ^ _wgslsmith_add_u32(var_2.b, _wgslsmith_mult_u32(~4294967295u, 51543u)));
    return var_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.b, 12u)];
    let var_1 = Struct_1(-(~arg_1.a), ~_wgslsmith_add_u32(reverseBits(20932u), ~arg_1.c | ~var_0.b), 48554u << (var_0.c % 32u));
    var var_2 = func_2();
    var var_3 = select(select(!(!(!vec4<bool>(false, arg_3, true, arg_3))), vec4<bool>(true, arg_3, arg_1.c < countOneBits(var_2.c), true), arg_2), vec4<bool>(arg_2, !all(!vec4<bool>(false, arg_3, arg_2, true)), arg_2, all(select(select(vec3<bool>(false, arg_3, true), vec3<bool>(arg_2, arg_3, arg_2), arg_3), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_2, true)))), select(vec4<bool>(!arg_2, !(arg_1.b == 0u), all(!vec3<bool>(arg_2, false, true)), true), vec4<bool>(arg_3, any(!vec4<bool>(true, arg_2, true, arg_3)), false, (arg_3 & false) || arg_2), false));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(27933u, 4294967295u), 6u)] * -233f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1334f)))))) <= global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~var_2.c, 0u), 6u)];
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(0u)), reverseBits(48777u) | func_1(u_input.a, Struct_1(-13934i, 0u, 1u), false, true)), ~(~1u));
    global0 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~func_2().b, ~func_1(u_input.a, Struct_1(-24346i, var_0, var_0), false, true)), ~var_0), 6u)], 328f));
    var var_2 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -9904i, -_wgslsmith_dot_vec3_i32(u_input.a.ywz & u_input.a.yzx, vec3<i32>(2147483647i, -22377i, -1i))), abs(~func_2().b), firstTrailingBit(firstTrailingBit(15479u)));
    var var_3 = 59460u;
    global2 = array<f32, 6>();
    let var_4 = global0[_wgslsmith_index_u32(18897u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(firstLeadingBit(u_input.a.xwz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(439f, var_1, -502f))), all(vec3<bool>(false, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1632f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0, 6u)]))))), _wgslsmith_add_vec2_i32(-(~vec2<i32>(-18542i, 27306i)), ~abs(countOneBits(u_input.a.yy))), _wgslsmith_f_op_f32(-var_1));
}

