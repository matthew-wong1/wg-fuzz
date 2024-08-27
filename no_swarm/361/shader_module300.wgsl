struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
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

var<private> global0: array<u32, 10>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1140f * -825f), _wgslsmith_f_op_f32(min(-1000f, -531f)))) + -2522f));
    global1 = arg_0.xz;
    var var_1 = _wgslsmith_div_u32(u_input.e.x, firstTrailingBit(arg_1) & 25811u);
    var var_2 = 19040u;
    let var_3 = var_0.a;
    return 1u;
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i) << (reverseBits(vec2<u32>(u_input.e.x, 27459u)) % vec2<u32>(32u)), -vec2<i32>(~global1.x, select(30683i, 0i, arg_0.x))), global1.x);
    global1 = countOneBits(firstLeadingBit(firstLeadingBit(vec2<i32>(0i, ~u_input.c))));
    var var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47015u, 10u)], 10u)], 10u)], 1u) ^ 1u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 10u)], u_input.e.x)) ^ ~_wgslsmith_sub_u32(0u ^ u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(101976u, 10u)], 11748u), u_input.e.zx)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1484f, 535f)), _wgslsmith_f_op_f32(ceil(1968f))) + _wgslsmith_f_op_f32(1200f + 2529f)), false)), vec4<bool>(arg_0.x, countOneBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(55430u, 10u)], u_input.e.x)) >= ~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.e.x, 10u)]), true, abs(~4294967295u) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(45991u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], u_input.b), vec3<u32>(17208u, 13885u, 60613u))), _wgslsmith_f_op_f32(round(403f)));
    global1 = firstTrailingBit(vec2<i32>(-38516i | u_input.c, -u_input.c));
    return min(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~global0[_wgslsmith_index_u32(1u, 10u)]), func_2(vec4<i32>(-24234i, 6137i, global1.x, global1.x), 4294967295u) & abs(var_2.a), 71392u), 22670u), ~abs(var_2.a));
}

fn func_1() -> bool {
    var var_0 = !select(vec2<bool>(u_input.c > global1.x, true), vec2<bool>(true, true), true);
    global1 = -_wgslsmith_add_vec2_i32(-vec2<i32>(23587i, -1i), vec2<i32>(~(-u_input.c), -reverseBits(u_input.c)));
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.x, 1i), vec2<i32>(u_input.c, -26558i)), select(vec2<i32>(6554i, 44161i), vec2<i32>(u_input.c, 2147483647i), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(-16488i, global1.x))), -_wgslsmith_add_i32(u_input.c, global1.x) ^ ~(-50089i)), vec2<i32>(-global1.x, -1i));
    global1 = vec2<i32>(-1i, _wgslsmith_mult_i32(u_input.c, -1i) | ~(i32(-1i) * -45338i));
    var var_1 = -179f;
    return (global0[_wgslsmith_index_u32(~4294967295u, 10u)] | _wgslsmith_sub_u32(min(_wgslsmith_sub_u32(u_input.a, u_input.a), 13486u), func_2(-vec4<i32>(-2147483647i, global1.x, u_input.c, -30308i), 4294967295u))) >= ~(func_3(vec4<bool>(var_0.x, false, var_0.x, true)) & 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1f) + _wgslsmith_f_op_f32(-622f - _wgslsmith_f_op_f32(894f + _wgslsmith_f_op_f32(-484f * 1413f)))), select(vec4<bool>(select(true, func_1(), select(true, false, false)), true, true, select(all(vec2<bool>(false, false)), true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f))))));
    global1 = vec2<i32>(global1.x >> (func_2(vec4<i32>(-u_input.c, u_input.c, -2930i, global1.x >> (68344u % 32u)), min(13679u, 4294967295u)) % 32u), -1i << (~var_0.a % 32u));
    var var_1 = var_0.d;
    let var_2 = Struct_2(var_0.b);
    var var_3 = true;
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-vec4<i32>(global1.x, -4438i, -2147483647i, -2147483647i))) | select(vec4<i32>(_wgslsmith_clamp_i32(-34194i, u_input.c, 51149i), 9581i, global1.x, -41875i), vec4<i32>(global1.x, u_input.c, u_input.c, 0i) >> (~vec4<u32>(22226u, var_0.a, 4294967295u, 1u) % vec4<u32>(32u)), !any(var_0.c)));
}

