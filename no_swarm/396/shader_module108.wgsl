struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2147483647i, -5052i, -1i, 18628i), vec4<i32>(2147483647i, 6354i, 2147483647i, -13879i), vec4<i32>(4643i, -1i, -15438i, 2147483647i));

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    global2 = array<Struct_1, 15>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(abs(arg_0.x ^ _wgslsmith_add_u32(arg_0.x, 1u)), max(u_input.a.x, u_input.a.x)), 0u, 3078u);
    var var_1 = vec3<bool>(true, !select(true, all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true & (u_input.a.x >= 0u))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let var_3 = _wgslsmith_f_op_f32(2655f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(534f + -1324f), -419f)) + -142f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1119f + 972f)))));
    return _wgslsmith_mod_i32(max((1i | var_2.x) << (arg_0.x % 32u), 1i) >> (arg_0.x % 32u), 2147483647i);
}

fn func_2() -> vec4<bool> {
    global0 = true;
    let var_0 = vec4<u32>(107394u, 1u, ~(~u_input.a.x), ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 10542u) & 2195u);
    let var_1 = -vec2<i32>(22958i, 1i);
    global1 = array<vec4<i32>, 3>();
    var var_2 = vec4<i32>(var_1.x, ~firstLeadingBit(var_1.x), 11816i & firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.x, var_1.x, var_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, 1i, 2147483647i), vec3<i32>(-2147483647i, 0i, var_1.x)))), ~(-func_3(~var_0.zzw, min(var_1.x, var_1.x))));
    return vec4<bool>(!(((var_0.x == 5132u) == any(vec2<bool>(false, true))) | select(true, true, true)), true, true && (true || any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false))), any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = select(select(vec4<bool>(false, false, false, false), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), !func_2()), vec4<bool>(arg_0 >= _wgslsmith_f_op_f32(trunc(1427f)), -403f > arg_0, all(vec2<bool>(false, false)), !func_2().x)), select(vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), 164f > _wgslsmith_f_op_f32(trunc(1162f))), vec4<bool>(true, false, all(vec2<bool>(true, false)), ~0u < (u_input.a.x >> (u_input.a.x % 32u))), true), !(_wgslsmith_dot_vec2_i32(vec2<i32>(-24489i, 51269i), vec2<i32>(-28354i, -2147483647i)) != 6315i) & !all(vec2<bool>(true, true)));
    global2 = array<Struct_1, 15>();
    global0 = true;
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    return -14727i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(~76180u), 15u)];
    var var_2 = 12421u;
    var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(~u_input.a.x, 3u)], ~global1[_wgslsmith_index_u32(~19250u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]) << (~(vec4<u32>(4294967295u, 1u, var_0.x, 45587u) >> (firstLeadingBit(vec4<u32>(4294967295u, var_1.b, u_input.a.x, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a.x, vec4<i32>(_wgslsmith_mod_i32(4773i, var_1.c.x) | var_1.d.x, select(0i, func_1(var_1.e), true), abs(func_3(vec3<u32>(122823u, 13455u, var_0.x), 18447i)), var_1.d.x) ^ -min(max(vec4<i32>(var_1.d.x, 0i, -19665i, var_1.c.x), var_1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -62245i, var_1.a.x, 0i), vec4<i32>(37755i, var_1.d.x, var_1.d.x, var_1.d.x), vec4<i32>(-2147483647i, var_1.c.x, 0i, -28020i))), vec2<i32>(var_1.d.x, _wgslsmith_add_i32(var_1.c.x, select(0i, -1i, true)) ^ reverseBits(~var_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e))) * var_1.e))));
    let var_3 = !all(select(select(func_2(), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), func_2(), true), all(vec2<bool>(false, true)) & true));
    global0 = var_3;
    var_1 = Struct_1(((_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, var_1.a.x, var_1.a.x), var_1.c) ^ (var_1.c << (vec4<u32>(u_input.a.x, 3027u, 0u, 0u) % vec4<u32>(32u)))) ^ (_wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(79280i, var_1.d.x, var_1.a.x, 1i)) | vec4<i32>(-2147483647i, var_1.a.x, 7295i, 0i))) >> ((firstTrailingBit(~vec4<u32>(0u, 1u, var_1.b, 27141u)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 12573u, 1u, 99103u))) % vec4<u32>(32u)), var_0.x, ~var_1.a, firstLeadingBit(var_1.d), var_1.e);
    global2 = array<Struct_1, 15>();
    var_2 = _wgslsmith_sub_u32(~abs(_wgslsmith_dot_vec2_u32(max(var_0, vec2<u32>(4294967295u, 4199u)), abs(vec2<u32>(var_1.b, var_1.b)))), _wgslsmith_add_u32(abs(~(4294967295u << (var_1.b % 32u))), firstLeadingBit(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2065f, var_1.e, 1598f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.e, var_1.e, var_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, 739f, 685f)), func_2().wyx))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-712f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e - 762f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * _wgslsmith_f_op_f32(f32(-1f) * -523f)))), 2147483647i, abs(func_3(~firstLeadingBit(vec3<u32>(var_1.b, 34211u, u_input.a.x)), var_1.d.x)));
}

