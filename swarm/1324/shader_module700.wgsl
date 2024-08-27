struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1259f))));
    var_0 = 1765f;
    var var_1 = 1i;
    return select(abs(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.c.x), reverseBits(vec4<i32>(u_input.a, u_input.a, 2147483647i, 13747i)))), -countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 12938i, u_input.a, u_input.a), ~vec4<i32>(1i, u_input.a, u_input.c.x, u_input.c.x))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_2() -> vec2<bool> {
    let var_0 = !(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, true, false), true)));
    let var_1 = reverseBits(u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(func_3(), -vec4<i32>(u_input.c.x, u_input.c.x, 3498i, -39751i)) & vec4<i32>(_wgslsmith_div_i32(451i, 2147483647i) ^ func_3().x, _wgslsmith_div_i32(i32(-1i) * -19070i, 1i), u_input.c.x, _wgslsmith_div_i32(-u_input.c.x, u_input.c.x)), var_0.x, vec3<i32>(~(-25395i), ~firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(u_input.a, 2533i))) >> (~(~vec3<u32>(var_1, 32928u, var_1)) % vec3<u32>(32u)), var_0.zwx, var_0.x);
    var_2 = Struct_1(vec4<i32>(var_2.a.x, u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, var_2.c.x), u_input.a), !var_2.b, ~vec3<i32>(var_2.a.x, 9151i, abs(_wgslsmith_dot_vec3_i32(var_2.c, var_2.a.zyw))), var_2.d, true);
    let var_3 = Struct_1(vec4<i32>(countOneBits(u_input.a), func_3().x, 48329i, _wgslsmith_mod_i32(~(-u_input.a), firstLeadingBit(u_input.a >> (u_input.d % 32u)))), var_0.x, u_input.c, !vec3<bool>(var_0.x, true, !var_2.d.x), !any(select(var_0, !vec4<bool>(var_0.x, true, var_2.d.x, true), var_0)));
    return var_0.xx;
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = -51147i;
    return all(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))), !func_2(), !all(vec2<bool>(true, false))), vec2<bool>(true, true), select(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 335f)), _wgslsmith_div_f32(-1080f, -579f)) - -1012f), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b))));
    var_0 = false;
    var_0 = true;
    var var_1 = -230f;
    var var_2 = Struct_1(max(~(~(vec4<i32>(2708i, -34375i, 1i, 2147483647i) << (vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 1u) % vec4<u32>(32u)))), max(countOneBits(-vec4<i32>(u_input.a, u_input.c.x, -16814i, u_input.a)), vec4<i32>(u_input.c.x | u_input.a, select(0i, u_input.c.x, false), reverseBits(u_input.a), abs(-3151i)))), all(vec4<bool>(func_1(1f, u_input.b.x), true, true, any(vec4<bool>(true, false, false, true)) && true)), abs(u_input.c), vec3<bool>(false == !(4294967295u > u_input.b.x), true, true), true);
    let var_3 = _wgslsmith_f_op_f32(step(1136f, 388f));
    var_0 = true;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(var_2.a, ~vec4<i32>(1i, firstTrailingBit(var_2.c.x), ~1i, u_input.c.x)), ~reverseBits(vec2<i32>(1i, _wgslsmith_sub_i32(var_2.a.x, -20554i))), var_3, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, var_3, var_3, var_3)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1733f, 325f, var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * -366f) - var_3), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) - _wgslsmith_div_f32(701f, 117f))))));
}

