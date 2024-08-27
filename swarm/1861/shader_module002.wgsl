struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32 = 1u;

var<private> global2: vec2<bool>;

var<private> global3: i32;

var<private> global4: array<vec4<bool>, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(abs(max(_wgslsmith_div_i32(u_input.a.x, firstTrailingBit(-6186i)), 2147483647i)), vec4<u32>(67813u, u_input.b, global0.x, _wgslsmith_mod_u32(~u_input.b, 4294967295u)), _wgslsmith_f_op_vec2_f32(select(arg_0.yx, vec2<f32>(-1535f, _wgslsmith_f_op_f32(min(1219f, arg_0.x))), select(select(!vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x)), select(select(vec2<bool>(false, global2.x), vec2<bool>(false, false), global2.x), vec2<bool>(true, true), !vec2<bool>(false, global2.x)), vec2<bool>(true, true)))), arg_1.b.zw);
    global3 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-u_input.a), vec3<i32>(abs(1i), _wgslsmith_mult_i32(var_0.a, u_input.a.x), -2147483647i), -countOneBits(vec3<i32>(var_0.a, arg_1.a, 65196i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(-u_input.a), vec3<i32>(-23808i, u_input.a.x, -1i), select(vec3<i32>(arg_1.a, u_input.a.x, -63579i), ~vec3<i32>(0i, u_input.a.x, var_0.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, arg_1.d.x), vec3<u32>(u_input.b, 1u, 29337u)) % vec3<u32>(32u)), select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, global2.x, false), false), vec3<bool>(true, global2.x, false), true))));
    global4 = array<vec4<bool>, 14>();
    var var_1 = true;
    var var_2 = Struct_1(select(7570i, 1i, global2.x), ~vec4<u32>(var_0.d.x, ~(~0u), ~(var_0.d.x & arg_1.b.x), 122977u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_1.c, var_0.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_1.c, arg_1.c, vec2<bool>(global2.x, true))))), !any(vec3<bool>(global2.x, global2.x, global2.x)))))), _wgslsmith_sub_vec2_u32(~((global0.xz ^ arg_1.d) >> (global0.yz % vec2<u32>(32u))), vec2<u32>(~44643u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), var_0.d))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.a.x, ~(-1i), reverseBits(2147483647i)), ~0i), vec4<u32>(5463u, _wgslsmith_dot_vec3_u32(~(~u_input.c), abs(u_input.c | vec3<u32>(global0.x, 35477u, u_input.b))), u_input.b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(10216u, countOneBits(43500u)), ~0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-531f, 2081f, global2.x))), _wgslsmith_f_op_f32(func_3(vec3<f32>(389f, 1517f, -1054f), Struct_1(u_input.a.x, vec4<u32>(9482u, 0u, global0.x, 1u), vec2<f32>(-1025f, 889f), global0.xz)))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-420f, _wgslsmith_f_op_f32(-1207f * -1000f))))), min(u_input.c.xy & vec2<u32>(_wgslsmith_add_u32(12249u, 0u), 0u), u_input.c.xx));
    global0 = u_input.c;
    let var_1 = Struct_1(~(-var_0.a), ~var_0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, -172f), var_0.c, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), -356f) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-208f + var_0.c.x))), select(vec2<bool>(true, all(vec2<bool>(arg_0, true))), select(!vec2<bool>(arg_0, false), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), arg_0), vec2<bool>(arg_0, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 30981i, -8238i, 24561i), vec4<i32>(20148i, u_input.a.x, u_input.a.x, u_input.a.x)) != select(2147483647i, 2147483647i, arg_0)))), global0.zx);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1847f, var_1.c.x)), _wgslsmith_f_op_f32(var_1.c.x * var_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1500f, -1000f)) - var_1.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1174f + -1096f) - _wgslsmith_f_op_f32(-100f + var_0.c.x)) - var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))))) <= 705f;
    return var_0.a;
}

fn func_1() -> i32 {
    global2 = !(!vec2<bool>(select(true, select(global2.x, global2.x, global2.x), true | global2.x), false));
    let var_0 = Struct_1(_wgslsmith_sub_i32(u_input.a.x, func_2(true)), reverseBits(vec4<u32>(~(~global0.x), global0.x, 4294967295u, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.c.x, 17919u, 6492u, 29147u))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, -568f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(319f, -717f) * vec2<f32>(-1655f, -2162f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, -964f)))), false)), ~vec2<u32>(4425u, 1u));
    let var_1 = ~abs(abs(~26358u & u_input.b));
    let var_2 = !vec2<bool>(false, !(~9537u == ~u_input.c.x));
    let var_3 = select(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, var_0.a, u_input.a.x), -1i), min(u_input.a.x, -5103i), all(vec4<bool>(false, false, global2.x, global2.x)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zy;
    global3 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(27265i, -1i)), 0i), var_0.x) | _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mult_i32(0i, firstTrailingBit(-1i))), max(-1i, 63507i), func_1());
    var var_1 = !vec4<bool>(all(vec3<bool>(global2.x, true, true)), false, global2.x, true);
    var var_2 = Struct_1(18052i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, 0u), _wgslsmith_clamp_u32(global0.x, 7632u, ~u_input.b)), ~1u, abs(u_input.c.x), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(f32(-1f) * -133f)) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -674f)), firstLeadingBit(global0.zy));
    global2 = !(!(!select(vec2<bool>(false, global2.x), vec2<bool>(true, global2.x), vec2<bool>(var_1.x, var_1.x))));
    let var_3 = Struct_1(-21808i, max(~(~var_2.b), ~vec4<u32>(1u, 62568u, _wgslsmith_div_u32(u_input.b, 11255u), _wgslsmith_dot_vec3_u32(var_2.b.yww, vec3<u32>(global0.x, global0.x, 1024u)))), vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c.x * var_2.c.x))))), select(min(_wgslsmith_add_vec2_u32(vec2<u32>(18444u, 12065u), ~var_2.d), _wgslsmith_clamp_vec2_u32(max(u_input.c.zz, var_2.d), ~vec2<u32>(63711u, 9881u), countOneBits(u_input.c.zz))), _wgslsmith_mult_vec2_u32(var_2.d, select(var_2.b.xy, _wgslsmith_sub_vec2_u32(global0.xx, vec2<u32>(var_2.b.x, 1u)), false)), select(var_1.ww, vec2<bool>(var_2.c.x < 2018f, true), !var_1.x)));
    let var_4 = var_3;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(var_0.x, var_5.a, var_5.a, var_3.a) ^ vec4<i32>(0i, var_4.a, var_4.a, var_2.a))), abs(vec4<i32>(i32(-1i) * -580i, ~(-1i), -1i, var_0.x))), var_5.a);
}

