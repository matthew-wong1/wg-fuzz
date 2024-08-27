struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> u32 {
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    return _wgslsmith_mult_u32(max(u_input.b.x, 7135u), ~(~105617u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> i32 {
    global0 = array<f32, 12>();
    let var_0 = ~u_input.a.yyx;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), arg_2.x), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), arg_0.b.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, _wgslsmith_mod_i32(-30806i, arg_0.c), ~(-2147483647i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0.c, arg_0.c, arg_1.x), vec3<i32>(arg_1.x, 0i, 0i) & vec3<i32>(arg_1.x, 7976i, 0i))), ~(~vec3<i32>(arg_1.x, 16782i, 2043i)) ^ -(vec3<i32>(arg_0.c, arg_0.c, -2147483647i) & vec3<i32>(23728i, 61807i, arg_1.x))));
    var_1 = Struct_1(-1000f, arg_2, -2147483647i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-901f, -849f), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(arg_0.a, var_1.b.x))), -352f)), _wgslsmith_f_op_vec3_f32(step(var_1.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(arg_0.a, var_1.a, global0[_wgslsmith_index_u32(var_0.x, 12u)]))))))), ~(-select(min(19436i, arg_0.c), _wgslsmith_sub_i32(var_1.c, arg_0.c), true)));
    return ~(-2147483647i);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(-640f, vec3<f32>(_wgslsmith_f_op_f32(step(-1746f, -951f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)), -1063f, false)), -828f), _wgslsmith_sub_i32(func_3(Struct_1(-1276f, vec3<f32>(1281f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -1094f), -1i), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2, arg_2), -arg_2), vec3<f32>(1317f, global0[_wgslsmith_index_u32(func_2(arg_0, u_input.b.x, false), 12u)], -565f)), arg_1));
    let var_1 = u_input.b.x;
    let var_2 = 0u;
    let var_3 = var_1 != 26691u;
    var var_4 = vec3<bool>(!(!arg_0) && (!var_3 | true), any(vec4<bool>(!all(vec3<bool>(true, true, var_3)), !arg_0, true, any(!vec3<bool>(false, arg_0, arg_0)))), false);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(12073u, 12u)]))) + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(reverseBits(var_1), 12u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1554f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, -1472f, 123f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-859f, 1000f, -232f))))))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    var var_0 = 2147483647i;
    let var_1 = func_1(any(vec3<bool>(true, false, false)), reverseBits(-1i), select(countOneBits(vec2<i32>(1i, 1i)), abs(vec2<i32>(11167i, -2147483647i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(31559i, 13464i) >> (vec2<u32>(u_input.b.x, 113926u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(7565i, 0i), vec2<i32>(-1i, -13328i))), true), 279f);
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.b.x, u_input.a.x, 1u), u_input.a.xxy, select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, false))), ~(~firstLeadingBit(vec3<u32>(28378u, 1u, 0u)))), vec3<u32>(4294967295u, countOneBits(_wgslsmith_div_u32(u_input.a.x, 48583u)), 0u) >> (vec3<u32>(u_input.a.x, u_input.a.x, ~86368u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, 15295u, 1u)) & u_input.a.x, _wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(u_input.a.x, 0u), false), ~u_input.a.ww)), ~(u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 55758u, 45148u), vec4<u32>(u_input.a.x, 0u, u_input.b.x, 82571u)) % 32u)), min(_wgslsmith_sub_u32(~24085u, 16915u | u_input.a.x), reverseBits(u_input.a.x))));
    let var_3 = abs(vec2<i32>(firstTrailingBit(min(33203i, -40939i)), func_1(true, max(var_1.c, var_1.c), vec2<i32>(2147483647i, 0i), -1256f).c) | (vec2<i32>(-50837i, ~2147483647i) & ~(-vec2<i32>(var_1.c, 44380i))));
    var var_4 = true;
    let var_5 = var_3.x >> (~(~(~_wgslsmith_clamp_u32(4294967295u, 67404u, 1u))) % 32u);
    let var_6 = Struct_1(var_1.b.x, func_1(false, var_5, -(max(var_3, vec2<i32>(var_1.c, 1i)) << ((u_input.a.zy << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.x, -539f)) * _wgslsmith_f_op_f32(select(-124f, global0[_wgslsmith_index_u32(23553u, 12u)], true))))).b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x | ~func_2(true, 4294967295u, true), 12u)]), abs(0i));
}

