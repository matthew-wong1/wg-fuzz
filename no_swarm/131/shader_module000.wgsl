struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 16> = array<i32, 16>(15843i, i32(-2147483648), 28162i, -1i, 6456i, 9336i, i32(-2147483648), 2147483647i, i32(-2147483648), 1i, 1i, -1i, 2147483647i, 69424i, 16066i, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 16u)];
    return max(firstLeadingBit(arg_0.c), firstTrailingBit(-13135i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = Struct_4(select(vec2<bool>(all(!vec4<bool>(global0.a.x, false, false, false)), global0.a.x), select(vec2<bool>(any(vec4<bool>(true, false, global0.a.x, global0.a.x)), global0.a.x), global0.a, !vec2<bool>(global0.a.x, false)), global0.a), -1249f, Struct_3(~arg_0.a, Struct_2(_wgslsmith_f_op_f32(min(global0.d.b.a.x, arg_3.a.x)), arg_3, arg_0.a.xyy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.e.a, arg_3.a.x))), arg_0.e.b.a.xz))), global0.d.b, 1u, Struct_2(_wgslsmith_f_op_f32(-arg_3.a.x), global0.c.e.b, ~global0.c.e.c >> (~global0.c.a.ywy % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(arg_3.a.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, arg_0.e.b.a.x) * vec2<f32>(870f, -946f))))), Struct_2(arg_0.c.a.x, arg_0.b.b, vec3<u32>(arg_2 ^ global0.d.c.x, arg_3.b, abs(1u)) | _wgslsmith_add_vec3_u32(~global0.d.c, arg_0.a.yxw), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(arg_0.c.a.wx, vec2<f32>(-1000f, arg_3.a.x)))))))));
    let var_0 = arg_0.b.b;
    let var_1 = Struct_4(!global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, arg_0.e.a))) + arg_3.a.x), Struct_3(arg_0.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) * var_0.a.x), arg_0.c, abs(arg_0.a.yzy) | global0.d.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d.d, vec2<f32>(arg_3.a.x, arg_3.a.x), global0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1252f) - var_0.a.xw))), arg_3, arg_3.b, Struct_2(228f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, arg_3.a.x, 1194f)), global0.c.b.b.b >> (u_input.a % 32u), 13526i & arg_0.b.b.c), global0.c.b.c, _wgslsmith_div_vec2_f32(arg_3.a.zw, _wgslsmith_f_op_vec2_f32(min(arg_3.a.wz, global0.d.d))))), Struct_2(_wgslsmith_f_op_f32(-arg_0.c.a.x), var_0, min(arg_0.e.c, select(global0.d.c, abs(vec3<u32>(var_0.b, global0.d.c.x, 117369u)), all(vec3<bool>(true, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-905f, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.c.a.x, var_0.a.x), vec2<f32>(global0.d.b.a.x, -332f), !vec2<bool>(false, global0.a.x))))));
    global1 = array<i32, 16>();
    global0 = Struct_4(!select(vec2<bool>(var_1.a.x, any(vec4<bool>(var_1.a.x, global0.a.x, var_1.a.x, false))), vec2<bool>(false, !var_1.a.x), select(select(vec2<bool>(true, false), vec2<bool>(global0.a.x, true), vec2<bool>(true, global0.a.x)), vec2<bool>(var_1.a.x, false), select(vec2<bool>(var_1.a.x, global0.a.x), var_1.a, vec2<bool>(var_1.a.x, true)))), var_1.d.d.x, var_1.c, var_1.c.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.a * var_0.a.x)) - 1315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_div_f32(var_1.c.b.a, -306f))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(~firstTrailingBit(~global0.c.a) ^ global0.c.a, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec4<u32>(1u, global0.d.b.b, arg_0.c.x, 4294967295u), Struct_2(729f, arg_0.b, vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<f32>(global0.b, arg_0.d.x)), Struct_1(arg_0.b.a, arg_0.b.b, arg_0.b.c), arg_0.b.b, Struct_2(-648f, arg_0.b, vec3<u32>(0u, arg_0.b.b, arg_1), arg_0.b.a.xx)), vec4<i32>(arg_0.b.c, 0i, -2147483647i, arg_0.b.c), u_input.a, global0.c.c))), _wgslsmith_f_op_f32(-1675f - _wgslsmith_f_op_f32(1918f + global0.b)), any(select(global0.a, vec2<bool>(global0.a.x, global0.a.x), true)))), Struct_1(vec4<f32>(-1929f, global0.c.c.a.x, global0.d.b.a.x, _wgslsmith_f_op_f32(-560f + 334f)), ~_wgslsmith_div_u32(arg_1, 1u), -37226i), vec3<u32>(u_input.a, 104024u, _wgslsmith_mod_u32(1u, abs(36666u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.a.x, arg_0.a), _wgslsmith_f_op_vec2_f32(select(global0.d.b.a.yw, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b, arg_0.a), arg_0.b.a.yx), global0.a)), vec2<bool>(global0.a.x, global0.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(round(1597f)), global0.c.e.d.x)), ~_wgslsmith_sub_u32(~u_input.a, arg_0.b.b), -28509i), arg_1, arg_0);
    global0 = Struct_4(!select(global0.a, vec2<bool>(true, false), !select(global0.a, global0.a, vec2<bool>(global0.a.x, global0.a.x))), -1000f, global0.c, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_3(var_0.a, global0.c.b, var_0.c, arg_0.b.b, Struct_2(-360f, arg_0.b, var_0.e.c, arg_0.b.a.yx)), abs(vec4<i32>(0i, arg_2.x, 23993i, global1[_wgslsmith_index_u32(arg_0.b.b, 16u)])), 41238u, var_0.c)), 143f)), arg_0.b, _wgslsmith_add_vec3_u32(vec3<u32>(global0.d.c.x, _wgslsmith_sub_u32(global0.d.b.b, global0.c.a.x), 4200u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_0.c.x), reverseBits(vec3<u32>(var_0.c.b, arg_1, 97460u)))), var_0.c.a.xz));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(-var_0.b.a)) - global0.b))), _wgslsmith_f_op_f32(max(global0.b, -1000f)));
    var var_2 = false;
    global0 = Struct_4(vec2<bool>(any(select(select(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, true, true), true), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), select(global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_div_i32(select(-2147483647i, 3555i, global0.a.x), -38017i) == select(firstLeadingBit(arg_2.x), arg_2.x, global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(774f, global0.d.a) - -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1494f - _wgslsmith_f_op_f32(-112f + -1229f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.b)))))), Struct_3(vec4<u32>(61298u, _wgslsmith_mult_u32(arg_0.b.b, 1u), global0.c.e.c.x, ~global0.d.b.b), Struct_2(-1831f, Struct_1(var_0.c.a, ~4294967295u, _wgslsmith_add_i32(-4421i, global1[_wgslsmith_index_u32(0u, 16u)])), vec3<u32>(113486u, max(global0.c.d, arg_1), ~4294967295u), _wgslsmith_f_op_vec2_f32(global0.d.d * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(873f, 652f))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.c.a))), _wgslsmith_div_u32(_wgslsmith_div_u32(89710u, 18004u), abs(12417u)), -max(-59188i, 0i)), abs(countOneBits(min(arg_0.b.b, var_0.b.b.b))), arg_0), global0.d);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 16>();
    var var_0 = _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0.d.b.b, 16u)], global0.c.c.c, 12436i), vec3<i32>(16772i, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(global0.c.e.c.x, 16u)])))), ~select(firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 11452i)), -vec2<i32>(-1i, global1[_wgslsmith_index_u32(2187u, 16u)]), global0.a.x)) << ((~(~vec2<u32>(54735u, global0.d.b.b) | global0.d.c.xy) ^ vec2<u32>(~(~26250u), u_input.a)) % vec2<u32>(32u));
    let var_1 = global0.c.c.c;
    let var_2 = func_2(global0.c.e, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a, ~u_input.a), 1u), global0.c.b.c.x), vec3<i32>(_wgslsmith_mod_i32(83142i, _wgslsmith_mod_i32(var_0.x, firstLeadingBit(1i))), countOneBits(var_0.x << (59840u % 32u)) & ~func_1(global0.d.b), -50972i));
    var var_3 = global0.d.b.a.wxy;
    let var_4 = _wgslsmith_clamp_i32(i32(-1i) * -var_2.c, select(countOneBits(-(~global1[_wgslsmith_index_u32(var_2.b, 16u)])), _wgslsmith_mod_i32(firstLeadingBit(-global1[_wgslsmith_index_u32(u_input.a, 16u)]), -37908i), !any(vec2<bool>(true, global0.a.x)) || any(!vec3<bool>(global0.a.x, global0.a.x, false))), global1[_wgslsmith_index_u32(~(35280u & global0.d.b.b), 16u)]);
    let var_5 = Struct_3(vec4<u32>(1u, 0u, func_2(global0.c.e, ~(u_input.a | 17929u), vec3<i32>(-1i, var_0.x, firstLeadingBit(global0.d.b.c))).b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(10568u, 75903u, 63358u, 12199u), select(vec4<u32>(1u, 4294967295u, 28602u, global0.c.d), global0.c.a, true))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x)))), func_2(Struct_2(161f, Struct_1(global0.c.b.b.a, var_2.b, global0.d.b.c), ~vec3<u32>(16191u, u_input.a, 0u), vec2<f32>(var_2.a.x, -450f)), 77540u, vec3<i32>(~(-37995i), max(16765i, 1i), 1i)), _wgslsmith_clamp_vec3_u32(global0.c.e.c, firstTrailingBit(vec3<u32>(global0.c.e.b.b, 0u, var_2.b)) << (select(vec3<u32>(1u, 37306u, global0.d.b.b), global0.c.e.c, vec3<bool>(global0.a.x, false, global0.a.x)) % vec3<u32>(32u)), ~vec3<u32>(global0.c.d, 4294967295u, var_2.b) ^ global0.c.b.c), global0.d.b.a.wy), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.c.b.b.a * vec4<f32>(-498f, var_2.a.x, -108f, -154f)))), global0.c.a.x, -_wgslsmith_mod_i32(~33575i, var_4 >> (1u % 32u))), _wgslsmith_dot_vec3_u32(global0.c.e.c, ~(global0.c.a.yzw & ~global0.d.c)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f * global0.b)), 107f)), func_2(Struct_2(_wgslsmith_f_op_f32(var_2.a.x * var_3.x), global0.d.b, abs(vec3<u32>(u_input.a, 4294967295u, global0.d.c.x)), _wgslsmith_f_op_vec2_f32(exp2(global0.c.c.a.ww))), ~(~var_2.b), max(vec3<i32>(var_4, 2795i, global1[_wgslsmith_index_u32(31881u, 16u)]) | vec3<i32>(-26188i, global0.d.b.c, 2147483647i), vec3<i32>(global0.d.b.c, 25454i, -1i))), vec3<u32>(firstTrailingBit(var_2.b >> (global0.d.b.b % 32u)), 6123u, _wgslsmith_mult_u32(72377u, ~u_input.a)), var_3.zx));
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -52240i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(991f))), var_5.c.a.x, _wgslsmith_f_op_f32(ceil(1298f)), var_2.a.x));
}

