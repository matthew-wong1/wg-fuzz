struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, 2147483647i, -32853i, -1i, 1i, 34449i, 1508i, -40470i, 48081i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(714f, -1176f) + vec2<f32>(2245f, 344f)), vec2<f32>(_wgslsmith_f_op_f32(min(555f, -643f)), -1000f), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    var var_1 = Struct_1(vec3<u32>(u_input.b, firstLeadingBit(_wgslsmith_add_u32(u_input.e.x, ~1u)), _wgslsmith_sub_u32(u_input.c, firstTrailingBit(0u)) ^ _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, u_input.c, 1u), u_input.e.yzw), ~u_input.e.yyy)), u_input.c, firstTrailingBit(vec3<u32>(countOneBits(0u), ~0u << ((u_input.b | 30362u) % 32u), ~abs(36614u))), reverseBits(global0[_wgslsmith_index_u32(~80880u, 9u)]));
    var var_2 = -2147483647i;
    var var_3 = all(select(vec2<bool>(any(vec4<bool>(true, true, false, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(true, false), -209f <= var_0.x));
    let var_4 = var_1.a.x;
    return vec3<u32>(~32153u, 13175u << ((var_1.a.x ^ select(~u_input.e.x, 58240u, var_0.x <= var_0.x)) % 32u), ~_wgslsmith_mult_u32(~select(u_input.c, u_input.b, true), _wgslsmith_dot_vec4_u32(u_input.e << (vec4<u32>(var_1.c.x, 76299u, u_input.b, var_1.a.x) % vec4<u32>(32u)), abs(u_input.e))));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(~func_3(), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), _wgslsmith_add_u32(u_input.b, u_input.c)), 99119u) & u_input.b, ~_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 5509u), u_input.e.xxz)), min(~u_input.e.zzw, vec3<u32>(4294967295u, 24831u, 0u))), 0i);
    var_0 = Struct_1(var_0.a, ~_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.c & var_0.a.x, 0u, var_0.a.x, 58925u ^ var_0.a.x)), vec3<u32>(335u, var_0.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(~var_0.a), u_input.e.wyz)), firstLeadingBit((var_0.d ^ ~u_input.a.x) & u_input.a.x));
    let var_1 = !(!(!(var_0.c.x == min(var_0.c.x, var_0.a.x))));
    var_0 = Struct_1(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 33255u, 49868u), var_0.c ^ vec3<u32>(u_input.e.x, 896u, 4294967295u)), ~countOneBits(select(var_0.c, vec3<u32>(1u, var_0.b, u_input.c), true)), 56795i >= -_wgslsmith_dot_vec4_i32(vec4<i32>(1034i, 20208i, 24529i, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(-2147483647i, -20605i, 46893i, global0[_wgslsmith_index_u32(u_input.e.x, 9u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.b, u_input.b, 88554u, 12783u)), u_input.e.x, ~0u, firstLeadingBit(14922u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, u_input.c, 1u, 0u) | u_input.e, ~u_input.e, ~u_input.e)) & 1u, vec3<u32>(62167u, ~var_0.a.x, 0u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(42273i, 1i), vec2<i32>(2147483647i, var_0.d)), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 9u)], u_input.d), vec2<i32>(1i, global0[_wgslsmith_index_u32(var_0.a.x, 9u)]))), -vec2<i32>(var_0.d, var_0.d), _wgslsmith_mult_vec2_i32(~u_input.a, _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(u_input.a.x, var_0.d)))), ~u_input.a));
    var var_2 = Struct_1(u_input.e.yzy | var_0.a, u_input.b, ~firstTrailingBit(~(~u_input.e.xwx)), 0i);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-776f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 715f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)), 2284f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f * -1406f) * _wgslsmith_f_op_f32(max(1515f, _wgslsmith_f_op_f32(round(-513f)))))), _wgslsmith_f_op_f32(-1628f * _wgslsmith_f_op_f32(select(2716f, 1515f, !var_1))));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    var var_1 = max(u_input.e.zxx, firstTrailingBit(~(vec3<u32>(u_input.b, u_input.c, u_input.e.x) << (func_3() % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(424f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(func_2()).x));
    var_2 = var_0;
    return Struct_1(~firstTrailingBit(vec3<u32>(func_3().x, _wgslsmith_div_u32(u_input.c, 11308u), var_1.x)), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, var_1.x, u_input.c, 20342u))), ~u_input.e), ~(~vec3<u32>(func_3().x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, 62872u, var_1.x, var_1.x)), min(u_input.e.x, 28550u))), ~(~(~(-global0[_wgslsmith_index_u32(var_1.x, 9u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = true;
    var var_3 = ~(_wgslsmith_add_u32(~var_1.a.x, 4294967295u >> (1u % 32u)) ^ u_input.c) < _wgslsmith_sub_u32(var_1.a.x, 55634u);
    var_1 = Struct_1(func_3(), var_1.c.x, ~(~(~abs(vec3<u32>(2683u, var_1.a.x, u_input.e.x)))), var_1.d | -(-var_1.d ^ (var_1.d & 0i)));
    var_1 = func_1();
    let var_4 = Struct_1(abs(vec3<u32>(4294967295u, u_input.c, u_input.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~var_1.c), u_input.e.wyz), u_input.e.xzw), var_1.a, -var_1.d & reverseBits(var_1.d >> (min(1u, 0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(723f, var_0, var_0, -516f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(max(790f, -592f)), -1142f, _wgslsmith_f_op_f32(-var_0))))), max(min(~(~vec2<u32>(var_4.b, 0u)), u_input.e.wx | u_input.e.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.a.x, var_4.c.x), min(~u_input.e.zx, vec2<u32>(var_4.c.x, var_4.b)))));
}

