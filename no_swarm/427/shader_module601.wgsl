struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    global0 = firstLeadingBit(-select(abs(vec4<i32>(arg_1, arg_1, global0.x, 8451i)), vec4<i32>(arg_1, 1i, -8662i, -7589i) >> (vec4<u32>(36741u, 0u, u_input.b, 5919u) % vec4<u32>(32u)), false)) << (vec4<u32>(~(~(u_input.a.x | u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yy), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), u_input.b | 9884u, abs(u_input.c)), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a) << (~u_input.a % vec3<u32>(32u))), _wgslsmith_mod_u32(23604u, 72258u)) % vec4<u32>(32u));
    let var_0 = false && !(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1, arg_1, global0.x), 0i, 10338i) < _wgslsmith_mult_i32(max(arg_1, arg_1), _wgslsmith_dot_vec2_i32(global0.xx, global0.xz)));
    var var_1 = -1000f;
    var_1 = arg_0.x;
    return ~(-2147483647i);
}

fn func_2(arg_0: u32) -> bool {
    global0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-(~48688i), global0.x, _wgslsmith_mod_i32(firstTrailingBit(4979i), global0.x), _wgslsmith_div_i32(max(global0.x, 1i), ~global0.x)), vec4<i32>(-2147483647i, func_3(vec3<f32>(815f, -1231f, -174f), global0.x & 0i), -8195i, 17009i));
    var var_0 = select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), global0.x) > firstTrailingBit(2147483647i & global0.x), arg_0 == 0u), any(vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(795f * -133f)))) - -752f) + _wgslsmith_f_op_f32(f32(-1f) * -1229f));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-965f + -1263f) * _wgslsmith_f_op_f32(ceil(-535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1695f * -1626f)), 214f), vec3<f32>(1f, 1f, 1f), _wgslsmith_dot_vec3_i32(global0.yyy, vec3<i32>(global0.x, 2147483647i, global0.x)) < -206i)), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-158f)), _wgslsmith_f_op_f32(-126f - 592f), 848f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1733f, 890f, -1000f)) * vec3<f32>(1f, 1f, 1f)), vec3<bool>(var_0.x, true, var_0.x && var_0.x))), ~(~0i) & global0.x));
    var var_3 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(42889u, ~_wgslsmith_add_u32(u_input.c, u_input.b & 1u)));
    return true;
}

fn func_1() -> vec4<f32> {
    let var_0 = select(select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), 1u == (u_input.a.x << (1836u % 32u)), true, true), vec4<bool>(true, true, true, true), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), func_2(u_input.a.x), true)), select(vec4<bool>(firstLeadingBit(4294967295u) != ~u_input.b, -global0.x == (global0.x & -10498i), false, max(30375u, u_input.b) <= reverseBits(u_input.b)), vec4<bool>(!any(vec2<bool>(true, true)), func_2(u_input.b), false, true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false)))), !vec4<bool>(true, select(true, all(vec4<bool>(false, true, true, false)), true), true, true));
    var var_1 = var_0.x;
    var var_2 = vec2<u32>(u_input.a.x, 0u);
    var_2 = firstLeadingBit(~countOneBits(min(~u_input.a.zx, u_input.a.yx)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1267f, -774f, 229f, 767f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, -1000f, -277f, -135f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, 118f, -830f, 1356f)))), vec4<f32>(-127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1275f + 1676f) - 134f)), _wgslsmith_f_op_f32(abs(886f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-449f)), _wgslsmith_div_f32(729f, 236f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), true))));
    var_0 = u_input.a.x < (~u_input.a.x >> (abs(u_input.c) % 32u));
    var_0 = true;
    let var_1 = -(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 2147483647i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, 17375i, 53775i)) >> ((vec4<u32>(1u, 4294967295u, 22029u, 59823u) >> (vec4<u32>(26598u, 58526u, 1u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.x))));
    let var_4 = !vec3<bool>(select(false, true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(1i, -vec4<i32>(~global0.x, -_wgslsmith_dot_vec2_i32(var_1.zw, vec2<i32>(0i, 4388i)), ~(-var_1.x), firstLeadingBit(-global0.x)), var_1.x);
}

