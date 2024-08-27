struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(25396u, false), Struct_1(89390u, false), Struct_1(115u, true), Struct_1(1u, true), Struct_1(4294967295u, true));

var<private> global1: array<Struct_1, 23>;

var<private> global2: Struct_1;

var<private> global3: vec2<i32> = vec2<i32>(-12687i, 46213i);

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec2<i32> {
    global3 = vec2<i32>(~82073i, global3.x << ((select(firstLeadingBit(0u), ~global2.a, global2.b) << ((global4.x >> (u_input.a.x % 32u)) % 32u)) % 32u));
    let var_0 = true;
    global0 = array<Struct_1, 5>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-741f, _wgslsmith_f_op_f32(-arg_1), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -706f)))));
    return arg_0.xz;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = vec3<bool>(global2.b, global2.b, select(select(global2.b, true, global2.b), false, true));
    global3 = _wgslsmith_add_vec2_i32(~vec2<i32>(i32(-1i) * -45218i, -1i), -select(select(vec2<i32>(2147483647i, 18197i), vec2<i32>(global3.x, 34990i), var_0.x), abs(vec2<i32>(global3.x, global3.x)), true) >> ((~_wgslsmith_mod_vec2_u32(global4.wx, global4.wx) << (~firstTrailingBit(u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = -select(~vec2<i32>(global3.x, global3.x), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(25324i, 0i, -2147483647i), vec3<i32>(-1i, 1i, 76209i)), 0i), firstLeadingBit(max(vec2<i32>(11437i, global3.x), vec2<i32>(global3.x, -24445i))), global2.b), global2.b);
    global0 = array<Struct_1, 5>();
    global3 = ~select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, -1i), vec2<i32>(global3.x, 2147483647i)), func_3(vec3<i32>(global3.x, arg_1, global3.x), 470f)) | vec2<i32>(0i, arg_1), firstTrailingBit(-vec2<i32>(arg_1, arg_1) << ((global4.xx & u_input.b.wy) % vec2<u32>(32u))), vec2<bool>(true, any(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    return Struct_2(global0[_wgslsmith_index_u32(~(~global2.a), 5u)], _wgslsmith_clamp_vec4_u32(~u_input.b, select(countOneBits(max(u_input.b, u_input.b)), ~vec4<u32>(global2.a, arg_0, u_input.b.x, global2.a), !select(vec4<bool>(false, var_0.x, global2.b, false), vec4<bool>(global2.b, false, var_0.x, false), vec4<bool>(true, var_0.x, true, global2.b))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 10207u, u_input.a.x, global2.a)), select(u_input.b, u_input.b, true)) >> (vec4<u32>(arg_0, ~1u, ~4294967295u, 42624u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(countOneBits(4294967295u), false), u_input.b << (vec4<u32>(global2.a, 0u, global2.a, ~func_2(24488u, 23276i).a.a) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(273f)) + -1050f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1898f))), _wgslsmith_f_op_f32(sign(559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(783f))))));
    var var_2 = _wgslsmith_f_op_f32(1497f + -573f);
    let var_3 = false;
    var var_4 = var_0;
    return vec2<i32>(countOneBits(12466i), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global3.x, global3.x, global3.x) | vec3<i32>(global3.x, -1i, global3.x)), -(~vec3<i32>(global3.x, global3.x, -1i))) << (~(~u_input.b.x ^ func_2(47486u, -23690i).a.a) % 32u));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> StorageBuffer {
    let var_0 = func_4(func_2(arg_2.x, 0i), u_input.a.x) ^ vec2<i32>(-1i, -29356i);
    var var_1 = vec2<f32>(1133f, _wgslsmith_f_op_f32(abs(1f)));
    global1 = array<Struct_1, 23>();
    let var_2 = vec4<u32>(16268u, global2.a, u_input.a.x, 1u);
    global4 = _wgslsmith_mod_vec4_u32(reverseBits(select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(40370u, global2.a, global4.x, global4.x)), vec4<u32>(global4.x, global4.x, 239u, u_input.b.x)), vec4<u32>(max(1u, u_input.b.x), min(arg_2.x, global2.a), ~4294967295u, ~global4.x), vec4<bool>(global2.b, arg_0, true, all(vec2<bool>(global2.b, global2.b))))), _wgslsmith_sub_vec4_u32(~abs(u_input.b), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 0u, arg_2.x, 39175u), _wgslsmith_mod_vec4_u32(var_2, u_input.b))));
    return StorageBuffer((abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1112i, var_0.x), vec3<i32>(global3.x, arg_1, global3.x))) ^ ((vec3<i32>(global3.x, 1i, global3.x) & vec3<i32>(var_0.x, arg_1, var_0.x)) << (vec3<u32>(global2.a, var_2.x, 1u) % vec3<u32>(32u)))) >> (var_2.xzw % vec3<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) + 962f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, select(global2.b, true, any(!(!vec2<bool>(false, global2.b)))));
    let var_1 = 1u;
    global4 = u_input.b;
    var var_2 = 0i;
    let x = u_input.a;
    s_output = func_1((_wgslsmith_f_op_f32(-219f * _wgslsmith_f_op_f32(round(-1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f))) & !any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(global2.b, true, var_0.x, true), vec4<bool>(true, false, false, false))), _wgslsmith_sub_i32(~global3.x, 1i), ~vec2<u32>(global2.a, ~var_1));
}

