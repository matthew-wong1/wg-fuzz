struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(747f, vec2<bool>(true, true), -1189f);

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, false, false, true, true, true, false, true, true, false, false, false, true, true, false, true, true, false, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 15214u, 67410u, 4294967295u)), 1u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(4294967295u, 0u), ~38922u), 4294967295u);
    let var_1 = ~max(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 1i, u_input.b, 33472i), vec4<i32>(u_input.b, _wgslsmith_sub_i32(-1i, 2147483647i), min(u_input.a.x, -2147483647i), ~u_input.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 42226i), vec4<i32>(58876i, u_input.a.x, 16103i, u_input.b)) | select(vec4<i32>(-1i, -2147483647i, -35941i, u_input.b), vec4<i32>(u_input.a.x, u_input.b, 1i, u_input.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], false)), -vec4<i32>(u_input.b, u_input.a.x, 2147483647i, u_input.a.x)));
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    var var_2 = _wgslsmith_clamp_vec3_i32(u_input.a, (vec3<i32>(-2147483647i, u_input.a.x, _wgslsmith_add_i32(936i, 18050i)) ^ (vec3<i32>(-7584i, var_1.x, -1i) ^ ~vec3<i32>(var_1.x, var_1.x, -12302i))) << (abs(var_0.zzx) % vec3<u32>(32u)), u_input.a);
    return var_2.yx;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = -abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, arg_0, -1i) & vec4<i32>(u_input.a.x, -1i, 45711i, 34792i), -vec4<i32>(arg_0, -3559i, u_input.a.x, -2147483647i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    let var_1 = vec2<bool>(select(all(vec2<bool>(true, true)), true, all(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(29910u, 22u)], global1[_wgslsmith_index_u32(37u, 22u)], global0.b.x), vec4<bool>(false, global0.b.x, true, false), global0.b.x))), global1[_wgslsmith_index_u32(abs(~1u), 22u)]);
    global1 = array<bool, 22>();
    var var_2 = _wgslsmith_f_op_f32(1860f * global0.a);
    var var_3 = Struct_4(1545f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-853f, 1466f, 253f), vec3<f32>(1000f, global0.a, 523f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a, global0.a, global0.c)))))), Struct_2(global0.c, -2147483647i, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), _wgslsmith_mult_vec2_i32(vec2<i32>(4734i, arg_0), func_3(vec4<f32>(global0.c, 644f, 311f, global0.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.a))))));
    return 70693u;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(global0.c, func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global0.c), 836f, -1000f, -1000f)).x, ~u_input.a.zz, -384f);
    let var_1 = -1i;
    return var_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = !select(!select(select(vec4<bool>(global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_1, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true, false, arg_1), arg_1), vec4<bool>(false, arg_1, true, true), any(global0.b)), vec4<bool>(true, any(global0.b), true, true), any(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(18441u, 22u)], true)));
    global1 = array<bool, 22>();
    var var_1 = func_4(func_2(-2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, 1800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1526f)) + _wgslsmith_f_op_f32(248f * -679f))) - arg_3.b.zz));
    global1 = array<bool, 22>();
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2827f)), _wgslsmith_f_op_f32(1154f - -872f))), var_0.wz, -1437f);
    return !select(vec4<bool>(true, false, !(!arg_2), any(var_0) | true), select(select(select(vec4<bool>(false, arg_1, global0.b.x, false), var_0, arg_2), select(var_0, vec4<bool>(arg_1, global0.b.x, var_0.x, true), vec4<bool>(arg_1, var_0.x, true, false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(94549u, 22u)], true, global1[_wgslsmith_index_u32(12433u, 22u)]), var_0, global0.b.x)), !var_0, !(!vec4<bool>(false, true, arg_1, global1[_wgslsmith_index_u32(74594u, 22u)]))), var_0);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(arg_1, vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - 1504f) - arg_0.a), global0.b.x))), Struct_2(arg_2.c, arg_0.c.x, vec2<i32>(-1i, u_input.a.x << (1u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1107f)));
    var var_1 = var_0;
    var var_2 = arg_0;
    global1 = array<bool, 22>();
    var_1 = Struct_4(1236f, _wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(arg_2.c, 1f, var_0.a)), Struct_2(arg_2.c, ~(~0i), vec2<i32>(var_0.c.c.x, arg_0.b), -856f));
    return Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_2.b, 0i, var_0.c.c.x), vec4<i32>(var_2.c.x, -36360i, var_0.c.c.x, 0i) | vec4<i32>(43641i, 13512i, -10698i, var_1.c.b)), vec4<i32>(_wgslsmith_mod_i32(var_0.c.c.x, arg_0.b), var_2.b, _wgslsmith_mult_i32(-1i, var_2.b), 1965i)), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-48679i, var_2.b, 12483i, arg_0.c.x), vec4<i32>(arg_0.b, -2147483647i, var_2.b, arg_0.b)))), !(!arg_3.x), vec4<u32>(65470u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~19471u, firstLeadingBit(1u), _wgslsmith_mod_u32(43911u, 29673u))), 1u, 46466u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(_wgslsmith_f_op_f32(-global0.a), global0.b, 124f);
    global1 = array<bool, 22>();
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), 30445i, u_input.a.zx, 924f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(-2416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))))), Struct_5(217f, vec2<bool>(_wgslsmith_f_op_f32(-global0.a) > _wgslsmith_div_f32(global0.a, global0.c), global0.b.x), global0.a), select(!(!func_1(vec4<i32>(0i, 1641i, u_input.a.x, 10544i), true, false, Struct_4(-802f, vec3<f32>(-1600f, global0.c, global0.c), Struct_2(global0.a, u_input.b, u_input.a.xz, 1027f)))), vec4<bool>(true, !(global0.c != global0.a), _wgslsmith_div_f32(-469f, global0.c) <= _wgslsmith_f_op_f32(440f + global0.a), false), !(!select(vec4<bool>(global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(false, global0.b.x, global1[_wgslsmith_index_u32(24753u, 22u)], false), true))));
    global1 = array<bool, 22>();
    let var_1 = vec4<f32>(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -639f), _wgslsmith_f_op_f32(global0.c + global0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(1684f, global0.a), global0.b.x)), global0.c)) * _wgslsmith_f_op_f32(-func_4(1u ^ var_0.c.x, vec2<f32>(global0.c, 2383f)).a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(696f + 393f), _wgslsmith_div_f32(global0.a, -173f))))));
    let var_2 = 28995u;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a + global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + var_1.x))), !all(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2, 22u)], global1[_wgslsmith_index_u32(30388u, 22u)], true))))));
    var var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)) * _wgslsmith_f_op_f32(f32(-1f) * -689f))), vec2<bool>(true, true), _wgslsmith_div_f32(-355f, 1392f));
    var_0 = func_5(func_4(~min(func_2(var_0.a.x), var_0.c.x), var_1.wy), global0.a, Struct_5(var_1.x, select(global0.b, vec2<bool>(true, true), !global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) + -604f)), !vec4<bool>(false, global1[_wgslsmith_index_u32(~4294967295u, 22u)], !(0u > var_2), -var_0.a.x <= 51748i));
    let x = u_input.a;
    s_output = StorageBuffer((var_0.c.wz >> (func_5(func_4(0u, vec2<f32>(-1170f, -606f)), _wgslsmith_f_op_f32(f32(-1f) * -632f), Struct_5(var_4.a, vec2<bool>(true, global0.b.x), global0.c), func_1(vec4<i32>(u_input.a.x, var_0.a.x, u_input.a.x, u_input.a.x), var_0.b, false, Struct_4(993f, vec3<f32>(-1056f, 1885f, -127f), Struct_2(-1000f, u_input.b, vec2<i32>(-1i, var_0.a.x), var_4.c)))).c.yx % vec2<u32>(32u))) << (~(firstTrailingBit(var_0.c.ww) << (var_0.c.wx % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u & (1u & var_2), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, var_2, var_2), var_0.c, true), ~var_0.c), (var_2 & var_0.d) << (35050u % 32u)), var_0.c.ywz));
}

