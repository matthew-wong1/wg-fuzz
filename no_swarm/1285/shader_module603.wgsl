struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>) -> bool {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    var var_0 = true;
    var var_1 = arg_0.b.c ^ arg_0.b.c;
    return !all(!(!select(vec3<bool>(arg_1, arg_0.b.a, false), vec3<bool>(true, false, arg_1), true)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    var var_0 = Struct_1(select(true, func_3(Struct_3(true, Struct_1(true, 3118i, 54230u, vec3<f32>(-689f, -759f, -1110f), vec2<i32>(7865i, -1i)), 0i << (u_input.b.x % 32u)), select(false, true, false) != true, vec3<u32>(~5826u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 16962u, 19128u), u_input.b), u_input.a)), all(vec3<bool>(true, true, false))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -78420i, 2147483647i, 17378i), vec4<i32>(0i, 37872i, 20127i, 22792i))), 1i) | select(select(firstTrailingBit(0i), ~(-11629i), false), _wgslsmith_div_i32(~0i, _wgslsmith_mod_i32(-8651i, -2147483647i)), true), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1240f)), _wgslsmith_f_op_f32(-203f - _wgslsmith_div_f32(483f, 464f)))), _wgslsmith_f_op_f32(abs(1501f))), vec2<i32>(-min(-46057i, -2147483647i) | _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_clamp_i32(-2147483647i, 11694i, 67501i)), 12045i));
    return Struct_1(false, -var_0.b, u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, 617f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(142f, var_0.d.x, -556f) - var_0.d), vec3<bool>(var_0.a, false, var_0.a)))))), vec2<i32>(1i, firstTrailingBit(~firstLeadingBit(var_0.e.x))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = max(~(~max(vec4<u32>(1u, u_input.b.x, arg_0, u_input.b.x), vec4<u32>(arg_0, 66078u, 0u, arg_0)) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, arg_0), ~arg_0, _wgslsmith_div_u32(u_input.a, arg_0), 45223u) % vec4<u32>(32u))), ~vec4<u32>(~firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_sub_u32(arg_0 >> (1u % 32u), abs(0u)), ~arg_0));
    var var_2 = func_2();
    var var_3 = var_2.d.x;
    var_1 = vec4<u32>(var_1.x, firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 71451u)), 0u, ~(~abs(4294967295u)));
    return Struct_3(!var_2.a, func_2(), -13989i);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(arg_1.b.b, ~arg_1.c, 0i), func_1(1u).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.d.x) - arg_1.b.d.x), Struct_1(arg_1.b.d.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.d.x * 1151f), _wgslsmith_f_op_f32(1092f + arg_1.b.d.x))), _wgslsmith_dot_vec2_i32(arg_1.b.e, ~(~arg_1.b.e)), _wgslsmith_add_u32(arg_2, 67414u), arg_1.b.d, vec2<i32>(27077i & _wgslsmith_mod_i32(23449i, arg_1.b.b), arg_1.b.b)), arg_1.b.d.xz);
    global0 = array<vec3<i32>, 19>();
    let var_1 = func_2();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f - var_1.d.x) - -515f), func_2().d.x);
    global0 = array<vec3<i32>, 19>();
    return Struct_1(var_1.a, arg_1.b.b, arg_2, vec3<f32>(_wgslsmith_div_f32(var_2.x, 313f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(367f))) + _wgslsmith_f_op_f32(ceil(-162f))), 412f), -(~arg_1.b.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec3<i32>, 19>();
    let var_0 = -arg_0.e.x;
    let var_1 = arg_2.b;
    let var_2 = true;
    global0 = array<vec3<i32>, 19>();
    return Struct_2(arg_0.b, func_1(_wgslsmith_sub_u32(~1u, 1u)).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(ceil(1675f)), (-79239i == _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -57619i, 1i), global0[_wgslsmith_index_u32(4294967295u, 19u)])) | ((74154i & arg_2.c) >= (-49737i | arg_2.b.b)))), arg_2.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1514f, -783f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f - arg_0.d.x) * _wgslsmith_f_op_f32(abs(arg_0.d.x)))))));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = ~(~(~vec3<u32>(0u, arg_0.b.c, u_input.b.x) >> (vec3<u32>(arg_0.d.c, arg_0.d.c, arg_0.d.c) % vec3<u32>(32u))) ^ reverseBits(u_input.b));
    var var_1 = firstTrailingBit(~vec4<u32>(27332u, 1309u, u_input.a >> (u_input.a % 32u), ~(~arg_0.b.c)));
    let var_2 = _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(_wgslsmith_add_u32(var_0.x, 14125u), 1u, var_1.x << (var_0.x % 32u), select(1u, 32907u, arg_0.d.a))), vec4<u32>(var_0.x, var_0.x, min(reverseBits(u_input.a), reverseBits(var_0.x)) | (countOneBits(var_1.x) | _wgslsmith_div_u32(4294967295u, 1u)), 1u));
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, var_2.x), 2017u, 1u, _wgslsmith_mod_u32(arg_0.b.c, var_0.x)), vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(var_1.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 4294967295u), vec3<u32>(arg_0.d.c, var_2.x, arg_0.b.c)), select(1u, var_0.x, arg_0.d.a))), 4294967295u, func_2().c, ~(~var_0.x)));
    var_1 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c ^ var_2.x, 4294967295u & arg_0.b.c, 4294967295u, _wgslsmith_div_u32(var_2.x, 49635u)), var_2));
    return Struct_2(-82041i, arg_0.d, arg_0.c, Struct_1(arg_0.b.a, select(-2147483647i, -21260i, (u_input.a >= u_input.b.x) || true), func_2().c, vec3<f32>(arg_0.c, -1070f, _wgslsmith_div_f32(458f, _wgslsmith_f_op_f32(f32(-1f) * -896f))), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, -arg_1), arg_0.a)), _wgslsmith_f_op_vec2_f32(arg_0.e - func_5(Struct_1(true, 1i, ~var_2.x, arg_0.d.d, -arg_0.b.e), arg_0.d, func_1(_wgslsmith_div_u32(u_input.b.x, 4294967295u))).b.d.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(all(vec3<bool>(true, true, true)), func_1(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b.yx)), func_4(any(vec4<bool>(true, true, true, true)), Struct_3(true, Struct_1(true, -18795i, u_input.b.x, vec3<f32>(183f, -974f, -1593f), vec2<i32>(-2147483647i, 13745i)), firstTrailingBit(-1i)), ~(~u_input.b.x)), func_1(93418u)), -9989i);
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    var var_1 = min(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, var_0.d.e.x, 2083i, -17974i), vec4<i32>(var_0.a, 6415i, var_0.d.b, var_0.d.b)) | -select(vec4<i32>(-22736i, var_0.b.e.x, -74108i, -2147483647i), vec4<i32>(var_0.a, -40414i, var_0.d.e.x, 56604i), var_0.b.a), vec4<i32>(firstLeadingBit(-18495i), 30778i, _wgslsmith_mult_i32(var_0.a, -2147483647i), abs(-10411i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(20138u, var_0.b.c, u_input.b.x, u_input.a) << (vec4<u32>(1u, 1u, 14419u, 43304u) % vec4<u32>(32u)), select(vec4<u32>(u_input.b.x, 81755u, 22669u, 56357u), vec4<u32>(1368u, var_0.d.c, 1u, u_input.b.x), var_0.b.a)) % vec4<u32>(32u))) << (~firstLeadingBit(vec4<u32>(10969u, 33611u, var_0.b.c, 4294967295u) | vec4<u32>(var_0.b.c, var_0.b.c, var_0.d.c, 31059u)) % vec4<u32>(32u));
    var var_2 = 1i;
    global0 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~var_1.wwz, firstTrailingBit(vec3<i32>(var_1.x, -62017i, 42162i))), var_0.b.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.d.x, 1017f, 644f), _wgslsmith_f_op_vec3_f32(-var_0.d.d))) + var_0.b.d), 4294967295u, abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.d.e.x, var_0.d.b, var_1.x, 0i)), reverseBits(vec4<i32>(var_0.b.b, 1i, -1i, var_1.x))), countOneBits(~var_0.b.e.x))));
}

