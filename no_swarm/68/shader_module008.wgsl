struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

var<private> global1: array<i32, 21> = array<i32, 21>(2147483647i, 0i, -59368i, -34953i, 33695i, -1i, -58820i, 2147483647i, i32(-2147483648), -33869i, 800i, 84920i, 2147483647i, 0i, 244i, 30611i, -23990i, -19987i, i32(-2147483648), 2147483647i, 1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = array<i32, 21>();
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-997f, -467f), _wgslsmith_f_op_f32(min(-476f, -595f))))))));
    let var_2 = ~(~37046u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-393f)) - 1129f);
    return firstLeadingBit(0u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = -abs(arg_0.e);
    var var_1 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(34597i, arg_1.c.c), ~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(13714u, 21u)])), select(_wgslsmith_add_vec2_i32(vec2<i32>(6311i, arg_0.e), vec2<i32>(1i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.c, arg_0.e), vec2<i32>(arg_1.c.c, 51253i)), select(vec2<bool>(false, arg_0.c), vec2<bool>(true, arg_1.c.b), vec2<bool>(false, false)))) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(~100810u, ~65271u), vec2<u32>(arg_0.a, ~122308u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b, 1u) | _wgslsmith_mod_vec2_u32(vec2<u32>(75190u, 98630u), vec2<u32>(1u, 27454u)), vec2<u32>(reverseBits(arg_1.b), func_3(vec3<bool>(arg_0.c, arg_1.c.b, false)))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = Struct_2(select(vec3<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, arg_1.c.b, false), vec4<bool>(arg_0.b, arg_1.c.b, false, false))), false), !vec3<bool>(true, arg_0.c, select(true, arg_0.c, true)), select(vec3<bool>(true, !arg_1.c.b, arg_1.c.b), vec3<bool>(true, true, !arg_1.c.b), (arg_0.a ^ arg_1.b) <= ~arg_0.a)), ~(~max(abs(vec2<u32>(arg_0.a, 23895u)), countOneBits(vec2<u32>(34844u, arg_0.a)))), select(vec4<bool>(true, true, true, false), !vec4<bool>(arg_0.b, true, arg_0.a <= 812u, u_input.a == arg_1.c.c), arg_0.b));
    let var_3 = ~(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(37248i, -18570i, global1[_wgslsmith_index_u32(4294967295u, 21u)]) | vec3<i32>(0i, -5920i, 22551i)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_1.c.c, u_input.a, 2147483647i)), abs(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(var_2.b.x, 21u)], -2147483647i)))) >> (15392u % 32u));
    var var_4 = Struct_4(var_2.b.x << (751u % 32u), all(!select(!var_2.c.zy, !var_2.a.zz, select(var_2.c.yw, vec2<bool>(false, var_2.a.x), var_2.a.yx))), var_2.a.x, _wgslsmith_f_op_vec2_f32(select(arg_0.d, vec2<f32>(125f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(223f, -803f) * _wgslsmith_f_op_f32(abs(arg_0.d.x)))), arg_1.c.b)), 0i);
    return ~(~(var_2.b ^ vec2<u32>(1u, arg_0.a))) | countOneBits(~(~_wgslsmith_mult_vec2_u32(var_2.b, var_2.b)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    var var_0 = vec3<bool>(false, !all(!select(vec2<bool>(arg_2, true), vec2<bool>(true, false), true)), true);
    var var_1 = var_0.yy;
    global0 = array<vec3<f32>, 31>();
    return Struct_2(vec3<bool>(arg_2, !arg_2, var_1.x), ~func_2(Struct_4(arg_0, var_0.x, false, _wgslsmith_f_op_vec2_f32(round(arg_3.zx)), u_input.a | 52328i), Struct_3(_wgslsmith_div_f32(452f, arg_3.x), 36086u, Struct_1(1412f, true, 35850i))), vec4<bool>(arg_2, arg_2 || any(vec2<bool>(true, true)), var_0.x, true & any(vec2<bool>(false, arg_2))));
}

fn func_1() -> bool {
    let var_0 = func_4(32775u, ~(~(vec2<u32>(4294967295u, 4294967295u) & func_2(Struct_4(53021u, true, false, vec2<f32>(519f, -859f), u_input.a), Struct_3(1407f, 0u, Struct_1(-1000f, false, -68013i))))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(false, true, false, true)), true), !all(vec3<bool>(true, false, true)))), global0[_wgslsmith_index_u32(reverseBits(~min(~60061u, firstTrailingBit(0u))), 31u)]);
    global1 = array<i32, 21>();
    global0 = array<vec3<f32>, 31>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10625u, var_0.b.x, 1u, 0u), vec4<u32>(var_0.b.x, 0u, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 32968u, 37209u, var_0.b.x)), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 0u) | vec4<u32>(10275u, 4294967295u, 1u, 18567u), _wgslsmith_mod_vec4_u32(vec4<u32>(64671u, 4294967295u, var_0.b.x, 0u), vec4<u32>(var_0.b.x, 1u, var_0.b.x, 18706u))), select(vec4<u32>(min(15766u, var_0.b.x), var_0.b.x, 41673u, 0u), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_0.b.x, var_0.b.x, var_0.b.x)), ~vec4<u32>(1u, 6058u, 19724u, 31568u)), var_0.c));
    global1 = array<i32, 21>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_add_i32(1i, -68817i)), -(i32(-1i) * -1i)), _wgslsmith_add_i32(1i, -(~_wgslsmith_mult_i32(19698i, 36831i))));
    var var_2 = !vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), true)), true == func_1());
    global0 = array<vec3<f32>, 31>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1163f - -1966f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(775f))))), !var_2.x, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, var_1.x), -u_input.a, u_input.a), -14503i));
    let var_4 = firstLeadingBit(-(~(~var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec3<i32>(u_input.a << (1u % 32u), min(52732i, var_1.x), -43089i)));
}

