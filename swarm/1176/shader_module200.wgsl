struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<f32, 19> = array<f32, 19>(-1751f, -1000f, 2273f, -274f, -1134f, -580f, -235f, 1964f, 1268f, 759f, 370f, -568f, 795f, -933f, 1501f, -645f, -337f, -252f, -466f);

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1296f, 195f), vec2<f32>(1376f, -1279f), vec2<f32>(1000f, -1672f), vec2<f32>(786f, 1076f), vec2<f32>(-571f, -935f), vec2<f32>(-878f, 1737f), vec2<f32>(-764f, -176f), vec2<f32>(543f, -805f), vec2<f32>(-982f, -1043f), vec2<f32>(-918f, 782f), vec2<f32>(-905f, -1183f), vec2<f32>(-752f, -464f), vec2<f32>(-852f, 336f), vec2<f32>(-1000f, 541f), vec2<f32>(-330f, -493f), vec2<f32>(173f, 1920f), vec2<f32>(836f, -1113f), vec2<f32>(-301f, -310f));

var<private> global3: vec4<i32>;

var<private> global4: array<vec3<i32>, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32) -> f32 {
    global4 = array<vec3<i32>, 29>();
    var var_0 = abs(vec2<u32>(u_input.b.x, u_input.a.x)) << (u_input.b % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32((global3.x >> (4294967295u % 32u)) | global3.x, ~_wgslsmith_add_i32(-9931i, 0i)) << ((17588u | min(~u_input.a.x, arg_0.b.x)) % 32u), -2147483647i);
    return select(vec2<i32>(max(-var_0.x, ~global3.x), _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(global3.x, 45513i, 26998i)), -vec3<i32>(-30310i, global3.x, var_0.x))), abs(-reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 14088i), vec2<i32>(global3.x, -1i)))), true);
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    global3 = vec4<i32>(1i, -_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(~global3.x, firstTrailingBit(global3.x))), max(-13128i, 62474i), -global3.x);
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    var var_1 = ~78575u == countOneBits(u_input.b.x);
    var var_2 = _wgslsmith_dot_vec2_i32(func_3(global0[_wgslsmith_index_u32(~73525u, 27u)], global1[_wgslsmith_index_u32(6744u, 19u)]), global3.yz);
    global3 = _wgslsmith_mod_vec4_i32(select(-(~vec4<i32>(2147483647i, 2147483647i, global3.x, global3.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, 0i, global3.x), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, -1i, 2147483647i, 12335i), vec4<i32>(-1i, 33000i, -2147483647i, global3.x))), -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global3.x, global3.x, 17754i), vec4<i32>(2147483647i, 0i, global3.x, -51813i), vec4<i32>(0i, global3.x, global3.x, 2147483647i)), select(vec4<i32>(global3.x, 30125i, global3.x, 0i), vec4<i32>(-1i, global3.x, global3.x, 43797i), false)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 27422u), arg_0.xy), vec2<u32>(113471u, 4083u)) <= arg_0.x), ~(-vec4<i32>(_wgslsmith_add_i32(-2147483647i, global3.x), reverseBits(global3.x), 1i, global3.x)));
    return select(vec3<bool>(false, true, true), !vec3<bool>(-global3.x != (-27404i >> (0u % 32u)), !any(vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), vec3<bool>(true, true, all(vec3<bool>(false, false, false))), !(global1[_wgslsmith_index_u32(1u, 19u)] <= -907f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global2 = array<vec2<f32>, 18>();
    let var_0 = i32(-1i) * -17859i;
    global2 = array<vec2<f32>, 18>();
    var var_1 = reverseBits(countOneBits((-vec3<i32>(global3.x, var_0, 0i) & ~global4[_wgslsmith_index_u32(4294967295u, 29u)]) ^ ~firstLeadingBit(vec3<i32>(-2147483647i, global3.x, global3.x))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2615f, global1[_wgslsmith_index_u32(4907u, 19u)], 671f))), vec3<f32>(-134f, -1164f, global1[_wgslsmith_index_u32(0u, 19u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(690f, global1[_wgslsmith_index_u32(29185u, 19u)], -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_2.b.x, 19u)], 142f, -625f)))), vec3<f32>(-1416f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1078f + global1[_wgslsmith_index_u32(4294967295u, 19u)])))));
    return _wgslsmith_add_u32(reverseBits(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x)), 38418u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(70335u, 27u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) * _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(21366u, 19u)]))))))));
    let var_2 = global1[_wgslsmith_index_u32(12291u, 19u)];
    let var_3 = _wgslsmith_dot_vec3_i32(global3.www, max(vec3<i32>(4651i, global3.x, global3.x | _wgslsmith_add_i32(1i, -43636i)), global4[_wgslsmith_index_u32(u_input.b.x, 29u)]));
    var var_4 = global3.x >> (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15091u, 15670u, 1u), vec4<u32>(37775u ^ u_input.b.x, ~4294967295u, ~11878u, var_0.b.x))) % 32u);
    let var_5 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~func_4(!func_2(vec3<u32>(131323u, var_0.b.x, 97699u)), vec3<u32>(select(83140u, 1u, var_0.a), _wgslsmith_add_u32(64027u, 34200u), ~59514u), global0[_wgslsmith_index_u32(min(~42122u, u_input.b.x), 27u)]), 19u)]);
    global4 = array<vec3<i32>, 29>();
    let var_6 = !vec3<bool>(false, true, !func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 66283u, u_input.a.x), vec3<u32>(var_0.b.x, u_input.a.x, u_input.b.x))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~select(28550i, 0i, true), -global3.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_3, -7392i, global3.x), global3.zyz), global4[_wgslsmith_index_u32(~var_0.b.x, 29u)], vec3<i32>(10072i, -2147483647i, 32337i)), -vec3<i32>(-2147483647i, 1i, 12300i))), ~_wgslsmith_div_u32((var_0.b.x >> (var_0.b.x % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(var_0.b.x, 0u)), ~(~7817u)), var_3);
}

