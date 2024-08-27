struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    return -vec3<i32>(_wgslsmith_clamp_i32(-68218i, arg_2.a, u_input.a) & 1i, i32(-1i) * -1i, -_wgslsmith_div_i32(-2147483647i, 3559i)) | _wgslsmith_add_vec3_i32(firstTrailingBit(~(~u_input.b)), _wgslsmith_mult_vec3_i32(~(u_input.b << (u_input.c.zzz % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, -1i))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(4294967295u, u_input.c.x)), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(19303u, 56316u), min(vec2<u32>(13249u, 17216u), vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c.zz) ^ ~u_input.c.wy));
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~u_input.b, -func_3(vec2<bool>(false, false), 4294967295u, Struct_1(u_input.a, false, true))), firstTrailingBit(20486i)), true, (u_input.b.x < _wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(-499i, -2147483647i))) & any(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, false, false, false)), true)));
    let var_2 = Struct_2(Struct_1(max(~var_1.a, 38157i), !any(!vec4<bool>(true, var_1.b, var_1.c, true)), all(select(select(vec3<bool>(false, var_1.b, true), vec3<bool>(true, true, true), var_1.b), vec3<bool>(var_1.c, false, true), true))), u_input.c.wz);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1934f), 645f, -112f))));
    return ~var_1.a;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = vec4<i32>(u_input.a, 1i, u_input.b.x, func_2());
    var_0 = vec4<i32>(~(-(~(-u_input.b.x))), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, var_0.x), vec3<i32>(0i, 33978i, -2147483647i))), u_input.a), -55719i), 52331i);
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.wz ^ firstLeadingBit(_wgslsmith_sub_vec2_u32(arg_0, u_input.c.zy))) >> (arg_0.x % 32u);
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-899f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(608f, 2199f)))), 753f, -571f));
    let var_3 = vec4<f32>(1193f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x) * _wgslsmith_f_op_f32(-161f - 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.a.x))))), -680f);
    return ~7843u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) | true);
    var var_0 = (0u >> (func_1(u_input.c.xx) % 32u)) | 27534u;
    global0 = any(vec2<bool>(all(vec3<bool>(true, true, select(true, false, true))), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x, firstTrailingBit(70004u), countOneBits(0u), ~(~4214u)), vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b.x, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -38474i)) & vec4<i32>(0i, u_input.a, u_input.a, 0i)), ~(-reverseBits(vec2<i32>(-2147483647i, u_input.b.x))));
}

