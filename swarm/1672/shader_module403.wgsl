struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 81266u;

var<private> global1: bool = false;

var<private> global2: array<vec2<bool>, 9>;

var<private> global3: Struct_2 = Struct_2(6009u);

var<private> global4: vec2<i32> = vec2<i32>(22875i, -1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    return -1236f;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec3<f32> {
    global0 = ~(~91454u);
    global3 = Struct_2(~1u);
    global2 = array<vec2<bool>, 9>();
    let var_0 = 0u;
    global0 = ~_wgslsmith_sub_u32(select(arg_2.x << (abs(40045u) % 32u), ~(arg_2.x << (u_input.a % 32u)), true), global3.a);
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0))))), arg_0, 905f);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(293f - _wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(-1000f + -1745f))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(278f * 716f)), -select(vec3<i32>(52938i, global4.x, -3329i), -vec3<i32>(0i, arg_0, 0i), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1781f))), 1523f);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(1056f, -vec2<i32>(_wgslsmith_sub_i32(~arg_1.a, global4.x), global4.x), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3.a, u_input.a, global3.a)), firstLeadingBit(vec3<u32>(global3.a, 0u, u_input.a)))), ~30863u, 0u)));
    global2 = array<vec2<bool>, 9>();
    let var_2 = max(~(~(~vec4<i32>(8338i, 47547i, global4.x, global4.x) ^ vec4<i32>(-7692i, global4.x, arg_1.a, -2147483647i))), -(~firstLeadingBit(~vec4<i32>(global4.x, 1i, 2147483647i, -2147483647i))));
    global4 = -_wgslsmith_mult_vec2_i32(var_2.yx, ~abs(var_2.yw)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(54791u, u_input.a) >> (~vec2<u32>(global3.a, global3.a) % vec2<u32>(32u)), firstTrailingBit(~vec2<u32>(28300u, global3.a)), ~vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, 9028u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a) ^ max(vec2<u32>(u_input.a, global3.a), vec2<u32>(4294967295u, 9537u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 20383u)), max(~vec2<u32>(global3.a, 109437u), ~vec2<u32>(50423u, 29982u)))) % vec2<u32>(32u));
    return vec3<u32>(max(4294967295u, 1u), global3.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, u_input.a) ^ vec3<u32>(28978u, ~u_input.a, 4294967295u), vec3<u32>(max(1u >> (global3.a % 32u), 92701u), select(~4294967295u, 4294967295u, all(global2[_wgslsmith_index_u32(global3.a, 9u)])), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, u_input.a, 6650u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(8711u, 15680u, 0u))), global3.a), select(~(vec3<u32>(global3.a, 4294967295u, 32747u) & vec3<u32>(u_input.a, global3.a, u_input.a)) ^ _wgslsmith_sub_vec3_u32(func_1(global4.x, Struct_3(global4.x)), vec3<u32>(8786u, global3.a, 0u)), vec3<u32>(_wgslsmith_mod_u32(abs(global3.a), 34078u), 41972u, 0u), vec3<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), !(6473u != global3.a))), ~(~(~vec3<u32>(global3.a, u_input.a, 77523u))) << (vec3<u32>(~3159u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, global3.a), vec3<u32>(21126u, u_input.a, 22245u)), ~u_input.a, 1u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_mult_vec2_i32(max(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(21865i, global4.x), vec2<i32>(global4.x, global4.x)), vec2<i32>(1i, 49012i)), ~vec2<i32>(61367i, -20860i)), max(vec2<i32>(-8239i, global4.x), vec2<i32>(-26482i, global4.x)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global4.x), vec2<i32>(global4.x, -2147483647i), vec2<i32>(global4.x, global4.x)), -vec2<i32>(25462i, -47316i))) | -(vec2<i32>(global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-69897i, global4.x, global4.x, global4.x), vec4<i32>(global4.x, 49010i, global4.x, 34645i))) & vec2<i32>(_wgslsmith_mod_i32(global4.x, -84351i), 2147483647i));
    var var_2 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.x, -1i, 27511i), max(vec4<i32>(-28099i, 55541i, 1i, 0i), vec4<i32>(0i, var_1.x, -34169i, var_1.x) >> (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u)))) ^ -_wgslsmith_add_vec4_i32(min(vec4<i32>(global4.x, 1866i, -1444i, global4.x), vec4<i32>(var_1.x, 16421i, 14963i, -7522i)), max(vec4<i32>(var_1.x, var_1.x, var_1.x, global4.x), vec4<i32>(-7961i, var_1.x, 0i, var_1.x))));
    var_1 = _wgslsmith_add_vec2_i32(-vec2<i32>(global4.x << (abs(0u) % 32u), ~(~5374i)), abs(_wgslsmith_sub_vec2_i32(min(var_2.yw, var_2.yw), ~vec2<i32>(-5222i, var_1.x)) | var_2.xx));
    let var_3 = vec3<i32>(-6140i, global4.x, ~var_2.x) ^ (vec3<i32>(select(reverseBits(global4.x), -2147483647i, any(vec4<bool>(false, false, true, true))), ~_wgslsmith_mod_i32(global4.x, -10965i), countOneBits(2147483647i)) >> (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, var_0.x, 1u) % vec3<u32>(32u))), vec3<u32>(u_input.a, _wgslsmith_div_u32(var_0.x, 34173u), u_input.a << (global3.a % 32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-59771i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1487f, 3193f, false)), -661f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, -910f)))))), _wgslsmith_mod_u32(global3.a, abs(reverseBits(var_0.x))), vec4<u32>(abs(func_1(var_1.x, Struct_3(var_2.x)).x), var_0.x, 1u, func_1(2147483647i, Struct_3(~var_2.x)).x));
}

