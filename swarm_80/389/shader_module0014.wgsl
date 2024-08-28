struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(463f, -607f, true))), 1017f), 350f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(954f)) * _wgslsmith_f_op_f32(floor(-321f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f - 129f))) + _wgslsmith_f_op_f32(max(770f, _wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(round(-1108f))))))));
    let var_1 = vec3<i32>(firstLeadingBit(-(i32(-1i) * -24074i)), u_input.a, 1i);
    let var_2 = Struct_2(vec2<i32>(abs(-var_1.x) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(59084u, 0u, 1u), 28602u) % 32u), 1i), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(60710u, 8u)], false, global0[_wgslsmith_index_u32(4294967295u, 8u)], false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(52577u, 8u)], true, false, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(1532u, 8u)], false, false), !global0[_wgslsmith_index_u32(27518u, 8u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(0u >> (0u % 32u), 8u)], true, true, global0[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(43287u, 8u)] || global0[_wgslsmith_index_u32(0u, 8u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(12154u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)])), select(global0[_wgslsmith_index_u32(32975u, 8u)], false, true)), !vec4<bool>(global0[_wgslsmith_index_u32(27600u, 8u)], global0[_wgslsmith_index_u32(34759u, 8u)], true, global0[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, max(10245u, 1u), _wgslsmith_div_u32(1u, 44432u), 1013u)) << (reverseBits(select(min(vec4<u32>(1u, 1u, 36882u, 86585u), vec4<u32>(4294967295u, 0u, 62052u, 0u)), firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), !global0[_wgslsmith_index_u32(46382u, 8u)])) % vec4<u32>(32u)), _wgslsmith_mod_vec3_i32(abs(~var_1), var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2107f * _wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f * -101f) + _wgslsmith_div_f32(469f, -118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) * -136f))));
    global0 = array<bool, 8>();
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -839f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x * var_2.e.x) - _wgslsmith_f_op_f32(-var_3.e.x)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) & -vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -38246i), min(vec2<i32>(34921i, 16209i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(52274i, u_input.a), global0[_wgslsmith_index_u32(57560u, 8u)]), -vec2<i32>(u_input.a, 2848i))), (vec2<i32>(1i, -14928i) ^ ~vec2<i32>(u_input.a, -34629i)) | vec2<i32>(-13125i, -52252i)), vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(46126u, 41975u), 8u)] && true, !(false && !global0[_wgslsmith_index_u32(5831u, 8u)]), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3())) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -725f)))), vec4<u32>(_wgslsmith_mod_u32(~(~97971u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(27527u, 0u, 0u, 25345u), vec4<u32>(0u, 0u, 1u, 8719u))), ~1u, ~abs(27835u), reverseBits(_wgslsmith_clamp_u32(4294967295u, 9798u, 0u) & ~4294967295u)), select(-vec3<i32>(1i, -2147483647i, ~u_input.a), -vec3<i32>(-u_input.a, u_input.a, i32(-1i) * -1i), all(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)], false), vec3<bool>(global0[_wgslsmith_index_u32(70905u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(ceil(446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(682f, 1000f, global0[_wgslsmith_index_u32(7456u, 8u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-569f, -1404f, -2356f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - _wgslsmith_f_op_f32(ceil(1236f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)), 477f, var_0.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(select(var_0.e.x, var_0.e.x, var_0.b.x)), var_0.e.x) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-4166f * 324f), 1125f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-145f, 613f, _wgslsmith_f_op_f32(trunc(-1143f)), 848f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(630f, -475f, _wgslsmith_f_op_f32(ceil(var_0.e.x)), _wgslsmith_f_op_f32(round(-561f)))))));
    var var_2 = _wgslsmith_mod_vec4_i32(-(~max(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -24214i, -8996i, -2147483647i), vec4<i32>(var_0.d.x, -1i, var_0.d.x, var_0.d.x)), vec4<i32>(-32042i, 1i, 0i, var_0.d.x))), ~(~vec4<i32>(u_input.a, var_0.a.x, -var_0.d.x, u_input.a)));
    let var_3 = var_0.c.x;
    var var_4 = Struct_2(select(var_2.zy, var_0.a | _wgslsmith_div_vec2_i32(~var_2.zw, -var_0.d.xx), (-21662i <= _wgslsmith_mult_i32(var_0.d.x, 2147483647i)) != any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], global0[_wgslsmith_index_u32(var_0.c.x, 8u)], var_0.b.x, global0[_wgslsmith_index_u32(var_0.c.x, 8u)]), var_0.b, vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], var_0.b.x, global0[_wgslsmith_index_u32(1u, 8u)], true)))), var_0.b, vec4<u32>(4294967295u & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 58327u, 4294967295u, var_0.c.x)), vec4<u32>(var_0.c.x, 49125u, 1u, 0u) | vec4<u32>(var_0.c.x, 2062u, 1u, var_0.c.x)), var_0.c.x ^ ~1u, 1u, ~0u), vec3<i32>(firstLeadingBit(-u_input.a) << (_wgslsmith_div_u32(var_0.c.x, var_0.c.x) % 32u), countOneBits(_wgslsmith_mod_i32(abs(var_0.a.x), _wgslsmith_div_i32(var_0.a.x, u_input.a))), ~(var_2.x >> (4294967295u % 32u)) & -2236i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2599f, var_1.x, var_1.x)))))) + vec3<f32>(-1000f, -866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1488f)))));
    return vec3<bool>(global0[_wgslsmith_index_u32(abs(min(~0u, var_0.c.x >> (104002u % 32u))), 8u)], all(var_0.b), var_0.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_2(select(~countOneBits(countOneBits(vec2<i32>(-13047i, u_input.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-6023i), select(-2147483647i, arg_2.a, arg_2.b.x)), -vec2<i32>(11936i, arg_0.a)), !vec2<bool>(arg_0.e.x, arg_0.e.x)), !select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 8u)] | arg_0.e.x, true, arg_2.e.x, true), !vec4<bool>(arg_0.e.x, true, arg_2.b.x, true), select(vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(true, true, arg_0.b.x, true), !vec4<bool>(false, true, true, arg_2.b.x))), ~abs(~vec4<u32>(4294967295u, 17245u, arg_0.d, 1u)), vec3<i32>(arg_2.a, arg_0.a, _wgslsmith_div_i32(arg_0.a, ~u_input.a) >> ((arg_0.d & abs(arg_0.d)) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(450f * arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, -414f) * _wgslsmith_f_op_f32(-arg_3.x)), arg_0.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3))));
    let var_1 = -max(~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.a, 55609i, var_0.a.x, 7365i), vec4<i32>(-1i, 2147483647i, 0i, -2147483647i) | vec4<i32>(var_0.a.x, 2147483647i, 2147483647i, arg_2.a)), arg_2.a);
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_2 = func_2();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, arg_2.d, 1u), var_0.c.ywx), _wgslsmith_dot_vec2_u32(var_0.c.yw & vec2<u32>(0u, arg_2.d), ~var_0.c.wx)), abs(select(vec3<u32>(arg_0.d, 23567u, arg_2.d) << (vec3<u32>(var_0.c.x, arg_2.d, var_0.c.x) % vec3<u32>(32u)), vec3<u32>(arg_2.d, 0u, 401u), var_2))) ^ 0u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = arg_1;
    return vec4<bool>(global0[_wgslsmith_index_u32(func_4(Struct_1(u_input.a, func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.c)))), _wgslsmith_add_u32(67871u, arg_1.d >> (arg_1.d % 32u)), func_2()), select(!all(vec2<bool>(arg_0.x, arg_0.x)), true, true), var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2733f, var_0.c, -301f) + vec3<f32>(275f, 311f, var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, 1350f, var_0.c) + vec3<f32>(arg_1.c, -1118f, 105f)) + vec3<f32>(1000f, var_0.c, 1457f)), arg_1.e.x || true))), 8u)], select(true, true, var_0.e.x), false || any(!(!vec4<bool>(true, arg_1.b.x, true, false))), select(any(vec2<bool>(arg_0.x, true)), -2147483647i <= arg_1.a, (var_0.d <= var_0.d) & any(arg_0)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_1(~(-abs(-8907i)) ^ ~reverseBits(_wgslsmith_clamp_i32(arg_1.a.x, 0i, arg_1.d.x)), !arg_1.b.wxw, _wgslsmith_f_op_f32(select(arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), !(firstTrailingBit(1u) >= 0u))), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.c.x, arg_1.c.x, 87006u), arg_1.c))), !arg_1.b.wzz);
    var var_1 = reverseBits(abs(reverseBits(arg_1.c.yyx)));
    var var_2 = vec2<f32>(-936f, -960f);
    let var_3 = 962f;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -510f, -987f, var_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -612f, _wgslsmith_f_op_f32(round(var_0.c)), var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(var_2.x, var_3))), _wgslsmith_f_op_f32(-429f + _wgslsmith_f_op_f32(abs(var_0.c))), 1540f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(var_2.x)))), !vec4<bool>(arg_1.b.x, !global0[_wgslsmith_index_u32(83447u, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)], any(var_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - arg_2), _wgslsmith_f_op_f32(sign(552f))))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))))));
    return Struct_2(~vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 51986i), arg_1.a), arg_1.d.x), vec4<bool>(func_2().x, var_0.e.x, var_0.e.x, func_1(!(!var_0.e.zx), Struct_1(1i, var_0.e, _wgslsmith_div_f32(-959f, 725f), arg_1.c.x, vec3<bool>(global0[_wgslsmith_index_u32(15087u, 8u)], var_0.e.x, global0[_wgslsmith_index_u32(var_0.d, 8u)]))).x), abs(vec4<u32>(var_0.d, _wgslsmith_mod_u32(var_0.d, var_1.x), ~25761u, reverseBits(35983u)) >> (arg_1.c % vec4<u32>(32u))), select(arg_1.d, arg_1.d, func_1(vec2<bool>(any(vec3<bool>(var_0.b.x, false, global0[_wgslsmith_index_u32(17403u, 8u)])), 21212u != arg_1.c.x), Struct_1(firstLeadingBit(0i), !arg_1.b.zzw, 1000f, 0u, vec3<bool>(true, true, true))).zyx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x + var_3)), 190f, -736f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_5(vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~0u), 8u)] && var_0), Struct_2(-_wgslsmith_mod_vec2_i32(vec2<i32>(1573i, 1i), vec2<i32>(2147483647i, u_input.a) >> (vec2<u32>(20934u, 1u) % vec2<u32>(32u))), func_1(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(15520u, 8u)], global0[_wgslsmith_index_u32(15884u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -1287f), abs(1171u), vec3<bool>(false, var_0, global0[_wgslsmith_index_u32(45840u, 8u)]))), ~vec4<u32>(36599u, ~4971u, 75190u, 1u), -_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-20703i, u_input.a, u_input.a)), ~vec3<i32>(80568i, 80798i, u_input.a)), vec3<f32>(1f, 1f, 1f)), 194f);
    var var_2 = Struct_1(max(abs(_wgslsmith_add_i32(u_input.a, u_input.a)) | u_input.a, var_1.d.x), vec3<bool>(false, true, true), var_1.e.x, _wgslsmith_add_u32(reverseBits(~(~0u)), 1u), func_1(vec2<bool>(false, ~var_1.c.x < 3138u), Struct_1(~2147483647i, var_1.b.zyz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1364f, -348f, true)))), ~var_1.c.x, var_1.b.zxy)).ywx);
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_3 = var_1.b.wyy;
    let var_4 = vec2<u32>(var_1.c.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), ~var_1.c.xwz), var_2.d & var_1.c.x));
    var var_5 = Struct_1(-20320i, select(func_5(vec2<bool>(true, true), var_1, _wgslsmith_f_op_f32(786f - var_2.c)).b.xzz, vec3<bool>(true, true, func_5(vec2<bool>(false, false), var_1, _wgslsmith_f_op_f32(322f * var_1.e.x)).b.x), !var_3), var_2.c, 0u, !select(var_2.e, !select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(true, true, false), false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, countOneBits(var_1.c.x)), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) + 841f));
}

