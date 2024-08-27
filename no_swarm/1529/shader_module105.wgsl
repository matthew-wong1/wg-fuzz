struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = u_input.b.wy;
    var var_1 = arg_0.b;
    var_0 = u_input.b.wy;
    var_0 = _wgslsmith_mult_vec2_i32(u_input.b.wx & _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b.c, arg_0.b.c << (arg_0.b.b.x % 32u)), reverseBits(~vec2<i32>(arg_0.b.c, -2147483647i))), u_input.b.yy);
    var_0 = vec2<i32>(var_1.c, _wgslsmith_sub_i32(-13499i, 20036i)) ^ ~firstTrailingBit(vec2<i32>(-1i, var_0.x) << (vec2<u32>(var_1.b.x, 1018u) % vec2<u32>(32u)));
    return max(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 32027u), _wgslsmith_add_u32(u_input.a | 9095u, 19341u)), (max(0u, arg_0.b.b.x) & max(_wgslsmith_add_u32(var_1.b.x, arg_0.a.x), abs(u_input.a))) ^ 65261u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(624f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-918f, -590f)) * _wgslsmith_f_op_f32(max(-1904f, -445f)))) - 265f), (arg_1.wxw >> (arg_1.xxw % vec3<u32>(32u))) & (arg_1.wyz | arg_1.yyx), firstTrailingBit(reverseBits(u_input.b.x) << (arg_1.x % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(-1038f)))))), abs(vec3<u32>(arg_2, _wgslsmith_dot_vec2_u32(var_0.b.yx ^ vec2<u32>(arg_0, 0u), ~arg_1.zw), arg_2)), _wgslsmith_div_i32(-2572i, 2147483647i));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.b.yz), min(var_0.b.xy, firstLeadingBit(~arg_1.wz))), _wgslsmith_mult_u32(~arg_0, _wgslsmith_add_u32(arg_1.x, 95359u)));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(-1i, 3064i, u_input.b.x, 27353i ^ (var_0.c ^ 2147483647i));
    var var_3 = select(select(vec3<bool>(true, false, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), any(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)), vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false)), true)), vec3<bool>(!all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 1000f)) >= _wgslsmith_f_op_f32(floor(-698f))));
    return Struct_2(select(vec2<u32>(20400u, ~(~var_0.b.x)), firstLeadingBit(arg_1.xy), select(!var_3.xz, var_3.zz, !(!var_3.xx))), Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b, -1i));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) + -385f))), ~vec3<u32>(27777u, 0u, u_input.a), i32(-1i) * -1i);
    var var_1 = vec2<i32>(-7991i, ~(i32(-1i) * -2147483647i));
    var_1 = firstTrailingBit(~u_input.b.wz);
    let var_2 = func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, ~0u, 3333u, ~var_0.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, 100335u, 8402u) | vec4<u32>(u_input.a, 4294967295u, 8588u, 11671u), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 64079u) >> (vec4<u32>(u_input.a, 95921u, 4294967295u, 53753u) % vec4<u32>(32u)))) & u_input.a, ~vec4<u32>(max(u_input.a, 8618u) | 4294967295u, var_0.b.x, var_0.b.x ^ func_2(Struct_2(vec2<u32>(21203u, 4294967295u), var_0), vec3<f32>(var_0.a, 316f, -285f), true), u_input.a), 0u);
    var_1 = ~(-vec2<i32>(-_wgslsmith_add_i32(var_0.c, 23175i), -57306i));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_0, ~1i, u_input.b.x, -31093i), u_input.a);
}

