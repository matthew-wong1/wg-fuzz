struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(9873i, 8751i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = u_input.a;
    var var_1 = vec3<bool>(true, select(false || all(vec4<bool>(false, false, false, false)), true, true), !(!(!all(vec4<bool>(true, false, false, true)))));
    var_0 = 46183u;
    global2 = -(~max(vec2<i32>(-8695i, ~global2.x), vec2<i32>(global2.x, global2.x)));
    let var_2 = Struct_3(~firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -75094i, global2.x, global2.x), vec4<i32>(global2.x, -32707i, global2.x, global2.x)))));
    return ~(-vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(13347i, var_2.a.x), var_2.a.yx), ~global2.x), select(var_2.a.x ^ var_2.a.x, 17027i, u_input.a <= 79505u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: u32) -> u32 {
    let var_0 = func_3(_wgslsmith_dot_vec3_u32(~select(select(arg_1, arg_1, arg_2.a.zwy), vec3<u32>(27274u, arg_1.x, 1u), any(vec4<bool>(arg_2.a.x, true, true, arg_2.a.x))), reverseBits(vec3<u32>(arg_1.x, 0u, 10362u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, -1000f, 1872f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(845f, -265f, -2031f), vec3<f32>(-1221f, 1614f, 203f), arg_2.a.xwy))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1048f, 1320f, -462f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1119f, -190f, -1221f), vec3<f32>(1671f, -337f, -1162f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, 1816f, -815f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2645f, 1562f, -102f)))))));
    var var_1 = firstLeadingBit(arg_0);
    let var_2 = u_input.a;
    var var_3 = all(select(!(!arg_2.a), select(!vec4<bool>(true, true, false, arg_2.a.x), vec4<bool>(arg_2.a.x, true, arg_2.a.x, true), select(arg_2.a, select(arg_2.a, vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true))), select(select(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, true), arg_2.a, arg_2.a.x), vec4<bool>(true != arg_2.a.x, arg_2.a.x, true, any(arg_2.a.xw)), arg_2.a.x)));
    var_1 = _wgslsmith_div_vec4_i32(arg_0, arg_0);
    return global0[_wgslsmith_index_u32(reverseBits(abs(min(select(54946u, max(13566u, 34444u), true), abs(arg_3 | 46745u)))), 32u)];
}

fn func_1() -> vec4<u32> {
    global0 = array<u32, 32>();
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, firstTrailingBit(global2.x)), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, -1i), vec2<i32>(global2.x, global2.x)))) >> (_wgslsmith_sub_vec2_u32(~abs(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13974u, 3855u), vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], u_input.a)), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, -2147483647i, global2.x, -1661i), vec4<i32>(2147483647i, global2.x, -57441i, global2.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 39113u, 140387u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 32u)], 90491u)), Struct_4(vec4<bool>(true, false, true, false)), 4114u))) % vec2<u32>(32u));
    let var_1 = Struct_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, !all(vec2<bool>(true, false))), !all(vec3<bool>(true, true, true))));
    var var_2 = Struct_5(Struct_4(select(vec4<bool>(true, select(false, var_1.a.x, true), !var_1.a.x, var_1.a.x), !var_1.a, vec4<bool>(true, var_1.a.x || var_1.a.x, any(vec2<bool>(var_1.a.x, var_1.a.x)), false))));
    global0 = array<u32, 32>();
    return (countOneBits(abs(vec4<u32>(0u, 0u, 4294967295u, u_input.a) >> (vec4<u32>(24756u, u_input.a, 166u, 8859u) % vec4<u32>(32u)))) | countOneBits(~abs(vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(83210u, 32u)], u_input.a)))) & vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a, select(_wgslsmith_div_u32(1u, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 32u)], !var_1.a.x)), 60410u, ~max(abs(1u), ~global0[_wgslsmith_index_u32(0u, 32u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = 1i;
    let var_1 = _wgslsmith_add_vec4_u32(func_1(), vec4<u32>(global0[_wgslsmith_index_u32(78845u, 32u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 32u)], 32u)]), 32u)], _wgslsmith_mod_u32(u_input.a, 1u) << (global0[_wgslsmith_index_u32(firstLeadingBit(abs(18459u)), 32u)] % 32u), _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)])));
    let var_2 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), all(vec2<bool>(false, false))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)))), select(vec2<bool>(all(vec4<bool>(true, true, false, false)), 4173u >= global0[_wgslsmith_index_u32(7639u, 32u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)))), false));
    var var_3 = Struct_1(var_0, -_wgslsmith_mod_vec4_i32(~(~vec4<i32>(var_0, -3862i, var_0, global2.x)), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), ~global2.x, 2147483647i, ~3515i)), _wgslsmith_add_vec2_u32(~firstTrailingBit(select(vec2<u32>(28866u, u_input.a), vec2<u32>(var_1.x, 1u), true)), _wgslsmith_mult_vec2_u32(select(var_1.yx, vec2<u32>(48153u, u_input.a), true), _wgslsmith_div_vec2_u32(~var_1.zy, select(vec2<u32>(var_1.x, u_input.a), var_1.yx, vec2<bool>(var_2.x, var_2.x))))), 64539u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(var_3.c.x, var_3.d), _wgslsmith_div_u32(u_input.a, 0u), _wgslsmith_div_u32(4294967295u, ~global0[_wgslsmith_index_u32(var_3.c.x, 32u)]), 4294967295u) | _wgslsmith_sub_vec4_u32(var_1 << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 32u)], u_input.a) % vec4<u32>(32u)), ~var_1 | var_1), var_3.b.zz, min(-(reverseBits(global2.x) << ((global0[_wgslsmith_index_u32(0u, 32u)] << (36602u % 32u)) % 32u)), ~firstTrailingBit(11499i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1138f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1079f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f))), -1332f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(399f * _wgslsmith_f_op_f32(ceil(161f)))))));
}

