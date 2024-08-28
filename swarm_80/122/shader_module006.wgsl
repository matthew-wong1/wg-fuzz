struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32) -> bool {
    var var_0 = ~(~(max(u_input.d.yxx, vec3<u32>(45013u, arg_1.x, u_input.d.x)) | (vec3<u32>(u_input.d.x, u_input.b, u_input.d.x) | vec3<u32>(1u, u_input.b, 3854u))) >> (~u_input.d.yyy % vec3<u32>(32u)));
    var_0 = vec3<u32>(~1u, select(min(var_0.x, firstTrailingBit(arg_1.x & 1u)), 0u, true), _wgslsmith_mod_u32(u_input.b, u_input.b) ^ firstTrailingBit(countOneBits(arg_1.x) ^ (var_0.x | arg_1.x)));
    var var_1 = min(arg_1.wx, vec2<u32>(u_input.b, firstLeadingBit(~1u)));
    let var_2 = vec4<i32>((i32(-1i) * -1i) << (u_input.d.x % 32u), ~_wgslsmith_add_i32(max(-1i, arg_2), countOneBits(_wgslsmith_div_i32(u_input.c.x, -40108i))), _wgslsmith_add_i32(max(57762i, _wgslsmith_dot_vec3_i32(u_input.a.xzx, ~vec3<i32>(-6411i, 0i, 2147483647i))), i32(-1i) * -27496i), _wgslsmith_div_i32(u_input.c.x, reverseBits(-15589i)));
    let var_3 = u_input.a.x;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = u_input.d.wzy >> (u_input.d.yzw % vec3<u32>(32u));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0.x, u_input.b, var_0.x)), u_input.d.yww, ~u_input.d.yxy), u_input.d.xxw, u_input.d.xyz);
    var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(u_input.d.wzw), ~firstTrailingBit(~(~vec3<u32>(4294967295u, var_1.x, 4057u))), firstTrailingBit(~vec3<u32>(1u, ~var_0.x, firstTrailingBit(4294967295u))));
    let var_2 = _wgslsmith_div_vec2_i32(u_input.a.xx, vec2<i32>(_wgslsmith_div_i32(~u_input.a.x, -arg_0.a.x), _wgslsmith_mod_i32(-1i, -u_input.c.x))) ^ ~countOneBits(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, -45454i), vec2<i32>(8461i, -6180i)));
    var var_3 = true;
    return arg_3.b.a;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = vec4<bool>(true, (func_2(select(vec2<bool>(false, true), vec2<bool>(true, false), false), u_input.d, ~30078i) | (u_input.b <= firstTrailingBit(44130u))) || all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false);
    let var_1 = Struct_4(var_0.ww, Struct_1(abs(func_3(Struct_1(vec3<i32>(0i, 2147483647i, arg_0), vec3<f32>(726f, -350f, 828f)), false, 932f, Struct_5(vec2<u32>(u_input.b, 1u), Struct_1(vec3<i32>(arg_0, -2147483647i, u_input.c.x), vec3<f32>(1154f, -1416f, 137f)))) | u_input.a.wyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1259f, 1000f, -1794f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, -1598f, -1200f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1087f, -239f, 1000f, 241f))) * vec4<f32>(_wgslsmith_div_f32(182f, 885f), _wgslsmith_f_op_f32(trunc(180f)), -565f, _wgslsmith_f_op_f32(floor(1550f))))), Struct_2(~vec2<i32>(1i, 1i), -u_input.a.x, 8351u), Struct_3(!(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(549f + -1119f) * -1718f), _wgslsmith_f_op_f32(abs(-421f))), Struct_2(vec2<i32>(abs(4805i), -arg_0), -2147483647i, 59127u), Struct_1(u_input.a.wzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-558f, 281f, 281f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2081f, 2266f, 791f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-395f, -1377f, 873f, -1357f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1198f, -1000f, -567f, 595f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, 937f, -1291f, -1752f) * vec4<f32>(-768f, 1000f, -2007f, -125f)))))));
    var var_2 = Struct_2(-u_input.a.xz, -arg_0, u_input.b);
    let var_3 = true;
    var var_4 = var_1;
    return Struct_4(var_1.e.a.zy, var_1.e.d, var_1.c, Struct_2(var_4.b.a.zy, ~firstLeadingBit(980i), var_2.c), var_4.e);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = any(vec2<bool>(arg_0.a.x || (1317f <= arg_0.c.x), arg_0.a.x));
    var var_1 = ~u_input.c;
    var_1 = u_input.a;
    let var_2 = ~u_input.d.xz;
    var_0 = select(arg_0.a.x, false, false);
    return Struct_2(vec2<i32>(u_input.c.x, ~1i), arg_0.d.a.x, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, -4577i)), ~vec2<i32>(-50987i, u_input.a.x))));
    var var_1 = -2147483647i;
    var_1 = ~(-_wgslsmith_mult_i32(min(-10208i, 0i), func_3(func_1(1i).e.d, func_2(vec2<bool>(true, true), u_input.d, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1256f), Struct_5(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<i32>(23366i, 1i, var_0.a.x), vec3<f32>(1000f, 1000f, 308f)))).x));
    var var_2 = Struct_5(~_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.d.xy), u_input.d.wx), func_1(firstTrailingBit(~u_input.c.x) << (~4294967295u % 32u)).b);
    var var_3 = !(!(!func_1(28839i).e.a.wxy));
    var var_4 = Struct_2(-_wgslsmith_mod_vec2_i32(var_2.b.a.xz, vec2<i32>(var_2.b.a.x, func_4(Struct_4(var_3.yy, var_2.b, vec4<f32>(-2151f, var_2.b.b.x, 594f, 967f), Struct_2(vec2<i32>(u_input.c.x, -2147483647i), -2147483647i, u_input.d.x), Struct_3(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), var_2.b.b.x, var_0, var_2.b, vec4<f32>(-319f, 1312f, -909f, 1233f)))).b)), _wgslsmith_mult_i32(~max(abs(var_2.b.a.x), ~20954i), -(~(-1i))), _wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 26518u), var_2.a)), _wgslsmith_mult_u32(0u, 1u))));
    var var_5 = -1790f;
    var var_6 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(245f)) + 1899f)));
    var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_1(reverseBits(var_0.b)).c.x))) - _wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(-790f + _wgslsmith_f_op_f32(round(func_1(-1i).e.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, 85678i, var_2.b.b.x);
}

