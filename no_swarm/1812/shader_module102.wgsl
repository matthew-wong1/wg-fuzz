struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: vec4<u32> = vec4<u32>(3708u, 44585u, 18291u, 956u);

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-106f, -287f), vec2<f32>(450f, 919f), vec2<f32>(212f, 1000f), vec2<f32>(-893f, 2219f), vec2<f32>(236f, 545f), vec2<f32>(1040f, 339f));

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> i32 {
    global0 = array<vec2<i32>, 28>();
    let var_0 = countOneBits(abs(global0[_wgslsmith_index_u32(1u, 28u)]));
    return ~u_input.a;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = all(select(!vec2<bool>(select(true, false, false), true), !select(vec2<bool>(true, arg_2.a), select(vec2<bool>(true, arg_2.a), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(arg_3.a, arg_2.a)), !(-u_input.a < u_input.a)));
    var var_1 = arg_2;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(70869u, global1.x), _wgslsmith_mod_u32(abs(max(25242u & global1.x, 4294967295u)), 47792u ^ global1.x), 91970u, 4294967295u);
    let var_3 = !(!(!vec3<bool>(var_1.a && var_1.a, true, true)));
    var var_4 = arg_2.a | any(vec4<bool>(var_3.x & (1u >= var_2.x), select(!arg_3.a, var_1.a, false), true, false));
    return -countOneBits(arg_0);
}

fn func_1() -> vec4<bool> {
    let var_0 = vec2<i32>(u_input.a, ~func_3(func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(-625f, 1215f)), Struct_1(true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1608i, u_input.a, u_input.a, -37306i), vec4<i32>(u_input.a, 1926i, u_input.a, -2147483647i) ^ vec4<i32>(1i, u_input.a, -1i, -35102i)), Struct_1(true), Struct_1(true)));
    var var_1 = -(~_wgslsmith_mult_vec3_i32(select(vec3<i32>(971i, var_0.x, 16558i), -vec3<i32>(var_0.x, 10379i, u_input.a), false), vec3<i32>(_wgslsmith_mult_i32(var_0.x, 2147483647i), ~var_0.x, reverseBits(1i))));
    var var_2 = u_input.a;
    var var_3 = var_0.x;
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.xw, select(min(~global1.zy, firstTrailingBit(global1.zw)), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 53421u), vec2<u32>(1u, global1.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)) ^ (_wgslsmith_div_vec2_u32(global1.zx, global1.wx) ^ select(~global1.zy, max(global1.zx, global1.zy), true))), 10u)];
    return select(!vec4<bool>(any(vec4<bool>(var_4.a, true, false, var_4.a)), var_4.a, true, any(vec2<bool>(true, false)) | select(var_4.a, false, false)), !select(!vec4<bool>(var_4.a, false, var_4.a, var_4.a), !select(vec4<bool>(false, var_4.a, true, var_4.a), vec4<bool>(false, var_4.a, var_4.a, var_4.a), var_4.a), select(!vec4<bool>(false, var_4.a, true, false), vec4<bool>(true, false, true, false), !var_4.a)), vec4<bool>(!(!(!var_4.a)), true, false, var_4.a));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 28>();
    global1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(~max(vec4<u32>(82621u, 31970u, global1.x, 84639u), vec4<u32>(global1.x, arg_2.x, 4294967295u, arg_2.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(32320u, arg_2.x, 4294967295u, 1u), vec4<u32>(1u, 0u, 1u, 27178u), ~vec4<u32>(arg_2.x, global1.x, global1.x, 1u))));
    global2 = array<vec2<f32>, 6>();
    let var_0 = vec4<bool>(arg_1, select(false, true, true & arg_0.a), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, 4294967295u, 1u, global1.x), ~vec4<u32>(0u, 102907u, arg_2.x, global1.x)) > _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(4294967295u, global1.x, global1.x, 1u)), select(vec4<u32>(0u, 39818u, arg_2.x, 0u), vec4<u32>(global1.x, 14392u, arg_2.x, 1u), arg_3.a), vec4<bool>(false, false, arg_0.a, arg_0.a)), vec4<u32>(~arg_2.x, reverseBits(59636u), abs(48381u), 0u)), arg_1);
    var var_1 = global3[_wgslsmith_index_u32(1u, 10u)];
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global3[_wgslsmith_index_u32(0u, 10u)], all(vec2<bool>(all(func_1()), true)), ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.x, 4294967295u), vec2<u32>(11877u, global1.x) | vec2<u32>(54996u, 39651u))), Struct_1(all(func_1())));
    var_0 = func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, ~1u), 10u)], var_0.a, vec2<u32>(36857u, ~1u), global3[_wgslsmith_index_u32(reverseBits(~global1.x), 10u)]);
    global2 = array<vec2<f32>, 6>();
    var var_1 = _wgslsmith_add_u32(~abs(select(global1.x | global1.x, ~global1.x, all(vec2<bool>(var_0.a, true)))), _wgslsmith_clamp_u32(global1.x, global1.x, ~global1.x));
    var var_2 = -916f;
    let x = u_input.a;
    s_output = StorageBuffer(-653f, vec4<f32>(466f, _wgslsmith_f_op_f32(1f - -292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(f32(-1f) * -1220f))), -984f));
}

