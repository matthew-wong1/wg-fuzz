struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_f_op_f32(round(arg_0.e)))), ~reverseBits(firstTrailingBit(vec3<u32>(u_input.e, arg_0.a, 1u))) | select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b, 0u, 21422u), ~vec3<u32>(49656u, 53416u, arg_0.a)), ~min(vec3<u32>(arg_0.b, 0u, 87600u), vec3<u32>(4294967295u, u_input.e, arg_0.b)), select(vec3<bool>(true, true, arg_0.d), !vec3<bool>(true, arg_0.d, arg_0.d), true)), arg_0.d);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a)))))));
    let var_2 = _wgslsmith_div_vec4_i32(arg_0.c, _wgslsmith_div_vec4_i32(arg_0.c, arg_0.c));
    return var_0.b.x;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = vec3<u32>(u_input.a, countOneBits(4294967295u), max(~(~4294967295u), ~u_input.a));
    var_0 = ((vec3<u32>(1u, _wgslsmith_div_u32(u_input.e, var_0.x), 62195u) ^ ~vec3<u32>(var_0.x, var_0.x, u_input.e)) | (select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(15390u, 10434u, u_input.a)), vec3<u32>(u_input.a, u_input.e, var_0.x) << (vec3<u32>(66866u, 17879u, var_0.x) % vec3<u32>(32u)), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true))) ^ (min(vec3<u32>(1u, 0u, 1u), vec3<u32>(u_input.a, 74387u, 1u)) | vec3<u32>(0u, 73499u, var_0.x)))) >> (vec3<u32>(4294967295u, _wgslsmith_clamp_u32(func_3(Struct_1(4294967295u, 1u, vec4<i32>(u_input.b, 11875i, 1i, -2147483647i), true, 497f)), u_input.e, _wgslsmith_div_u32(4294967295u, u_input.e)), ~(~(var_0.x | var_0.x))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(582f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f), 286f))), _wgslsmith_f_op_f32(max(-176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(1496f, -1389f), _wgslsmith_f_op_f32(trunc(-313f)))))));
    var_0 = vec3<u32>(func_3(Struct_1(42996u, u_input.a, -vec4<i32>(u_input.c, -2147483647i, u_input.d, u_input.b), false, 1f)), (48530u ^ firstTrailingBit(var_0.x)) & ~1u, 0u);
    var var_2 = any(!(!(!vec4<bool>(arg_0.x, false, arg_0.x, true))));
    return all(select(select(select(!vec4<bool>(arg_0.x, arg_0.x, true, false), !vec4<bool>(arg_0.x, false, arg_0.x, false), var_0.x >= var_0.x), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, false, true), arg_0.x), select(0u, u_input.a, arg_0.x) > u_input.a), select(!select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, false)), !vec4<bool>(arg_0.x, false, false, true), true), select(select(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, false, true, true), vec4<bool>(true, arg_0.x, false, true)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_0.x), select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(false, true, false, arg_0.x), arg_0.x)), !select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.e, -615f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * arg_0.e)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -346f);
    let var_1 = Struct_4(var_0.yz, any(!vec4<bool>(all(vec4<bool>(false, true, arg_0.d, false)), all(vec2<bool>(arg_0.d, false)), arg_0.d, arg_0.d)));
    var var_2 = func_2(vec2<bool>(u_input.e != ((u_input.a & arg_0.b) >> (1u % 32u)), var_1.b));
    let var_3 = arg_0.c.yw;
    let var_4 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(round(var_1.a)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e - arg_0.e)))));
    return vec3<u32>(~abs(~_wgslsmith_sub_u32(u_input.e, 0u)), firstLeadingBit(countOneBits(~reverseBits(0u))), _wgslsmith_mod_u32(1u, abs(~_wgslsmith_div_u32(var_4.a.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_2(-1921f), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(func_1(Struct_1(57387u, 61097u, vec4<i32>(1i, 17973i, 0i, 1i), false, 525f)), vec3<u32>(4294967295u, u_input.a, u_input.e), abs(vec3<u32>(u_input.e, 0u, u_input.e))) >> (abs(vec3<u32>(4294967295u, 4294967295u, 44382u) & vec3<u32>(0u, 25657u, u_input.e)) % vec3<u32>(32u)), max(~abs(vec3<u32>(u_input.a, 11377u, 1u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(85949u, 17358u, u_input.a), vec3<u32>(0u, 18277u, 4294967295u), vec3<u32>(0u, 0u, 0u)), vec3<u32>(1u, u_input.a, 40008u), vec3<bool>(true, false, true))), min(abs(vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(u_input.e, u_input.e, u_input.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 49647u), vec3<u32>(0u, 45455u, u_input.e)), ~vec3<u32>(u_input.e, 4294967295u, 14887u)))), all(vec4<bool>(true, true, true, true)) & (false || all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
    var var_1 = -632f;
    let var_2 = ~vec4<u32>(abs(var_0.b.x), 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, var_0.b.x, 1022u)), vec4<u32>(49742u, u_input.e, var_0.b.x, 1u) << (vec4<u32>(13573u, 51983u, 1u, u_input.a) % vec4<u32>(32u))), ~vec4<u32>(49417u, 3442u, 52372u, u_input.a) << (select(vec4<u32>(14723u, var_0.b.x, var_0.b.x, u_input.e), vec4<u32>(u_input.a, 13305u, 20968u, u_input.e), vec4<bool>(false, var_0.c, false, var_0.c)) % vec4<u32>(32u))), ~u_input.e);
    var var_3 = Struct_2(1389f);
    let var_4 = var_0.b;
    var_3 = Struct_2(1081f);
    let var_5 = _wgslsmith_clamp_i32(u_input.d, firstTrailingBit(firstTrailingBit(1099i)) ^ (abs(u_input.c) | u_input.d), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -1i), select(vec2<i32>(u_input.b, 12869i), vec2<i32>(-26432i, u_input.b), false)))) & ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(f32(-1f) * -282f)), var_2);
}

