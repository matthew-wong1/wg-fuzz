struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(2416u, 65234u, 14490u, 0u), vec4<u32>(1u, 27222u, 1u, 0u), vec4<u32>(113940u, 4294967295u, 30900u, 105383u), vec4<u32>(15610u, 16567u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 62063u, 2721u), vec4<u32>(0u, 0u, 19145u, 10919u), vec4<u32>(1u, 19497u, 1u, 0u), vec4<u32>(0u, 0u, 1u, 4997u), vec4<u32>(72253u, 55901u, 0u, 0u), vec4<u32>(0u, 23619u, 39945u, 39072u), vec4<u32>(41678u, 16032u, 4294967295u, 0u), vec4<u32>(31054u, 16408u, 38056u, 44921u), vec4<u32>(5562u, 1u, 0u, 1u), vec4<u32>(37443u, 26111u, 0u, 0u), vec4<u32>(16149u, 1u, 20676u, 25058u), vec4<u32>(21644u, 45089u, 0u, 4294967295u), vec4<u32>(10549u, 5607u, 4294967295u, 1u), vec4<u32>(22063u, 97438u, 51703u, 14733u), vec4<u32>(4294967295u, 13755u, 4294967295u, 39935u), vec4<u32>(0u, 54939u, 4294967295u, 1u), vec4<u32>(31044u, 4294967295u, 29947u, 48358u), vec4<u32>(0u, 89295u, 1u, 1220u), vec4<u32>(4294967295u, 23999u, 0u, 4294967295u), vec4<u32>(1u, 61321u, 0u, 34380u), vec4<u32>(35289u, 11225u, 4294967295u, 4294967295u));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec4<u32>;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_4(-43720i, 1000f, Struct_2(-2147483647i, Struct_1(select(reverseBits(vec4<i32>(10108i, -6136i, -12094i, u_input.b.x)), vec4<i32>(u_input.a, u_input.a, 32713i, 1276i), !vec4<bool>(arg_0, global1.x, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(771f)) * _wgslsmith_f_op_f32(round(1000f)))), ~global2.xxy, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))));
    var var_1 = !vec3<bool>(true, all(!select(vec4<bool>(arg_0, global1.x, false, true), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, global1.x, arg_0))), global1.x);
    var var_2 = vec3<bool>(true, true, var_1.x);
    let var_3 = _wgslsmith_f_op_f32(sign(-1211f));
    let var_4 = vec2<bool>(any(!(!vec4<bool>(global1.x, global1.x, global1.x, var_1.x))), var_2.x);
    return var_4;
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = reverseBits(~(~u_input.c));
    var var_1 = Struct_4(-28280i, 528f, Struct_2(~u_input.a, Struct_1(-(~vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(max(-854f, -1271f))), vec3<u32>(u_input.d, 1u, reverseBits(4294967295u)), _wgslsmith_f_op_f32(ceil(1687f)), -1016f));
    global1 = select(select(select(!vec2<bool>(false, global1.x), !vec2<bool>(global1.x, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(arg_0), 1u >= _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(var_1.c.c.x, var_1.c.c.x)), select(~global2.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.c.x, 94377u), var_1.c.c.xz), !global1.x)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(global2.wyz, vec3<u32>(~4591u, u_input.d, ~(var_1.c.c.x | u_input.d))), abs(var_1.c.c.x), (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global2.zy, var_1.c.c.zz), firstTrailingBit(74356u)) >> (1u % 32u)) >> (19230u % 32u));
    global2 = ~select(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.d, 25u)], vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c)), vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), 1u, ~var_1.c.c.x, abs(var_2.x))), global0[_wgslsmith_index_u32(firstLeadingBit(~27564u), 25u)], 1064f == _wgslsmith_f_op_f32(-982f + _wgslsmith_f_op_f32(step(-648f, var_1.b))));
    return Struct_3(Struct_1(_wgslsmith_add_vec4_i32(var_1.c.b.a, firstLeadingBit(var_1.c.b.a)) | _wgslsmith_clamp_vec4_i32(firstTrailingBit(var_1.c.b.a), vec4<i32>(-1i, 51511i, u_input.a, 22186i), var_1.c.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f * var_1.b) + 2057f)), ~vec2<u32>(1u, u_input.c));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global0 = array<vec4<u32>, 25>();
    var var_0 = func_2(global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.ywy);
    let var_2 = vec3<bool>(global1.x & all(!(!vec2<bool>(true, global1.x))), arg_0.a == -(~var_0.a.a.x), -_wgslsmith_mult_i32(-1i, -28827i) != var_0.a.a.x);
    var var_3 = Struct_2(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(57321i, arg_0.b.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b.a.x, 2147483647i), var_0.a.a.yz)), 1i), arg_0.b, vec3<u32>(_wgslsmith_clamp_u32(global2.x, ~_wgslsmith_add_u32(var_0.b.x, global2.x), _wgslsmith_mod_u32(0u, arg_0.c.x) >> ((global2.x >> (u_input.c % 32u)) % 32u)), countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(1u, arg_0.c.x, var_0.b.x)), vec3<u32>(30163u, u_input.c, 0u) & vec3<u32>(arg_0.c.x, u_input.c, global2.x))), _wgslsmith_clamp_u32(~global2.x, u_input.d, 1u)), var_0.a.b, arg_2.x);
    return var_0.a.a.x >> (abs(~(~var_3.c.x & ~12927u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(1i >> (~u_input.c % 32u)) > countOneBits(_wgslsmith_mult_i32(func_1(Struct_2(-1i, Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.a, u_input.a), 1000f), global2.yzy, -715f, 115f), 915f, vec4<f32>(1034f, 557f, 1624f, 782f)) ^ (u_input.b.x ^ u_input.b.x), ~abs(u_input.b.x)));
    let var_1 = func_2(true).a;
    var var_2 = Struct_4(~1i, var_1.b, Struct_2(func_2(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, global1.x, global1.x, true), false))).a.a.x, func_2(true).a, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(74160u, global2.x, 4294967295u), global2.zyz), _wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(global2.x, 73579u)), _wgslsmith_mult_u32(~4294967295u, 81631u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(758f, var_1.b, true))), var_1.b));
    var var_3 = ~(~(~reverseBits(vec3<u32>(4294967295u, var_2.c.c.x, u_input.c))));
    var var_4 = all(!func_3(true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_div_f32(-176f, _wgslsmith_f_op_f32(-1067f + _wgslsmith_f_op_f32(-var_1.b)))));
}

