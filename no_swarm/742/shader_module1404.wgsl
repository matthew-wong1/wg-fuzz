struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 6>;

var<private> global2: u32 = 36530u;

var<private> global3: vec3<u32> = vec3<u32>(0u, 29965u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> vec2<f32> {
    return arg_1.wz;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_5) -> u32 {
    let var_0 = Struct_1(!arg_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1745f, -125f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.a, -449f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1164f, -2085f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(global3.x, vec3<u32>(46551u, 1420u, arg_3.a.c.x), arg_3.a.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a, arg_3.a.a, arg_3.a.a, arg_3.a.a)), -global1[_wgslsmith_index_u32(5256u, 6u)], arg_3.a.c.x)), arg_2))), vec2<u32>(u_input.b, ~abs(_wgslsmith_div_u32(global3.x, arg_3.a.c.x))));
    global1 = array<i32, 6>();
    let var_1 = arg_3.a;
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a - arg_3.a.a)))), !select(var_1.b, !vec4<bool>(var_0.a, false, true, false), all(vec3<bool>(arg_2.x, false, true))), reverseBits(vec4<u32>(25344u, 4294967295u, var_1.c.x, var_0.c.x) >> (arg_3.a.c % vec4<u32>(32u))) >> (vec4<u32>(u_input.c, abs(var_0.c.x), abs(25944u), var_1.c.x << (21063u % 32u)) % vec4<u32>(32u)), vec4<i32>(~(i32(-1i) * -27006i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_3.a.c.x, 6u)], -2147483647i, 8672i), vec3<i32>(-9440i, 15019i, 0i)), u_input.e, -_wgslsmith_clamp_i32(-2147483647i, -16848i, global0.x)), arg_3.a.d.wwy));
    global1 = array<i32, 6>();
    return ~abs(abs(~4294967295u)) | u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    global2 = 40783u & ~(global3.x >> (~func_2(arg_2.x, vec2<i32>(21196i, 989i), vec2<bool>(false, arg_1), Struct_5(Struct_2(arg_0.b.x, vec4<bool>(false, false, arg_1, true), vec4<u32>(arg_0.c.x, u_input.c, arg_0.c.x, global3.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(arg_0.c.x, 6u)], 2814i, global1[_wgslsmith_index_u32(arg_0.c.x, 6u)]), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 6u)], -23004i, -36743i)))) % 32u));
    let var_0 = vec4<i32>(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, -41194i, 0i), vec3<i32>(global0.x, -46474i, arg_2.x)) >> (~vec3<u32>(arg_0.c.x, 0u, 26566u) % vec3<u32>(32u)), abs(vec3<i32>(-4616i, -63281i, -5704i))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(-vec3<i32>(1i, -64730i, 1i), vec3<i32>(-1i, -1i, -2147483647i)), abs(min(vec3<i32>(u_input.e, 1i, -36062i), vec3<i32>(-2147483647i, arg_2.x, -1i)))), ~(-u_input.d)), -_wgslsmith_clamp_i32(-26565i, global1[_wgslsmith_index_u32(1u, 6u)], -14047i), global1[_wgslsmith_index_u32(global3.x, 6u)]);
    let var_1 = Struct_4(vec3<u32>(60791u, min(global3.x, 9373u), abs(arg_0.c.x)), Struct_2(_wgslsmith_f_op_f32(-1000f - -485f), !(!vec4<bool>(arg_0.a, true, arg_1, arg_1)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 46498u, 13765u, arg_0.c.x), vec4<u32>(u_input.b, 85650u, u_input.a, u_input.b), vec4<u32>(1u, arg_0.c.x, 87988u, global3.x)) & max(vec4<u32>(113813u, 0u, u_input.a, u_input.c), vec4<u32>(global3.x, arg_0.c.x, 4294967295u, 45820u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.c.x, 1u, 27338u, 4294967295u), ~vec4<u32>(global3.x, 32211u, arg_0.c.x, u_input.a), ~vec4<u32>(arg_0.c.x, 2614u, 71836u, global3.x)), reverseBits(abs(var_0)), ~select(var_0.xxw, -var_0.wyw, select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_1, arg_0.a), false))), arg_2.x, ~u_input.c >> (min(global3.x, ~global3.x) % 32u));
    let var_2 = var_0.wz;
    var var_3 = var_1.b;
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, vec2<f32>(-1000f, 545f), global3.yz), all(vec3<bool>(true, false, true)), -vec2<i32>(global1[_wgslsmith_index_u32(0u, 6u)], -1i))) + -409f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1993f), -1684f))), 857f);
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(846f * _wgslsmith_f_op_f32(ceil(-362f))), vec4<bool>(true, true, true, true), countOneBits(vec4<u32>(global3.x, u_input.c, _wgslsmith_add_u32(61349u, u_input.b), _wgslsmith_mult_u32(global3.x, 44584u))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, -1i, u_input.e, global0.x), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global3.x, 6u)], -28552i, 1i), vec4<i32>(global0.x, u_input.d, global0.x, 0i)))), ~(-firstLeadingBit(vec3<i32>(-34316i, -1i, global0.x)))));
    global0 = var_1.a.d.wx;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(1u, 6u)], vec2<i32>(global0.x, _wgslsmith_div_i32(0i, -1918i)), -vec2<i32>(var_1.a.d.x, ~1i) ^ _wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.e, -30913i) >> (global3.zx % vec2<u32>(32u))), var_1.a.e.zy));
}

