struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = ~(~(~(~abs(u_input.b))));
    let var_1 = true;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_div_f32(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1564f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))));
}

fn func_2() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1113f))), _wgslsmith_f_op_f32(func_3())), 1f, -377f);
    var var_1 = _wgslsmith_mod_i32(i32(-1i) * -select(-2147483647i, -69407i, true), -49214i);
    let var_2 = u_input.a;
    var_1 = i32(-1i) * -62594i;
    var_1 = ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(abs(-21896i), firstLeadingBit(72i), ~41594i)), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 52000i, 25650i), ~2147483647i, -2147483647i) | (vec3<i32>(-2147483647i, -2147483647i, 0i) ^ (vec3<i32>(7861i, -26829i, 43004i) << (vec3<u32>(24986u, u_input.a, 4294967295u) % vec3<u32>(32u)))));
    return -(-11247i << (max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, u_input.b, u_input.a), abs(vec4<u32>(var_2, var_2, 35576u, u_input.b))), 0u) % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(-max(1i, 0i), func_2()), -_wgslsmith_sub_i32(func_2(), -1i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(-300f)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f + -1380f) + 2514f), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(var_1.a * -379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.a)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - 598f), 1000f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, -723f), vec3<f32>(-649f, 131f, -764f), true)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, 1900f, -511f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2903f, var_1.a, -919f)))))), min(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 9745u), ~17988u, ~u_input.a, 6155u), vec4<u32>(~u_input.b, u_input.a | 61823u, ~1u, 39715u)) & (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), ~1u, ~u_input.b, u_input.b) | ~(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.b) >> (vec4<u32>(1u, 4294967295u, u_input.b, 1u) % vec4<u32>(32u)))));
    var var_3 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), !((var_0.x | 1i) > 1i)));
    var var_4 = vec4<i32>(firstLeadingBit(-abs(_wgslsmith_mult_i32(var_0.x, var_0.x))), func_2(), _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(27112i, var_0.x), var_0.x, _wgslsmith_clamp_i32(1i, var_0.x, var_0.x), 8255i), ~countOneBits(vec4<i32>(var_0.x, 0i, var_0.x, 19328i) & vec4<i32>(var_0.x, -9143i, var_0.x, 55758i))), -2147483647i);
    return Struct_2(vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), -1100f) + 2573f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_2.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, -1162f, var_1.a)) - var_2.a)), vec4<u32>(~(u_input.a ^ u_input.b) ^ (var_2.c.x << ((u_input.b & u_input.b) % 32u)), _wgslsmith_add_u32(u_input.a, u_input.b), _wgslsmith_sub_u32(var_2.c.x, ~0u), 57230u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true))), all(vec4<bool>(true, true, true, true)), true);
    let var_2 = vec4<i32>(-12221i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-44062i, -12551i, 2147483647i, -17923i), vec4<i32>(0i, 1i, 2147483647i, 6789i))), -(vec4<i32>(47320i, -1362i, -2147483647i, 23897i) >> (var_0.c % vec4<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(13945i, -1i) >> (_wgslsmith_mult_u32(var_0.c.x, 61966u) % 32u), 1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -18073i), vec2<i32>(1i, 1i)), ~(-vec2<i32>(41677i, 19471i))) & 68031i, max(func_2() >> (var_0.c.x % 32u), 21841i));
    var var_3 = ~(~var_0.c.zx);
    let var_4 = var_2.x;
    let var_5 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(503f, _wgslsmith_f_op_f32(f32(-1f) * -1560f), u_input.b <= 4294967295u)) * var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))), _wgslsmith_f_op_f32(1608f * _wgslsmith_f_op_f32(trunc(var_0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(203f + 564f)))))), -497f, var_0.c);
}

