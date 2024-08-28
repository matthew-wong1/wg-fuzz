struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: u32 = 39286u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, u_input.a > 3223u), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, _wgslsmith_add_i32(-2147483647i, 1i) < firstTrailingBit(u_input.b), true), vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(u_input.d < u_input.a, true, false)), vec3<bool>(true, true, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    return ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(3696u, _wgslsmith_sub_u32(42181u, 13522u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(96984u, 43822u), vec2<u32>(u_input.a, u_input.d))));
}

fn func_4(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = u_input.b;
    var var_1 = u_input.c.zxw;
    let var_2 = -39939i;
    var var_3 = vec2<bool>((all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))) == any(vec3<bool>(false, true, true))) || (~(~u_input.b) <= u_input.b), -206f >= _wgslsmith_f_op_f32(round(1f)));
    var var_4 = ~arg_0.x;
    return select(!(!select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(true, true, var_3.x), !var_3.x)), select(select(vec3<bool>(all(vec4<bool>(var_3.x, var_3.x, true, false)), any(vec3<bool>(var_3.x, var_3.x, var_3.x)), !var_3.x), vec3<bool>(true, false & var_3.x, var_3.x | true), select(select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, var_3.x, false), false), !vec3<bool>(true, var_3.x, var_3.x), !vec3<bool>(false, true, var_3.x))), vec3<bool>(var_3.x, all(!vec2<bool>(false, var_3.x)), true), !vec3<bool>(true, var_3.x, true)), !select(vec3<bool>(!var_3.x, var_3.x | var_3.x, !var_3.x), vec3<bool>(false & var_3.x, true, 18201i >= var_1.x), true));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> bool {
    return !any(select(func_4(func_3()), vec3<bool>(true, true, true), vec3<bool>(true, false, true)));
}

fn func_1() -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-482f, _wgslsmith_f_op_f32(-1474f - -1297f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-938f - _wgslsmith_f_op_f32(-1514f + -1121f)), _wgslsmith_f_op_f32(-978f + 481f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)))), Struct_3(_wgslsmith_sub_i32(2147483647i, countOneBits(_wgslsmith_mod_i32(u_input.c.x, -2147483647i))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(734f, 511f, -948f))), -u_input.c.xw, true, ~vec2<i32>(u_input.c.x, 8852i), vec3<bool>(false, false, false))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.d), ~(~vec2<u32>(u_input.d, 11104u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, -507f, 1043f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(642f, -1337f, -610f)))), -u_input.c.wy << (vec2<u32>(u_input.d, 37978u) % vec2<u32>(32u)), !func_2(u_input.d, u_input.c.ww), min(u_input.c.xz, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(-22385i, u_input.c.x))), vec3<bool>(true, true, false)), vec2<bool>(false, any(vec2<bool>(true, false)) | true)), vec2<i32>(u_input.b, _wgslsmith_clamp_i32(-u_input.b, -1348i, u_input.c.x)));
    var var_1 = firstLeadingBit(~((firstLeadingBit(vec4<u32>(var_0.c.c.x, u_input.d, var_0.c.c.x, var_0.c.c.x)) | vec4<u32>(var_0.c.c.x, 4294967295u, 95264u, 16045u)) | vec4<u32>(~var_0.c.c.x, var_0.c.c.x, 46822u, ~85103u)));
    global3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 37021u, 1u, ~firstLeadingBit(1u)), (_wgslsmith_clamp_vec4_u32(~vec4<u32>(12749u, var_1.x, 4294967295u, 7930u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.c.c.x, u_input.a, var_0.c.c.x), vec4<u32>(40395u, 94490u, 10193u, u_input.d)), ~vec4<u32>(64868u, var_1.x, u_input.d, 5247u)) << (vec4<u32>(25452u, reverseBits(0u), 1u, _wgslsmith_clamp_u32(u_input.d, 12830u, 101801u)) % vec4<u32>(32u))) | ~(~(~vec4<u32>(1u, var_0.c.c.x, 0u, u_input.d))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f) * _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(trunc(-277f)))));
    let var_2 = var_0.c.d.e.x;
    return _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, var_0.c.c.x), _wgslsmith_mod_u32(var_0.c.c.x, firstLeadingBit(firstLeadingBit(12565u)))) ^ var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(u_input.a, 4294967295u);
    global3 = func_1() >> (_wgslsmith_dot_vec3_u32(min(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(29054u, 4294967295u, u_input.a)), vec3<u32>(4294967295u, 8619u, u_input.d) | vec3<u32>(0u, 4294967295u, u_input.d)), abs(~vec3<u32>(0u, 104250u, 62759u))), vec3<u32>(reverseBits(u_input.d), func_1(), u_input.d)) % 32u);
    let var_0 = vec2<bool>(!all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), _wgslsmith_div_i32(-62419i << (u_input.a % 32u), _wgslsmith_clamp_i32(-u_input.b, ~u_input.c.x, ~u_input.c.x)) >= ~(-11759i));
    global3 = ~abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.d) << (~24346u % 32u), firstLeadingBit(1u << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-3099i);
}

