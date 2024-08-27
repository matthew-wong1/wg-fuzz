struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(153f, -250f, 674f, 604f, -2016f, -261f, 486f, 160f, 596f, 1146f, 396f, -1000f, -411f, -417f, 496f, 725f, -183f, 715f, 1012f, 2301f, -525f, -2097f, 1014f, -1149f, 741f, 207f, 281f, -1083f, -819f);

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<bool>(true, false, false, false), Struct_1(4294967295u, vec2<bool>(true, true), -1209f, vec2<i32>(0i, 51637i), 4294967295u), vec2<f32>(-836f, 348f)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(4294967295u, vec2<bool>(true, false), 330f, vec2<i32>(2147483647i, 1i), 40533u), vec2<f32>(161f, -493f)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(0u, vec2<bool>(true, false), 424f, vec2<i32>(-19174i, i32(-2147483648)), 37090u), vec2<f32>(-406f, -1249f)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(35399u, vec2<bool>(false, false), 1170f, vec2<i32>(9873i, 22525i), 49198u), vec2<f32>(-1976f, -1115f)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(9444u, vec2<bool>(false, true), -694f, vec2<i32>(7103i, -26990i), 1u), vec2<f32>(-475f, 798f)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(1u, vec2<bool>(true, true), 1021f, vec2<i32>(2147483647i, 0i), 0u), vec2<f32>(-138f, -1659f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global0 = array<f32, 29>();
    let var_0 = u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(abs(var_0), 6u)];
    let var_2 = vec4<bool>(var_1.b.b.x, 569i != (~var_1.b.d.x << ((14927u ^ _wgslsmith_clamp_u32(0u, var_1.b.a, u_input.c)) % 32u)), !any(var_1.a), any(!var_1.a.wy));
    global0 = array<f32, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -632f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29438u, var_1.b.e, 69435u), select(vec3<u32>(var_1.b.e, 1u, var_1.b.e), vec3<u32>(u_input.c, var_1.b.a, var_1.b.e), true)), 29u)]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> f32 {
    global0 = array<f32, 29>();
    var var_0 = Struct_1(~4294967295u, select(select(select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), false), vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), true)), !select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), vec2<bool>(false, false)), vec2<bool>(!arg_1, arg_1)), vec2<bool>(arg_1, true), !vec2<bool>(all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1 | true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-454f * -222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)))), _wgslsmith_f_op_f32(-arg_2))), vec2<i32>(-2147483647i, arg_0.x) | vec2<i32>(~arg_0.x << (4294967295u % 32u), -35273i), 1u | select(u_input.b, 1503u, arg_1));
    let var_1 = vec2<u32>(var_0.e, ~(_wgslsmith_clamp_u32(var_0.a, 37855u, var_0.e) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(var_0.e, var_0.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f + 1000f) - arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -1426f)), 208f));
    let var_3 = u_input.b;
    return var_2.x;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, 1i), true, _wgslsmith_f_op_f32(func_2())))));
    global0 = array<f32, 29>();
    var_0 = -401f;
    global1 = array<Struct_2, 6>();
    var var_1 = Struct_2(vec4<bool>(~(~1u) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.c), vec3<u32>(u_input.b, 11953u, u_input.a)), true, all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false))), true), Struct_1(_wgslsmith_mult_u32(countOneBits(0u), u_input.c), vec2<bool>(true, true), 1697f, ~select(vec2<i32>(-36465i, -10824i), vec2<i32>(66481i, 1i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), false), ~abs(u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(1087f, 461f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3445u, 29u)] + global0[_wgslsmith_index_u32(1u, 29u)]))))));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(~select(_wgslsmith_mod_vec3_i32(vec3<i32>(-9989i, var_1.b.d.x, var_1.b.d.x), vec3<i32>(var_1.b.d.x, 7096i, var_1.b.d.x)), firstTrailingBit(vec3<i32>(var_1.b.d.x, -1i, -2147483647i)), -1244f >= arg_0), vec3<i32>(var_1.b.d.x, -(~(-32954i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.d.x, -2182i, var_1.b.d.x, -1i), vec4<i32>(-27262i, 28977i, var_1.b.d.x, var_1.b.d.x)))), ~2147483647i, -(~min(abs(var_1.b.d.x), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(_wgslsmith_div_vec3_i32(func_1(global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<i32>(1i, 1i, 1i)) ^ _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(29194i, -2147483647i, 1i)), select(vec3<i32>(-1i, -1i, 0i), vec3<i32>(22339i, 14061i, 9352i), false)), ~reverseBits(vec3<i32>(24940i, 1i, 0i)));
    var var_1 = vec2<bool>(true, !any(vec2<bool>(53672u >= u_input.b, 19842i <= var_0.x)));
    let var_2 = !(!select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), vec2<bool>(var_1.x, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, var_1.x)), var_1.x), vec2<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x), true));
    var_0 = reverseBits(abs(vec3<i32>(-76525i, _wgslsmith_mult_i32(var_0.x, var_0.x) >> (_wgslsmith_mod_u32(u_input.b, 15606u) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-17290i, var_0.x), var_0.zz), _wgslsmith_dot_vec2_i32(var_0.yz, var_0.xy)))));
    var var_3 = global1[_wgslsmith_index_u32(55174u, 6u)];
    var_3 = Struct_2(!var_3.a, Struct_1(u_input.c, !select(var_2, vec2<bool>(true, var_1.x), !var_2), -742f, vec2<i32>(min(_wgslsmith_mod_i32(1i, var_3.b.d.x), -2147483647i), 2147483647i), _wgslsmith_mult_u32(abs(~59371u), ~_wgslsmith_sub_u32(22594u, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2291f, -530f), vec2<f32>(-1754f, global0[_wgslsmith_index_u32(u_input.b, 29u)])))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-314f, 786f), var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, -var_0.x, select(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, -1i, var_3.b.d.x), select(vec3<i32>(1i, var_0.x, var_3.b.d.x), vec3<i32>(var_0.x, var_0.x, var_0.x), var_1.x), firstLeadingBit(vec3<i32>(var_0.x, var_3.b.d.x, var_0.x))), vec3<i32>(-var_3.b.d.x, var_3.b.d.x & -30137i, max(-3706i, -40069i))), select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(13947i, -1i, 4442i)), vec3<i32>(var_3.b.d.x, 1i, -11081i)), abs(vec3<i32>(-2147483647i, 1i, var_3.b.d.x)) >> (min(vec3<u32>(3420u, u_input.c, 1u), vec3<u32>(u_input.c, 0u, 0u)) % vec3<u32>(32u)), !(!vec3<bool>(var_3.a.x, true, true))), all(var_3.a)), vec2<i32>(66799i >> (abs(firstLeadingBit(u_input.a)) % 32u), 60085i));
}

