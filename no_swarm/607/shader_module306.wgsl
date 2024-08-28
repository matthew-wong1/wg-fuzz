struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, true, true, true, true);

var<private> global1: array<i32, 11> = array<i32, 11>(1i, -10444i, 0i, i32(-2147483648), i32(-2147483648), 19547i, 1674i, -55499i, -1i, 2147483647i, i32(-2147483648));

var<private> global2: array<i32, 9>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> bool {
    let var_0 = !vec3<bool>((false | !global0[_wgslsmith_index_u32(51130u, 7u)]) && true, true, !(global0[_wgslsmith_index_u32(1u, 7u)] || true));
    global0 = array<bool, 7>();
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec2<i32> {
    let var_0 = max(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 0u, 1u))), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(1u, ~90571u), 58209u, 0u), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(arg_0))));
    global1 = array<i32, 11>();
    let var_2 = select(!vec2<bool>(false, global0[_wgslsmith_index_u32(~var_0.x, 7u)]), !vec2<bool>(func_2(), true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], false));
    let var_3 = select(var_2, vec2<bool>(!any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], var_2.x, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 1u) ^ reverseBits(vec4<u32>(var_0.x, var_0.x, 21551u, 4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 18043u, 0u), vec4<u32>(var_0.x, var_0.x, 82037u, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(0u, var_0.x, 106719u, 38071u)))), 7u)]), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), var_2, global0[_wgslsmith_index_u32(42161u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)])), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], false), vec2<bool>(var_2.x, global0[_wgslsmith_index_u32(65517u, 7u)]), global0[_wgslsmith_index_u32(var_0.x, 7u)])), !select(var_2, select(var_2, vec2<bool>(false, global0[_wgslsmith_index_u32(36431u, 7u)]), vec2<bool>(true, var_2.x)), !var_2.x)));
    return vec2<i32>(_wgslsmith_sub_i32(-8559i, _wgslsmith_add_i32(~global2[_wgslsmith_index_u32(18122u, 9u)], min(-5512i, global1[_wgslsmith_index_u32(4294967295u, 11u)]))) & _wgslsmith_div_i32(39583i, 15668i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(-u_input.b), ~reverseBits(vec3<i32>(-2147483647i, -31384i, -2147483647i))), -vec3<i32>(54292i, -u_input.c.x, global1[_wgslsmith_index_u32(var_0.x, 11u)])));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = arg_1.a.x;
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d), 286f)) < _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_div_f32(1115f, 382f)), arg_1.a.x, !(all(arg_1.a) && true), var_0), !(!select(vec4<bool>(false, arg_0, true, false), arg_1.a, select(true, arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.b, 7u)]))), !func_2());
    var var_2 = ~(~countOneBits(~func_3(vec3<f32>(arg_1.d, -1091f, arg_1.c), arg_1.d)));
    let var_3 = ~max(vec3<u32>(reverseBits(firstLeadingBit(3163u)), ~39664u, ~0u >> (1u % 32u)), ~max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b, 46286u, arg_1.b), vec3<u32>(arg_1.b, 23394u, 32307u)), abs(vec3<u32>(1u, 4294967295u, 52904u))));
    global2 = array<i32, 9>();
    return vec3<u32>(countOneBits(abs(~_wgslsmith_div_u32(4294967295u, 25102u))), ~(~abs(var_3.x)), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, true, false), !vec4<bool>(!global0[_wgslsmith_index_u32(42159u, 7u)], global0[_wgslsmith_index_u32(8029u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], true), false);
    global0 = array<bool, 7>();
    let var_1 = vec4<bool>(!(firstTrailingBit(1u) == _wgslsmith_mod_u32(22966u, max(4294967295u, 0u))), any(vec4<bool>(true, true, var_0.x, any(var_0.zzw))), (!(!global0[_wgslsmith_index_u32(0u, 7u)]) && all(var_0.yz)) | true, true);
    var var_2 = (_wgslsmith_sub_vec3_i32(u_input.b, firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(13926u, 11u)], u_input.c.x))) | _wgslsmith_div_vec3_i32(u_input.c ^ select(u_input.b, vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(20491u, 11u)], -1i), vec3<bool>(false, false, true)), abs(u_input.b))) >> (~(vec3<u32>(~60670u, max(73343u, 0u), 1u) ^ reverseBits(func_1(false, Struct_1(vec4<bool>(false, var_0.x, false, true), 0u, 245f, 344f)))) % vec3<u32>(32u));
    let var_3 = Struct_1(var_1, ~(~(~(~7558u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-408f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(108f * 1928f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-482f, -483f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) * _wgslsmith_f_op_f32(step(512f, 308f))))));
    var var_4 = var_0.yx;
    var var_5 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_3.b, var_3.b, 53778u, 10009u)), select(vec4<u32>(1u, 27319u, 1u, 1u), vec4<u32>(var_3.b, 1u, var_3.b, 43199u), var_0.x) ^ ~vec4<u32>(95133u, var_3.b, 1u, 30150u)), 27306u), countOneBits(~vec2<u32>(var_3.b, 20798u) << (vec2<u32>(var_3.b, var_3.b) % vec2<u32>(32u))) >> (vec2<u32>(~var_3.b, var_3.b) % vec2<u32>(32u)));
    global2 = array<i32, 9>();
    global0 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_3.b, 22231u, 20954u), vec4<u32>(var_5.x, 10879u, 18186u, 34419u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.b, var_5.x, 78241u), vec3<u32>(1u, var_5.x, 31016u) ^ vec3<u32>(var_3.b, var_3.b, var_3.b))));
}

