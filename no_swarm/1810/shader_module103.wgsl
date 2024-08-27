struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 12909u), vec2<u32>(27519u, 58880u), vec2<u32>(0u, 61265u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29652u, 1u), vec2<u32>(15013u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(76696u, 45853u), vec2<u32>(0u, 4494u), vec2<u32>(9044u, 0u), vec2<u32>(67170u, 14699u), vec2<u32>(36347u, 35581u), vec2<u32>(1u, 7238u), vec2<u32>(51310u, 0u), vec2<u32>(6418u, 4294967295u), vec2<u32>(25284u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(67883u, 17593u), vec2<u32>(3113u, 1u), vec2<u32>(24638u, 33356u), vec2<u32>(4009u, 4294967295u), vec2<u32>(52093u, 17296u), vec2<u32>(21361u, 62999u), vec2<u32>(5102u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(25755u, 1u), vec2<u32>(0u, 1u));

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(Struct_2(Struct_1(~vec2<i32>(0i, -2147483647i) ^ vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(global2.x, 12u)]))), !(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(global2.x, 12u)], 4272i), vec3<i32>(1i, -1i, 48597i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(global2.x, 12u)], -1i), vec3<i32>(0i, global3[_wgslsmith_index_u32(global2.x, 12u)], 2147483647i))) == ~(~u_input.a)));
    let var_1 = true;
    let var_2 = vec4<u32>(1u, ~(~1u), 146u, ~_wgslsmith_mult_u32(countOneBits(1u) | ~global2.x, 1u));
    return 47826i;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> vec4<bool> {
    return vec4<bool>(true, !any(select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, true), arg_2.a), !vec4<bool>(true, arg_0, false, true), select(vec4<bool>(arg_2.a, true, false, arg_0), vec4<bool>(arg_2.a, arg_2.a, arg_0, arg_0), vec4<bool>(arg_2.a, true, arg_2.a, true)))), false, true);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(arg_2.b.a.x, func_2()));
    var_0 = Struct_1(~min(vec2<i32>(0i, abs(43800i)), vec2<i32>(-var_0.a.x, -37461i ^ global3[_wgslsmith_index_u32(global2.x, 12u)])));
    var var_1 = Struct_4(Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(10924i, arg_2.b.a.x), -1i))), any(select(vec4<bool>(true, arg_0 || false, arg_2.a, true), func_3(!arg_0, -vec4<i32>(43021i, var_0.a.x, global3[_wgslsmith_index_u32(arg_2.c, 12u)], var_0.a.x), Struct_3(arg_0, global0[_wgslsmith_index_u32(0u, 14u)], 4294967295u)), true)));
    global2 = _wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, global2.x, ~0u, ~arg_2.c), ~vec4<u32>(reverseBits(_wgslsmith_mod_u32(76198u, global2.x)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(8630u, 29u)], global1[_wgslsmith_index_u32(arg_2.c, 29u)])), _wgslsmith_sub_u32(43390u, _wgslsmith_mod_u32(1u, arg_2.c)), 13539u));
    global2 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u), 28895u, ~0u, _wgslsmith_div_u32(~4294967295u, global2.x)), vec4<u32>(arg_2.c, _wgslsmith_div_u32(~global2.x >> (_wgslsmith_add_u32(58509u, global2.x) % 32u), _wgslsmith_sub_u32(4294967295u, min(10797u, global2.x))), max(max(firstLeadingBit(arg_2.c), _wgslsmith_mod_u32(global2.x, 4294967295u)), 36687u), ~(~(~4294967295u))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(true, 568f, Struct_3(true, Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(global2.x, 12u)])), 16304u)), (true && (true && func_3(false, vec4<i32>(1i, u_input.a, u_input.a, 1i), Struct_3(false, Struct_1(vec2<i32>(-35733i, -3008i)), global2.x)).x)) | (global3[_wgslsmith_index_u32(62859u, 12u)] >= u_input.b));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -937f, -534f), vec3<f32>(525f, 205f, 1320f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, 1200f, -1275f) * vec3<f32>(645f, -1000f, -1047f)), true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1927f, _wgslsmith_f_op_f32(-1077f * 2641f), _wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(ceil(-1714f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-530f, -569f), _wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
    var var_2 = vec4<u32>(1u, abs(_wgslsmith_clamp_u32(min(global2.x, global2.x), global2.x, global2.x)), ~global2.x, ~(~max(global2.x, 0u) ^ 874u));
    var var_3 = Struct_3(!var_0.b, Struct_1(vec2<i32>(0i, -2147483647i)), ~_wgslsmith_div_u32(global2.x, var_2.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, -1128f, true)), var_1.x, _wgslsmith_f_op_f32(var_1.x * -1793f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -365f, 2084f, var_1.x) * vec4<f32>(1240f, -269f, 1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -312f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, 655f, var_1.x))))))), false)), false));
    var var_5 = var_0.a;
    let var_6 = var_0.a;
    let var_7 = Struct_3(var_0.b, Struct_1(vec2<i32>(_wgslsmith_div_i32(var_3.b.a.x, var_3.b.a.x) >> (var_3.c % 32u), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.xzz, global2.yzx), global2.x ^ var_2.x), 12u)])), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global2.x, global2.x, 5807u), ~vec4<u32>(var_2.x, 37453u, 34156u, 49616u), vec4<u32>(31475u, 1u, var_2.x, 15803u) >> (vec4<u32>(40132u, 1u, global2.x, 102347u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(4294967295u, global2.x))), global2.x, 4294967295u, var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_0.a.a.a << (global2.yz % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -997f, var_4.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(-105f)), _wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_f_op_f32(trunc(-287f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(433f)), _wgslsmith_f_op_f32(-832f * 634f), _wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(-var_4.x)))), (select(var_2.xw >> (var_2.yx % vec2<u32>(32u)), ~vec2<u32>(4294967295u, var_3.c), !vec2<bool>(true, var_0.b)) >> (vec2<u32>(_wgslsmith_add_u32(42991u, var_7.c), var_2.x) % vec2<u32>(32u))) | ((vec2<u32>(var_2.x, var_2.x) ^ max(var_2.yz, global2.zz)) << (vec2<u32>(1u, _wgslsmith_add_u32(18383u, 9495u)) % vec2<u32>(32u))));
}

