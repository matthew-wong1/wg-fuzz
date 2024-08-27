struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(477f, -1000f), vec2<f32>(-162f, -875f), vec2<f32>(491f, -369f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~min(~9205u, _wgslsmith_sub_u32(64390u, 21747u))), 3u)]);
    global0 = array<vec2<f32>, 3>();
    var var_1 = vec3<bool>(any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), true, all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))) && false);
    let var_2 = select(vec2<u32>(~(~90820u), ~abs(~0u)), ~((_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(15825u, 71185u), vec2<u32>(4294967295u, 51172u)) ^ ~vec2<u32>(7448u, 1u)) ^ reverseBits(vec2<u32>(1u, 1u))), true & var_1.x);
    let var_3 = 408f;
    return u_input.a;
}

fn func_2(arg_0: f32) -> Struct_5 {
    global0 = array<vec2<f32>, 3>();
    var var_0 = vec4<i32>(u_input.b.x, func_3(), u_input.b.x, abs(min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(-1i, u_input.b.x, 666i)))));
    var_0 = ~firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 1i, u_input.a) << (vec4<u32>(15650u, 19257u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 2147483647i, u_input.b.x, u_input.b.x)));
    var_0 = reverseBits((countOneBits(vec4<i32>(var_0.x, var_0.x, u_input.a, u_input.a) << (vec4<u32>(1u, 8825u, 28743u, 91941u) % vec4<u32>(32u))) << (vec4<u32>(~0u, 49785u, _wgslsmith_dot_vec3_u32(vec3<u32>(17254u, 0u, 1u), vec3<u32>(19530u, 4294967295u, 1u)), 30982u) % vec4<u32>(32u))) | ~vec4<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), u_input.b.x, _wgslsmith_div_i32(var_0.x, var_0.x), -2147483647i));
    var var_1 = var_0.x;
    return Struct_5(select(select(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, 65042u, 0u), vec3<u32>(35076u, 1u, 4237u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(10556u, 0u, 10452u), vec3<u32>(67422u, 1u, 23920u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<u32>(1u, 1u, 1u), true), ~50948u);
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    var var_0 = func_2(arg_0);
    let var_1 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(-u_input.a, func_3()));
    global0 = array<vec2<f32>, 3>();
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1163f - 783f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(723f * 1000f) - -813f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(sign(-762f)), true))) * 1f)));
    var var_1 = Struct_5(_wgslsmith_div_vec3_u32(abs(countOneBits(vec3<u32>(0u, 25495u, 16173u))), ~max(vec3<u32>(0u, 0u, 30943u), vec3<u32>(56181u, 56683u, 0u))) >> (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), 2293u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1978f, -357f)), _wgslsmith_f_op_f32(round(933f)))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, -814f))))), _wgslsmith_mult_i32(abs(u_input.a) | -418i, u_input.b.x), var_1.b, 1i, var_1.a.zz);
    global0 = array<vec2<f32>, 3>();
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, var_2.a) - vec3<f32>(var_2.a, var_2.a, 902f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 604f, -602f))), vec3<f32>(_wgslsmith_f_op_f32(-388f + 356f), var_2.a, _wgslsmith_f_op_f32(select(1575f, -888f, true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), -814f, _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-514f, var_2.a, var_2.a) + vec3<f32>(-474f, 886f, 332f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(923f, var_2.a, var_2.a) * vec3<f32>(var_2.a, -468f, 1221f))))), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(vec3<u32>(32883u, ~var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.a.yy, var_1.a.zx)), firstTrailingBit(var_1.a & vec3<u32>(var_2.e.x, 0u, var_2.e.x)))), countOneBits(var_1.a), _wgslsmith_div_u32(~23614u, 4294967295u));
}

