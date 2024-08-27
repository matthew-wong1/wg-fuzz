struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * _wgslsmith_f_op_f32(f32(-1f) * -2522f));
    var var_1 = abs(~(~(~vec4<u32>(4294967295u, 1u, arg_3, u_input.a))) ^ ~vec4<u32>(1u, firstLeadingBit(0u), _wgslsmith_clamp_u32(1u, arg_1.x, 35320u), 0u << (u_input.b.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, 1319f, 1000f, 2082f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1316f, -1137f, -501f, 1000f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(min(var_2.x, -1000f))) + 533f));
    global0 = !(44660u <= u_input.c);
    return _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), -vec2<i32>(arg_0.x, arg_0.x << (arg_2.x % 32u)) | vec2<i32>(arg_0.x, ~_wgslsmith_clamp_i32(2147483647i, arg_0.x, arg_0.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_3(vec4<i32>(~(-_wgslsmith_sub_i32(0i, arg_1.a.x)), firstLeadingBit(-13089i), arg_1.a.x, _wgslsmith_add_i32(~arg_1.a.x, 1i)), arg_1.b, all(vec3<bool>(false, arg_2, !(!arg_1.c))), arg_0);
    var var_1 = ~(-arg_1.a.yx);
    global0 = true;
    var_1 = _wgslsmith_div_vec2_i32(~(-(~var_0.a.yx)) & abs(vec2<i32>(select(arg_1.a.x, var_1.x, false), var_0.a.x >> (arg_1.d % 32u))), func_3(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-10901i, 21868i), vec2<i32>(17518i, var_1.x)), _wgslsmith_mult_i32(arg_1.a.x, var_1.x)), _wgslsmith_mult_i32(-26187i, countOneBits(arg_1.a.x)), ~(~var_1.x)), vec2<u32>(arg_0, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(arg_1.b.b, 0u))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, var_0.b.b, arg_1.b.b), vec3<u32>(u_input.a, u_input.a, 4294967295u))) & vec3<u32>(1u, 94204u, var_0.d), 0u));
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, u_input.a <= arg_1.d)), !(var_1.x < abs(13360i)), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.a.x, 2147483647i), arg_1.a.x) <= _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.zx, vec2<i32>(var_0.a.x, 16078i), var_0.a.xw), _wgslsmith_add_vec2_i32(var_0.a.yw, vec2<i32>(var_0.a.x, 24017i)))), !select(!vec3<bool>(var_0.c, var_0.b.a, true), !(!vec3<bool>(var_0.b.a, false, false)), !vec3<bool>(true, var_0.b.a, arg_1.b.a)), arg_1.b.a);
    return var_2.zy;
}

fn func_4(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), 745f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1115f))), 1000f)));
    var var_1 = Struct_1(func_3(countOneBits(vec3<i32>(~18276i, _wgslsmith_mult_i32(0i, 2195i), _wgslsmith_add_i32(1i, 18122i))), ~vec2<u32>(u_input.c, ~1u), vec3<u32>(select(u_input.b.x >> (36340u % 32u), ~0u, !arg_1), u_input.a, ~firstLeadingBit(u_input.b.x)), _wgslsmith_add_u32(max(u_input.a, _wgslsmith_mod_u32(7425u, u_input.b.x)), 13529u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 16699u), vec3<u32>(u_input.a, u_input.b.x, u_input.a)) % 32u))).x, abs(abs(vec2<i32>(1i, 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, -2147483647i)) << (abs(1u) % 32u));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1245f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-450f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-544f, 1000f, var_0.x), vec3<f32>(var_0.x, 1468f, var_0.x)) * vec3<f32>(arg_0, -615f, -2375f)))));
    var var_4 = true;
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    return !vec3<bool>(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1399f)))), all(func_2(arg_2.b, Struct_3(vec4<i32>(arg_1.c, 2147483647i, arg_1.c, arg_1.c), arg_2, arg_0.a, arg_0.b), false))), !any(select(vec2<bool>(false, arg_2.a), vec2<bool>(arg_0.a, true), false)), arg_0.a || all(select(vec3<bool>(true, false, arg_2.a), vec3<bool>(arg_2.a, false, arg_0.a), vec3<bool>(arg_2.a, false, true))));
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(~arg_0.a.x, firstTrailingBit(arg_0.a.x)), arg_0.a.xy), ~(-arg_0.a.zz), (arg_0.a.x & ~arg_0.a.x) & arg_0.a.x);
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, arg_0.d), countOneBits(vec3<u32>(87601u, 0u, u_input.b.x)), firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.b.x)))), ~(~min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, arg_0.d), vec3<u32>(11883u, arg_0.b.b, arg_0.d)), vec3<u32>(0u, arg_0.b.b, 1u))));
    let var_2 = abs(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, u_input.a, var_1, 39053u), vec4<u32>(var_1, 47844u, var_1, var_1)), vec4<u32>(var_1 & var_1, max(52510u, 4294967295u), ~150449u, var_1), ~vec4<u32>(u_input.a, 34898u, arg_0.d, 4294967295u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 113921u), vec4<u32>(1u, 14806u, u_input.c, u_input.a)) % vec4<u32>(32u))));
    global0 = any(!(!vec4<bool>(true, all(vec3<bool>(arg_0.c, false, arg_0.b.a)), !arg_0.b.a, true)));
    let var_3 = arg_0.b;
    return StorageBuffer(~(var_3.b >> (var_2.x % 32u)), countOneBits(71017u) >> (var_1 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_3(countOneBits(vec4<i32>(2147483647i, _wgslsmith_mult_i32(11303i, 24939i), -42879i, _wgslsmith_add_i32(2147483647i, -1i))), Struct_2(all(func_1(Struct_2(false, u_input.b.x), Struct_1(2525i, vec2<i32>(0i, -517i), 2147483647i), Struct_2(false, 1u))), 36117u), any(vec4<bool>(true, all(vec2<bool>(false, true)), true, all(vec2<bool>(false, true)))), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.a, 0u, u_input.b.x)))));
}

