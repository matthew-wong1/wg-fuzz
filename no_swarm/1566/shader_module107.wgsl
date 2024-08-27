struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 12>;

var<private> global2: array<vec2<bool>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<u32, 12>();
    var var_0 = Struct_1(~((~4294967295u | global1[_wgslsmith_index_u32(abs(1u), 12u)]) & arg_1.a), all(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.b, true, false, arg_1.b), vec4<bool>(arg_0.b, arg_0.b, false, true))), 2147483647i);
    let var_1 = vec2<i32>(arg_1.c, abs(_wgslsmith_dot_vec3_i32(max(countOneBits(vec3<i32>(u_input.a, var_0.c, arg_1.c)), vec3<i32>(-19379i, arg_1.c, -6029i)), -(~vec3<i32>(2147483647i, var_0.c, -1i)))));
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, abs(-9052i)), var_0.c >> (_wgslsmith_sub_u32(arg_0.a, 8173u) % 32u), -49082i ^ arg_1.c), vec3<i32>(var_0.c & u_input.a, arg_0.c, _wgslsmith_mult_i32(_wgslsmith_mult_i32(53522i, 0i), -22775i))));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(704f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-237f - 527f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-149f, 1062f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-538f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) * _wgslsmith_f_op_f32(1000f - -878f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, _wgslsmith_f_op_f32(step(-191f, _wgslsmith_f_op_f32(694f - 697f))), -1000f)));
    return vec3<u32>(103311u, 4294967295u, 82146u);
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~select(44213u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54892u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], false), 12u)], ~(~44839u)), 12u)] <= 9100u, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false))), true);
    global1 = array<u32, 12>();
    var var_1 = Struct_1(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(20047u, 12u)], 12u)], true, 49288i);
    global1 = array<u32, 12>();
    var var_2 = _wgslsmith_mult_vec3_u32(~(~(~func_3(Struct_1(var_1.a, true, 8173i), Struct_1(29673u, var_1.b, arg_0.x)))), ~((vec3<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 74588u, 38265u) & vec3<u32>(global1[_wgslsmith_index_u32(var_1.a, 12u)], 40047u, var_1.a)) << (~(~vec3<u32>(var_1.a, var_1.a, var_1.a)) % vec3<u32>(32u))));
    return select(var_0, var_0, var_0.x);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = select(!vec3<bool>(true, any(select(vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_0.b, false, true), arg_0.b)), true), func_2(~(~vec3<i32>(1i, arg_0.c, arg_0.c))), vec3<bool>(false, arg_0.b, arg_0.b));
    let var_1 = Struct_1(~0u, arg_0.b, -1i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u, !(select(true, true, func_1(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], true, u_input.a))) && false), ~(-_wgslsmith_div_i32(-3873i, -24072i) >> (select(1u, 15971u, true) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(439f, -643f, -303f, -1525f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, -256f, 700f, 851f) + vec4<f32>(-428f, 1176f, 787f, -1427f))))));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)];
    global0 = u_input.a;
    let var_3 = ~(~(select(vec2<i32>(u_input.a, 52623i), abs(vec2<i32>(-82664i, 32838i)), vec2<bool>(var_0.b, var_0.b)) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0.a, 12u)], global1[_wgslsmith_index_u32(64451u, 12u)]), vec2<u32>(var_0.a, var_0.a)) % vec2<u32>(32u))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1289f * -393f) - _wgslsmith_f_op_f32(-205f - var_1.x)))), -1359f, 1252f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1018f, var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), -120f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -571f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, var_1.x, var_1.x, 1142f)))))));
    global1 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec4_i32(-vec4<i32>(20178i, var_0.c, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, var_3.x, u_input.a, -42032i), vec4<i32>(1i, -41787i, u_input.a, var_3.x)))), max(-var_3.x, var_0.c) & _wgslsmith_mult_i32(-abs(1i), abs(2147483647i)), vec3<u32>(~global1[_wgslsmith_index_u32(8070u, 12u)], reverseBits(4294967295u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~1u, 12u)], ~abs(var_0.a))), _wgslsmith_sub_u32(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.a, 12u)], 1u, global1[_wgslsmith_index_u32(4657u, 12u)]), vec3<u32>(0u, var_0.a, 1u))), global1[_wgslsmith_index_u32(62963u, 12u)] << (~4294967295u % 32u)), func_3(Struct_1(func_3(Struct_1(2122u, var_0.b, u_input.a), Struct_1(global1[_wgslsmith_index_u32(var_0.a, 12u)], var_0.b, var_3.x)).x, false, 36308i), Struct_1(~0u, var_0.b, -var_0.c)).x);
}

