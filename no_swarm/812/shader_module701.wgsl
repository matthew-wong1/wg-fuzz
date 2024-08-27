struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 6>;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 30393u, 1u, 60837u), vec4<u32>(1u, 1u, 1u, 2448u), vec4<u32>(28186u, 97800u, 53199u, 50809u), vec4<u32>(29184u, 41557u, 30400u, 4294967295u), vec4<u32>(17384u, 4294967295u, 4294967295u, 34450u), vec4<u32>(1534u, 12770u, 68009u, 51521u), vec4<u32>(15157u, 0u, 83987u, 1u), vec4<u32>(1u, 1u, 0u, 44021u), vec4<u32>(53557u, 65719u, 23121u, 54547u), vec4<u32>(0u, 4294967295u, 30537u, 0u), vec4<u32>(53308u, 4294967295u, 38107u, 23627u), vec4<u32>(4294967295u, 41527u, 4294967295u, 49037u), vec4<u32>(1132u, 4294967295u, 16489u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 23494u), vec4<u32>(68326u, 23277u, 14987u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 114988u, 0u), vec4<u32>(95491u, 17842u, 0u, 4294967295u), vec4<u32>(0u, 23877u, 116116u, 16198u), vec4<u32>(185u, 1u, 4294967295u, 4294967295u), vec4<u32>(22147u, 50718u, 0u, 0u), vec4<u32>(47194u, 77552u, 26919u, 57145u), vec4<u32>(0u, 0u, 7316u, 81420u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = firstTrailingBit(vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_1.b, u_input.c), vec3<u32>(u_input.c, 1u, arg_1.b)), vec3<u32>(u_input.b, 68793u, u_input.b)), min(~0u, ~1u))));
    var var_1 = (u_input.a >> (arg_2 % 32u)) < u_input.a;
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 4294967295u, 19501u) | vec3<u32>(15027u, arg_1.b, var_0.x), vec3<u32>(4294967295u, 32598u, var_0.x) >> (vec3<u32>(29384u, arg_2, 40022u) % vec3<u32>(32u))), reverseBits(~vec3<u32>(1u, u_input.c, arg_1.b))), arg_2, 1u, 84584u);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-37199i, _wgslsmith_mod_i32(0i, u_input.a) >> (1u % 32u)), -vec2<i32>(-2147483647i, -u_input.a)) & _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, u_input.a), u_input.a), _wgslsmith_sub_vec2_i32(min(vec2<i32>(-10904i, u_input.a), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(u_input.a, -25626i))), reverseBits(vec2<i32>(u_input.a, -21204i)));
    var_0 = var_2.wx;
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(-1i, 0i)), ~(~u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a << (arg_2 % 32u), firstLeadingBit(u_input.a), _wgslsmith_add_i32(21840i, u_input.a)) << (var_2.zwy % vec3<u32>(32u)), abs(firstLeadingBit(vec3<i32>(27071i, var_3.x, var_3.x))) & -(~vec3<i32>(-1i, u_input.a, 1i))));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2154u, 6u)] * arg_0))), 294f, arg_0, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1143f, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(1423u, 6u)], -1079f))))));
    let var_1 = Struct_3(vec3<bool>(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), false, select(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true, true)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(754f)) - _wgslsmith_f_op_f32(floor(-1249f))))), !all(vec4<bool>(true, true, true, true)));
    global2 = array<vec4<u32>, 23>();
    let var_2 = Struct_2(arg_1.a, u_input.c < (1u << (0u % 32u)), any(vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -69188i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)) <= abs(-1i), var_1.d)));
    global1 = array<f32, 6>();
    return var_1.b ^ ~_wgslsmith_clamp_u32(~var_1.b, 0u, ~(~1u));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    global2 = array<vec4<u32>, 23>();
    global0 = abs(func_4(global1[_wgslsmith_index_u32(u_input.b, 6u)], Struct_4(Struct_1(func_3(Struct_5(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec2<f32>(917f, global1[_wgslsmith_index_u32(u_input.b, 6u)])), Struct_3(arg_0, u_input.c, global1[_wgslsmith_index_u32(81408u, 6u)], true), arg_1, 19850u), u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)])))))));
    var var_0 = u_input.c;
    global0 = 1u | arg_1;
    global0 = 0u;
    return Struct_2(Struct_1(_wgslsmith_mult_i32(-u_input.a, i32(-1i) * -36656i), _wgslsmith_mult_i32(u_input.a >> (1u % 32u), _wgslsmith_add_i32(u_input.a, -1i)) >> (~_wgslsmith_div_u32(37128u, arg_1) % 32u)), max(select(u_input.b >> (53191u % 32u), arg_1 | u_input.b, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), _wgslsmith_sub_u32(52333u, 29398u)) == ~select(~578u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 94545u), vec3<u32>(arg_1, 38363u, u_input.b)), false), !(!all(arg_0.xx) && (u_input.a > _wgslsmith_sub_i32(u_input.a, u_input.a))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_5 {
    global0 = 1u;
    let var_0 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~44704u), _wgslsmith_mod_u32(u_input.c | 1u, _wgslsmith_add_u32(24322u, u_input.b))), 6u)], _wgslsmith_f_op_f32(-705f + global1[_wgslsmith_index_u32(3865u, 6u)])));
    var var_1 = func_2(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 20612u);
    var var_2 = vec2<i32>(-2147483647i, min(7344i, u_input.a));
    return Struct_5(select(vec3<bool>(!all(vec3<bool>(true, var_1.c, false)), true, !(arg_1 > var_0)), !select(select(vec3<bool>(var_1.c, true, false), vec3<bool>(var_1.b, var_1.c, var_1.b), vec3<bool>(var_1.c, true, var_1.b)), vec3<bool>(var_1.c, var_1.b, true), vec3<bool>(false, var_1.c, var_1.b)), var_1.b), _wgslsmith_f_op_vec2_f32(ceil(arg_0)));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    global1 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)) - 1195f));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, 783f, -592f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 569f, global1[_wgslsmith_index_u32(u_input.c, 6u)])), vec3<f32>(1f, 1f, 1f), select(arg_0.a, vec3<bool>(arg_1, true, arg_0.a.x), vec3<bool>(arg_1, true, false)))))))));
    global1 = array<f32, 6>();
    global2 = array<vec4<u32>, 23>();
    return select(select(!vec4<bool>(arg_0.a.x, arg_1, all(arg_0.a.xz), arg_1), select(select(select(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1, arg_1), vec4<bool>(true, false, true, arg_1)), select(vec4<bool>(arg_1, true, false, true), vec4<bool>(true, false, arg_0.a.x, arg_0.a.x), true), u_input.b <= u_input.c), select(!vec4<bool>(arg_1, arg_1, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_1, arg_1, arg_0.a.x), true), any(arg_0.a.zy)), false), select(vec4<bool>(arg_0.a.x, func_1(vec2<f32>(arg_0.b.x, -573f), _wgslsmith_f_op_f32(-arg_0.b.x)).a.x, false, true), select(select(!vec4<bool>(arg_0.a.x, true, true, true), !vec4<bool>(false, arg_0.a.x, arg_0.a.x, false), arg_0.a.x), vec4<bool>(select(arg_0.a.x, false, false), -2147483647i <= u_input.a, u_input.c < 20917u, !arg_1), true && all(vec4<bool>(false, true, false, arg_0.a.x))), var_1.x >= global1[_wgslsmith_index_u32(4294967295u, 6u)]), select(!(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, true))), select(!(!vec4<bool>(arg_1, false, arg_0.a.x, false)), !(!vec4<bool>(true, true, arg_1, arg_0.a.x)), arg_1), select(select(vec4<bool>(arg_0.a.x, arg_1, false, arg_1), select(vec4<bool>(arg_1, arg_1, arg_0.a.x, true), vec4<bool>(true, arg_0.a.x, false, arg_1), false), arg_0.a.x), !select(vec4<bool>(false, arg_1, arg_0.a.x, arg_1), vec4<bool>(true, false, true, arg_0.a.x), vec4<bool>(false, arg_0.a.x, false, arg_0.a.x)), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2030f, 1585f), vec2<f32>(global1[_wgslsmith_index_u32(0u, 6u)], 511f))) - vec2<f32>(global1[_wgslsmith_index_u32(84032u, 6u)], -1450f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 27387u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, u_input.c)), 6u)]), false);
    global0 = ~select(firstLeadingBit(u_input.b), u_input.c, true);
    let var_1 = u_input.b;
    let var_2 = vec3<bool>(!(any(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x)) & (~60573u < _wgslsmith_add_u32(var_1, 0u))), !(_wgslsmith_f_op_f32(f32(-1f) * -987f) >= func_1(vec2<f32>(global1[_wgslsmith_index_u32(6842u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), global1[_wgslsmith_index_u32(4294967295u, 6u)]).b.x) || var_0.x, !all(select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), func_5(Struct_5(var_0.xzw, vec2<f32>(-588f, global1[_wgslsmith_index_u32(48876u, 6u)])), var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    global0 = ~(~(((4294967295u << (0u % 32u)) >> ((u_input.b ^ 41226u) % 32u)) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 67520u, 22615u, var_1), global2[_wgslsmith_index_u32(var_1, 23u)]), abs(global2[_wgslsmith_index_u32(u_input.b, 23u)]))));
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, -func_2(var_0.wzz, var_1).a.b, u_input.a), u_input.a, ~(-13348i)));
}

