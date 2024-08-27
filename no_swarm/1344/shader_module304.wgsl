struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-19671i, 1i, vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 4248i));

var<private> global1: array<u32, 23> = array<u32, 23>(66736u, 12687u, 0u, 0u, 54762u, 1u, 0u, 22429u, 1u, 121788u, 54354u, 46423u, 0u, 1u, 26777u, 1u, 71401u, 43856u, 1u, 8634u, 1u, 1u, 42240u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec3<i32>(-1i, ~38015i, ~global0.d.x);
    var var_1 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(40749i, -1i, global0.a), var_0))), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_0.x, 10164i) << (u_input.a.zx % vec2<u32>(32u))), var_0.zz)), max(var_0.x, -_wgslsmith_mod_i32(_wgslsmith_add_i32(4562i, -10986i), -var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(525f))))));
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(min(3599f, _wgslsmith_f_op_f32(ceil(var_2))));
    return vec4<i32>(~34614i, ~1i, global0.a, -8321i) | (~(~vec4<i32>(-1i, var_0.x, var_0.x, global0.a)) << (firstLeadingBit(vec4<u32>(1u, 0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1132u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], u_input.a.x)), ~global1[_wgslsmith_index_u32(u_input.a.x, 23u)])) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = !vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, true);
    global1 = array<u32, 23>();
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(40100i, global0.b) | vec2<i32>(arg_0, global0.d.x), abs(-vec2<i32>(global0.a, -33904i))), arg_0), arg_0, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -(global0.d ^ vec2<i32>(21943i, global0.c.x)), ~min(countOneBits(global0.d), vec2<i32>(25278i, 21607i))), -_wgslsmith_mult_vec2_i32(global0.c, -vec2<i32>(global0.c.x, global0.d.x)) & vec2<i32>(6480i, 13484i));
    global0 = Struct_1(max(-1i, abs(2147483647i)), arg_0, global0.c, abs(firstTrailingBit(vec2<i32>(-1i, -5294i) << (u_input.a.yz % vec2<u32>(32u)))) | (-(~vec2<i32>(-25845i, 220i)) | ~global0.c));
    var var_1 = -2147483647i;
    return Struct_3(Struct_1(global0.b, 1i, _wgslsmith_clamp_vec2_i32(-(vec2<i32>(global0.a, -1i) ^ global0.d), _wgslsmith_mult_vec2_i32(global0.c, reverseBits(global0.d)), ~global0.d), vec2<i32>(-_wgslsmith_sub_i32(0i, -2147483647i), -26450i)), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(28175i, global0.b, arg_0)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-29781i, arg_0, global0.d.x), ~vec3<i32>(-5090i, arg_0, 2147483647i)) << (_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)])) % vec3<u32>(32u))), Struct_2(1000f, func_3()));
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = !vec3<bool>(any(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, arg_0, false))), true, arg_0);
    let var_1 = func_2(~(~_wgslsmith_div_i32(-2757i, -1i ^ global0.b)));
    global1 = array<u32, 23>();
    global0 = func_2(-_wgslsmith_sub_i32(-countOneBits(global0.a), 24634i)).a;
    let var_2 = Struct_3(func_2(~func_2(-89683i).a.d.x).a, _wgslsmith_mult_vec3_i32(var_1.b & vec3<i32>(-2147483647i, min(-1i, global0.c.x), 1i), -var_1.c.b.zwx), Struct_2(-1000f, _wgslsmith_div_vec4_i32(-vec4<i32>(global0.b, -1i, var_1.a.c.x, 2147483647i), var_1.c.b ^ vec4<i32>(global0.d.x, global0.b, 37766i, global0.d.x)) & (select(vec4<i32>(global0.d.x, var_1.b.x, 1i, -8872i), var_1.c.b, vec4<bool>(false, arg_0, false, true)) << (vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 4294967295u) % vec4<u32>(32u)))));
    return u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-7171i, select(-28683i, global0.b, true), vec2<i32>(firstLeadingBit(-global0.c.x), _wgslsmith_add_i32(global0.a, 1i) | ~global0.b), (vec2<i32>(~3750i, _wgslsmith_add_i32(global0.d.x, -20456i)) >> (u_input.a.yx % vec2<u32>(32u))) >> (~func_1(true) % vec2<u32>(32u)));
    var var_0 = vec2<i32>(global0.d.x >> (53065u % 32u), 2147483647i);
    var var_1 = vec4<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), false)), !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), min(_wgslsmith_sub_i32(1i, var_0.x), ~global0.c.x & var_0.x) != ~_wgslsmith_sub_i32(i32(-1i) * -1i, -1i));
    var var_2 = global0.d;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-577f)))), 453f, -1000f);
    global1 = array<u32, 23>();
    let var_4 = -1195f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(7845u, 23u)], 39105u, global1[_wgslsmith_index_u32(88031u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], global1[_wgslsmith_index_u32(7483u, 23u)], 0u))), ~(~u_input.a.x)), u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(~(~63886u), u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(~11816u, 29387u, 21421u))), _wgslsmith_dot_vec2_u32(reverseBits(~u_input.a.xx), ~select(u_input.a.zx, firstTrailingBit(vec2<u32>(35589u, 85431u)), all(vec2<bool>(var_1.x, var_1.x)))), ~min(_wgslsmith_mod_vec2_i32(global0.d, func_3().xx), _wgslsmith_mod_vec2_i32(~global0.d, vec2<i32>(-37401i, var_0.x))), firstLeadingBit(func_3().wzx ^ -vec3<i32>(var_0.x, global0.c.x, var_0.x)) >> (vec3<u32>(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(51959u, 1u, u_input.a.x, 15930u), select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(91652u, 23u)], 23u)], 15561u, 4294967295u, 32739u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22464u, 23u)], 23u)], u_input.a.x, u_input.a.x), false)), ~0u ^ (u_input.a.x | 0u)) % vec3<u32>(32u)));
}

