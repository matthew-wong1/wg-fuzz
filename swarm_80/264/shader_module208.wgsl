struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -139f);
    let var_1 = u_input.b.x;
    let var_2 = arg_1.x;
    var var_3 = u_input.b.x;
    var var_4 = Struct_3(0u);
    return countOneBits(~_wgslsmith_sub_vec2_u32(u_input.b.zx, select(~u_input.b.xx, ~u_input.b.wy, vec2<bool>(true, true))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, -437f) * vec2<f32>(-757f, 1496f)) - vec2<f32>(632f, -1166f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-766f, 1321f))), select(vec2<bool>(var_0, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))))));
    var var_2 = ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_1.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-14133i, 76887i, u_input.a.x, -39285i)) & -vec4<i32>(376i, u_input.a.x, u_input.a.x, -7376i), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -4747i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-214i, -1i, u_input.a.x, -21745i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)))));
    let var_3 = u_input.b;
    let var_4 = select(vec2<bool>(true, true), select(select(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), select(vec2<bool>(true, true), vec2<bool>(false, var_0), all(vec3<bool>(false, var_0, true))), select(!vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0), var_1.x >= var_1.x)), select(vec2<bool>(var_0, all(vec3<bool>(true, var_0, var_0))), vec2<bool>(var_0, true), vec2<bool>(true, true)), -2504f >= var_1.x), var_0);
    return ~vec3<u32>(~var_2.x, 14768u, 0u);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = reverseBits(1i);
    var var_1 = max(min(_wgslsmith_sub_vec3_u32(u_input.b.zyx, _wgslsmith_clamp_vec3_u32(u_input.b.yww, vec3<u32>(arg_0.a, 0u, u_input.b.x), vec3<u32>(2192u, 0u, 0u))), vec3<u32>(~28017u, arg_0.a, ~133673u)), ~u_input.b.xwx) | min(~vec3<u32>(~u_input.b.x, reverseBits(0u), u_input.b.x ^ 1u), abs(vec3<u32>(_wgslsmith_mult_u32(0u, arg_0.a), arg_0.a, 53012u >> (u_input.b.x % 32u))));
    var_1 = ~(~func_2(vec4<u32>(var_1.x, 4294967295u, 47308u, var_1.x), Struct_3(38400u))) ^ abs(~vec3<u32>(u_input.b.x, 48276u, 3261u) ^ countOneBits(vec3<u32>(1u, var_1.x, 0u)));
    var var_2 = Struct_2(vec4<f32>(-519f, _wgslsmith_f_op_f32(select(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1752f), !all(vec4<bool>(true, false, true, true)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1031f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(153f, 965f) + _wgslsmith_f_op_f32(-432f - 1678f)))));
    var var_3 = vec3<u32>(~var_1.x, 14145u, 1u);
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 611f, var_2.a.x, -165f), var_2.a, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1507f, var_2.a.x, var_2.a.x, -1460f))))))), vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(14114u), min(8670i, -52720i));
    let var_1 = var_0.a.ww;
    let var_2 = vec3<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)) || true, true, true);
    let var_3 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, u_input.a.x, u_input.a.x, -34992i), vec4<i32>(u_input.a.x, u_input.a.x, 49523i, u_input.a.x)), vec4<i32>(-1i, -95216i, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, 43884i, 43998i, u_input.a.x)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.a.x), vec4<i32>(-74574i, -27438i, -25864i, -31718i), true) ^ ~vec4<i32>(2147483647i, u_input.a.x, 21i, 2147483647i), -vec4<i32>(40031i, u_input.a.x, 2147483647i, 17791i))), vec4<u32>(func_2(u_input.b, Struct_3(63085u)).x, 0u, u_input.b.x, ~11604u ^ (0u >> (u_input.b.x % 32u))) & reverseBits(u_input.b >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))), _wgslsmith_div_f32(-279f, -762f), _wgslsmith_f_op_f32(-var_0.a.x), var_2.x);
    let var_4 = Struct_3(~(~(~0u)));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-func_1(Struct_3(4294967295u), var_3.a.x).a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(var_1.x))))) * var_0.a.x));
    var var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_6.x + -657f), var_6.wyy, _wgslsmith_mod_vec3_u32(var_3.b.ywz, u_input.b.zwx), ~var_3.b.yzw, var_3.b.x);
}

