struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-7250i, 6092i, -1i, -6832i, 2147483647i, i32(-2147483648), 34623i, i32(-2147483648), -63005i, 0i, 22728i, 46774i, i32(-2147483648), -15198i, -65362i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(-52565i);
    let var_2 = vec2<u32>(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, u_input.d.x, 1u, 21478u)), vec4<u32>(~u_input.d.x, min(0u, u_input.d.x), ~66354u, ~u_input.d.x)) ^ _wgslsmith_div_u32(min(u_input.d.x >> (4294967295u % 32u), firstLeadingBit(23466u)), 65993u));
    var_1 = Struct_1(_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), u_input.b.xz), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.a, -40874i), -32697i << (u_input.d.x % 32u), u_input.b.x, arg_1.a), -vec4<i32>(-2147483647i, var_0.a, 12786i, var_1.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1363f, _wgslsmith_f_op_f32(select(-1000f, 1612f, arg_0)))), -113f, -977f)));
    return max(~abs(u_input.d.x), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 0u, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d.x, var_2.x, 0u), vec4<u32>(1u, 1u, u_input.d.x, 66097u)), vec4<u32>(u_input.d.x, var_2.x, u_input.d.x, u_input.d.x) ^ vec4<u32>(1u, 4294967295u, 76325u, 52411u))), select(abs(~vec4<u32>(39612u, var_2.x, 1485u, var_2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.x, var_2.x) >> (vec4<u32>(4294967295u, u_input.d.x, 1u, var_2.x) % vec4<u32>(32u)), vec4<u32>(4408u, 56004u, 1u, u_input.d.x) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, 17250u) % vec4<u32>(32u)), vec4<u32>(59007u, 103544u, 12580u, 5417u) << (vec4<u32>(var_2.x, u_input.d.x, 11543u, u_input.d.x) % vec4<u32>(32u))), !(false || arg_0))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(34424u, arg_0, 0u, 4294967295u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, 4294967295u, u_input.d.x, u_input.d.x) & _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0, u_input.d.x, arg_0), vec4<u32>(0u, arg_0, 31286u, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(22969u, 0u, 30953u, arg_0), vec4<u32>(495u, arg_0, 4294967295u, u_input.d.x)), ~vec4<u32>(4294967295u, u_input.d.x, 138527u, 37920u)))), vec4<u32>(0u, ~reverseBits(0u), _wgslsmith_sub_u32(1u >> (u_input.d.x % 32u), func_3(true, Struct_1(2147483647i))) | func_3(any(vec4<bool>(true, true, true, true)), Struct_1(u_input.c)), 1u));
    let var_1 = 343f;
    global0 = array<i32, 16>();
    return Struct_1(u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(-461f)), _wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(max(arg_3, -230f)), 653f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-850f, arg_3, arg_3, arg_3))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1807f, arg_3, arg_3, arg_3), vec4<f32>(-1348f, -2503f, 1293f, 1000f), vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 1370f, arg_3))))));
    let var_1 = Struct_1(2147483647i);
    global0 = array<i32, 16>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1938f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 * -396f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -514f), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(select(1461f, _wgslsmith_f_op_f32(abs(-485f)), true | any(vec2<bool>(false, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(arg_3, arg_3)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-154f, -799f, var_0.x, 164f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-543f, arg_3, -1304f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_3, 946f, 134f)))));
    let var_2 = (vec4<i32>(_wgslsmith_div_i32(u_input.c, -global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), ~_wgslsmith_mod_i32(arg_0.a, 1i), abs(arg_0.a), arg_1) >> ((_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), abs(vec4<u32>(41634u, u_input.d.x, u_input.d.x, u_input.d.x))) & ~select(vec4<u32>(u_input.d.x, 957u, 12204u, 31351u), vec4<u32>(0u, u_input.d.x, u_input.d.x, 19820u), vec4<bool>(true, true, true, true))) % vec4<u32>(32u))) & -(~vec4<i32>(abs(19882i), -36652i, -arg_0.a, arg_0.a));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_1 = -830f;
    let var_2 = func_4(func_2(~23060u), global0[_wgslsmith_index_u32(reverseBits(min(~0u, 87640u)), 16u)], Struct_1(reverseBits(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(u_input.d.x, 16u)] | global0[_wgslsmith_index_u32(u_input.d.x, 16u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x));
    var var_3 = -559f;
    return ~(-func_4(Struct_1(-1i), func_2(u_input.d.x).a, Struct_1(2147483647i), var_1).a) > -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(676f, 571f))))) * 1600f);
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_2 = 19812i;
    var var_3 = Struct_1(reverseBits(~(-38816i)));
    var var_4 = firstTrailingBit(-9525i);
    var var_5 = !select(select(vec4<bool>(false, all(vec3<bool>(true, true, true)), func_1(vec4<f32>(1760f, 1007f, 927f, -304f), vec4<bool>(false, true, true, true)), false), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.c << (~35554u % 32u), -var_3.a | (0i << (u_input.d.x % 32u)), -var_3.a, abs(_wgslsmith_add_i32(-1i, -1i))));
}

