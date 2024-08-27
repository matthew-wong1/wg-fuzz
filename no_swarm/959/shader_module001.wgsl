struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(13310i, i32(-2147483648));

var<private> global1: array<Struct_5, 2>;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 9676u), vec2<u32>(5865u, 17103u), vec2<u32>(42205u, 48100u), vec2<u32>(4294967295u, 1u), vec2<u32>(6856u, 19099u), vec2<u32>(15770u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(24303u, 50589u), vec2<u32>(405u, 4294967295u), vec2<u32>(21926u, 37169u));

var<private> global3: f32 = 221f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_1(false, u_input.a, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 144f)), vec3<bool>(true, true, true), u_input.b);
    var_0 = Struct_1(all(!(!(!vec4<bool>(false, true, var_0.a, false)))), u_input.c >> (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4294967295u, u_input.b.x)), u_input.b.wz) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - var_0.c))), vec3<bool>(_wgslsmith_mult_i32(u_input.e.x, global0.x) >= ~(i32(-1i) * -18586i), !any(!var_0.d.yx), true || all(var_0.d.yx)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), min(vec4<u32>(u_input.b.x, 4294967295u, var_0.e.x, 6874u), u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(50504u, u_input.b.x, var_0.e.x, 1u), var_0.e), _wgslsmith_mult_vec4_u32(vec4<u32>(18323u, u_input.b.x, 4294967295u, var_0.e.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)))), select(_wgslsmith_mod_vec4_u32(u_input.b ^ var_0.e, _wgslsmith_mod_vec4_u32(vec4<u32>(97814u, 4294967295u, var_0.e.x, u_input.b.x), vec4<u32>(20018u, 0u, 11753u, u_input.b.x))), ~(var_0.e | u_input.b), vec4<bool>(var_0.d.x, false, !var_0.a, u_input.b.x > u_input.b.x))));
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-1845f + 168f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.e.xy), global0.x), u_input.e.yx), _wgslsmith_mult_i32(reverseBits(-global0.x), u_input.a)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + -1119f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), 775f), vec2<f32>(_wgslsmith_div_f32(963f, 883f), 899f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 478f)))))));
    return 1591f;
}

fn func_2() -> Struct_4 {
    global0 = ~(-u_input.e.yy);
    global0 = vec2<i32>(_wgslsmith_div_i32(global0.x, _wgslsmith_mult_i32(~u_input.d.x, 52610i)), u_input.e.x);
    global1 = array<Struct_5, 2>();
    global1 = array<Struct_5, 2>();
    global1 = array<Struct_5, 2>();
    return Struct_4(Struct_1(true, i32(-1i) * -_wgslsmith_clamp_i32(9684i, global0.x, u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)) + _wgslsmith_f_op_f32(func_3(-344f))), !vec3<bool>(true, select(true, true, false), true), ~vec4<u32>(4294967295u | u_input.b.x, countOneBits(25655u), u_input.b.x, firstLeadingBit(u_input.b.x))), any(select(vec4<bool>(all(vec3<bool>(false, false, true)), true, all(vec3<bool>(true, true, true)), u_input.b.x >= 1u), vec4<bool>(true, u_input.b.x > u_input.b.x, false, all(vec3<bool>(true, true, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1004f)), _wgslsmith_f_op_f32(550f + 214f))))), Struct_2(Struct_1(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1015f - 692f)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec4_u32(~u_input.b, u_input.b, vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x))), 0u));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 2u)];
    global0 = vec2<i32>(global0.x, _wgslsmith_add_i32(~(-26185i), ~_wgslsmith_mult_i32(reverseBits(u_input.e.x), global0.x)));
    var var_2 = vec2<bool>(true, all(vec2<bool>(var_0.b, !var_0.a.d.x)));
    global2 = array<vec2<u32>, 10>();
    return var_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> bool {
    var var_0 = arg_1;
    let var_1 = global1[_wgslsmith_index_u32(~reverseBits(countOneBits(0u) | countOneBits(var_0.a.e.x)), 2u)];
    var var_2 = _wgslsmith_mult_u32(4294967295u, arg_1.d.a.e.x);
    var var_3 = firstTrailingBit(u_input.d.wwy);
    let var_4 = ~firstLeadingBit(firstLeadingBit(1u));
    return any(select(select(vec4<bool>(arg_1.d.a.d.x, -1257i > var_0.d.a.b, var_0.a.d.x, func_2().b), vec4<bool>(arg_1.b, all(vec4<bool>(var_0.a.a, arg_1.b, true, var_0.b)), func_1(arg_1.c.a, u_input.e).d.a.a, var_0.a.a), select(select(vec4<bool>(true, true, arg_1.d.a.a, true), vec4<bool>(arg_1.d.a.d.x, false, true, true), vec4<bool>(false, true, arg_1.b, true)), select(vec4<bool>(false, var_0.d.a.a, false, false), vec4<bool>(arg_1.d.a.a, arg_1.b, true, false), vec4<bool>(true, true, var_0.d.a.a, false)), vec4<bool>(true, false, true, false))), vec4<bool>(arg_1.d.a.a & var_0.b, !all(vec3<bool>(false, arg_1.a.a, false)), any(vec4<bool>(arg_1.b, arg_1.a.a, var_0.a.a, arg_1.b)), arg_1.b), arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(func_4(global2[_wgslsmith_index_u32(u_input.b.x, 10u)] & global2[_wgslsmith_index_u32(u_input.b.x, 10u)], func_1(238f, u_input.e)), any(func_1(-2117f, vec3<i32>(0i, -1i, global0.x)).a.d.xy)), vec2<bool>(true, true), vec2<bool>(func_2().a.e.x > u_input.b.x, false));
    var var_1 = 34794u;
    let var_2 = !(!(!(!vec4<bool>(var_0.x, true, var_0.x, true))));
    var var_3 = 1u;
    let var_4 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) - _wgslsmith_f_op_f32(floor(433f))))) - _wgslsmith_f_op_f32(func_2().c.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f * -824f)))), ~vec3<i32>(55427i, ~(u_input.a >> (u_input.b.x % 32u)), -countOneBits(3311i))).c;
    let var_5 = Struct_5(func_2().c, vec2<i32>(_wgslsmith_sub_i32(20468i << (u_input.b.x % 32u), global0.x), 64273i | _wgslsmith_sub_i32(u_input.e.x, u_input.c)) | vec2<i32>(~u_input.a, u_input.a));
    var var_6 = vec2<i32>(min(var_5.b.x, ~var_5.b.x), _wgslsmith_mult_i32(u_input.d.x, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-40295i, -1i), _wgslsmith_sub_i32(-1i, -17664i))));
    var var_7 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1206f, var_4.a, var_4.a))) + vec3<f32>(var_5.a.a, 1528f, _wgslsmith_f_op_f32(f32(-1f) * -1045f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, var_5.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(135506u, -614f, ~func_1(var_7.x, _wgslsmith_clamp_vec3_i32(vec3<i32>(-19288i, 56931i, 1i), select(vec3<i32>(var_6.x, u_input.e.x, var_6.x), vec3<i32>(0i, u_input.c, -1i), vec3<bool>(var_0.x, var_2.x, var_0.x)), abs(vec3<i32>(global0.x, -11650i, 72176i)))).d.a.e.x, ~u_input.b.x);
}

