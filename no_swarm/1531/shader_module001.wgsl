struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: vec4<f32>;

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    global2 = arg_0.x;
    var var_0 = global1.yyx;
    global0 = array<Struct_2, 29>();
    let var_1 = ~u_input.a;
    var var_2 = global0[_wgslsmith_index_u32(0u, 29u)];
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) + _wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_div_f32(-829f, 658f)), _wgslsmith_f_op_f32(var_2.d.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.d.b.x, _wgslsmith_f_op_f32(-573f * 917f)))))), _wgslsmith_f_op_f32(-var_2.a.a), -782f);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(func_3(~firstTrailingBit(vec3<u32>(~1u, ~12379u, ~0u))));
    var var_0 = abs(vec4<i32>(firstTrailingBit(-1i), arg_0, u_input.a, abs(~37570i)) ^ ~(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_1.x, 48352i, -1i), vec4<i32>(u_input.a, 15849i, arg_1.x, u_input.a)) | abs(vec4<i32>(u_input.a, -2147483647i, arg_0, u_input.a))));
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), ~(~1u), 1u, _wgslsmith_mult_u32(firstLeadingBit(1u), 0u)) | min(vec4<u32>(78228u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 16085u, 45603u, 3821u)), 1u, select(51298u, 4294967295u, arg_2)), max(abs(vec4<u32>(0u, 0u, 15094u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(27275u, ~countOneBits(_wgslsmith_add_u32(31425u, 19368u)), 0u, ~(~select(0u, 52679u, arg_2))));
    let var_1 = -52465i;
    var var_2 = Struct_2(Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-701f, _wgslsmith_f_op_f32(max(-114f, global1.x)), _wgslsmith_f_op_f32(round(global1.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1118f, global1.x) + global1.ywy), _wgslsmith_f_op_vec3_f32(sign(global1.wyy)), vec3<bool>(arg_2, arg_2, true)))), !(!(!vec4<bool>(true, arg_2, false, arg_2)))), Struct_1(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_vec3_f32(-global1.zzw), select(vec4<bool>(arg_2, all(vec2<bool>(arg_2, arg_2)), true, arg_2), !vec4<bool>(arg_2, false, arg_2, true), arg_2)), select(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, 19805i, var_1)), vec4<i32>(785i, var_0.x, var_1, var_1)), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_1.x, 0i), arg_1), u_input.a, _wgslsmith_mod_i32(0i, arg_1.x), -20907i), select(!vec4<bool>(arg_2, false, arg_2, arg_2), select(select(vec4<bool>(false, false, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, false), false), vec4<bool>(true, true, true, true), false), all(vec3<bool>(arg_2, false, arg_2)))), Struct_1(178f, global1.wxw, !vec4<bool>(!arg_2, true, arg_2, arg_2)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1576f, -416f, global1.x)))) + vec3<f32>(global1.x, -2606f, 2181f)), vec4<bool>(true, true, true, true)));
    return firstTrailingBit(~1u);
}

fn func_1() -> Struct_3 {
    var var_0 = select(vec3<u32>(~1u ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70077u, 10982u, 4294967295u, 34352u), vec4<u32>(19271u, 1u, 1u, 21558u)), 1u, ~1u), 53526u, firstTrailingBit(func_2(-u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, u_input.a, -1i), vec4<i32>(-2147483647i, 1i, -42499i, 2147483647i)), true))), vec3<u32>(countOneBits(func_2(u_input.a, vec4<i32>(-23520i, u_input.a, u_input.a, 2147483647i), false)) | 0u, 1u, _wgslsmith_clamp_u32(firstTrailingBit(2804u), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-2147483647i, -1i)), vec4<i32>(14940i, u_input.a, u_input.a, u_input.a), u_input.a == 2147483647i), 4294967295u)), select(vec3<bool>(false, true, all(vec2<bool>(true, true))), vec3<bool>(!any(vec3<bool>(false, false, false)), true, true), false));
    global0 = array<Struct_2, 29>();
    var var_1 = 1622f;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, global1.x, global1.x, global1.x)) + vec4<f32>(global1.x, -162f, -423f, 311f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * -757f), -1000f, _wgslsmith_f_op_f32(step(-610f, global1.x)), -2654f)), vec4<bool>(true, false, true, !(1869f != global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.x)), 502f)), 818f, _wgslsmith_f_op_f32(1009f - _wgslsmith_f_op_f32(-global1.x)), global1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(11283u, var_0.x, 4294967295u))))), !(!vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true))));
    var_1 = 1347f;
    return Struct_3(!(all(vec4<bool>(true, true, true, true)) || (true | any(vec3<bool>(false, false, false)))), vec3<i32>(countOneBits(1i ^ u_input.a) >> (~(96566u << (var_0.x % 32u)) % 32u), countOneBits(-1i), -u_input.a ^ _wgslsmith_sub_i32(~(-1i), u_input.a)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(2147483647i, u_input.a))), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 2147483647i, u_input.a)))), -u_input.a, select(vec3<bool>(any(vec4<bool>(false, false, false, false)) & true, true, true), vec3<bool>(false, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec2<bool>(true, true)), true, !all(vec4<bool>(false, false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 145f, global1.x, global1.x) - vec4<f32>(748f, -260f, global1.x, 1064f)))));
    global0 = array<Struct_2, 29>();
    var var_0 = (u_input.a > 42892i) | true;
    var var_1 = func_1();
    global2 = ~_wgslsmith_dot_vec3_u32(~(~countOneBits(vec3<u32>(62103u, 4294967295u, 92214u))), ~vec3<u32>(1u, 1u, 1u));
    var var_2 = ~firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.c, var_1.b.x, 2147483647i) & ~vec3<i32>(-1i, var_1.c, u_input.a), select(var_1.b, vec3<i32>(-88678i, u_input.a, u_input.a) | var_1.b, select(var_1.a, var_1.a, var_1.a))));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(min(var_2.x, min(55506i, -79927i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -18728i, var_2.x, var_1.c), select(vec4<i32>(1i, -47412i, var_2.x, -1i), vec4<i32>(var_2.x, 1i, var_2.x, var_1.d), vec4<bool>(var_1.e.x, false, var_1.a, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, var_2.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(15542i, u_input.a, -13722i), vec3<i32>(var_2.x, var_1.b.x, 2147483647i), var_1.b)), var_2.x), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.d, var_1.b.x, -12658i), vec4<i32>(0i, -37392i, var_1.b.x, -20706i)) & select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, var_1.d), vec4<i32>(u_input.a, 2147483647i, -1i, var_2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -13408i, 0i, 1i), vec4<i32>(1i, var_2.x, 82544i, u_input.a)), vec4<bool>(false, false, var_1.e.x, var_1.e.x))), -1329f, vec4<i32>(firstLeadingBit(var_1.c), var_2.x, ~28936i, max(func_1().b.x, _wgslsmith_add_i32(var_1.d, -1i))), abs(vec3<u32>(4294967295u, 10325u, 4294967295u)), vec3<u32>(38401u, ~_wgslsmith_mod_u32(1u, ~0u), ~abs(~0u)));
}

