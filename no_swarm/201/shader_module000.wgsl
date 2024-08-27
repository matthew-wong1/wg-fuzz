struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> bool {
    return !any(vec4<bool>(true, true, ~u_input.a.x >= _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), !select(false, true, false)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = ~firstTrailingBit(abs(min(arg_0.a, vec2<i32>(-10250i, arg_0.a.x)))) >> (_wgslsmith_mult_vec2_u32(u_input.a.wz & ~(~u_input.a.wz), u_input.a.zw) % vec2<u32>(32u));
    let var_1 = Struct_3(Struct_2(~(~(arg_0.a & arg_0.a)), -2147483647i >> ((firstLeadingBit(u_input.a.x) | 22394u) % 32u)));
    var_0 = var_1.a.a;
    return countOneBits(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a << (u_input.a % vec4<u32>(32u)))) | ~(~max(u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_1(false, true, -48925i, 4294967295u);
    let var_1 = select(reverseBits(arg_0.yyw), arg_0.wyy, vec3<bool>(all(vec4<bool>(false, true, false != var_0.b, all(vec2<bool>(false, true)))), ~(var_0.d << (u_input.a.x % 32u)) > (select(var_0.d, var_0.d, var_0.a) & abs(4294967295u)), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-132f)))));
    let var_3 = u_input.a << (vec4<u32>(_wgslsmith_mod_u32(var_0.d, func_3(Struct_2(arg_0.xx, var_1.x), Struct_2(var_1.xz, arg_0.x))) << (65936u % 32u), _wgslsmith_mult_u32(var_0.d, abs(34520u)), _wgslsmith_clamp_u32(max(countOneBits(55184u), 5146u), _wgslsmith_mult_u32(~4294967295u, firstLeadingBit(0u)), firstTrailingBit(~0u)), select(u_input.a.x, 27982u, any(select(vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, false, var_0.a), var_0.a)))) % vec4<u32>(32u));
    let var_4 = vec2<u32>(34567u, ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(0u, countOneBits(35603u))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(select(select(vec2<i32>(-2147483647i, arg_3), vec2<i32>(-1i, u_input.b), true), vec2<i32>(2147483647i, 2147483647i), select(vec2<bool>(arg_2.x, false), arg_2.ww, arg_0)) << (~abs(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_div_i32(u_input.b, 1i ^ ~arg_3)));
    var var_1 = -vec2<i32>(-_wgslsmith_clamp_i32(var_0.a.b >> (1u % 32u), u_input.b, 0i), firstTrailingBit(u_input.b));
    var_1 = max(var_0.a.a, ~vec2<i32>(-1i, firstTrailingBit(-1i ^ var_0.a.b)));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(abs(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(-42913i, 0i))), var_0.a.a));
    var_1 = abs(var_0.a.a);
    return select(!arg_2, select(!select(arg_2, vec4<bool>(arg_0.x, arg_2.x, arg_0.x, true), all(vec2<bool>(arg_2.x, arg_0.x))), !(!select(vec4<bool>(arg_2.x, arg_0.x, false, true), arg_2, true)), !arg_2), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), any(vec2<bool>(false, false)))), false, func_1(), true), func_4(!vec2<bool>(true, all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 1u, 0u))) | (u_input.a << (~vec4<u32>(40544u, u_input.a.x, u_input.a.x, 805u) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, 3829i)), false, func_1(), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)), u_input.b), true);
    var var_1 = u_input.a.x;
    var_1 = 1u;
    var var_2 = Struct_3(Struct_2(~vec2<i32>(-39243i, countOneBits(13202i)), u_input.b));
    let var_3 = vec2<i32>(u_input.b, -7252i);
    let var_4 = _wgslsmith_div_f32(-227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1662f, -422f, true))))))));
    var_2 = Struct_3(Struct_2(var_3, reverseBits(1i) >> ((u_input.a.x & u_input.a.x) % 32u)));
    let var_5 = Struct_1(true, false, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(2147483647i, u_input.b), var_2.a.b >> (~0u % 32u))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(reverseBits(-1i), var_5.c));
}

