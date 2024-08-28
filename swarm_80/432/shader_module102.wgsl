struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false));

var<private> global2: bool = false;

var<private> global3: vec4<i32> = vec4<i32>(1i, -2590i, 7103i, i32(-2147483648));

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.x, global3.x), max(global3.x, 1i));
    global3 = vec4<i32>(~(~var_1), 2147483647i, 1i, -abs(~var_1)) & max(~firstLeadingBit(vec4<i32>(var_1, var_1, global3.x, global3.x) & vec4<i32>(var_1, global3.x, 0i, -11845i)), abs(vec4<i32>(select(-11782i, 2147483647i, true), var_1, -12450i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(17938i, 16042i, 49258i, -2147483647i), vec4<i32>(var_1, var_1, 1i, var_1)))));
    var var_2 = global4[_wgslsmith_index_u32(max(arg_0.x, (0u ^ ~_wgslsmith_clamp_u32(var_0.x, 0u, 101705u)) | u_input.a.x), 22u)];
    return vec4<i32>(var_1, (-reverseBits(global3.x) >> (66798u % 32u)) & 12878i, ~abs(-1i), global3.x);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    global3 = max(~func_3(vec4<u32>(u_input.b, 1u, 24378u, 31814u)) ^ vec4<i32>(_wgslsmith_mult_i32(-global3.x, arg_1.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, arg_1.x), ~1i), -_wgslsmith_add_i32(arg_1.x, 5916i), ~firstTrailingBit(global3.x)), -(-vec4<i32>(0i, global3.x, arg_1.x, 14102i) << ((vec4<u32>(u_input.a.x, 65005u, arg_0, arg_0) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 18772u), vec4<u32>(arg_0, 4294967295u, 4294967295u, 1u))) % vec4<u32>(32u))));
    var var_0 = ~select(vec4<u32>(u_input.a.x, arg_0, 9404u, ~u_input.a.x), ~vec4<u32>(85856u, 4294967295u, 0u, 0u) >> (vec4<u32>(0u, 4294967295u, 73520u, arg_0) % vec4<u32>(32u)), true) | vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.a), ~vec2<u32>(1u, u_input.b))), arg_0, 4294967295u, ~0u);
    global2 = any(vec4<bool>(true, true, true, true));
    var_0 = vec4<u32>(~4174u, 40935u, reverseBits(abs(70756u)), 1u);
    var var_1 = global1[_wgslsmith_index_u32((~arg_0 << (reverseBits(74876u) % 32u)) & var_0.x, 11u)];
    return Struct_1(reverseBits(arg_1.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = Struct_2(1510f);
    var var_1 = !vec4<bool>(arg_2, true | arg_2, arg_2, select(!any(global0[_wgslsmith_index_u32(1u, 6u)]), false, false));
    let var_2 = select(!var_1.x, false, true) | true;
    let var_3 = global3.yy;
    var var_4 = 3486u;
    return -22619i;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = abs(reverseBits(~vec3<u32>(u_input.a.x, u_input.b, 1u) & firstLeadingBit(vec3<u32>(u_input.a.x, 40958u, u_input.a.x)))) ^ _wgslsmith_div_vec3_u32(abs(~countOneBits(vec3<u32>(0u, u_input.a.x, 14174u))), min(vec3<u32>(1u, u_input.a.x, u_input.a.x), ~vec3<u32>(0u, 4294967295u, u_input.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, arg_2.a, _wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3) + vec3<f32>(229f, arg_2.a, -358f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, 1337f, arg_3), vec3<f32>(237f, -640f, -254f)))))));
    global2 = !(!all(select(!global0[_wgslsmith_index_u32(4294967295u, 6u)], vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(56001u, 6u)])));
    var_0 = vec3<u32>(44232u, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4428u, 5610u), var_0.xy), 13124u), firstLeadingBit(max(vec2<u32>(30444u, 32055u), vec2<u32>(4294967295u, 30230u)))), max(42555u, min(var_0.x, firstTrailingBit(u_input.b))) | var_0.x);
    let var_2 = Struct_2(1000f);
    return Struct_1(-58125i);
}

fn func_1() -> i32 {
    global3 = _wgslsmith_div_vec4_i32(firstTrailingBit(-reverseBits(~vec4<i32>(global3.x, global3.x, 0i, -1i))), abs(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(global3.x, 4581i, global3.x, global3.x)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global3.x, 2147483647i, global3.x, -34109i)), vec4<i32>(7523i, global3.x, 2147483647i, global3.x), vec4<i32>(1i, 1i, global3.x, 22887i)))));
    global4 = array<Struct_2, 22>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = vec3<u32>(4294967295u, u_input.b, _wgslsmith_mod_u32(4294967295u, 4294967295u)) | ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 25726u, 35371u), vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<u32>(u_input.a.x, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)));
    let var_1 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, 1u), 22u)], func_4(min(var_0.x, var_0.x) != 1u, func_2(~u_input.b >> (~var_0.x % 32u), _wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_mult_vec2_i32(global3.xw, global3.ww))), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), global4[_wgslsmith_index_u32(88871u, 22u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1010f + -1000f))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 6>();
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)), !any(vec2<bool>(true, true)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), any(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))));
    let var_1 = func_1();
    global1 = array<vec4<bool>, 11>();
    let var_2 = vec4<f32>(-524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f - 627f))), _wgslsmith_f_op_f32(round(-290f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) + 680f));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2))) - var_2), _wgslsmith_f_op_vec3_f32(sign(var_2.zxy)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, -550f))), var_2.x, -1259f, _wgslsmith_f_op_f32(abs(-1392f))))));
}

