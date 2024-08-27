struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_0.wzy)), arg_3.b, _wgslsmith_add_vec2_u32(arg_3.c, arg_3.b.ww));
    let var_1 = _wgslsmith_f_op_f32(-1317f + 110f);
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1f, 1135f), arg_3.b, var_0.b.zx);
    var var_2 = abs(arg_3.c.x);
    let var_3 = !(!(abs(-12501i) <= (1i >> (arg_3.b.x % 32u))));
    return countOneBits(firstLeadingBit(arg_3.b.yxz));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(718f, -406f, -700f), vec3<f32>(arg_0.a.x, arg_0.a.x, 110f)))))), ~arg_0.b, arg_0.c);
    let var_1 = any(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var_0 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) - arg_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_0.a.x, -1552f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(round(var_0.a)))), _wgslsmith_add_vec4_u32(arg_0.b, ~var_0.b) ^ ~firstTrailingBit(var_0.b), reverseBits(firstLeadingBit(var_0.c))), arg_0, ~(-countOneBits(31754i)) << (_wgslsmith_mod_u32(1u, var_0.b.x) % 32u), arg_0, _wgslsmith_sub_vec3_u32(vec3<u32>(~(var_0.b.x >> (4294967295u % 32u)), arg_0.b.x, abs(min(var_0.c.x, 1u))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -690f, -241f), vec4<f32>(1442f, arg_0.a.x, var_0.a.x, -1510f)), true, u_input.d, Struct_1(vec3<f32>(199f, arg_0.a.x, arg_0.a.x), arg_0.b, vec2<u32>(arg_0.c.x, arg_0.b.x))) & vec3<u32>(abs(arg_0.b.x), max(17538u, arg_0.b.x), 0u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.a.x - 1045f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1508f, -719f)), _wgslsmith_f_op_f32(f32(-1f) * -699f)))), var_0.b, abs(~var_0.b.yz >> (~arg_0.b.zz % vec2<u32>(32u))) & firstLeadingBit(vec2<u32>(10629u, arg_0.c.x)));
    return -u_input.b.yxy >> (var_2.a.b.ywy % vec3<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = 29535i;
    var var_1 = !(!(_wgslsmith_dot_vec3_i32(func_2(Struct_1(vec3<f32>(1017f, -339f, 1000f), vec4<u32>(0u, 1352u, 86161u, 4294967295u), vec2<u32>(7177u, 62003u))), select(u_input.a, u_input.a, true)) != reverseBits(func_2(Struct_1(vec3<f32>(-148f, -1431f, arg_3), vec4<u32>(32848u, 13396u, 33278u, 0u), vec2<u32>(33484u, 4294967295u))).x)));
    var_1 = true;
    var var_2 = ~0u;
    var var_3 = select(vec3<bool>(true, true, arg_0), !vec3<bool>(true, arg_0, all(vec3<bool>(true, true, arg_0))), vec3<bool>(arg_0, (arg_0 & true) && true, true));
    return ~9161u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(~max(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 3940u, 0u, 0u))), select(~func_1(true, u_input.c, -u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1143f)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(48373u, 1u, 4294967295u, 0u), vec4<u32>(4594u, 1u, 63435u, 4294967295u)), vec4<u32>(0u, 25906u, 0u, 0u)) | 1u, true));
    var var_1 = vec2<bool>(true, true);
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(min(var_0, 0u), 1u) << (~countOneBits(vec2<u32>(var_0, var_0)) % vec2<u32>(32u))), countOneBits(vec2<u32>(select(~12586u, var_0 >> (0u % 32u), true), var_0)));
    var_3 = ~abs(vec2<u32>(27358u, 26028u));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1470f, 1977f, -693f), vec3<f32>(1000f, -815f, 448f), var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-687f, -2160f, -907f)) + vec3<f32>(1f, 1f, 1f)))), abs(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15029u, var_0, 72621u), vec4<u32>(62387u, 29065u, 2632u, var_0)), ~vec4<u32>(5389u, var_3.x, var_0, var_0))), ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_3.x), vec2<u32>(var_3.x, var_3.x)) & reverseBits(vec2<u32>(var_0, 44415u))));
    let var_5 = Struct_2(Struct_1(var_4.a, ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.b.x, 4294967295u, var_0, 6700u), var_4.b), ~var_4.b), select(~(~vec2<u32>(var_4.b.x, 0u)), _wgslsmith_clamp_vec2_u32(var_4.c ^ vec2<u32>(var_4.b.x, 0u), var_4.b.xz, vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(var_0, 71027u)), vec2<bool>(all(vec2<bool>(true, var_1.x)), false))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, -217f, var_4.a.x) * _wgslsmith_div_vec3_f32(var_4.a, vec3<f32>(1000f, var_4.a.x, var_4.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1618f, var_4.a.x, -566f))), vec3<bool>(true, true, !var_1.x))), vec4<u32>(~(~0u), _wgslsmith_mult_u32(~33017u, 1u), var_3.x ^ ~var_3.x, 4294967295u), var_4.c), -max(abs(u_input.d), u_input.d), var_4, vec3<u32>(22598u, ~(~121219u), 4294967295u) >> (reverseBits(var_4.b.zxz) % vec3<u32>(32u)));
    var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(-u_input.b.x), i32(-1i) * -var_5.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2039f - var_4.a.x) + _wgslsmith_f_op_f32(-var_4.a.x))), var_4.a.x), select(var_4.c, var_4.c, vec2<bool>(var_1.x, countOneBits(2147483647i) != u_input.c)));
}

