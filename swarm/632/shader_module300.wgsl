struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(0i, -29494i, 11133i), false, -6281i, 12493u);

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-26560i, global0.a.x, u_input.c, -16428i), vec4<i32>(u_input.c, u_input.c, 10346i, 2147483647i)), vec4<i32>(26763i, 0i, 23710i, -38942i)), ~vec4<i32>(0i, 33420i, -2147483647i, u_input.c)), ~abs(vec4<i32>(u_input.c, u_input.c, 43942i, -17578i) ^ vec4<i32>(global0.a.x, u_input.c, -2353i, global0.a.x))));
    let var_1 = _wgslsmith_add_u32(abs(global0.d), 49657u);
    let var_2 = true;
    global0 = Struct_2(max(-_wgslsmith_mult_vec3_i32(global0.a, global0.a), ~min(vec3<i32>(var_0.x, -2147483647i, -14250i), global0.a)), !any(select(select(vec3<bool>(false, false, var_2), vec3<bool>(true, false, false), vec3<bool>(var_2, true, global0.b)), select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(global0.b, global0.b, true), global0.b), select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, var_2, global0.b), vec3<bool>(true, false, true)))), i32(-1i) * -2147483647i, var_1);
    global1 = array<vec4<bool>, 14>();
    return u_input.a.xy;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_div_f32(-199f, arg_1.a.x))), arg_1.a, global0.b)));
    var var_1 = global1[_wgslsmith_index_u32(~global0.d, 14u)];
    global0 = Struct_2(global0.a, any(global1[_wgslsmith_index_u32(global0.d, 14u)]), 32850i, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(func_3(arg_1), _wgslsmith_add_vec2_u32(vec2<u32>(42114u, u_input.a.x) & u_input.a.xy, vec2<u32>(1561u, 4294967295u) ^ vec2<u32>(global0.d, u_input.a.x)))));
    let var_2 = u_input.b;
    var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(1u, global0.d))) ^ var_2.x, 14u)];
    return arg_1.a;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(724f, 891f) - vec2<f32>(-1422f, 201f)) - _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(false, global0.b, global0.b), Struct_1(vec2<f32>(134f, -1669f))))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(872f * 977f), _wgslsmith_f_op_f32(abs(-492f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 782f))))), Struct_2(~reverseBits(global0.a), !(!(global0.b || global0.b)), _wgslsmith_mult_i32(global0.c, -2147483647i | u_input.c), 0u), Struct_1(vec2<f32>(1f, _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(global0.b, true, false), Struct_1(vec2<f32>(793f, -3233f)))).x)), vec3<bool>(true, !global0.b && true, !global0.b));
    let var_1 = countOneBits(max(vec4<i32>(_wgslsmith_div_i32(-18821i, select(global0.c, global0.c, false)), _wgslsmith_dot_vec3_i32(abs(global0.a), abs(var_0.b.a)), global0.c, u_input.c), vec4<i32>(reverseBits(countOneBits(16188i)), var_0.b.c, var_0.b.c, _wgslsmith_add_i32(~global0.a.x, _wgslsmith_clamp_i32(var_0.b.a.x, 1i, -2147483647i)))));
    let var_2 = ~(~vec2<u32>(select(94772u, u_input.b.x, var_0.b.d > 17457u), min(44810u, 80419u) ^ ~var_0.b.d));
    var var_3 = ~2147483647i;
    var var_4 = select(vec2<bool>(false, global0.b), select(!vec2<bool>(!global0.b, var_0.d.x), vec2<bool>(false, (u_input.b.x != global0.d) && var_0.b.b), any(vec2<bool>(!global0.b, false))), all(select(!select(vec4<bool>(false, var_0.d.x, true, false), vec4<bool>(true, var_0.b.b, var_0.b.b, false), global0.b), vec4<bool>(false, all(vec4<bool>(true, true, global0.b, false)), u_input.c >= u_input.c, false), vec4<bool>(true, false, all(vec3<bool>(true, false, var_0.d.x)), any(vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b))))));
    return ~select(vec2<u32>(_wgslsmith_clamp_u32(~var_2.x, var_2.x, abs(var_2.x)), global0.d), u_input.a.zx, var_0.d.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(59730i, ~countOneBits(~(-global0.a.x)));
    var_0 = max(global0.c, ~3110i);
    var_0 = 31038i;
    global0 = Struct_2(max(global0.a, firstLeadingBit(global0.a << (select(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(50364u, u_input.b.x, 18769u), false) % vec3<u32>(32u)))), any(!(!(!vec3<bool>(true, global0.b, true)))), _wgslsmith_clamp_i32(u_input.c, u_input.c, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(37718i, -22957i, 9176i)), vec3<i32>(-1i, 4459i, global0.a.x) >> (u_input.a.xxy % vec3<u32>(32u))) << (4195u % 32u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(func_1()), u_input.b.zx));
    let var_1 = u_input.a.x;
    var_0 = max(-5811i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(893f - -1132f)))), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1, global0.d, 0u, 33815u), ~(~u_input.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f + -1338f) + _wgslsmith_f_op_f32(998f * 1195f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-267f - -1000f), -1000f) - vec2<f32>(_wgslsmith_f_op_f32(-325f + 579f), _wgslsmith_f_op_f32(step(-105f, 365f))))));
}

