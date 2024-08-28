struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 11088u, 1u, 0u);

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = Struct_4(Struct_1(abs(~countOneBits(global2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a.b, global4.b))), u_input.b.x, 0u, u_input.a.x), vec4<bool>(any(!(!global1.yy)), true, true, _wgslsmith_add_u32(~17980u, arg_1.x) >= firstTrailingBit(~global4.d)));
    let var_1 = var_0.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b)))), _wgslsmith_f_op_f32(937f - _wgslsmith_f_op_f32(floor(-133f))), _wgslsmith_f_op_f32(-914f + _wgslsmith_f_op_f32(abs(global4.b))));
    let var_3 = arg_2;
    var var_4 = Struct_4(Struct_1(57484u, var_2.x, abs(reverseBits(select(1i, 0i, global1.x))), var_0.a.a, ~(-16481i)), vec4<bool>(!((global2.x << (670u % 32u)) >= 37986u), global1.x, !all(vec4<bool>(true, true, true, true)) || false, global1.x == false));
    return 1535f;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = countOneBits(firstTrailingBit(4294967295u)) >= ~0u;
    let var_0 = global2.x;
    var var_1 = Struct_1(select(1u, global4.a ^ global2.x, any(vec4<bool>(false, true, global1.x, true)) || true), _wgslsmith_f_op_f32(-global4.b), u_input.b.x, global2.x, u_input.b.x);
    var var_2 = var_1.c;
    let var_3 = Struct_4(Struct_1(~(reverseBits(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.d, 67037u, 1u), vec4<u32>(25812u, 77700u, 23420u, 4294967295u)) % 32u)), _wgslsmith_f_op_f32(func_3(abs(~u_input.c), ~(~vec2<u32>(var_1.d, 8179u)), Struct_2(Struct_1(49777u, arg_0, 1i, 0u, -35719i), reverseBits(0u), var_1.e), true)), abs(~1i), 41647u, -1i), select(!select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true)), select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, false, false, false), global1.x), false), !select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(false, false, global1.x, false), global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(20139i, 45359i, -2147483647i), abs(vec3<i32>(u_input.c, 2147483647i, u_input.b.x))) > _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, var_1.c, u_input.b.x) & u_input.a, vec4<i32>(u_input.c, u_input.c, -5426i, -35164i))));
    return Struct_1(53456u, -1000f, ~(~min(-var_1.c, _wgslsmith_sub_i32(13017i, -34861i))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~var_3.a.d, ~32453u)), global2.zz), ~var_3.a.e | global4.e);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(func_2(_wgslsmith_div_f32(global4.b, global4.b)), ~firstTrailingBit(~(~41444u)), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(758f, 245f, global4.b)));
    let var_2 = Struct_3(all(select(vec4<bool>(false, -1495f >= var_0.a.b, select(false, arg_1.x, arg_0), all(vec4<bool>(false, global1.x, arg_0, global1.x))), select(vec4<bool>(global1.x, arg_0, true, true), select(vec4<bool>(global1.x, arg_0, arg_0, true), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(arg_1.x, false, global1.x, arg_1.x)), arg_1.x), vec4<bool>(global1.x && arg_0, arg_0 & false, false, true))), !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -938f) <= var_0.a.b, (u_input.b.x & -17753i) > (u_input.c ^ u_input.c), all(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, true, global1.x, arg_0), true)), any(!global1.wxy)), vec2<i32>(-1i) * -(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(-6732i, -1i)) << (vec2<u32>(global2.x, global4.a) % vec2<u32>(32u))), reverseBits(~var_0.c));
    global0 = arg_0;
    global1 = vec4<bool>(var_2.a, global4.b != 257f, true, arg_1.x);
    return Struct_2(Struct_1(~(~global4.a) ^ 0u, global4.b, func_2(-921f).c, _wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, global2.x, 4294967295u) << (vec3<u32>(55469u, global2.x, 32421u) % vec3<u32>(32u))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, global2.x, 8110u), global2.wzz))), _wgslsmith_sub_i32(0i, 37935i)), global2.x, -35585i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, vec2<bool>(global1.x, !(true || (u_input.b.x == -1i))));
    var var_1 = ~0i;
    global4 = var_0.a;
    let var_2 = Struct_4(Struct_1(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.b))), 21232i, global2.x, 46658i), vec4<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, false, global1.x, true))), !(abs(global2.x) > reverseBits(47949u)), func_1(select(global1.x, global1.x, global1.x), vec2<bool>(true, global1.x)).a.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b - -371f)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.a.c, 6566i), vec3<i32>(4483i, global4.c, 1138i)) > global4.e, false, !(!global1.x))));
    let var_3 = select(vec4<u32>(global2.x << (20635u % 32u), var_2.a.d, ~firstLeadingBit(countOneBits(52090u)), _wgslsmith_div_u32(global2.x, ~firstTrailingBit(2991u))), vec4<u32>(~(_wgslsmith_mult_u32(global4.d, var_0.a.a) & (global4.d << (4294967295u % 32u))), _wgslsmith_add_u32(1u, select(var_2.a.d, 0u, global1.x)) | global4.a, 0u, _wgslsmith_mod_u32(var_2.a.d, global4.d | ~65768u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-1i) * -u_input.a.yzz, u_input.a.zxw, func_1(false, vec2<bool>(global1.x, false)).a.d > 3949u), var_2.a.e | -func_2(_wgslsmith_f_op_f32(-1517f * 1706f)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.b)))))), -select(_wgslsmith_mult_vec2_i32(-u_input.a.yy, ~vec2<i32>(-42346i, -22929i)), vec2<i32>(firstLeadingBit(-2147483647i), -2147483647i), !global1.x));
}

