struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 2147483647i, -1i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    global0 = vec3<i32>(-1i, -(~_wgslsmith_div_i32(u_input.c, -2147483647i)), -12083i);
    global0 = vec3<i32>(-u_input.a.x, 1i, i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, 0i, 9122i), _wgslsmith_add_i32(global0.x, u_input.b)));
    global0 = -(countOneBits(select(vec3<i32>(-23269i, u_input.a.x, global0.x), abs(vec3<i32>(global0.x, u_input.a.x, 17152i)), false)) << (~vec3<u32>(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), _wgslsmith_mult_u32(19805u, 0u)) % vec3<u32>(32u)));
    let var_0 = Struct_5(!all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    global0 = -vec3<i32>(i32(-1i) * -1i, ~0i, reverseBits(1223i << (0u % 32u))) >> (firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 1u), vec3<u32>(u_input.d.x, u_input.d.x, 1u) | vec3<u32>(1u, u_input.d.x, 1u)))) % vec3<u32>(32u));
    return true;
}

fn func_2() -> Struct_1 {
    global0 = u_input.a.xxz;
    global0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-6213i, global0.x, global0.x), ~u_input.a.wzy), abs(global0.x), -1i);
    let var_0 = u_input.d;
    let var_1 = vec2<bool>(any(vec2<bool>(!func_3(), true)), (((30099u ^ u_input.d.x) < u_input.d.x) & (-1460f <= _wgslsmith_f_op_f32(trunc(-1008f)))) && true);
    var var_2 = min(_wgslsmith_div_vec4_u32(firstLeadingBit(select(vec4<u32>(40936u, 4294967295u, u_input.d.x, 11241u), vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.d.x), var_1.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(23056u, 0u, 4294967295u, u_input.d.x), vec4<u32>(var_0.x, var_0.x, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.d.x, 3142u, var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 44665u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, var_0.x, 69285u, 12044u), vec4<u32>(var_0.x, var_0.x, u_input.d.x, u_input.d.x)), !vec4<bool>(var_1.x, var_1.x, true, false)), ~firstTrailingBit(vec4<u32>(4294967295u, var_0.x, u_input.d.x, 4294967295u)))), ~(~(~(vec4<u32>(0u, u_input.d.x, 1u, var_0.x) ^ vec4<u32>(0u, 62037u, var_0.x, 22967u)))));
    return Struct_1(min(var_2.x & u_input.d.x, ~var_2.x), var_2.yxw);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    global0 = vec3<i32>(u_input.a.x, 20626i, -firstTrailingBit(arg_0 | 8530i) ^ arg_1.x);
    return Struct_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-839f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), 1f, _wgslsmith_f_op_f32(select(-1448f, _wgslsmith_f_op_f32(f32(-1f) * -998f), true))));
    let var_1 = func_1(-(~global0.x), -select(-vec2<i32>(u_input.a.x, global0.x), -vec2<i32>(u_input.a.x, u_input.b), select(false, false, true)) << (select(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), 4294967295u), ~u_input.d, select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))) % vec2<u32>(32u)), Struct_1(4294967295u, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) ^ ~vec3<u32>(0u, u_input.d.x, 0u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4761u, 4294967295u, 2466u), vec3<u32>(13512u, u_input.d.x, 104758u)))));
    var var_2 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    let var_3 = vec2<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), true);
    let var_4 = !(1173f == var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, reverseBits(_wgslsmith_div_u32(reverseBits(0u ^ var_1.a.b.x), var_1.a.b.x)));
}

