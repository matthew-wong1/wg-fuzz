struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    var var_0 = ~reverseBits(u_input.a.xx | _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(19035u, 14372u)), ~u_input.b.zy, firstLeadingBit(u_input.b.xz)));
    var_0 = ~_wgslsmith_mod_vec2_u32(u_input.b.zz, _wgslsmith_mod_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.b.x, var_0.x)), max(~u_input.b.yx, vec2<u32>(u_input.b.x, var_0.x))));
    var_0 = vec2<u32>(u_input.a.x, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(51900u, 36763u))));
    let var_1 = false;
    let var_2 = Struct_1(arg_3.a.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -928f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * -2012f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1263f)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_3(vec4<bool>(true, true, arg_3.a, arg_3.a));
    var var_1 = !select(select(vec4<bool>(!arg_3.a, var_0.a.x, false, !arg_3.a), var_0.a, arg_3.a), vec4<bool>(true, func_3(max(0i, 42724i), ~220i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-124f, 180f, 331f, arg_2))), var_0), var_0.a.x, !(var_0.a.x || true)), !all(select(var_0.a, vec4<bool>(false, arg_3.a, arg_3.a, true), var_0.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1951f, 1280f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-443f, 1068f, _wgslsmith_f_op_f32(-arg_2)))));
    let var_3 = Struct_3(!var_0.a);
    var var_4 = Struct_3(!(!select(vec4<bool>(true, var_3.a.x, var_3.a.x, true), vec4<bool>(var_3.a.x, var_0.a.x, false, arg_3.a), true)));
    return 1u;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~(reverseBits(-(~vec4<i32>(62968i, arg_0.x, 0i, arg_0.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(2607u, abs(26070u), func_2(vec2<u32>(u_input.a.x, 6939u), 0u, 511f, Struct_1(true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x))), abs(u_input.a), u_input.a) % vec4<u32>(32u)));
    var var_1 = Struct_3(vec4<bool>(false, true, true, !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false))));
    let var_2 = Struct_3(var_1.a);
    var_1 = Struct_3(var_2.a);
    var_1 = Struct_3(!vec4<bool>(var_2.a.x, (arg_0.x | 34077i) > ~(-14739i), any(select(var_2.a, var_1.a, var_1.a.x)), var_2.a.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-_wgslsmith_mult_i32(i32(-1i) * -2147483647i, i32(-1i) * -1i) << (func_1(vec3<i32>(i32(-1i) * -9208i, -2147483647i, _wgslsmith_clamp_i32(-2147483647i, -29189i, 1i))) % 32u));
    let var_1 = -228f;
    let var_2 = Struct_3(!vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), false, !(var_1 > var_1)));
    let var_3 = false | !var_2.a.x;
    let var_4 = Struct_2(Struct_1(!all(var_2.a.yx)), 18309i, var_3, !var_2.a.ww, u_input.b);
    let var_5 = vec3<i32>(_wgslsmith_sub_i32(var_4.b, -_wgslsmith_add_i32(~2147483647i, 11122i)), 0i, abs(var_0));
    var var_6 = u_input.a << (~(~_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))) % vec4<u32>(32u));
    var_6 = vec4<u32>(45415u, 4294967295u, _wgslsmith_mult_u32(var_4.e.x, countOneBits(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, 3924u)))), var_6.x << (var_6.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_4.e), vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(3008u, 4294967295u, 1u, var_4.e.x))), ~0u, var_4.e.x), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~((18736u & var_6.x) ^ var_6.x), ~abs(~var_6.x), u_input.a.x), -688f);
}

