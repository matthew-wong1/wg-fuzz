struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = 40611u;
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, firstTrailingBit(-8184i), 34976i << (u_input.b.x % 32u))), vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(0i, -1i)), ~abs(-22278i), ~(2147483647i >> (0u % 32u)))), reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -25443i, 8858i), vec4<i32>(25880i, 33122i, 1i, -18184i))));
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    return arg_0.zx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(u_input.b.x, true, ~(_wgslsmith_sub_u32(~0u, ~u_input.b.x) << (~arg_1.a % 32u)));
    var var_1 = vec4<u32>(4294967295u, _wgslsmith_mult_u32(var_0.c, 22415u), 0u, 0u);
    let var_2 = ~((~vec2<i32>(-14040i, 4539i) | vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-38072i, 2147483647i, -12541i, 31936i), vec4<i32>(-2147483647i, -40152i, 0i, -13024i)))) >> (select(_wgslsmith_mod_vec2_u32(reverseBits(var_1.yy), reverseBits(vec2<u32>(0u, var_0.c))), u_input.b.xy, func_3(select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(true, false, var_0.b, arg_0.b), var_0.b), ~17099u, Struct_1(arg_1.a, arg_1.b, arg_0.a))) % vec2<u32>(32u)));
    let var_3 = arg_0;
    let var_4 = vec3<i32>(-28842i, -var_2.x, _wgslsmith_mod_i32(50571i | _wgslsmith_add_i32(reverseBits(27937i), -var_2.x), var_2.x));
    return ~var_0.a;
}

fn func_4(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = ~(-_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, 44507i), ~vec2<i32>(25276i, -2147483647i)) << ((~(~u_input.a) << (_wgslsmith_sub_vec2_u32(u_input.b.zx, vec2<u32>(arg_1, u_input.a.x) | vec2<u32>(43881u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = 338f;
    let var_2 = Struct_1(1u, true, arg_0);
    var var_3 = 1u;
    let var_4 = -53616i;
    return Struct_1(~_wgslsmith_mod_u32(0u, 45969u), any(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, var_2.b), true)), true)), ~((~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 46040u, 69864u, 2514u), vec4<u32>(5200u, var_2.a, u_input.c, 4294967295u)) % 32u)) >> (5132u % 32u)));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = func_4(((_wgslsmith_div_u32(1u, 73582u) << (func_2(Struct_1(u_input.c, arg_0.x, u_input.b.x), Struct_1(u_input.b.x, arg_0.x, 28379u)) % 32u)) << (_wgslsmith_sub_u32(countOneBits(44532u), min(0u, 1u)) % 32u)) >> (u_input.b.x % 32u), ~u_input.b.x);
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    var var_1 = -abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(4429i, -20846i, -5837i), vec3<i32>(-2147483647i, -36169i, 22123i)), 0i) & (i32(-1i) * -20197i));
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = ~(~(~vec3<u32>(_wgslsmith_clamp_u32(arg_2, u_input.b.x, arg_2), func_4(arg_2, 4294967295u).a, ~65159u)));
    return Struct_1(_wgslsmith_sub_u32(1u, ~var_0.x) >> (1u % 32u), true, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -33079i, 14338i), vec3<i32>(34584i, -10516i, 0i))) >= (max(-1i, ~1i) << (1u % 32u)));
    let var_1 = !var_0;
    var var_2 = u_input.c;
    let var_3 = all(vec3<bool>(false, (!var_0 || true) || var_0, var_1));
    var var_4 = func_5(all(select(!(!vec4<bool>(false, var_0, true, false)), vec4<bool>(true, true, var_0, true), !select(vec4<bool>(false, true, var_3, var_0), vec4<bool>(true, var_3, false, var_3), vec4<bool>(var_0, var_1, var_1, var_1)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, 630f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-257f, -208f), vec2<f32>(-497f, 970f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-663f, -226f), vec2<f32>(-837f, 881f), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(234f, 308f) - vec2<f32>(367f, -568f))))), func_1(vec4<bool>(!any(global0[_wgslsmith_index_u32(u_input.c, 22u)]), true, all(select(vec4<bool>(var_1, var_0, var_1, false), vec4<bool>(false, var_3, false, true), vec4<bool>(var_0, var_3, var_1, var_3))), var_1 && all(global0[_wgslsmith_index_u32(u_input.c, 22u)]))));
    let var_5 = func_5(false || !var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1809f, 321f), vec2<f32>(1255f, 1000f)))))), u_input.a.x & var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~4294967295u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))))));
}

