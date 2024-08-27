struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    global0 = array<vec3<bool>, 16>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1751f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f - arg_0) + _wgslsmith_f_op_f32(arg_0 - -890f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-280f))))));
    var_0 = 379f;
    var_0 = -170f;
    let var_1 = Struct_3(arg_1.c, arg_0, reverseBits(~((arg_1.c ^ vec3<i32>(2147483647i, arg_1.c.x, -1i)) ^ ~arg_1.a)), arg_1.d ^ vec3<u32>(arg_1.d.x, 86491u, arg_1.d.x));
    return _wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_mod_u32(u_input.a.x, ~((arg_1.d.x ^ 114675u) & _wgslsmith_add_u32(var_1.d.x, arg_1.d.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = 4294967295u;
    global0 = array<vec3<bool>, 16>();
    let var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, min(13083u, func_3(1223f, Struct_3(vec3<i32>(-1i, 0i, 9899i), -472f, vec3<i32>(u_input.e, 2349i, u_input.e), u_input.c.xzx)))), 16u)];
    var var_2 = Struct_3(firstLeadingBit(max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 0i, 1i), ~vec3<i32>(u_input.e, u_input.e, u_input.e)), ~vec3<i32>(u_input.e, u_input.e, 2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f * 608f) + _wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) - -967f)))), -(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-21964i, -8291i, u_input.e)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -2147483647i, u_input.e), vec3<i32>(u_input.e, u_input.e, 0i))) ^ vec3<i32>(2147483647i, ~(-19554i), firstLeadingBit(u_input.e))), ~(~(max(u_input.c.ywz, vec3<u32>(30342u, 0u, 60665u)) ^ vec3<u32>(14647u, 37916u, arg_0))));
    var_2 = Struct_3(~var_2.c, _wgslsmith_div_f32(var_2.b, var_2.b), _wgslsmith_clamp_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, 26815i) >> (u_input.c.yxy % vec3<u32>(32u)), abs(var_2.a)), ~(-vec3<i32>(u_input.e, var_2.c.x, u_input.e))), select(var_2.a >> ((vec3<u32>(var_2.d.x, 0u, 102881u) ^ vec3<u32>(u_input.a.x, var_0, 1u)) % vec3<u32>(32u)), select(~vec3<i32>(-33639i, -61683i, var_2.c.x), max(var_2.a, vec3<i32>(u_input.e, 1i, var_2.a.x)), all(vec2<bool>(true, false))), true), var_2.c), ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 0u, 26017u)), vec3<u32>(0u, var_2.d.x | 51355u, 4081u)));
    return Struct_1(!var_1.yy, false, vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(5604i, u_input.e), var_2.c.zz)), var_2.c.yz), u_input.e, abs(u_input.e)), var_2.b);
}

fn func_1() -> bool {
    var var_0 = func_2(4294967295u, Struct_2(true));
    var var_1 = u_input.c;
    let var_2 = vec3<f32>(var_0.d, 698f, var_0.d);
    return !(_wgslsmith_add_i32(27798i, ~var_0.c.x) < (i32(-1i) * -countOneBits(u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-501f, 786f);
    var var_1 = Struct_1(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, any(vec3<bool>(false, false, false))), select(false, false, true) || (u_input.e != u_input.e)), vec2<bool>(func_1(), !(u_input.b.x != u_input.c.x)), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))), any(select(vec2<bool>(true, u_input.d >= u_input.b.x), func_2(u_input.a.x << (u_input.a.x % 32u), Struct_2(false)).a, vec2<bool>(func_2(4294967295u, Struct_2(false)).b, true))), ~(-min(vec3<i32>(22279i, 13000i, u_input.e), vec3<i32>(u_input.e, u_input.e, 14350i))) & select(vec3<i32>(0i, -75511i, -17335i), select(vec3<i32>(2147483647i, u_input.e, 17968i), -vec3<i32>(u_input.e, u_input.e, u_input.e), true), vec3<bool>(true, true, true)), var_0.x);
    var var_2 = var_1.c.x;
    let var_3 = Struct_5(Struct_3(~vec3<i32>(i32(-1i) * -1i, 31070i, ~u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-185f))))), (var_1.c | (var_1.c | vec3<i32>(-38554i, u_input.e, var_1.c.x))) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.d), vec3<u32>(2406u, u_input.c.x, 66818u)) << (u_input.c.yww % vec3<u32>(32u))) % vec3<u32>(32u)), min(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.c.yww ^ u_input.c.xxw), u_input.c.zzy)), firstLeadingBit(u_input.c.zyx), _wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, u_input.a.x, 57756u, 55656u), reverseBits(vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u))), u_input.c) << (select(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 56760u, 7204u), u_input.c), (vec4<u32>(u_input.a.x, u_input.b.x, 1409u, u_input.a.x) | vec4<u32>(26337u, u_input.d, 4294967295u, 0u)) & u_input.c, var_1.b) % vec4<u32>(32u)));
    var_1 = func_2(4294967295u, Struct_2((true & !var_1.b) == true));
    var_1 = Struct_1(func_2(abs(firstLeadingBit(~4294967295u)), Struct_2(var_1.d > _wgslsmith_f_op_f32(-175f - -1239f))).a, any(func_2(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.d, 1u)) >> (_wgslsmith_sub_u32(1u, u_input.c.x) % 32u), Struct_2(any(global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))).a), _wgslsmith_sub_vec3_i32(vec3<i32>(select(i32(-1i) * -8945i, u_input.e, any(var_1.a)), u_input.e, func_2(_wgslsmith_mult_u32(u_input.b.x, u_input.d), Struct_2(true)).c.x), vec3<i32>(1i, -1i, _wgslsmith_clamp_i32(0i, u_input.e, var_3.a.a.x)) | vec3<i32>(var_3.a.a.x, -6308i, _wgslsmith_add_i32(50837i, var_3.a.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, ~(var_3.a.c.xz ^ func_2(u_input.d, Struct_2(false)).c.xx) << (vec2<u32>(min(u_input.b.x, ~0u), reverseBits(var_3.b.x)) % vec2<u32>(32u)));
}

