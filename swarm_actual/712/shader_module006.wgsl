struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global2: i32;

var<private> global3: vec3<i32> = vec3<i32>(0i, -62978i, -41481i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global3 = vec3<i32>(~((-1i | abs(global3.x)) << (1u % 32u)), -global3.x, global3.x << (23629u % 32u));
    let var_0 = abs(vec2<i32>(16610i, _wgslsmith_mult_i32(u_input.b, 0i)));
    global0 = countOneBits(23517u);
    global3 = abs(~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 25591i, u_input.b), vec3<i32>(2147483647i, u_input.b, -32580i)) ^ vec3<i32>(-var_0.x, abs(12459i), -global3.x)));
    var var_1 = -(~_wgslsmith_div_vec2_i32(var_0, var_0));
    return _wgslsmith_div_u32(u_input.a, u_input.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(vec4<u32>(u_input.a, u_input.a, firstLeadingBit(abs(u_input.a)), 1u));
    let var_1 = _wgslsmith_mult_vec4_u32(var_0.a << (_wgslsmith_mod_vec4_u32(~select(vec4<u32>(var_0.a.x, 1u, arg_1.x, 0u), var_0.a, true), var_0.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, _wgslsmith_sub_u32(countOneBits(u_input.a), 1u), 4294967295u, var_0.a.x), vec4<u32>(53301u, ~func_3(), _wgslsmith_add_u32(arg_1.x, _wgslsmith_add_u32(var_0.a.x, u_input.a)), var_0.a.x << (20005u % 32u))));
    global0 = reverseBits(0u);
    var var_2 = Struct_2((true && !all(vec2<bool>(false, true))) | select(!any(vec4<bool>(false, false, true, true)), true, !select(true, false, false)));
    var var_3 = Struct_1(vec4<u32>(13659u, 49414u, select(_wgslsmith_add_u32(~7090u, _wgslsmith_div_u32(4294967295u, 4294967295u)), ~_wgslsmith_mult_u32(1u, u_input.a), true), ~u_input.a));
    return arg_0.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(true);
    let var_1 = !select(select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.a, true), var_0.a), vec2<bool>(var_0.a, select(var_0.a, var_0.a, var_0.a)), var_0.a), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), true), _wgslsmith_sub_i32(~2147483647i, ~0i) >= _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(global3.x, u_input.b)));
    let var_2 = vec2<f32>(996f, _wgslsmith_f_op_f32(-2176f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-599f, -238f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(919f, -804f, -1400f, -583f))), ~vec3<u32>(u_input.a, 23399u, 4294967295u)))))));
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~18275u ^ _wgslsmith_add_u32(0u, u_input.a), ~(~u_input.a)), ~_wgslsmith_clamp_u32(min(7584u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27321u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(22772u, u_input.a))), 0u, _wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 42768u, u_input.a), vec4<u32>(u_input.a, 0u, 1u, u_input.a)), firstTrailingBit(vec4<u32>(46198u, u_input.a, u_input.a, u_input.a))), vec4<u32>(u_input.a, 86974u, ~48598u, u_input.a | u_input.a))));
    var var_4 = Struct_1(var_3.a);
    return StorageBuffer(var_4.a.xz, global3.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1118f - var_2.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.x, select(u_input.a, 19477u, true), _wgslsmith_div_u32(var_3.a.x, u_input.a)), max(~vec3<u32>(var_4.a.x, var_4.a.x, 4294967295u), var_3.a.zxw)) & (~(~vec3<u32>(var_3.a.x, u_input.a, var_4.a.x)) << (vec3<u32>(var_3.a.x, ~u_input.a, u_input.a) % vec3<u32>(32u))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits((global3.zx | global3.xy) & global3.yx) >> (~abs(~(~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u));
    var_0 = -(~vec2<i32>(reverseBits(10562i), var_0.x) | vec2<i32>(-2292i, firstLeadingBit(1i)));
    let x = u_input.a;
    s_output = func_1();
}

