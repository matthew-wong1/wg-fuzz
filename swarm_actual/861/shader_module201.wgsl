struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global0 = ~_wgslsmith_clamp_vec4_i32(abs(~(vec4<i32>(global0.x, -22393i, 2299i, 22338i) << (vec4<u32>(u_input.b, u_input.a.x, 6077u, 1u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_div_i32(-2147483647i, 19653i) ^ u_input.c, ~_wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, -15267i), global0.x ^ -1i), -_wgslsmith_mult_i32(-16729i, 48317i)), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(2147483647i), ~(-56191i), ~u_input.c, u_input.c << (4294967295u % 32u)), -(~vec4<i32>(-4667i, u_input.c, u_input.c, 1i))));
    global0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(global0.wy, global0.xz), 1i, 67140i, abs(_wgslsmith_mult_i32(global0.x, u_input.c) & u_input.c));
    var var_0 = Struct_2(Struct_1((u_input.c & ~global0.x) ^ 30908i, min(firstTrailingBit(u_input.d.x), ~u_input.a.x) | ~(~u_input.b), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))), select(vec2<bool>(28525u < u_input.d.x, all(vec3<bool>(false, true, false))), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(_wgslsmith_sub_i32(4430i, u_input.c << (53662u % 32u)) ^ u_input.c, abs(_wgslsmith_sub_u32(1u, abs(u_input.a.x))), vec3<bool>(true, true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    global0 = vec4<i32>(firstTrailingBit(~u_input.c >> ((abs(u_input.d.x) ^ ~var_0.b.b) % 32u)), ~(-1i), _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0.x, var_0.a.a, 0i)), _wgslsmith_add_vec3_i32(global0.xyy, vec3<i32>(-7279i, var_0.a.a, u_input.c))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.yxz, global0.xzz), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -10934i, 2147483647i, u_input.c), vec4<i32>(var_0.b.a, -2147483647i, global0.x, -16143i)), 1i), vec3<i32>(u_input.c, abs(u_input.c), 67346i))), -reverseBits(_wgslsmith_dot_vec3_i32(~global0.wxy, ~vec3<i32>(u_input.c, u_input.c, 5789i))));
    let var_1 = max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.a, u_input.c, -27139i), vec3<i32>(1i, select(global0.x, u_input.c, var_0.a.d.x), _wgslsmith_add_i32(1i, u_input.c))), firstTrailingBit(vec3<i32>(42192i, -63836i, u_input.c) << ((vec3<u32>(0u, var_0.a.b, var_0.b.b) << (vec3<u32>(21545u, var_0.b.b, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))) ^ global0.yyw;
    return countOneBits(vec4<i32>(1i | -u_input.c, 1i, var_1.x, ~(~var_0.b.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.b.b, ~4294967295u, var_0.b.b), select(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d.x), vec4<u32>(0u, 0u, 4294967295u, 6689u), vec4<bool>(false, var_0.a.c.x, false, true)), vec4<u32>(var_0.a.b, 2199u, 22419u, var_0.a.b), !vec4<bool>(true, true, true, var_0.a.c.x)), vec4<u32>(abs(34342u), 0u, 1u >> (u_input.a.x % 32u), _wgslsmith_div_u32(u_input.d.x, u_input.a.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1283f)) - 263f), 343f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1121f))));
    global0 = _wgslsmith_sub_vec4_i32(arg_0, _wgslsmith_add_vec4_i32(-vec4<i32>(-21541i, -1i, -1i, u_input.c), vec4<i32>(u_input.c << (4294967295u % 32u), ~arg_1.a.a, ~(-1587i), global0.x))) ^ arg_0;
    var var_2 = arg_1.b.b;
    global0 = firstLeadingBit(max(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-19110i, -2147483647i, arg_0.x, -2147483647i), arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c, 1i, global0.x), vec4<i32>(2147483647i, 5642i, arg_0.x, -68385i))), _wgslsmith_add_vec4_i32(~arg_0, vec4<i32>(arg_1.b.a, arg_1.b.a, u_input.c, arg_0.x)))) << (firstLeadingBit(reverseBits(vec4<u32>(1u, 6317u, _wgslsmith_mult_u32(arg_1.b.b, 3246u), _wgslsmith_add_u32(78737u, 32529u)))) % vec4<u32>(32u));
    return ~_wgslsmith_sub_i32(~1i ^ abs(arg_1.b.a), _wgslsmith_add_i32(-1i, ~global0.x));
}

fn func_2() -> i32 {
    var var_0 = vec4<i32>(-func_4(func_3(_wgslsmith_div_f32(-166f, 521f)), Struct_2(Struct_1(-4924i, 18245u, vec3<bool>(true, false, false), vec2<bool>(false, false)), Struct_1(u_input.c, 1u, vec3<bool>(false, true, false), vec2<bool>(false, true))), vec4<bool>(true, true, true, true)), -43086i, _wgslsmith_mult_i32(min(~global0.x, -12995i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -554i, max(u_input.c, 1i)), _wgslsmith_mod_i32(abs(u_input.c), _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)))), reverseBits(1i) << (u_input.a.x % 32u));
    global0 = vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(~2147483647i), func_3(_wgslsmith_f_op_f32(step(1273f, 1180f))).x, select(-u_input.c, var_0.x, 1i >= global0.x)), _wgslsmith_div_vec3_i32(func_3(_wgslsmith_div_f32(-326f, -1384f)).yzz, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(global0.xxy, vec3<i32>(global0.x, global0.x, 34770i)), reverseBits(vec3<i32>(-46077i, 0i, u_input.c))))), -(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -40664i, 1i, -38898i), vec4<i32>(-4876i, var_0.x, global0.x, -10679i)), vec4<i32>(2147483647i, var_0.x, -2147483647i, 2147483647i))), ~(-u_input.c));
    var var_1 = global0.xz;
    global0 = -_wgslsmith_div_vec4_i32(reverseBits(~(~vec4<i32>(var_0.x, 2147483647i, var_1.x, -13330i))), vec4<i32>(firstLeadingBit(-2147483647i), func_3(_wgslsmith_f_op_f32(round(269f))).x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_1.x, -1964i, global0.x), select(vec4<i32>(-1i, 2147483647i, -1i, var_0.x), vec4<i32>(u_input.c, u_input.c, global0.x, var_1.x), true)), -54439i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1386f + _wgslsmith_div_f32(-219f, 286f)));
    return global0.x >> (u_input.d.x % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec3<u32> {
    global0 = reverseBits(vec4<i32>((i32(-1i) * -14632i) & -firstTrailingBit(arg_1.a.a), func_2(), ~0i, -2147483647i));
    return ~max(~reverseBits(vec3<u32>(arg_1.b.b, u_input.a.x, 1u)) & reverseBits(select(vec3<u32>(0u, 979u, 4294967295u), vec3<u32>(63698u, arg_0.a.b, arg_0.b.b), arg_1.a.d.x)), vec3<u32>(arg_1.b.b, abs(_wgslsmith_add_u32(u_input.b, arg_1.b.b)), ~u_input.d.x >> (~1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, _wgslsmith_dot_vec3_u32(vec3<u32>(18438u, 4294967295u, u_input.a.x) ^ ~vec3<u32>(u_input.a.x, u_input.b, u_input.b), ~func_1(Struct_2(Struct_1(0i, 0u, vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(0i, 0u, vec3<bool>(true, true, true), vec2<bool>(false, false))), Struct_2(Struct_1(-1i, 8360u, vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(global0.x, 30488u, vec3<bool>(true, false, true), vec2<bool>(false, true))), vec4<i32>(global0.x, -31813i, -1i, -1i), true)) > firstLeadingBit(0u));
    let var_1 = vec4<f32>(-919f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1176f * _wgslsmith_div_f32(520f, 1694f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-938f, 635f)))), _wgslsmith_f_op_f32(step(-2476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f - 1524f) + _wgslsmith_f_op_f32(406f - -1346f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-715f - -834f), _wgslsmith_f_op_f32(1991f + -152f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(813f, -173f)), -493f)))));
    let var_2 = ((var_0.x || true) || false) && var_0.x;
    let var_3 = Struct_1(u_input.c, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, u_input.d.x), ~72142u) ^ 0u, select(vec3<bool>(!(!var_2), select(var_0.x, true, false && var_0.x), true), !select(select(vec3<bool>(false, false, var_2), var_0.wzy, var_2), var_0.wxw, !vec3<bool>(false, false, var_2)), vec3<bool>(true, false, true)), select(var_0.wx, vec2<bool>(any(var_0.wx), true), select(select(select(vec2<bool>(var_2, false), vec2<bool>(var_0.x, var_0.x), true), !var_0.ww, any(var_0.wy)), !select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), var_0.zx), var_0.yy)));
    global0 = ~select(countOneBits(vec4<i32>(select(global0.x, 5097i, false), select(var_3.a, 48580i, var_2), abs(u_input.c), 1i)), ~(-select(vec4<i32>(42394i, u_input.c, -34400i, global0.x), vec4<i32>(0i, var_3.a, 41406i, 10498i), vec4<bool>(false, false, false, var_3.d.x))), select(!vec4<bool>(false, false, var_2, var_2), !select(vec4<bool>(false, var_3.c.x, var_0.x, false), vec4<bool>(var_3.c.x, var_3.c.x, false, false), vec4<bool>(true, var_0.x, true, true)), !select(vec4<bool>(false, false, var_2, var_0.x), vec4<bool>(var_3.d.x, var_3.c.x, var_2, true), false)));
    let var_4 = func_1(Struct_2(Struct_1(~var_3.a >> (642u % 32u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.a), var_3.c, var_3.d), Struct_1(6007i, u_input.b, var_3.c, var_0.xy)), Struct_2(var_3, Struct_1(select(max(var_3.a, global0.x), countOneBits(u_input.c), any(vec4<bool>(var_3.c.x, var_3.d.x, var_2, var_3.d.x))), var_3.b, vec3<bool>(var_3.c.x & false, all(var_0.wxy), var_0.x), vec2<bool>(true, var_0.x))), -vec4<i32>(~(-1i), select(func_4(vec4<i32>(u_input.c, -1i, -2147483647i, u_input.c), Struct_2(Struct_1(var_3.a, var_3.b, var_3.c, var_0.zy), var_3), vec4<bool>(true, var_2, true, var_2)), u_input.c, var_3.c.x), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, 2147483647i, 2147483647i), vec3<i32>(0i, u_input.c, 0i) & vec3<i32>(-2147483647i, -1i, var_3.a))), var_3.d.x).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

