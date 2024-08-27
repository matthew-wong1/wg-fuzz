struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(5403i, vec4<bool>(true, true, true, false)), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(22229i, vec4<bool>(true, false, false, false)), Struct_1(0i, vec4<bool>(true, false, true, false)), Struct_1(2147483647i, vec4<bool>(false, true, true, false)), Struct_1(1i, vec4<bool>(false, true, true, true)), Struct_1(-26562i, vec4<bool>(false, false, true, true)), Struct_1(-19166i, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false)), Struct_1(1359i, vec4<bool>(true, true, true, false)), Struct_1(-2960i, vec4<bool>(true, false, true, true)), Struct_1(-1i, vec4<bool>(false, true, false, false)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false)), Struct_1(-7123i, vec4<bool>(true, false, false, true)), Struct_1(1i, vec4<bool>(true, true, true, true)), Struct_1(7899i, vec4<bool>(false, false, true, false)), Struct_1(-39540i, vec4<bool>(true, false, false, true)), Struct_1(-1i, vec4<bool>(true, true, true, true)), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, false)), Struct_1(15419i, vec4<bool>(false, false, false, false)));

var<private> global2: vec2<u32> = vec2<u32>(74785u, 13721u);

var<private> global3: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    global3 = -select(u_input.a.x, firstLeadingBit(u_input.a.x), select(all(vec4<bool>(true, true, true, true)), true, false));
    let var_0 = ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.x ^ 1u, global2.x ^ 0u, ~global2.x), reverseBits(~vec3<u32>(global2.x, global2.x, 0u)), true), max(firstLeadingBit(~vec3<u32>(global2.x, 43838u, 40993u)), abs(select(vec3<u32>(global2.x, 4243u, global2.x), vec3<u32>(70827u, 47131u, global2.x), vec3<bool>(true, false, false)))));
    global2 = ~select(~vec2<u32>(_wgslsmith_sub_u32(var_0, 1u), ~var_0), select(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0, var_0), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, global2.x), vec2<u32>(global2.x, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0) & vec2<u32>(1u, var_0), vec2<u32>(0u, var_0) << (vec2<u32>(84709u, 0u) % vec2<u32>(32u))), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), true));
    let var_1 = -select(u_input.b, vec4<i32>(-1i) * -vec4<i32>(-9667i, u_input.b.x, 2147483647i, -1i), !select(false, true, global2.x == 0u));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x | global2.x, ~global2.x & 4504u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_0)), ~vec2<u32>(42544u, 6803u)), ~(0u >> (0u % 32u))), abs(~(~vec4<u32>(0u, 35226u, global2.x, 266u)))), 26u)];
    return reverseBits(vec4<u32>(reverseBits(0u), 1u, abs(global2.x), firstTrailingBit(global2.x << (1u % 32u)))) & max(~select(vec4<u32>(62344u, global2.x, var_0, global2.x) << (vec4<u32>(1u, global2.x, 34529u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 153004u, 22852u), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 1u, ~var_0, max(var_0, 6419u)), firstLeadingBit(vec4<u32>(global2.x, var_0, global2.x, global2.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global2.x, min(48191u, global2.x), arg_0.x), ~firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, 15148u, global2.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10124u, global2.x, 39796u, arg_0.x), func_3()), reverseBits(~vec4<u32>(47316u, 80079u, global2.x, 4294967295u))) | _wgslsmith_dot_vec3_u32(select(select(vec3<u32>(arg_0.x, arg_0.x, 8753u), arg_0, arg_1.b.x), vec3<u32>(0u, 0u, 32103u) << (vec3<u32>(arg_0.x, 0u, 4294967295u) % vec3<u32>(32u)), true), vec3<u32>(~13245u, arg_0.x, 4294967295u)));
    global0 = u_input.a.x;
    global0 = _wgslsmith_clamp_i32(-25813i, u_input.a.x, -40292i);
    let var_1 = select(arg_1.b, arg_1.b, !vec4<bool>(arg_1.b.x, global2.x < arg_0.x, 1852f == arg_2.x, true));
    var var_2 = arg_1;
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    return -38072i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    global3 = ~((~firstTrailingBit(u_input.a.x) & _wgslsmith_mult_i32(-arg_3.a, select(2147483647i, 2147483647i, true))) >> (global2.x % 32u));
    global3 = max(arg_1.x, arg_1.x) | arg_2.x;
    global1 = array<Struct_1, 26>();
    let var_0 = countOneBits(~reverseBits(reverseBits(select(vec3<u32>(0u, global2.x, 17582u), vec3<u32>(global2.x, global2.x, 0u), arg_3.b.zwx))));
    global0 = func_4(~(~func_2(~vec3<u32>(var_0.x, global2.x, 4294967295u), Struct_1(arg_3.a, vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-107f, -1833f, -106f))))), arg_3, !select(!arg_0.yy, !vec2<bool>(arg_0.x, true), arg_0.yx));
    return u_input.b.xyy;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = 20926i;
    let var_1 = -737f;
    global2 = ~_wgslsmith_mult_vec2_u32(min(~vec2<u32>(9704u, 0u), func_3().wz), max(vec2<u32>(arg_0, 37478u) ^ vec2<u32>(4294967295u, 0u), vec2<u32>(global2.x, global2.x))) | vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_0 ^ ~69459u, arg_0));
    global1 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-arg_2, _wgslsmith_add_i32(arg_1.x, arg_1.x)) << (global2.x % 32u), _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(arg_2), ~(-2147483647i)), ~(-73230i))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = false;
    global1 = array<Struct_1, 26>();
    var_0 = true;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -361f);
    var var_3 = !select(true, false, all(vec4<bool>(false, false, true, true)) || true) || true;
    global1 = array<Struct_1, 26>();
    let var_4 = ~vec4<u32>(92092u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(49955u, 1u) ^ global2.x, max(min(1u, global2.x), 4294967295u)), 4294967295u, ~global2.x);
    var var_5 = _wgslsmith_f_op_f32(-var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(func_5(~var_4.x, func_1(vec3<bool>(true, false, false), u_input.b.yw, vec4<i32>(u_input.a.x, u_input.a.x, -1i, 1i), Struct_1(5235i, vec4<bool>(false, false, false, false))), ~(-19574i), select(false, false, true)), func_4(137i, global1[_wgslsmith_index_u32(global2.x, 26u)], select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), abs(2147483647i)), ~(~_wgslsmith_clamp_i32(u_input.b.x, firstLeadingBit(u_input.a.x), 41195i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(f32(-1f) * -1343f))))), -1782f, _wgslsmith_add_u32(133710u, 1u));
}

