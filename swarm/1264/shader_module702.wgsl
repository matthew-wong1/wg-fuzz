struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_5, 13>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global1 = array<Struct_5, 13>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), 849f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2050f - 1216f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1391f) + _wgslsmith_div_f32(-619f, -1086f)), -954f))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mod_u32(~0u << (_wgslsmith_mod_u32(u_input.a.x, 239u) % 32u), (36973u & u_input.a.x) >> (u_input.b.x % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1892f, -1401f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 1262f))) + var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, var_0.x, 519f) - vec3<f32>(var_0.x, -1183f, -1000f)))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-136f, var_0.x, 502f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, var_0.x, 1896f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-498f, -544f, var_0.x), vec3<f32>(-777f, var_0.x, 824f)) * _wgslsmith_div_vec3_f32(vec3<f32>(926f, var_0.x, var_0.x), vec3<f32>(-1596f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, var_0.x, 735f))))));
    return ~(~(~_wgslsmith_sub_u32(var_1.a.a, firstTrailingBit(35026u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec3<u32> {
    global0 = Struct_1(vec2<i32>(~_wgslsmith_mult_i32(min(u_input.c.x, -2147483647i), ~u_input.c.x), ~max(global0.a.x >> (69202u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -18480i, -19216i, u_input.c.x), vec4<i32>(global0.a.x, -2147483647i, 2147483647i, 0i)))));
    let var_0 = ~(0u ^ func_3(vec3<i32>(u_input.c.x, global0.a.x, u_input.c.x)));
    var var_1 = -1000f;
    global0 = Struct_1(u_input.c);
    var var_2 = 48877i;
    return select(~abs(vec3<u32>(4640u, var_0, 0u) & (vec3<u32>(arg_0.x, var_0, var_0) >> (vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u, 165409u), ~_wgslsmith_sub_vec3_u32(u_input.a.yzx, vec3<u32>(u_input.a.x, 24932u, 11778u)))), false);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_u32(~select(~func_2(vec2<u32>(u_input.a.x, u_input.a.x), arg_3.yy), u_input.a.www, select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0), arg_0), select(vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false), arg_0), any(vec3<bool>(arg_0, arg_0, true)))), reverseBits(~u_input.a.zww));
    var var_1 = true;
    var_0 = u_input.a.zyw | abs(vec3<u32>(var_0.x, ~3297u, max(11454u, 4294967295u)) ^ ~(~u_input.a.ywy));
    var var_2 = countOneBits(vec2<i32>(-1i) * -arg_2.yy);
    global1 = array<Struct_5, 13>();
    return Struct_2(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2496f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-108f, 1139f)), 1154f)))), func_1(true, max(-vec2<i32>(global0.a.x, 2147483647i), select(global0.a, vec2<i32>(1i, 26943i), vec2<bool>(true, false))) & u_input.c, vec3<i32>(reverseBits(-26960i), max(global0.a.x, -2147483647i), reverseBits(global0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -562f, -1539f)) * vec4<f32>(-1382f, 1683f, 184f, 1276f)) - vec4<f32>(_wgslsmith_f_op_f32(-754f - -697f), -630f, _wgslsmith_f_op_f32(round(-472f)), _wgslsmith_f_op_f32(max(1550f, 2047f))))), Struct_3(Struct_2(~min(u_input.b.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1869f * 1109f))), 448f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -306f))), 1652f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * -277f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1024f, -1235f))), _wgslsmith_f_op_f32(-1f)))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x, abs(30151u), ~u_input.a.x), u_input.a.zwy & select(vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), u_input.a.wzz, false)));
    let var_1 = var_0.d.x;
    var var_2 = Struct_1(-vec2<i32>(global0.a.x >> (var_0.c.a.a % 32u), global0.a.x));
    var_2 = Struct_1(global0.a >> (var_0.e.yy % vec2<u32>(32u)));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(reverseBits(u_input.b.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyz, _wgslsmith_div_vec3_u32(var_0.e, u_input.a.wxz)), var_0.e.x)), _wgslsmith_dot_vec3_u32(var_0.e, _wgslsmith_clamp_vec3_u32(u_input.a.wyw, u_input.a.zwz, _wgslsmith_clamp_vec3_u32(u_input.a.wxy >> (vec3<u32>(22065u, var_0.c.a.a, 33825u) % vec3<u32>(32u)), var_0.e, countOneBits(u_input.a.yxx)))), var_0.c.a.a, func_3(firstLeadingBit(max(vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x) ^ vec3<i32>(u_input.c.x, var_2.a.x, global0.a.x), vec3<i32>(2147483647i, u_input.c.x, var_2.a.x)))));
    var var_4 = var_0.b;
    global1 = array<Struct_5, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-3564i);
}

