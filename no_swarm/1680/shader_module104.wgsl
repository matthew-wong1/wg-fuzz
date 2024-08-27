struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 19223u, 32061u);

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_1(~vec4<u32>(global1.x ^ max(global2.x, 30454u), 1904u, u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global1.x, global2.x), arg_0.a.zzz))), arg_0.b, select(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_0.a.wwz, ~vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(_wgslsmith_add_u32(21324u, 14782u), countOneBits(arg_0.c), ~arg_0.c)), true), -12504i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(var_0, -719f)), 1f, !(-362f > arg_0.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)))), true)));
    let var_2 = Struct_1(~arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), var_1.a.x, _wgslsmith_add_i32(reverseBits(arg_2.x >> (1465u % 32u)), select(1i, _wgslsmith_sub_i32(~var_1.d, var_1.d), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + 2305f), _wgslsmith_f_op_f32(exp2(arg_0.b.x)))));
    let var_3 = vec4<i32>(abs(44086i & _wgslsmith_clamp_i32(8443i, var_1.d, 0i)), 32109i, var_2.d, arg_0.d);
    let var_4 = ~(~(~26979i));
    return 60019i;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec2<i32>(func_3(Struct_1(vec4<u32>(4294967295u, 58584u, 71934u, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, -482f, 703f) + vec3<f32>(1729f, 207f, 692f)), global2.x, -1i, _wgslsmith_div_f32(446f, 412f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -14280i, global0[_wgslsmith_index_u32(1u, 6u)], 9186i), vec4<i32>(12080i, 0i, 33261i, 0i)), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(20790u, 6u)], 7497i, 17475i, 2147483647i)))), -1i) | -vec2<i32>(~arg_0, 0i);
    let var_1 = Struct_1(min(~select(~vec4<u32>(global1.x, global2.x, 0u, 3437u), max(vec4<u32>(0u, global1.x, u_input.a.x, 20492u), vec4<u32>(global2.x, 1u, 3682u, 4294967295u)), vec4<bool>(true, true, true, true)), ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a.x, global1.x, 4294967295u, global1.x), vec4<u32>(1u, 17882u, u_input.a.x, global1.x)), ~vec4<u32>(0u, 17096u, u_input.a.x, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1355f, -1313f)), 1333f, 1f), countOneBits(0u), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-1147f + 261f), true))))));
    var var_2 = vec2<u32>(~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, global2.x, global1.x), vec3<u32>(u_input.a.x, 0u, var_1.a.x)), u_input.a.x), _wgslsmith_mod_u32(~var_1.c, 1u) ^ (var_1.a.x & 109646u));
    var_2 = var_1.a.zx;
    var var_3 = any(!global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 51313u, global2.x), vec3<u32>(0u, 0u, 32254u)) << (countOneBits(global2.x) % 32u)), 3u)]);
    return 42074u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    let var_0 = arg_0.b.yy;
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_1 = arg_0;
    global1 = ~_wgslsmith_mult_vec3_u32(arg_0.a.zxw, vec3<u32>(_wgslsmith_add_u32(func_2(var_1.d), _wgslsmith_clamp_u32(1u, u_input.a.x, 0u)), 4294967295u, 31916u));
    return global0[_wgslsmith_index_u32(global2.x, 6u)];
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global2 = vec3<u32>(1u, abs(u_input.a.x) & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1.x, global1.x), u_input.a) & select(global1.x, u_input.a.x, false)), ~global2.xy));
    let var_0 = -1i;
    let var_1 = arg_2.x;
    let var_2 = ~global1.x;
    var var_3 = -2147483647i;
    return Struct_1(vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.yz, global1.zy), u_input.a.x), 53142u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 0u, 14703u), vec4<u32>(0u, global1.x, arg_0, var_2))) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 36549u, 4294967295u, arg_0), ~(vec4<u32>(arg_0, 12430u, global1.x, u_input.a.x) >> (vec4<u32>(0u, 20338u, 6203u, global2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -605f, 1659f) * vec3<f32>(-1376f, -169f, -1881f)), vec3<f32>(526f, 1000f, 378f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2051f, -157f, -2319f)), vec3<f32>(838f, -418f, 1514f)))), func_2(-global0[_wgslsmith_index_u32(~arg_0, 6u)]), firstLeadingBit(-_wgslsmith_dot_vec2_i32(reverseBits(arg_2), vec2<i32>(1i, -12560i) & arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1775f, 513f) + -109f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, -1105f, -283f, 1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, 1830f, 193f, -486f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(510f, -448f, 609f, 238f), vec4<f32>(1662f, -358f, 212f, 1153f), false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true))))))));
    let var_2 = func_4((~(u_input.a.x & u_input.a.x) & select(_wgslsmith_add_u32(u_input.a.x, global1.x), 77775u, true)) & _wgslsmith_div_u32(~20987u, ~(global1.x >> (global2.x % 32u))), ~(func_1(Struct_1(vec4<u32>(global2.x, 1u, global2.x, 0u), var_1.wwy, 1u, global0[_wgslsmith_index_u32(28559u, 6u)], 1000f), vec3<bool>(true, true, true)) >> (67072u % 32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 6u)]), -global0[_wgslsmith_index_u32(global1.x, 6u)]), vec2<i32>(-35794i, 51191i)), vec2<i32>(global0[_wgslsmith_index_u32(max(global1.x, 55123u), 6u)], 2147483647i) & abs(abs(vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 6u)], 85487i)))));
    var_0 = var_2.a.x;
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(73139u, ~18467u ^ ~global2.x), 6u)], -120i), i32(-1i) * -_wgslsmith_div_i32(func_4(global1.x, global0[_wgslsmith_index_u32(0u, 6u)], vec2<i32>(94480i, -21107i)).d, var_2.d));
    var var_4 = Struct_1(~var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-352f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -813f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) + _wgslsmith_f_op_f32(var_2.b.x + 104f)))), global1.x, reverseBits(-func_1(func_4(global2.x, var_3.x, vec2<i32>(var_2.d, global0[_wgslsmith_index_u32(63649u, 6u)])), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.e - _wgslsmith_div_f32(873f, var_2.b.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(508f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-425f, _wgslsmith_div_f32(1000f, -396f))), _wgslsmith_f_op_f32(-var_1.x), var_4.e, var_4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_4.a.x, 4008i, vec2<i32>(var_3.x >> (4294967295u % 32u), 1i) ^ vec2<i32>(var_2.d, var_2.d)).b.yx, ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_2.a.x)), ~vec2<u32>(u_input.a.x, u_input.a.x)) << (select(u_input.a.zz, vec2<u32>(reverseBits(global1.x), ~0u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.e, var_1.x, 1353f) * var_1.xzx), func_4(64836u, 26984i, vec2<i32>(global0[_wgslsmith_index_u32(51087u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])).b)), vec3<f32>(_wgslsmith_f_op_f32(step(-1594f, var_1.x)), var_1.x, _wgslsmith_f_op_f32(-var_4.e))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zxz) + vec3<f32>(var_2.e, var_4.e, 1848f)))));
}

