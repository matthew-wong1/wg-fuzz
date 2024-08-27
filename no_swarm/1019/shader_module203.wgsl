struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    global0 = arg_1;
    global2 = vec3<i32>(-62175i, -2147483647i, _wgslsmith_mult_i32(global3.a.b, global3.a.b | ~_wgslsmith_mod_i32(29967i, global3.a.b)));
    global2 = ~vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 2147483647i), -9987i ^ ~global3.a.b, 1011i);
    let var_0 = max(vec3<u32>(~1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(1u, 79690u, 36335u) & min(49219u, arg_0.b.x)), arg_0.b.x), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(26168u, arg_0.b.x, arg_0.b.x) >> (vec3<u32>(9472u, arg_0.b.x, arg_0.b.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_0.b, vec3<u32>(arg_0.b.x, arg_0.b.x, 16108u))) >> (arg_0.b % vec3<u32>(32u))));
    global3 = Struct_2(Struct_1(global3.a.d, global3.a.b | _wgslsmith_div_i32(1i, ~0i), !vec3<bool>(!global3.a.c.x, true, !global3.a.d), arg_0.a));
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = i32(-1i) * -703i;
    let var_1 = vec4<bool>(all(vec3<bool>(true, any(!vec4<bool>(global3.a.c.x, arg_0.a, global3.a.d, arg_0.c.x)), true)), global3.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(474f, -1126f)) + _wgslsmith_f_op_f32(step(-736f, -1000f))), -2290f)) >= 1f, func_3(Struct_3(global3.a.c.x, ~(~vec3<u32>(0u, 4294967295u, 32182u))), !(!global3.a.d)));
    let var_2 = Struct_1(select(_wgslsmith_sub_i32(_wgslsmith_add_i32(global2.x, -1i), max(1i, var_0)) != _wgslsmith_add_i32(82260i ^ var_0, -u_input.a.x), true, !all(select(var_1, var_1, true))), ~1i, vec3<bool>(true || arg_0.d, true && var_1.x, global3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-855f + -1433f), _wgslsmith_f_op_f32(-1657f + 586f))) + -549f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(954f)) - _wgslsmith_div_f32(-1316f, 2986f)))));
    var var_3 = var_0;
    var_3 = _wgslsmith_clamp_i32(~reverseBits(_wgslsmith_mod_i32(1i, u_input.a.x ^ arg_0.b)), abs(27288i), -var_2.b);
    return func_3(Struct_3(all(vec2<bool>(true, true)), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(26957u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u))), true != func_3(Struct_3(global3.a.a, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 51880u), vec3<u32>(1u, 0u, 0u))), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = vec2<bool>(global3.a.c.x, true);
    return false;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = true;
    var var_1 = func_4(vec4<bool>(select(!arg_0, func_2(global3.a) && false, arg_0), global3.a.d, any(select(global3.a.c.zy, vec2<bool>(true, arg_0), true)) || all(vec2<bool>(global3.a.d, true)), true), min(_wgslsmith_div_i32(u_input.a.x, -global3.a.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(77622i, -1i, 12035i, 17916i))) | firstLeadingBit(~global3.a.b), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1160f))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(719f, _wgslsmith_f_op_f32(max(-767f, -1693f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(480f * 117f), -1281f))));
    global1 = true;
    var var_3 = Struct_1(any(select(!vec2<bool>(arg_0, true), global3.a.c.xy, false)), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.x, global2.x), 0i), !select(global3.a.c, global3.a.c, global3.a.c), global3.a.c.x);
    return Struct_1(!any(select(!vec4<bool>(var_3.a, global3.a.a, true, false), select(vec4<bool>(true, var_3.c.x, true, true), vec4<bool>(var_3.c.x, false, false, var_3.d), true), vec4<bool>(true, var_3.c.x, global3.a.d, false))), -global2.x, select(vec3<bool>(true, global3.a.c.x, all(!vec3<bool>(false, arg_0, true))), vec3<bool>(false, true, true), func_4(vec4<bool>(!var_3.a, any(var_3.c), func_2(Struct_1(true, u_input.a.x, global3.a.c, false)), true), -1i, _wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(var_2 + -1286f)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(!(!(!vec3<bool>(false, global3.a.d, true)))));
    var var_1 = _wgslsmith_f_op_f32(floor(-489f));
    let var_2 = abs(global3.a.b) < select(-1i, var_0.b, var_0.d);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -793f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(max(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.xx), vec2<i32>(0i, 1i)))), ~vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(48037u, 76748u, 1u)), reverseBits(~32168u), select(_wgslsmith_clamp_u32(37249u, 4294967295u, 4294967295u), 4294967295u >> (0u % 32u), true)));
}

