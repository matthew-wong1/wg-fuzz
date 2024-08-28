struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 24004u, 38271u, 76130u);

var<private> global1: bool;

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, true, true, false, true, true, true, true, true, true, true, true, false, false, false, false, true, false, false, true, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(675f * -1730f))), -1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1284f))), -329f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-948f, -918f)), _wgslsmith_div_f32(873f, -1279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) + _wgslsmith_f_op_f32(abs(-522f))), -730f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(121f, 992f, 823f, -1354f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(186f, -1594f, -880f, 603f), vec4<f32>(-871f, 1175f, 735f, 371f))))));
    let var_1 = Struct_3(~arg_1.x, global0.yy, Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1485f, var_0.x))), Struct_1(!arg_0.x, arg_0.xxx, _wgslsmith_div_u32(global0.x, 4294967295u) == firstTrailingBit(arg_1.x))));
    var var_2 = firstTrailingBit(-29778i);
    global0 = vec4<u32>(arg_1.x, ~54342u >> (_wgslsmith_add_u32(25521u, _wgslsmith_mod_u32(var_1.b.x, 38241u)) % 32u), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(33263u, 27703u, var_1.b.x, u_input.a.x))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 93424u, arg_1.x, 17408u), abs(vec4<u32>(var_1.a, 4294967295u, global0.x, global0.x)))), vec4<u32>(_wgslsmith_add_u32(u_input.a.x & 42248u, ~u_input.a.x), u_input.a.x, ~(arg_1.x | global0.x), 53342u)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-930f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1431f * var_1.c.a.x), var_1.c.a.x))), u_input.b.x);
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<i32>) -> f32 {
    global1 = func_3(select(!(!vec4<bool>(arg_1.c.b.c, global2[_wgslsmith_index_u32(arg_1.a, 23u)], true, true)), !(!select(vec4<bool>(arg_1.c.b.c, arg_0, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 23u)], true, false), arg_0)), true), ~(~(~firstTrailingBit(vec3<u32>(global0.x, u_input.a.x, global0.x)))));
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.c.a.x, -618f, _wgslsmith_f_op_f32(step(arg_2.x, 372f)), _wgslsmith_div_f32(arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(564f, -699f, 380f, arg_1.c.a.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c.a.x, 1206f, arg_1.c.a.x, arg_2.x)))))))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, u_input.b.x, arg_3.x), firstTrailingBit(vec4<i32>(0i, 1i, 2147483647i, 1425i))) & -31909i));
    var var_1 = ~select(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_3.x, -var_0.b), -45185i << (~4294967295u % 32u)), -firstLeadingBit(arg_3.x), true);
    var_1 = i32(-1i) * -104i;
    global2 = array<bool, 23>();
    return _wgslsmith_f_op_f32(select(arg_1.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1669f + arg_2.x), _wgslsmith_f_op_f32(exp2(var_0.a.x)))))), -1030f), false));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1119f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-818f, -629f, global2[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1138f, -104f) * _wgslsmith_f_op_f32(func_2(true, Struct_3(39166u, u_input.a.zx, Struct_2(vec2<f32>(297f, -1111f), Struct_1(false, vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], false), true))), vec3<f32>(698f, 1000f, 730f), vec4<i32>(u_input.b.x, u_input.b.x, 57827i, u_input.b.x)))), -696f)), 1000f), select(_wgslsmith_dot_vec2_i32(u_input.b.yx ^ ~u_input.b.zx, (u_input.b.xx ^ u_input.b.yz) >> (vec2<u32>(u_input.a.x, 19288u) % vec2<u32>(32u))), ~_wgslsmith_clamp_i32(44391i, _wgslsmith_mod_i32(350i, 2147483647i), -5909i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(4294967295u, global0.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 21807u, u_input.a.x, global0.x), vec4<u32>(global0.x, u_input.a.x, 4294967295u, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, 1u, global0.x) % vec4<u32>(32u)))), 23u)]));
    global1 = all(select(vec3<bool>(false, global2[_wgslsmith_index_u32(~0u, 23u)], true), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 23u)], global2[_wgslsmith_index_u32(49606u, 23u)], global2[_wgslsmith_index_u32(54763u, 23u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(global0.x, 23u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), (var_0.a.x > var_0.a.x) & !global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), global2[_wgslsmith_index_u32(4294967295u, 23u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(435f, var_0.a.x) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1410f + -2026f), _wgslsmith_f_op_f32(f32(-1f) * -1335f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1343f)), var_0.a.wy)), true)));
    let var_2 = Struct_4(var_0.a.x);
    var_0 = Struct_5(var_0.a, -4538i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-25918i);
    var var_1 = func_1();
    let var_2 = vec2<i32>(21263i, -2147483647i);
    let var_3 = ~((_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a.x, global0.x) >> (vec4<u32>(u_input.a.x, global0.x, global0.x, 37642u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, global0.x, global0.x, 4294967295u))) ^ vec4<u32>(~u_input.a.x, global0.x, countOneBits(4294967295u), 30391u)) << (~vec4<u32>(~global0.x, 12348u, 1u, 1u) % vec4<u32>(32u)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(var_1.a + var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(countOneBits(vec4<u32>(global0.x, 17342u, var_3.x, 30129u))), abs(countOneBits(vec4<u32>(0u, 5001u, 43912u, 19424u))) ^ vec4<u32>(15347u, 29819u, u_input.a.x, ~15911u), true), select(~_wgslsmith_add_vec2_i32(-var_2, vec2<i32>(u_input.b.x, var_2.x)), ~abs(u_input.b.xz), false), var_3);
}

