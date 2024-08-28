struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    global0 = select(vec2<bool>(false, select(global0.x, global0.x, any(!vec3<bool>(global0.x, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, global0.x), global0.x), global0.x);
    var var_0 = arg_0;
    global0 = select(vec2<bool>(global0.x && global0.x, ~(global1.x & u_input.b.x) < ~countOneBits(arg_1.x)), !select(vec2<bool>(global0.x, false | global0.x), select(vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, false), vec2<bool>(true, true), false), any(vec4<bool>(false, global0.x, false, true))), vec2<bool>(true, all(vec3<bool>(global0.x, false, true)))), select(select(vec2<bool>(true, all(vec2<bool>(true, true))), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), global0.x), true), !select(vec2<bool>(false, true), !vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, global0.x)))));
    let var_1 = Struct_2(arg_1);
    var var_2 = vec4<f32>(-1402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(956f * _wgslsmith_f_op_f32(1528f - 1000f)))), _wgslsmith_f_op_f32(floor(1103f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1598f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-977f + 1727f), 444f), false))));
    return ~(-12981i);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_2(countOneBits(global1.zww));
    var var_1 = global0.x;
    var var_2 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0, min(vec2<i32>(12814i, -61117i), arg_0)));
    let var_3 = abs(max(-select(vec3<i32>(-2147483647i, 35296i, -23457i) << (var_0.a % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, arg_0.x)), any(vec3<bool>(true, false, global0.x))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-20562i, 11125i, arg_0.x)) << (~vec3<u32>(9898u, 4294967295u, 0u) % vec3<u32>(32u)), ~vec3<i32>(arg_0.x, 1814i, arg_0.x))));
    var var_4 = var_2.x | 35374i;
    return !vec2<bool>(arg_0.x < var_2.x, global0.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = select(!(!(!vec4<bool>(global0.x, arg_3.x, true, global0.x))), !select(vec4<bool>(false, arg_3.x, any(arg_3.yx), global0.x), select(!vec4<bool>(true, false, false, arg_3.x), vec4<bool>(arg_3.x, false, false, arg_3.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x))), vec4<bool>(global0.x, 1i <= arg_1.x, global0.x || global0.x, 1u == global1.x)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)) != -1361f);
    global1 = vec4<u32>(20347u, 28466u, _wgslsmith_sub_u32(reverseBits(firstLeadingBit(27225u)), _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.b.x, 0u), countOneBits(10396u) ^ ~global1.x)), _wgslsmith_sub_u32(16271u, firstLeadingBit(global1.x)));
    global0 = select(!vec2<bool>(global0.x, true), var_0.wy, vec2<bool>(all(!select(vec4<bool>(false, true, arg_3.x, true), vec4<bool>(true, false, false, true), true)), true));
    return select(select(select(arg_3.zy, vec2<bool>(all(arg_3.yx), !global0.x), global0.x), arg_3.yy, global0.x), select(select(vec2<bool>(false, var_0.x), vec2<bool>(true, u_input.a <= 61177u), var_0.yx), var_0.yy, true), func_4(-vec2<i32>(16776i, func_3(Struct_1(global1.ywz), vec3<u32>(0u, u_input.a, global1.x))), global1.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = select(select(select(func_2(arg_0.a.xz, vec2<i32>(-48243i, -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1250f, -1253f) - vec3<f32>(-258f, 444f, -604f)), !vec3<bool>(global0.x, true, global0.x)), !vec2<bool>(true, global0.x), select(true, any(vec3<bool>(false, global0.x, false)), true)), vec2<bool>(true, true), true), !(!func_2(firstLeadingBit(arg_1.a.xx), abs(vec2<i32>(37174i, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, -867f, 516f)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x)))), !func_4(firstLeadingBit(~vec2<i32>(-1i, 14612i)), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, u_input.b.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, 1142f, 716f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1708f, 1898f, 784f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, 295f, -573f)))), vec3<f32>(-1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 280f)))), 1847f)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(-138f)), _wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -384f, var_1.x), vec3<f32>(401f, 238f, 189f)) * vec3<f32>(-599f, var_1.x, -460f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 209f)))))));
    let var_2 = ~(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-13666i, 11768i, 0i, 2147483647i), abs(vec4<i32>(37269i, -12177i, 2147483647i, 26979i)))));
    var var_3 = ~(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(51023u, 48011u, u_input.a, arg_0.a.x)), firstLeadingBit(vec4<u32>(44520u, 0u, 88064u, 29929u))) >> (reverseBits(arg_1.a.x) % 32u));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, arg_1.a.x, arg_1.a.x, arg_0.a.x), vec4<u32>(global1.x, arg_1.a.x, arg_1.a.x, arg_0.a.x)), abs(vec4<u32>(0u, 7213u, arg_0.a.x, u_input.a))) | ~(~vec4<u32>(global1.x, global1.x, global1.x, 0u)), ~vec4<u32>(9951u, ~arg_1.a.x, _wgslsmith_div_u32(0u, 4294967295u), countOneBits(arg_0.a.x))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.b.x), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x) | arg_1.a.yy, _wgslsmith_clamp_vec2_u32(u_input.b.yx, arg_1.a.xx, arg_0.a.xz)), ~1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 7307u, 33423u, 14688u) << (vec4<u32>(arg_1.a.x, global1.x, 4294967295u, arg_1.a.x) % vec4<u32>(32u)), vec4<u32>(arg_0.a.x, 21744u, 9031u, u_input.a))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(~1u, ~firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, u_input.a, 4294967295u)), global1.x));
    var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(firstTrailingBit(var_0.a.x), func_1(Struct_2(var_0.a), Struct_1(var_0.a)))), var_0.a.x | _wgslsmith_add_u32(21429u, _wgslsmith_add_u32(1u, var_0.a.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(10426u, 27318u, 71515u)), max(vec3<u32>(global1.x, u_input.b.x, 41055u) ^ var_0.a, u_input.b))));
    var var_1 = ~(~(~0u));
    let var_2 = global0.x;
    var_0 = Struct_1(~(~(~(~u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 12858i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1537i, 1i), vec3<i32>(1i, 0i, 23046i))) | abs(2147483647i), abs(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(17639i, 0i))), func_3(Struct_1(select(vec3<u32>(4294967295u, 4294967295u, u_input.a), u_input.b, vec3<bool>(global0.x, global0.x, false))), vec3<u32>(8225u >> (0u % 32u), 10991u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

