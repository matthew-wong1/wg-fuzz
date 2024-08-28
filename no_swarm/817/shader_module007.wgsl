struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2062f), 562f)))));
    let var_1 = Struct_2(firstTrailingBit(global0.a), ~(countOneBits(_wgslsmith_clamp_u32(4294967295u, 37144u, global0.b)) >> (reverseBits(~4294967295u) % 32u)));
    let var_2 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(false, false, false))));
    var var_3 = vec3<u32>(var_1.b, global0.b, _wgslsmith_dot_vec4_u32(abs(global0.a) & abs(select(global0.a, vec4<u32>(global0.a.x, global0.a.x, global0.b, global0.a.x), vec4<bool>(var_2.x, true, false, false))), var_1.a));
    var var_4 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(i32(-1i) * -2147483647i, arg_0 & u_input.a, -30109i) ^ _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, arg_0, u_input.a), -vec3<i32>(1i, arg_0, u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.a, arg_0), vec4<i32>(u_input.a, 26612i, arg_0, 20688i)) & (_wgslsmith_clamp_i32(u_input.a, arg_0, u_input.a) ^ max(u_input.a, 0i)), 24664i, abs(1i)));
    return 9463u;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec3<bool>((all(vec4<bool>(true, true, true, true)) | all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))) && (max(_wgslsmith_div_u32(global0.b, global0.a.x), _wgslsmith_dot_vec3_u32(global0.a.yzy, global0.a.www)) != global0.b), (abs(~17705i) >= -_wgslsmith_dot_vec2_i32(vec2<i32>(-18670i, -14267i), vec2<i32>(u_input.a, -28948i))) & true, true);
    global0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(max(global0.a.x, global0.a.x), 32519u, global0.b << (~94117u % 32u), 4294967295u), global0.a), func_3(_wgslsmith_sub_i32(u_input.a, -(38233i >> (0u % 32u)))));
    global0 = Struct_2(vec4<u32>(~_wgslsmith_mod_u32(1u, 75846u), 4294967295u, firstLeadingBit(select(0u, 4294967295u, var_0.x)), _wgslsmith_add_u32(global0.b, global0.a.x)) & global0.a, global0.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1112f * 330f))) - _wgslsmith_f_op_f32(abs(-1788f))), _wgslsmith_div_f32(792f, _wgslsmith_f_op_f32(1231f - -817f))));
    global0 = Struct_2(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(17066u, global0.a.x, global0.b, global0.a.x))), global0.a ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.b, global0.a.x, 28501u), vec4<u32>(global0.b, 1u, global0.b, global0.a.x)), global0.a)), abs(_wgslsmith_add_u32(global0.a.x, ~global0.b)) >> ((_wgslsmith_clamp_u32(abs(4294967295u), max(18136u, global0.b), 0u | global0.a.x) >> (76845u % 32u)) % 32u));
    return global0.a;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1420f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(971f)), -286f)))));
    var var_1 = abs(u_input.a) << (_wgslsmith_div_u32(min(global0.a.x, min(~global0.a.x, 56833u)), ~60213u) % 32u);
    var_1 = u_input.a;
    let var_2 = Struct_4(var_0.a);
    global0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, global0.b << (global0.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(22121u, global0.a.x), vec2<u32>(global0.a.x, global0.b)), _wgslsmith_clamp_u32(1u, 0u, 0u)) & func_2(), global0.a), 4294967295u);
    return Struct_3(Struct_1(-_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-10457i, 0i, -1i)), select(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-21626i, -45689i, u_input.a), vec3<bool>(false, false, true)), vec3<i32>(u_input.a, u_input.a, -2147483647i) | vec3<i32>(-28665i, -1551i, -1i))), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -12150i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))) ^ u_input.a, select(i32(-1i) * -2147483647i, u_input.a, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false))), u_input.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(min(vec3<i32>(1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a))), ~max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)))), Struct_2(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, global0.a.x, 4294967295u, global0.b), vec4<u32>(32225u, 15686u, 30279u, 1u))) << (vec4<u32>(~0u, ~43894u, 24490u, 9772u) % vec4<u32>(32u)), func_3(u_input.a)), var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(floor(-1238f)), false)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2().zw;
    var_0 = ~global0.a.wy;
    var_0 = ~(~vec2<u32>(_wgslsmith_mod_u32(var_0.x, global0.b) << (20493u % 32u), ~_wgslsmith_div_u32(4294967295u, 10537u)));
    var var_1 = Struct_4(713f);
    var var_2 = Struct_4(var_1.a);
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1120f, -420f, -551f) + vec3<f32>(-1000f, 2539f, 1748f))))))));
    let var_1 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2 == global0.b, all(vec2<bool>(true, false)), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))) & true;
    let var_2 = arg_0;
    let var_3 = ~global0.b;
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, arg_2, 63234u), select(global0.a.wyx << (vec3<u32>(4294967295u, global0.b, 72029u) % vec3<u32>(32u)), ~global0.a.yzw, true)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(~66385u, global0.a.x), global0.a.yz), 1u << ((0u >> (0u % 32u)) % 32u)), _wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_2, _wgslsmith_dot_vec2_u32(global0.a.xw, vec2<u32>(45962u, 5688u))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~8956u;
    var var_1 = true;
    var_0 = 18255u;
    global0 = func_5(func_4(func_1(), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 24045i, 2147483647i, u_input.a) & vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, ~(-1i), 2147483647i, 0i)), func_1().c), _wgslsmith_add_i32(~_wgslsmith_add_i32(reverseBits(u_input.a), ~1i), -2147483647i), global0.a.x);
    var_0 = ~abs(_wgslsmith_dot_vec3_u32(min(abs(global0.a.xxx), vec3<u32>(45948u, 66437u, global0.b)), (vec3<u32>(global0.a.x, global0.a.x, global0.a.x) << (vec3<u32>(global0.a.x, 48924u, global0.a.x) % vec3<u32>(32u))) & global0.a.yyx));
    let x = u_input.a;
    s_output = StorageBuffer(25855i);
}

