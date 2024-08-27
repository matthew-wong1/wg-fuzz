struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = ~u_input.b.yxx;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -2098f), _wgslsmith_f_op_f32(f32(-1f) * -269f), -158f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(865f * arg_1), arg_3)))), 902f));
    var_0 = u_input.b.xww | ~vec3<i32>(44392i, _wgslsmith_mod_i32(-12899i, _wgslsmith_clamp_i32(-18396i, var_0.x, -35562i)), 1i);
    var_1 = vec4<f32>(arg_1, -1246f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(ceil(arg_1)));
    let var_2 = !(!(var_0.x <= var_0.x));
    return true;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = abs(vec2<u32>(1u, 51031u)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(14753u, 606u)), vec2<u32>(firstLeadingBit(54059u), 29372u)), 33770u) % vec2<u32>(32u));
    let var_1 = select(!vec2<bool>(arg_0, arg_0), select(select(!vec2<bool>(arg_0, arg_0), !select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))), vec2<bool>(true, func_1(vec2<u32>(31606u, var_0.x), _wgslsmith_f_op_f32(-1060f * 670f), firstLeadingBit(var_0.x), -854f)), vec2<bool>(false, true)), arg_0 || arg_0);
    var var_2 = _wgslsmith_div_vec2_i32(u_input.b.yx, _wgslsmith_mult_vec2_i32(arg_3.b.wy, _wgslsmith_clamp_vec2_i32(u_input.b.xz ^ arg_3.b.ww, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -1i), arg_2), vec2<i32>(1i, 1i)) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(43820u, 30259u), vec2<u32>(var_0.x, var_0.x), vec2<u32>(0u, var_0.x)) ^ vec2<u32>(var_0.x, 4294967295u)) % vec2<u32>(32u))));
    var_2 = _wgslsmith_sub_vec2_i32(u_input.b.wz, ~(~_wgslsmith_div_vec2_i32(~arg_2, max(arg_3.b.ww, vec2<i32>(2147483647i, 31429i)))));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(select(~(~var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 14641u, 42490u, var_0.x), ~vec4<u32>(var_0.x, 4294967295u, 4294967295u, 35936u)), !(!arg_0)), ~var_0.x ^ (_wgslsmith_mod_u32(0u, var_0.x) ^ firstLeadingBit(1u))), 56545u, reverseBits(18279u), ~127399u);
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.x, ~var_3.x, _wgslsmith_sub_u32(var_3.x, 34791u), reverseBits(var_0.x)), max(vec4<u32>(53366u, 0u, var_0.x, var_3.x), select(vec4<u32>(1u, var_3.x, 29787u, var_0.x), vec4<u32>(1u, var_0.x, 1u, 1u), false))), ~vec4<u32>(32791u, 86356u, 18637u, var_0.x) & ~max(vec4<u32>(1u, var_3.x, 1u, 4294967295u), vec4<u32>(var_0.x, 71856u, var_3.x, 5180u))), ~0u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<u32>(4294967295u, _wgslsmith_div_u32(71630u, 20969u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 63579u), vec2<u32>(0u, 34180u)), ~vec2<u32>(4294967295u, 7698u)), func_3(all(vec3<bool>(true, false, true)), u_input.a, _wgslsmith_sub_vec2_i32(arg_0.b.zz, u_input.b.xx), Struct_2(arg_0.b.x, vec4<i32>(25574i, -1482i, 33357i, u_input.a))), func_3(false, u_input.a & 0i, vec2<i32>(u_input.a, arg_0.a.x), Struct_2(u_input.a, u_input.b))), vec3<u32>(countOneBits(~1u), 0u, 74838u)));
    var var_1 = !(firstTrailingBit(1i) >= 29573i) & any(vec3<bool>(true, true, true));
    var var_2 = vec2<i32>(0i, ~35785i);
    var_2 = (_wgslsmith_div_vec2_i32(max(~arg_0.a, ~vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_mult_vec2_i32(-arg_0.a, firstTrailingBit(vec2<i32>(var_2.x, 1i)))) & abs(firstTrailingBit(vec2<i32>(-33310i, 9120i)))) >> (var_0.wy % vec2<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(45875i, arg_0.b.x), _wgslsmith_mult_i32(29368i, -3001i)), vec2<i32>(~var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-55587i, 34165i), vec2<i32>(50885i, arg_0.b.x)))), arg_0.a), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(2147483647i, 1i, arg_0.a.x, -42991i) << (vec4<u32>(96490u, var_0.x, 7413u, 41153u) % vec4<u32>(32u))));
    return ~_wgslsmith_clamp_u32(4294967295u, ~var_0.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.x, ~var_0.x), var_0.x << (0u % 32u), 35233u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!((true != all(vec2<bool>(true, true))) & !all(vec4<bool>(true, false, true, true))), true, true);
    let var_1 = -26545i;
    var var_2 = any(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), true), vec4<bool>(any(vec3<bool>(false, true, false)), func_1(vec2<u32>(4294967295u, 0u), -2065f, 1482u, 826f), true, true), true));
    let var_3 = true;
    let var_4 = _wgslsmith_mod_u32(countOneBits(4294967295u) & ~func_2(Struct_1(vec2<i32>(2147483647i, u_input.b.x), vec3<i32>(-1i, -2147483647i, 2147483647i))), ~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstLeadingBit(select((vec2<u32>(4294967295u, var_4) ^ vec2<u32>(var_4, 1u)) & ~vec2<u32>(7214u, 3580u), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 15428u), vec2<u32>(4294967295u, var_4))), any(!vec2<bool>(false, var_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -215f))) + -1110f) - -1728f), ~(vec2<u32>(16726u, _wgslsmith_sub_u32(var_4, 1u)) | vec2<u32>(~20901u, ~1u)));
}

