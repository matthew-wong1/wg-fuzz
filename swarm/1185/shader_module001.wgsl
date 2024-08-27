struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = !select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), true), vec3<bool>(select(false, false, true), false, (u_input.b >= u_input.b) && true));
    var_0 = !select(!select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), !var_0.x), vec3<bool>(var_0.x != !var_0.x, true, var_0.x), var_0.x);
    var var_1 = Struct_5(Struct_2(u_input.a & _wgslsmith_add_u32(17194u, abs(45734u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, _wgslsmith_div_f32(-1292f, 848f), -295f, -634f)) - vec4<f32>(838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1015f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-762f, 712f)), -910f)), Struct_2(~1u), select(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, true, true)), vec4<bool>(var_0.x, (arg_0.x << (u_input.b % 32u)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -5466i, arg_0.x), vec3<i32>(0i, -2147483647i, arg_0.x)), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x), !(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_2 = Struct_1(vec3<i32>(0i ^ _wgslsmith_mult_i32(arg_0.x, arg_0.x), arg_0.x, firstTrailingBit(2147483647i)) & min(vec3<i32>(0i, 0i, arg_0.x ^ arg_0.x), _wgslsmith_mult_vec3_i32(~vec3<i32>(6392i, arg_0.x, arg_0.x), abs(vec3<i32>(9501i, arg_0.x, 0i)))));
    var_1 = Struct_5(var_1.c, var_1.b, Struct_2(var_1.a.a), vec4<bool>(var_0.x, false, true, all(var_0.zz) && true));
    return arg_0.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_add_vec3_i32(~(-vec3<i32>(0i, -2147483647i, -2147483647i)), vec3<i32>(func_3(vec2<i32>(0i, -1i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(32965i, -1i), vec2<i32>(0i, -1i)), i32(-1i) * -1i, abs(select(-1i, -2147483647i, false)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(1u, all(vec4<bool>(true, true, true, true)), Struct_2(1u), func_2(~reverseBits(arg_0)), vec2<bool>(any(vec4<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), true, true)), true));
    var_0 = Struct_3(1u, true, Struct_2(~(~countOneBits(49260u))), func_2((firstTrailingBit(arg_0) ^ _wgslsmith_mod_vec4_u32(arg_0, arg_0)) ^ (arg_0 & vec4<u32>(var_0.a, u_input.b, u_input.b, arg_0.x))), select(var_0.e, vec2<bool>(var_0.e.x, !(var_0.b || var_0.b)), var_0.b));
    var var_1 = 714f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(-1020f, arg_1)), !var_0.e.x)), 626f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1176f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f * arg_1)));
    var var_2 = true;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(~(vec4<u32>(0u, 16202u, 1u, 0u) >> (select(vec4<u32>(u_input.b, 80u, 4038u, 0u), vec4<u32>(u_input.b, u_input.a, u_input.b, 0u), vec4<bool>(true, true, false, true)) % vec4<u32>(32u)))), 585f, 272f);
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + _wgslsmith_f_op_f32(216f + 1790f))))));
    let var_3 = ~vec2<u32>(var_0.a, 36171u);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(523f)) + 829f))));
    var var_4 = func_2(countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 51299u, 15311u, 1u), vec4<u32>(var_3.x, 4294967295u, 2059u, 4294967295u)))));
    let var_5 = Struct_2(abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(28951u, 37212u, 4294967295u, 123390u) >> (vec4<u32>(u_input.b, 4294967295u, var_3.x, var_0.a) % vec4<u32>(32u))), ~vec4<u32>(u_input.b, 0u, 4294967295u, 0u))));
    let var_6 = max(~(var_5.a >> (65724u % 32u)), ~u_input.b | ~(~abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~var_0.a), abs(~max(var_0.a, var_3.x)), countOneBits(reverseBits(_wgslsmith_div_u32(1u, 84730u))), 0u), -var_4.a.x, _wgslsmith_mult_vec2_i32(select(vec2<i32>(_wgslsmith_mult_i32(-22886i, -15197i), var_4.a.x), -func_2(vec4<u32>(7817u, var_6, 4294967295u, var_3.x)).a.xx, select(vec2<bool>(true, false), select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), vec2<bool>(false, var_1)), vec2<bool>(var_1, var_1))), _wgslsmith_div_vec2_i32(~func_2(vec4<u32>(var_6, 113366u, var_5.a, 4294967295u)).a.xy, var_4.a.zz)), var_4.a.x);
}

