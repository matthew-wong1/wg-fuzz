struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 17>;

var<private> global3: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(37889u, 86660u, 1537u), vec3<u32>(4294967295u, 62526u, 0u), vec3<u32>(63537u, 4294967295u, 39061u), vec3<u32>(34286u, 1u, 35080u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(60851u, 0u, 22253u), vec3<u32>(48158u, 0u, 0u), vec3<u32>(4146u, 4294967295u, 77240u), vec3<u32>(4294967295u, 49263u, 21544u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 86250u, 1u), vec3<u32>(4294967295u, 125742u, 37538u), vec3<u32>(1u, 1u, 80155u), vec3<u32>(0u, 9352u, 0u), vec3<u32>(23320u, 98110u, 71870u), vec3<u32>(0u, 1u, 1u), vec3<u32>(142553u, 4294967295u, 1u), vec3<u32>(58413u, 0u, 25713u), vec3<u32>(4294967295u, 69585u, 1u), vec3<u32>(50330u, 46308u, 51425u), vec3<u32>(30822u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 26433u, 51856u));

var<private> global4: f32 = -819f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = 29619u;
    let var_1 = Struct_1(~global2[_wgslsmith_index_u32(~(~(~0u)), 17u)], any(!vec2<bool>(true, select(true, true, false))), true);
    var var_2 = vec4<bool>(false, ~(-2147483647i) >= u_input.a, all(vec4<bool>(all(select(vec4<bool>(var_1.c, false, false, var_1.b), vec4<bool>(var_1.b, true, var_1.c, var_1.b), vec4<bool>(false, var_1.b, false, true))), true, true, false)), !var_1.c);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) * _wgslsmith_f_op_f32(f32(-1f) * -442f)))) < _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(max(-1000f, -579f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = select(vec4<i32>(-31735i, 1i, u_input.d.x, ~arg_0.x), min(vec4<i32>(800i, -35776i, 2147483647i, 1i), vec4<i32>(u_input.b, u_input.a, 2147483647i, arg_0.x)) >> (select(_wgslsmith_mult_vec4_u32(vec4<u32>(52683u, arg_1, 24233u, var_1.a.x), vec4<u32>(47701u, 1u, var_1.a.x, u_input.c)), ~vec4<u32>(20905u, 1u, 26727u, u_input.e), !vec4<bool>(var_2.x, false, true, var_1.c)) % vec4<u32>(32u)), true) | ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.d.x, -49419i), vec4<i32>(-46059i, -2147483647i, arg_0.x, u_input.b), vec4<i32>(2147483647i, -1i, u_input.b, u_input.d.x)) | ~vec4<i32>(54380i, -9173i, 1i, u_input.b));
    return -166f;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(-45716i, _wgslsmith_add_i32(arg_1, u_input.d.x)) ^ (-u_input.d.yz << (~vec2<u32>(u_input.e, 4294967295u) % vec2<u32>(32u))), ~(~max(u_input.c, u_input.c)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(trunc(-1417f)))));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(reverseBits(max(514u, 0u)), 1u), abs(0u), 1u), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), false & (arg_1 >= ~(-arg_0.x)));
    let var_2 = countOneBits(-1i);
    global0 = array<vec2<f32>, 26>();
    var var_3 = Struct_1(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(var_1.a.x, 1u, var_1.a.x), ~vec3<u32>(56170u, u_input.c, 1u), select(vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(var_1.b, false, var_1.b), false)) | _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(global3[_wgslsmith_index_u32(var_1.a.x, 22u)], var_1.a), _wgslsmith_div_vec3_u32(global3[_wgslsmith_index_u32(u_input.e, 22u)], global2[_wgslsmith_index_u32(u_input.c, 17u)])), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<u32>(1u, 13854u, 77133u))), var_1.c, var_1.c | (all(vec3<bool>(false, false, var_1.b)) == (_wgslsmith_f_op_f32(f32(-1f) * -127f) <= var_0)));
    return select(countOneBits(firstTrailingBit(firstTrailingBit(23436i))), ((arg_0.x >> (4294967295u % 32u)) | var_2) | u_input.b, true & var_3.b) << (firstTrailingBit(1u) % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = ~(func_2(arg_1, arg_1.x) ^ abs(max(1i, 31535i)));
    var var_1 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(1i < u_input.d.x, true), all(vec2<bool>(true, false)))) & (482f != _wgslsmith_f_op_f32(select(-1000f, arg_2.b, true)));
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(25285u, 17u)], select(false, true, all(vec2<bool>(true, any(vec3<bool>(true, true, true))))), true);
    let var_3 = arg_0;
    let var_4 = arg_2;
    return !select(vec3<bool>(!(!var_2.b), -var_4.a.x < arg_2.a.x, true), vec3<bool>(var_2.c == any(vec2<bool>(var_2.b, false)), var_2.c, true), !(var_2.b && true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    global4 = 1202f;
    let var_0 = select(select(vec3<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), !func_1(select(vec4<i32>(u_input.d.x, 0i, -2919i, u_input.d.x), vec4<i32>(-1401i, u_input.a, u_input.b, 6301i), false), u_input.d.xy, Struct_2(u_input.d, 228f)), vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), global2[_wgslsmith_index_u32(32919u, 17u)]) >= ~u_input.e, any(vec3<bool>(false, true, true)))), vec3<bool>(true, true, true), true);
    var var_1 = select(~1u, ~(~firstTrailingBit(reverseBits(1u))), all(vec4<bool>(4294967295u >= u_input.e, var_0.x, true, !(2147483647i <= u_input.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1403f, 1181f))) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(34137u, 26u)])))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1329f)) * _wgslsmith_f_op_f32(f32(-1f) * -586f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(716f, 980f))), vec2<f32>(1f, 1f)))));
    var_2 = global0[_wgslsmith_index_u32(~u_input.e, 26u)];
    var_2 = global0[_wgslsmith_index_u32(5377u & ~u_input.e, 26u)];
    var var_3 = vec4<u32>(countOneBits(5010u), _wgslsmith_mod_u32(~(~(u_input.e | u_input.c)), 0u), u_input.e, select(countOneBits(~(~1376u)), abs(u_input.c), !var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-516f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-148f * var_2.x), _wgslsmith_f_op_f32(-1438f * var_2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(817f)) - 949f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1213f, var_2.x))), -279f), var_3.x);
}

