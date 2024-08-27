struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_4(arg_1.b.e.xy, ~0u, vec3<u32>(arg_1.b.a.x ^ ~u_input.b, 77385u, _wgslsmith_div_u32(select(62246u, arg_0.b.a.x, arg_0.a), arg_0.b.a.x) >> (_wgslsmith_mult_u32(arg_1.b.a.x, ~arg_0.b.a.x) % 32u)), Struct_2(false, arg_1.b));
    global1 = vec2<f32>(301f, -293f);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.wy, vec2<f32>(_wgslsmith_div_f32(-712f, -1155f), arg_2.x)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-929f, arg_2.x), arg_0.b.e.xx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, 848f) + arg_0.b.e.xy))))), arg_2.wy);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-397f, _wgslsmith_f_op_f32(abs(508f)), _wgslsmith_f_op_f32(sign(-1000f))))));
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, 27193i, -2147483647i, u_input.a) & ~vec4<i32>(-69838i, -2147483647i, -21489i, 54871i)) ^ (reverseBits(vec4<i32>(0i, u_input.a, -28209i, 13107i)) << (~vec4<u32>(arg_0.b.a.x, 1u, u_input.b, arg_1.b.a.x) % vec4<u32>(32u))), vec4<i32>(-u_input.a, u_input.a, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(u_input.a, 52858i), _wgslsmith_mult_i32(u_input.a, 36475i)), ~(-1i))));
    return _wgslsmith_div_u32(u_input.b, arg_0.b.a.x << (50639u % 32u));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(min(global0.ww, _wgslsmith_f_op_vec2_f32(global0.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), global0.yz)))));
    var var_0 = ~(vec4<u32>(~func_3(Struct_2(false, Struct_1(vec3<u32>(u_input.b, 14348u, 0u), arg_0.x, arg_0.yz, arg_0.yz, vec3<f32>(431f, global0.x, -858f))), Struct_2(false, Struct_1(vec3<u32>(3673u, u_input.b, u_input.b), arg_0.x, vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, false), global0.xyw)), vec4<f32>(-257f, -1777f, 624f, global0.x), arg_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(17613u, 30904u, 4294967295u), vec3<u32>(u_input.b, 40780u, u_input.b)), ~u_input.b, ~4294967295u & ~u_input.b) ^ _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(19772u, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 21167u, 55636u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u) | vec4<u32>(u_input.b, 1u, 0u, u_input.b), ~vec4<u32>(26663u, u_input.b, u_input.b, 0u), ~vec4<u32>(4294967295u, 87211u, u_input.b, u_input.b))));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    var var_0 = u_input.a;
    let var_1 = !vec2<bool>(arg_2.b.d.x || arg_2.a, !func_2(select(vec3<bool>(true, arg_2.b.d.x, false), vec3<bool>(arg_2.b.c.x, arg_2.a, true), vec3<bool>(arg_2.a, false, arg_2.b.d.x))));
    var var_2 = _wgslsmith_mod_i32(-max(select(1i, 1i, true), 47142i), -1i);
    let var_3 = arg_2;
    var_0 = -_wgslsmith_mult_i32(~u_input.a, 52258i);
    return u_input.a == (~(arg_1.x ^ -u_input.a) ^ countOneBits(min(u_input.a << (69171u % 32u), -63354i)));
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = select(vec3<bool>(-329f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(ceil(global1.x))), arg_0, false), select(!select(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, true), arg_0), vec3<bool>(arg_0, false, true), !arg_0), select(select(!vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, false, false), arg_0 || true), vec3<bool>(func_1(709f, vec2<i32>(u_input.a, u_input.a), Struct_2(true, Struct_1(vec3<u32>(u_input.b, u_input.b, 20146u), true, vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), global0.xyz))), false, arg_0), all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, false)))), true), vec3<bool>(true, true, arg_0));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)));
    global1 = _wgslsmith_f_op_vec2_f32(global0.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(1302f, global0.x)), -614f)))));
    var var_2 = Struct_3(-1170f, Struct_1(vec3<u32>(select(u_input.b, 4294967295u, arg_0), u_input.b, firstTrailingBit(u_input.b)) & abs(vec3<u32>(1u, 10865u, 5983u)), u_input.b >= reverseBits(~64850u), var_0.yx, !vec2<bool>(true, any(var_0.zz)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(select(200f, -1075f, var_0.x)))))));
    var_2 = Struct_3(var_2.b.e.x, var_2.b);
    return ~(-(~_wgslsmith_add_i32(1i << (var_2.b.a.x % 32u), _wgslsmith_div_i32(-12728i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~1u, u_input.b, _wgslsmith_add_u32(max(u_input.b, 74576u) & ~1u, 65191u) << (~abs(u_input.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(func_4(func_1(852f, vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-14619i, 0i), Struct_2(true, Struct_1(vec3<u32>(30335u, var_0.x, 20598u), true, vec2<bool>(true, false), vec2<bool>(false, false), global0.zxy)))), u_input.a), vec2<i32>(~reverseBits(u_input.a), -4842i) & ~(-vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, ~_wgslsmith_mod_u32(15877u, u_input.b), ~(4294967295u | var_0.x), ~(var_0.x | 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.b, var_0.x) ^ ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), ~(~(~vec4<i32>(2147483647i, u_input.a, u_input.a, 255i)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 16467u, 4294967295u, u_input.b), firstTrailingBit(vec4<u32>(28806u, var_0.x, 96269u, 23688u))) % vec4<u32>(32u))), vec2<i32>(-u_input.a, -firstLeadingBit(0i)));
}

