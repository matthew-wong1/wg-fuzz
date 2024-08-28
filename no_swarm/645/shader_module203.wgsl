struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool = true;

var<private> global2: array<Struct_4, 13>;

var<private> global3: i32 = 0i;

var<private> global4: array<Struct_4, 15>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<Struct_4, 13>();
    let var_0 = u_input.b.x;
    var var_1 = global2[_wgslsmith_index_u32(~(~max(1u, ~min(u_input.a, u_input.a))), 13u)];
    global2 = array<Struct_4, 13>();
    let var_2 = !(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 8071u, u_input.a), vec3<u32>(u_input.a, 67306u, u_input.a)), select(vec3<u32>(0u, 75811u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.a, 28719u, 12185u), vec3<u32>(36893u, 4294967295u, u_input.a)) ^ max(vec3<u32>(28103u, 0u, u_input.a), vec3<u32>(27199u, u_input.a, 0u))) != 0u);
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec4<bool> {
    global1 = _wgslsmith_add_i32(~16811i, ~select(-26317i, arg_0, false)) < arg_0;
    var var_0 = Struct_5(global4[_wgslsmith_index_u32(~func_3(any(arg_1.xz)), 15u)], vec3<i32>(~abs(9006i), u_input.b.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -45389i, arg_0), vec3<i32>(arg_0, 0i, u_input.b.x)))), ~(~(vec3<u32>(62185u, u_input.a, 4294967295u) | ~vec3<u32>(u_input.a, u_input.a, 1u))), Struct_1(-(~(vec3<i32>(arg_0, u_input.b.x, -25702i) << (vec3<u32>(28280u, 85608u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mod_u32(67029u, func_3(arg_1.x) ^ 27712u)));
    var var_1 = !arg_2;
    global4 = array<Struct_4, 15>();
    global2 = array<Struct_4, 13>();
    return vec4<bool>(any(vec3<bool>(false & !var_0.a.a.a, true, all(vec4<bool>(var_1.x, var_1.x, true, var_0.a.a.a)))), all(!select(!vec4<bool>(arg_2.x, true, true, var_1.x), vec4<bool>(true, arg_2.x, var_1.x, true), true)), !(!(true && all(vec3<bool>(false, false, true)))), any(select(select(vec4<bool>(false, true, var_1.x, arg_1.x), vec4<bool>(false, arg_2.x, true, arg_1.x), vec4<bool>(false, false, var_0.a.a.a, arg_1.x)), vec4<bool>(true, var_0.a.a.a, arg_1.x, true), true)) || false);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = select(select(select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(arg_1, false, true, arg_1), false), vec4<bool>(true, false && arg_1, u_input.b.x <= arg_0.x, false), false), vec4<bool>(arg_2, arg_2, any(vec2<bool>(true, arg_2)), arg_0.x >= -1i), true), !select(select(vec4<bool>(arg_2, true, arg_2, arg_1), !vec4<bool>(arg_1, false, arg_1, arg_2), vec4<bool>(true, true, true, false)), vec4<bool>(true, arg_2, arg_1, true), select(func_2(arg_0.x, vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, false)), select(vec4<bool>(true, arg_2, true, true), vec4<bool>(true, true, arg_1, arg_1), true), vec4<bool>(false, true, arg_2, true))), (_wgslsmith_f_op_f32(round(-1000f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-245f - 292f)))) && any(select(vec2<bool>(true, arg_2), !vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))));
    global2 = array<Struct_4, 13>();
    let var_1 = Struct_2(firstLeadingBit(-countOneBits(vec2<i32>(arg_0.x, u_input.b.x))));
    let var_2 = vec4<u32>(u_input.a, countOneBits(~(~u_input.a)), u_input.a, ~u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(382f, 1009f), vec2<f32>(1303f, -1053f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(295f, -1031f), vec2<f32>(-755f, -636f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1747f, -1000f))))) + vec2<f32>(575f, 1f));
    return var_3.x <= var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~firstLeadingBit(0u)));
    var var_1 = u_input.a & u_input.a;
    var var_2 = select(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true))), vec4<bool>(true, true || select(all(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, true))), func_1(firstLeadingBit(u_input.b), true, true), true), !(!vec4<bool>(any(vec3<bool>(false, false, true)), true, true, func_1(u_input.b, false, false))));
    var var_3 = ~firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) ^ _wgslsmith_sub_i32(-9796i, u_input.b.x));
    var var_4 = vec3<bool>(var_2.x, !var_2.x, ((u_input.a >> (u_input.a % 32u)) >= u_input.a) && ((firstTrailingBit(u_input.b.x) != u_input.b.x) & (_wgslsmith_div_u32(u_input.a, u_input.a) != _wgslsmith_sub_u32(63927u, u_input.a))));
    let var_5 = var_4.x;
    let var_6 = max(_wgslsmith_add_vec4_i32(~vec4<i32>(-18775i, -44084i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, 0i)), abs(~firstTrailingBit(vec4<i32>(-3134i, -1i, -2147483647i, 2147483647i)))), vec4<i32>(_wgslsmith_sub_i32(-18755i, u_input.b.x), -1i, u_input.b.x, u_input.b.x));
    var var_7 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, 45475u, u_input.a))), u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(9520u, u_input.a, u_input.a, u_input.a), vec4<u32>(47855u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 12342u, u_input.a), firstLeadingBit(vec4<u32>(0u, u_input.a, 1u, u_input.a)))), ~(~14355u)));
    let x = u_input.a;
    s_output = StorageBuffer((min(19089u, ~u_input.a) | ~u_input.a) ^ _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 4294967295u), 14902u);
}

