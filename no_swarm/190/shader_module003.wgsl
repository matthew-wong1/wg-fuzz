struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = vec3<f32>(-485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * _wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1391f), -1014f, false))))), -200f);
    let var_1 = arg_0;
    var var_2 = arg_0;
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a)), arg_1, !all(vec3<bool>(arg_2, true, var_1.c))))), arg_0.d, !all(select(!vec4<bool>(arg_2, true, true, false), vec4<bool>(var_1.c, false, true, true), any(vec4<bool>(false, arg_0.c, true, true)))), u_input.a, -arg_0.e);
    var var_3 = vec3<u32>(~var_1.d, 1u, 115877u << (~(~_wgslsmith_mod_u32(var_2.b, var_2.d)) % 32u));
    return _wgslsmith_add_u32(1u, var_1.b);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1224f, -304f, 1000f, 525f) + arg_0.a)), vec4<f32>(1153f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1979f), _wgslsmith_f_op_f32(f32(-1f) * -1487f)), select(vec4<bool>(arg_0.c, arg_1, arg_0.c, false), vec4<bool>(false, arg_0.c, arg_1, arg_0.c), arg_0.e.x != arg_0.e.x)))), max(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(875u, 4294967295u, 32568u, arg_0.b), vec4<u32>(1u, arg_0.b, u_input.a, 6049u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.d), u_input.d << (4294967295u % 32u))), arg_0.d << (~arg_0.d % 32u)), !arg_1, _wgslsmith_mult_u32(~618u, min(~5047u << (arg_0.b % 32u), func_3(arg_0, arg_0.a, false))), vec2<i32>(1i, _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(arg_0.e.x, arg_0.e.x)) & (-arg_0.e.x << ((99887u << (u_input.a % 32u)) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = Struct_1(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(335f, _wgslsmith_f_op_f32(arg_0.a.x - 1025f))))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(809f, 105f))))), _wgslsmith_mult_u32(~(~33119u) | ~(~u_input.a), 47161u), arg_2, 68291u, abs(firstLeadingBit(~(~vec2<i32>(arg_0.e.x, arg_0.e.x)))));
    let var_1 = Struct_1(var_0.a, arg_0.d & arg_0.b, true || (~arg_0.b < ~countOneBits(u_input.a)), 13859u, _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, arg_0.e.x), arg_0.e), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(var_0.e, vec2<i32>(var_0.e.x, -1i), vec2<bool>(false, arg_0.c)), vec2<i32>(8401i, arg_0.e.x) | u_input.b), _wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_0.e), -u_input.c, u_input.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a.yzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1016f, 1607f, arg_0.a.x)), var_1.c)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.x, 734f, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, 1000f, var_1.a.x) - vec3<f32>(var_1.a.x, var_0.a.x, -1326f))), select(select(vec3<bool>(true, true, var_1.c), vec3<bool>(arg_1, arg_0.c, var_0.c), true), !vec3<bool>(var_1.c, var_1.c, arg_1), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(round(var_0.a.yxz))));
    let var_3 = vec3<f32>(-882f, arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))) - var_0.a.x));
    let var_4 = -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.e.x, firstTrailingBit(var_0.e.x)), min(_wgslsmith_add_i32(-26432i, var_0.e.x), -var_0.e.x)), ~var_0.e.x, -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_0.e.x, -1087i, var_1.e.x) << (abs(vec4<u32>(arg_0.d, 81731u, 1u, var_1.d)) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, 12549i, u_input.b.x, var_1.e.x)));
    return _wgslsmith_div_f32(-888f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - 1223f))), arg_0.a.x));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(416f, -678f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(839f, _wgslsmith_div_f32(-1152f, -1121f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f * 1594f) + _wgslsmith_f_op_f32(1694f * 112f)) + -1248f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<f32>(368f, -283f, 241f, 1130f), u_input.d, true, 35092u, u_input.c), true, vec3<f32>(-285f, 1052f, 1000f)), u_input.b.x < u_input.c.x, true)) * -439f)), u_input.d, !(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), 577u, min(~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, u_input.b.x)), vec2<i32>(u_input.b.x, 4327i)), vec2<i32>(2913i >> (u_input.d % 32u), func_2(Struct_1(vec4<f32>(-325f, -114f, -641f, 768f), u_input.d, true, 4294967295u, vec2<i32>(-24158i, -2147483647i)), false, vec3<f32>(518f, -170f, -426f)).e.x) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -283f))), var_0.b, select(_wgslsmith_f_op_f32(step(-1082f, var_0.a.x)) <= var_0.a.x, true, !all(vec3<bool>(false, var_0.c, var_0.c))), countOneBits(0u), ~var_0.e);
    var var_2 = max(vec2<u32>(_wgslsmith_clamp_u32(select(4294967295u, var_1.b ^ 1u, true), ~var_0.d, 4294967295u), _wgslsmith_add_u32(var_0.d, ~u_input.a)), ~((~vec2<u32>(u_input.d, u_input.d) | (vec2<u32>(var_0.d, 4294967295u) >> (vec2<u32>(var_1.b, 4294967295u) % vec2<u32>(32u)))) << (vec2<u32>(countOneBits(var_1.d), ~23309u) % vec2<u32>(32u))));
    let var_3 = ~var_2.x ^ 15665u;
    let var_4 = var_1;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~_wgslsmith_mult_u32(4294967295u, func_1()) >> (u_input.d % 32u), ~(~u_input.a), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1775f), -558f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1331f, 296f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f + -555f)) * -393f)) > _wgslsmith_f_op_f32(sign(-1000f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(689f, 110f, false)), _wgslsmith_f_op_f32(ceil(125f)), _wgslsmith_f_op_f32(461f + -806f), _wgslsmith_f_op_f32(f32(-1f) * -132f)))), u_input.d, true, var_0, u_input.c);
    var var_3 = var_2.e;
    var var_4 = func_2(Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(func_4(func_2(var_2, var_2.c, var_2.a.xzz), true, true)), var_2.a.x, var_2.a.x), min(_wgslsmith_add_u32(var_2.d ^ 61833u, ~472u), ~_wgslsmith_div_u32(1u, 28696u)), !func_2(func_2(Struct_1(vec4<f32>(-335f, var_2.a.x, 850f, var_2.a.x), 69303u, var_2.c, 1u, var_2.e), true, var_2.a.wyy), true, _wgslsmith_f_op_vec3_f32(var_2.a.wzw - vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x))).c, abs(_wgslsmith_add_u32(u_input.d, u_input.d)) << (58956u % 32u), -vec2<i32>(var_3.x, ~u_input.b.x)), any(vec4<bool>(all(select(vec4<bool>(true, false, var_2.c, var_2.c), vec4<bool>(var_2.c, false, true, var_2.c), vec4<bool>(var_2.c, var_2.c, false, true))), true, var_2.c, true)), func_2(Struct_1(func_2(func_2(Struct_1(vec4<f32>(-311f, var_2.a.x, -1053f, var_2.a.x), 4294967295u, true, var_2.d, vec2<i32>(u_input.c.x, 13052i)), var_2.c, var_2.a.wwz), var_2.c, _wgslsmith_f_op_vec3_f32(-var_2.a.xwx)).a, 1u, var_2.c, 34408u, -vec2<i32>(var_3.x, var_2.e.x)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(114f, var_2.a.x, var_2.a.x))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-508f, var_2.a.x, var_2.a.x), var_2.a.xzx)))))).a.wxz);
    var var_5 = var_4.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-min(vec4<i32>(-8414i, -11194i, var_3.x, 26709i), vec4<i32>(u_input.b.x, -1i, -2147483647i, 1i)), -(vec4<i32>(-1i, 2147483647i, var_4.e.x, var_4.e.x) & vec4<i32>(var_4.e.x, -31718i, var_2.e.x, 7478i))) ^ -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_3.x, 38017i, -29053i), vec4<i32>(var_2.e.x, var_2.e.x, -6355i, var_3.x)), ~vec4<i32>(var_2.e.x, u_input.b.x, 495i, -25743i)), ~(min(vec4<i32>(var_3.x, 9603i, var_4.e.x, 27604i), reverseBits(vec4<i32>(42064i, -17641i, var_3.x, 1i))) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(25986u, var_2.d, 6290u, var_4.d), vec4<u32>(var_4.d, var_2.b, var_0, 66549u)) & vec4<u32>(var_2.b, 0u, var_2.b, 1u)) % vec4<u32>(32u))), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 0u), u_input.d, u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, 45854u), vec2<u32>(10971u, 1u)))));
}

