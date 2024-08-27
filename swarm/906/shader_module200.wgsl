struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(9830i, 1i, -10923i, -30857i), vec4<i32>(15940i, 0i, -12399i, -64750i), vec4<i32>(26171i, 0i, i32(-2147483648), -10982i), vec4<i32>(-33498i, 4265i, -15989i, 66728i), vec4<i32>(1177i, 2147483647i, 48605i, 60119i), vec4<i32>(-18054i, 26117i, i32(-2147483648), 2147483647i), vec4<i32>(1912i, 1i, 32183i, -1i), vec4<i32>(2147483647i, 2147483647i, -31633i, -1i), vec4<i32>(-27687i, 12082i, -2308i, i32(-2147483648)), vec4<i32>(1i, 0i, 0i, 1i), vec4<i32>(-16827i, -1i, -34075i, i32(-2147483648)));

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 31>;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1813f, 122f), vec2<f32>(-1631f, 807f), vec2<f32>(-768f, 1262f), vec2<f32>(-1041f, 581f), vec2<f32>(166f, -607f), vec2<f32>(-1048f, -225f), vec2<f32>(-155f, 618f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global3 = array<vec2<f32>, 7>();
    let var_0 = min(~u_input.b, u_input.b);
    let var_1 = 38021i;
    global2 = array<vec2<f32>, 31>();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(global3[_wgslsmith_index_u32(u_input.b.x, 7u)]));
    return Struct_1(arg_0.a, -vec2<i32>(1i, arg_1));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    global1 = firstTrailingBit(_wgslsmith_clamp_u32(u_input.c ^ 78153u, _wgslsmith_sub_u32(arg_0.x << (1u % 32u), u_input.b.x) | _wgslsmith_add_u32(u_input.b.x, 1u), ~45371u));
    var var_0 = arg_0.zx;
    let var_1 = func_2(func_2(Struct_1(all(select(arg_2.yx, arg_2.zy, vec2<bool>(true, arg_2.x))), ~vec2<i32>(arg_1, 364i) ^ vec2<i32>(-22162i, 4757i)), max(28179i >> (arg_0.x % 32u), -1517i), arg_2.x), ~arg_1, arg_2.x);
    var var_2 = func_2(Struct_1(true, _wgslsmith_mult_vec2_i32(var_1.b, countOneBits(_wgslsmith_mult_vec2_i32(var_1.b, var_1.b)))), arg_1, all(vec4<bool>((false || arg_2.x) | any(vec4<bool>(arg_2.x, var_1.a, true, var_1.a)), false, var_1.a, !func_2(Struct_1(true, var_1.b), var_1.b.x, var_1.a).a)));
    global3 = array<vec2<f32>, 7>();
    return var_2.b.x << (~4294967295u % 32u);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(Struct_1(!(!all(vec2<bool>(true, true))), abs(~select(vec2<i32>(u_input.a, -12251i), vec2<i32>(63899i, -19215i), true))), -_wgslsmith_add_i32(abs(u_input.a) & max(u_input.a, u_input.a), u_input.a), all(vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true)));
    let var_1 = func_2(Struct_1(var_0.a, ~var_0.b), _wgslsmith_div_i32(func_3(abs(u_input.b), -max(u_input.a, var_0.b.x), !vec3<bool>(true, var_0.a, var_0.a)), ~_wgslsmith_add_i32(var_0.b.x, ~u_input.a)), var_0.a);
    let var_2 = -40765i & var_1.b.x;
    var var_3 = ~_wgslsmith_mult_vec4_u32(~select(firstLeadingBit(vec4<u32>(28670u, 48401u, u_input.b.x, 63602u)), max(vec4<u32>(u_input.b.x, 0u, arg_0, 23599u), vec4<u32>(u_input.b.x, u_input.c, 4294967295u, arg_0)), vec4<bool>(var_0.a, var_1.a, false, var_0.a)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wxx, u_input.b.xyy), _wgslsmith_mod_u32(35255u, u_input.b.x), arg_0, u_input.b.x));
    global1 = ~max(_wgslsmith_add_u32(var_3.x, var_3.x), 15446u);
    return func_2(Struct_1(var_0.a, firstLeadingBit(select(-vec2<i32>(var_0.b.x, -2147483647i), var_0.b, !vec2<bool>(false, var_1.a)))), var_1.b.x, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.x, -_wgslsmith_add_vec2_i32(func_2(Struct_1(arg_2.a, vec2<i32>(arg_2.b.x, -30747i)), -1i, false).b, _wgslsmith_mod_vec2_i32(max(vec2<i32>(-20235i, arg_2.b.x), vec2<i32>(u_input.a, 1472i)), ~vec2<i32>(u_input.a, -34154i))));
    global1 = ~26717u;
    var var_1 = false;
    let var_2 = arg_2;
    let var_3 = Struct_1(select(true, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_2.a, true), vec4<bool>(arg_2.a, true, var_0.a, arg_0.x), true)) | true, !all(vec4<bool>(true, true, false, true))), select(min(arg_2.b, func_1(~1u).b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_2.b.x), -vec2<i32>(-11115i, -25055i) & firstTrailingBit(var_0.b)), func_2(func_2(func_2(Struct_1(arg_1.x, var_0.b), 1i, true), var_0.b.x, var_0.b.x <= arg_2.b.x), 52488i, false).a));
    return _wgslsmith_add_u32(35726u & u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(41695u, 1u), 0u, ~38709u), u_input.b.zxx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(2097u, ~(~u_input.c), func_4(vec2<bool>(true, true), vec3<bool>(false, true, true), func_1(0u)), _wgslsmith_mult_u32(~0u, u_input.b.x ^ u_input.b.x)), ~u_input.b), reverseBits(select(u_input.b >> (select(vec4<u32>(8177u, 1u, 10210u, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, u_input.c, 1u), true) % vec4<u32>(32u)), vec4<u32>(max(u_input.b.x, 0u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 20495u), u_input.b), u_input.b.x), true)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(847f, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -1015f))), _wgslsmith_f_op_f32(-474f * _wgslsmith_f_op_f32(abs(300f))))));
    let var_1 = func_2(Struct_1(true, vec2<i32>(_wgslsmith_dot_vec2_i32(func_1(u_input.c).b, -vec2<i32>(10826i, u_input.a)), ~u_input.a ^ (0i >> (u_input.b.x % 32u)))), ~((u_input.a ^ u_input.a) ^ -(u_input.a >> (4294967295u % 32u))), true);
    let var_2 = Struct_1(false, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -37454i), vec3<i32>(u_input.a, u_input.a, -39425i)) >> (u_input.b.x % 32u), ~u_input.a));
    let var_3 = func_1(0u);
    let var_4 = any(select(select(!select(vec4<bool>(false, var_3.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, true), true), vec4<bool>(true, var_0.x == -321f, true, var_2.a), select(vec4<bool>(var_3.a, var_1.a, var_1.a, false), !vec4<bool>(true, true, false, var_2.a), vec4<bool>(var_2.a, var_1.a, var_1.a, false))), !select(select(vec4<bool>(var_3.a, var_1.a, var_1.a, var_2.a), vec4<bool>(false, var_3.a, var_2.a, var_1.a), true), vec4<bool>(var_1.a, var_1.a, true, var_2.a), var_2.a), select(vec4<bool>(false, all(vec3<bool>(var_1.a, var_3.a, var_2.a)), false, all(vec2<bool>(var_3.a, var_3.a))), vec4<bool>(718f == var_0.x, var_3.a, all(vec4<bool>(var_1.a, var_2.a, false, true)), var_2.a), !select(vec4<bool>(false, var_2.a, false, false), vec4<bool>(true, var_3.a, true, false), true))));
    global2 = array<vec2<f32>, 31>();
    global2 = array<vec2<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(-1245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * var_0.x), -769f, var_0.x), select(!select(vec4<bool>(var_1.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, true, false, var_2.a), false), !vec4<bool>(var_3.a, var_4, var_4, true), false))), var_0, u_input.c, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b.x, 8629u), u_input.b.ww), u_input.b.xx, u_input.b.xy));
}

