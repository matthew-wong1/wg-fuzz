struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2549i;

var<private> global1: vec4<u32> = vec4<u32>(10331u, 1u, 4294967295u, 29148u);

var<private> global2: vec2<u32> = vec2<u32>(12580u, 0u);

var<private> global3: array<f32, 3> = array<f32, 3>(-328f, -484f, 139f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    var var_0 = Struct_4(49216i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(~4294967295u, 3u)], -561f, global3[_wgslsmith_index_u32((u_input.c | 80770u) ^ u_input.a, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 3u)] - -1163f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1566f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 3u)])), 1299f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39110u, global1.x, 1u), 3u)])), 1590f))));
    var var_2 = vec4<u32>(~global2.x, min(global1.x, ~(~global2.x)), 63081u, 73701u);
    global3 = array<f32, 3>();
    var var_3 = firstLeadingBit(~(~(_wgslsmith_mult_vec2_u32(var_2.wx, vec2<u32>(5682u, global1.x)) ^ _wgslsmith_div_vec2_u32(global1.zw, vec2<u32>(var_2.x, var_2.x)))));
    return 1u;
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.c, 44454u), vec4<u32>(4234u, 0u, global2.x, u_input.c)), ~1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), global1.yw & global1.yx)));
    global0 = -(~countOneBits(~u_input.b));
    global0 = -1i;
    global3 = array<f32, 3>();
    var var_1 = vec4<bool>(false, !(!select(all(vec4<bool>(true, false, false, false)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 3u)]))) <= -1831f, !all(vec2<bool>(true, true)));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(abs(abs(~global2.x)), var_0.a, global2.x, ~3234u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(43912u, 0u, global1.x, 35066u) << (vec4<u32>(var_0.a, u_input.c, 47191u, var_0.a) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_0.a, 40856u, 21999u, 4294967295u)), reverseBits(vec4<u32>(52290u, global2.x, var_0.a, u_input.d))) & vec4<u32>(var_0.a, 4294967295u, 1u, ~_wgslsmith_add_u32(1u, 81890u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = Struct_4(~_wgslsmith_div_i32(-2116i, ~u_input.b));
    var var_1 = _wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(u_input.a, arg_0.x, 76498u, 0u) << (firstTrailingBit(vec4<u32>(global2.x, arg_2.a, global2.x, global1.x)) % vec4<u32>(32u))), ~abs(min(vec4<u32>(35335u, arg_2.a, global2.x, global1.x), vec4<u32>(global1.x, global2.x, 40278u, arg_0.x))), arg_3), func_3(), ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a, u_input.c, 4294967295u, global1.x), vec4<u32>(4294967295u, 4294967295u, arg_2.a, 1u)) ^ abs(vec4<u32>(arg_2.a, global1.x, u_input.c, 4294967295u)))));
    var var_2 = vec3<bool>(arg_3, -10617i <= _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(var_0.a, 0i), u_input.b, any(vec2<bool>(arg_3, arg_3))), ~(~var_0.a)), arg_3);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 3u)], 1150f, global3[_wgslsmith_index_u32(global1.x, 3u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 3u)], global3[_wgslsmith_index_u32(global2.x, 3u)], global3[_wgslsmith_index_u32(var_1.x, 3u)]) - vec3<f32>(514f, global3[_wgslsmith_index_u32(global2.x, 3u)], -707f)))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 4294967295u), 3u)], _wgslsmith_f_op_f32(trunc(1924f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global2.x, 3u)], global3[_wgslsmith_index_u32(7789u, 3u)], 954f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-426f, global3[_wgslsmith_index_u32(u_input.c, 3u)], -1077f) * vec3<f32>(-1950f, -1000f, global3[_wgslsmith_index_u32(global2.x, 3u)])))))));
    let var_4 = Struct_1(select(!select(!vec2<bool>(var_2.x, false), vec2<bool>(arg_3, arg_3), vec2<bool>(var_2.x, true)), vec2<bool>(true, true), true));
    return true;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = Struct_4(min(-33829i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(11386i, arg_2), -vec2<i32>(-7782i, u_input.b)), _wgslsmith_mod_i32(arg_2, firstTrailingBit(u_input.b)))));
    var var_1 = vec4<bool>(arg_1, arg_1, select(arg_1, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, arg_1, arg_1), arg_1))), true), false);
    let var_2 = Struct_4(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 22475i, 1i, 0i), -vec4<i32>(41441i, 13149i, 1i, 29719i))));
    let var_3 = select(vec3<i32>(var_2.a, reverseBits(var_2.a | u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(12728i, 47090i, u_input.b, arg_2), vec4<i32>(-1i, u_input.b, 76694i, 75492i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_2.a, var_2.a, -39421i), vec4<i32>(var_0.a, var_2.a, -17805i, 2147483647i)))), ~(firstTrailingBit(vec3<i32>(45850i, arg_2, -23671i)) & vec3<i32>(2147483647i, var_0.a, 0i)), all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, false), var_1.x))) >> (~firstLeadingBit(global1.zzw) % vec3<u32>(32u));
    var var_4 = var_2;
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~vec4<u32>(u_input.a, 81309u, global1.x, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, countOneBits(u_input.c), u_input.d, global1.x), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global1.x >> (0u % 32u), u_input.d, ~global1.x), ~vec4<u32>(global2.x, u_input.d, global2.x, 56277u))));
    var var_1 = abs(_wgslsmith_sub_u32(func_1(), ~abs(4294967295u)) >> (var_0.x % 32u));
    global1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(~global1.x, global2.x, global2.x & global1.x, 1u), vec4<u32>(max(global1.x, var_0.x), global1.x, 1u, min(40225u, global1.x))), vec4<u32>(~u_input.c, u_input.a >> (~u_input.d % 32u), ~u_input.c | 1u, 1u));
    let var_2 = ~func_4(global1.yz, all(vec2<bool>(true, func_2(vec2<u32>(42373u, global1.x), u_input.b, Struct_3(var_0.x), true))), 46532i, global2.x << (global2.x % 32u));
    let var_3 = Struct_4(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-countOneBits(-vec2<i32>(u_input.b, var_3.a))));
}

