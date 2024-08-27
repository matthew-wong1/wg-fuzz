struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-785f, -489f), vec2<f32>(-1561f, 735f), vec2<f32>(-432f, -524f), vec2<f32>(-202f, -654f), vec2<f32>(114f, -724f), vec2<f32>(465f, 1017f), vec2<f32>(-1130f, 497f), vec2<f32>(248f, 138f), vec2<f32>(1114f, 528f), vec2<f32>(1072f, 308f), vec2<f32>(-213f, 1163f), vec2<f32>(-2923f, 426f), vec2<f32>(-1019f, -368f), vec2<f32>(-400f, -727f), vec2<f32>(719f, -1000f), vec2<f32>(1000f, 1008f), vec2<f32>(-189f, 1184f), vec2<f32>(1252f, 688f), vec2<f32>(-731f, -1000f), vec2<f32>(330f, 374f), vec2<f32>(-1010f, 844f), vec2<f32>(-432f, 1127f), vec2<f32>(1649f, -2516f), vec2<f32>(-1400f, -388f), vec2<f32>(-649f, 1095f), vec2<f32>(-349f, 1200f), vec2<f32>(-541f, 941f), vec2<f32>(932f, 318f));

var<private> global2: vec3<i32>;

var<private> global3: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(51928u, 4294967295u, 4294967295u), vec3<u32>(18501u, 1u, 28118u), vec3<u32>(4294967295u, 43543u, 71656u), vec3<u32>(37151u, 34574u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    return _wgslsmith_sub_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(select(4294967295u, 1u, global0.x), 20065u, select(53763u, 4294967295u, global0.x), 4294967295u), select(~vec4<u32>(13066u, 25360u, 1u, 0u), select(vec4<u32>(4294967295u, 21720u, 0u, 26327u), vec4<u32>(14038u, 4294967295u, 13960u, 35461u), global0.x), global0.x))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec4<u32> {
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.b, ~arg_0.b, ~arg_0.b, 1u) | _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_0.b, 1u, 12015u), abs(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 0u))), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.b, 0u, 59092u, 45772u), func_3(vec4<f32>(1455f, -1403f, -1053f, -454f))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b) | vec4<u32>(118227u, arg_0.b, 31267u, arg_0.b), ~vec4<u32>(arg_0.b, 1u, arg_0.b, arg_0.b)), true), vec4<u32>(1u, ~firstTrailingBit(arg_0.b), min(arg_0.b, 1u), arg_0.b)), vec4<u32>(2291u, 46722u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(31916u, 27921u, arg_0.b, 4294967295u), vec4<u32>(arg_0.b, 0u, 8327u, arg_0.b)), select(~vec4<u32>(61493u, 0u, 1u, 0u), vec4<u32>(1u, arg_0.b, arg_0.b, arg_0.b), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true)))), min(~arg_0.b, ~arg_0.b >> (arg_0.b % 32u))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(31357u, arg_0), arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(11895u, 1u) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)), vec2<u32>(93420u, 4294967295u))), _wgslsmith_add_vec2_u32(~vec2<u32>(10471u, arg_0), ~(~vec2<u32>(arg_0, 72394u))));
    let var_1 = reverseBits(firstLeadingBit(func_2(Struct_1(select(vec2<i32>(-1i, u_input.a.x), vec2<i32>(global2.x, global2.x), global0.yw), 1u), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, 54139i, u_input.a.x), u_input.a), ~u_input.a), abs(countOneBits(1i)))));
    var var_2 = false & global0.x;
    var var_3 = -869f;
    var_3 = _wgslsmith_f_op_f32(-671f * 1144f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -169f), -487f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-599f, -1064f)))), _wgslsmith_div_f32(-569f, -729f), -192f, _wgslsmith_div_f32(-167f, 895f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-477f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1097f + 865f) * _wgslsmith_f_op_f32(func_1(4294967295u))), _wgslsmith_f_op_f32(-1462f * -2057f), _wgslsmith_f_op_f32(round(1300f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(686f, -1053f, -1738f, 850f), vec4<f32>(1039f, 125f, -173f, 1543f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, 765f, 391f, -1206f))) + vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = vec4<bool>(abs(u_input.a.x) > _wgslsmith_mult_i32(4684i, select(-u_input.a.x, global2.x, true)), all(vec4<bool>(!any(vec4<bool>(false, global0.x, global0.x, global0.x)), any(select(vec3<bool>(false, global0.x, true), vec3<bool>(true, global0.x, false), global0.yww)), true, !select(global0.x, false, global0.x))), global0.x, all(vec4<bool>(global0.x, global0.x, all(vec4<bool>(global0.x, true, global0.x, true)), global0.x)) | any(select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, true, global0.x, false), vec4<bool>(false, true, global0.x, true)), !vec4<bool>(global0.x, false, global0.x, true))));
    var var_3 = -1i;
    var var_4 = Struct_3(global0.wx, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) + _wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, var_1.x, 1000f, 852f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 857f, 137f, var_1.x)))))), max(select(~(~global3[_wgslsmith_index_u32(225u, 4u)]), reverseBits(min(global3[_wgslsmith_index_u32(2174u, 4u)], vec3<u32>(4294967295u, 4294967295u, 4294967295u))), false), func_3(vec4<f32>(1000f, 537f, _wgslsmith_f_op_f32(func_1(34387u)), _wgslsmith_f_op_f32(1000f * 503f))).zxw));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_4.b.xzy, var_1.wzw))))), _wgslsmith_f_op_vec3_f32(-var_4.b.zyz), !var_4.a.x)) - vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1840f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - _wgslsmith_f_op_f32(-var_1.x))), -786f));
    var var_6 = Struct_3(vec2<bool>(true, var_4.a.x), _wgslsmith_f_op_vec4_f32(-var_4.b), vec4<f32>(1000f, 1019f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x - var_4.c.x) * 197f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x + 600f))), _wgslsmith_f_op_f32(f32(-1f) * -2230f)), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), var_4.d), _wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(var_4.d.x, 4u)], vec3<u32>(var_4.d.x, 1u, 1u)))));
    global2 = countOneBits(firstLeadingBit(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_mod_i32(-firstLeadingBit(global2.x), ~(-1i | u_input.a.x)) & u_input.a.x);
}

