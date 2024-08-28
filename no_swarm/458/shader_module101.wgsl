struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 3> = array<f32, 3>(1114f, 1074f, 1203f);

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<i32>, 4>;

var<private> global4: vec3<u32> = vec3<u32>(0u, 77294u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 30361u, 1u, 4294967295u), countOneBits(vec4<u32>(global4.x, 36667u, 48361u, 29581u))), 3u)] + -773f) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(39029u, global4.x, arg_0.x, 25679u), vec4<u32>(0u, 107079u, u_input.b, 17032u) | vec4<u32>(arg_0.x, 4294967295u, global4.x, arg_0.x), arg_2.a < -393f), vec4<u32>(1u, global4.x, ~arg_2.c.x, global4.x)), 3u)]), -497f));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, -2335f, arg_3.a.x, arg_2.a) * arg_3.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(u_input.a.x << (1u % 32u)), 3u)]), _wgslsmith_f_op_f32(-global2.x), global2.x));
    global4 = ~(~min(~vec3<u32>(arg_2.c.x, 4294967295u, arg_2.b), abs(u_input.a >> (vec3<u32>(82066u, 22932u, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(abs(-1356f))), arg_2.c.x, countOneBits(~(~vec4<u32>(14269u, 38106u, 4294967295u, global4.x))), arg_2.d, -8260i << ((17698u << (~min(arg_2.b, 0u) % 32u)) % 32u));
    return arg_2.a;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = ~max(vec4<u32>(22415u, abs(countOneBits(arg_1)), 89556u, u_input.a.x & _wgslsmith_mod_u32(arg_1, 0u)), ~vec4<u32>(30244u >> (global4.x % 32u), ~1u, ~arg_1, _wgslsmith_sub_u32(u_input.a.x, 4343u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(vec4<u32>(4294967295u, global4.x, global4.x, 0u)), _wgslsmith_f_op_f32(floor(387f)), Struct_2(global1[_wgslsmith_index_u32(14260u, 3u)], 67047u, vec4<u32>(arg_1, 0u, u_input.b, 14129u), vec3<bool>(arg_2, false, arg_3), arg_0), Struct_1(vec4<f32>(1208f, global0.a.x, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(global4.x, 3u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(2843u, 3u)], -586f)), global1[_wgslsmith_index_u32(~56798u, 3u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1524f * -2602f))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(912f, -615f)))));
    var var_1 = Struct_5(min(_wgslsmith_sub_vec4_i32(select(global3[_wgslsmith_index_u32(4294967295u, 4u)], vec4<i32>(1i, 2147483647i, arg_0, 2147483647i), arg_3) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), global3[_wgslsmith_index_u32(79550u, 4u)]), vec4<i32>(36920i, 43460i, -2147483647i, arg_0)), global3[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 4u)]));
    var var_2 = 22152u;
    var var_3 = Struct_3(var_1.a.zwx << (vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(42406u, 1u, 1u), var_0.zwx) >> (~1u % 32u), var_0.x) % vec3<u32>(32u)), Struct_2(global2.x, global4.x, vec4<u32>(select(var_0.x, u_input.a.x, !arg_2), ~(~80251u), abs(~global4.x), _wgslsmith_dot_vec2_u32(reverseBits(global4.xy), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 4294967295u), u_input.a.xy))), select(select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_3, false), true), !select(vec3<bool>(arg_3, arg_2, arg_2), vec3<bool>(arg_2, false, arg_3), arg_3), vec3<bool>(arg_2, false, true)), 68855i), Struct_2(-626f, select(firstLeadingBit(0u), u_input.b, all(vec2<bool>(true, true))), reverseBits(vec4<u32>(~5074u, firstTrailingBit(21513u), 18914u ^ var_0.x, 0u)), !select(select(vec3<bool>(false, arg_2, true), vec3<bool>(false, false, arg_3), vec3<bool>(false, false, false)), !vec3<bool>(true, false, arg_3), vec3<bool>(arg_3, false, false)), -arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.yz + _wgslsmith_f_op_vec2_f32(global0.a.xy - global0.a.yy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.yy * global0.a.zz) + global0.a.zx))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, var_3.c.a, global1[_wgslsmith_index_u32(var_3.b.b, 3u)], -504f)) - vec4<f32>(-1572f, _wgslsmith_f_op_f32(var_3.d.x * global2.x), var_3.c.a, _wgslsmith_f_op_f32(global0.a.x + 1194f)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = vec2<bool>(false || arg_1.c.d.x, all(select(select(vec2<bool>(true, false), select(vec2<bool>(arg_3.d.x, true), arg_3.d.yy, arg_1.b.d.x), -257f != arg_2), !select(arg_3.d.zy, arg_3.d.xx, vec2<bool>(arg_3.d.x, arg_1.b.d.x)), true)));
    var_0 = select(vec2<bool>(false, var_0.x), arg_3.d.xy, all(!vec3<bool>(true, select(var_0.x, arg_1.b.d.x, true), true)));
    global0 = func_2(-844i, countOneBits(arg_1.b.c.x), select(false, arg_3.d.x, all(vec4<bool>(true, false, true, arg_0.x < 1321f))), arg_1.c.d.x);
    global4 = vec3<u32>(select(_wgslsmith_sub_u32(u_input.a.x, 39112u), ~(~abs(0u)), _wgslsmith_f_op_f32(-arg_2) >= -593f), global4.x, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(28208u, min(~36601u, min(global4.x, 7462u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_1.c.a, 1173f, 2130f), global0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))) * _wgslsmith_f_op_vec4_f32(abs(arg_0))));
    return vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~1i, 41213i), reverseBits(_wgslsmith_sub_i32(arg_3.e, arg_3.e))), ~19423i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -1i, -17183i, 1i), vec3<i32>(2147483647i, _wgslsmith_mult_i32(countOneBits(-25717i), _wgslsmith_add_i32(-5279i, -1i)), _wgslsmith_dot_vec2_i32(func_1(global0.a, Struct_3(vec3<i32>(-1i, 1i, -7965i), Struct_2(global0.a.x, 0u, vec4<u32>(48364u, 1u, 23618u, u_input.b), vec3<bool>(false, true, false), 0i), Struct_2(1000f, u_input.a.x, vec4<u32>(30566u, 10457u, global4.x, global4.x), vec3<bool>(false, false, false), -1i), vec2<f32>(global0.a.x, global1[_wgslsmith_index_u32(2533u, 3u)])), 1541f, Struct_2(global2.x, 19401u, vec4<u32>(global4.x, u_input.b, 51624u, global4.x), vec3<bool>(false, false, true), -1i)), vec2<i32>(1i, 1i)))), Struct_2(_wgslsmith_f_op_f32(-global2.x), ~max(global4.x, 4294967295u), vec4<u32>(~global4.x, global4.x, global4.x, select(u_input.a.x ^ 83488u, abs(4294967295u), true)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), false, true), true), ~1i), Struct_2(1440f, ~0u, _wgslsmith_add_vec4_u32(~(~vec4<u32>(global4.x, 4294967295u, 108504u, u_input.a.x)), firstLeadingBit(min(vec4<u32>(u_input.b, u_input.b, 30022u, 69949u), vec4<u32>(u_input.a.x, u_input.a.x, global4.x, 36596u)))), vec3<bool>(false, false, true), -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_vec2_f32(global0.a.yy * func_2(reverseBits(-398i), ~global4.x, true, true).a.yy)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-782f)) - _wgslsmith_f_op_f32(exp2(global0.a.x))), 263f);
    let var_1 = Struct_5(vec4<i32>(~(var_0.b.e | countOneBits(var_0.a.x)), var_0.b.e ^ 1i, -reverseBits(~0i), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(-5256i, -19858i), -2147483647i)));
    let var_2 = Struct_1(vec4<f32>(-441f, _wgslsmith_f_op_f32(round(func_2(_wgslsmith_dot_vec2_i32(var_1.a.xw, vec2<i32>(-30816i, var_0.c.e)), u_input.a.x, any(vec4<bool>(var_0.b.d.x, false, true, false)), var_0.b.d.x).a.x)), -1000f, global1[_wgslsmith_index_u32(global4.x, 3u)]));
    global0 = var_2;
    global4 = u_input.a;
    let var_3 = abs(1i);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(275f + -1949f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * -796f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(37295u, 3u)] - 511f))) + global0.a.x), global1[_wgslsmith_index_u32(global4.x, 3u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(~var_0.c.c, -1000f, Struct_2(_wgslsmith_f_op_f32(select(global2.x, var_0.b.a, false)), _wgslsmith_mult_u32(67438u, global4.x), vec4<u32>(u_input.a.x, global4.x, 75586u, global4.x), select(vec3<bool>(var_0.c.d.x, false, false), vec3<bool>(var_0.b.d.x, var_0.b.d.x, true), var_0.b.d.x), -13138i), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, global0.a.x, -367f, -612f) - global0.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(vec4<i32>(var_0.c.e, var_0.b.e, var_3, var_3))), 1u, ~(~u_input.b));
}

