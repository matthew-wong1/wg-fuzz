struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = 22371u;
    let var_2 = Struct_1(vec3<u32>(abs(select(~u_input.b, ~arg_3.b.x, true)), 6482u, 0u), all(select(!select(vec3<bool>(arg_3.a.d, arg_2, true), vec3<bool>(false, true, arg_2), arg_3.a.b), vec3<bool>(true, true, true), select(!vec3<bool>(arg_3.a.d, true, arg_2), select(vec3<bool>(false, false, arg_3.a.b), vec3<bool>(arg_3.a.b, arg_3.a.d, false), vec3<bool>(arg_3.a.d, arg_3.a.d, arg_3.a.d)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 262f)))), arg_3.a.b, vec4<f32>(_wgslsmith_f_op_f32(933f - arg_1.x), _wgslsmith_f_op_f32(exp2(arg_3.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1001f)))), -596f));
    var_1 = 1204u;
    let var_3 = ~(select(abs(vec4<i32>(0i, u_input.a.x, u_input.a.x, -195i)), select(vec4<i32>(arg_0, arg_0, -2147483647i, u_input.c.x), u_input.c, all(vec2<bool>(false, var_2.b))), select(!global0[_wgslsmith_index_u32(32560u, 17u)], vec4<bool>(arg_2, false, arg_3.a.b, false), vec4<bool>(var_2.d, arg_3.a.b, arg_2, arg_3.a.d))) ^ (u_input.c & ~vec4<i32>(arg_0, 44097i, arg_0, -20295i)));
    return -607f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_2 {
    global1 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(984f, arg_0.x, arg_0.x) + vec3<f32>(-1478f, 1116f, -258f)))) * vec3<f32>(-530f, _wgslsmith_f_op_f32(func_3(-2147483647i, arg_0, true, Struct_2(Struct_1(vec3<u32>(arg_1.x, 26818u, 1u), true, arg_0.x, true, vec4<f32>(-1444f, arg_0.x, arg_0.x, 1492f)), vec3<u32>(1u, 0u, 26545u)))), _wgslsmith_f_op_f32(abs(-835f)))) - arg_0.wzz)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-939f, _wgslsmith_f_op_f32(arg_0.x + 1090f))))) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(1365f * _wgslsmith_f_op_f32(-var_0.x))));
    global2 = array<Struct_2, 6>();
    let var_2 = Struct_1(vec3<u32>(~firstLeadingBit(abs(33465u)), 60699u, _wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(arg_1.x, u_input.e.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, arg_1.x), countOneBits(arg_1.xzz)))), true, -1845f, any(select(vec2<bool>(true, true), vec2<bool>(u_input.a.x > 0i, any(vec3<bool>(true, true, false))), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, global0[_wgslsmith_index_u32(arg_1.x, 17u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(-331f, arg_0.x, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-416f, var_0.x, 1000f, 541f))))))));
    return Struct_2(Struct_1(reverseBits(~(~var_2.a)), false, _wgslsmith_div_f32(1975f, _wgslsmith_f_op_f32(-494f + _wgslsmith_f_op_f32(var_0.x * arg_0.x))), !(_wgslsmith_add_u32(u_input.e.x, arg_1.x) > _wgslsmith_div_u32(u_input.b, 21649u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(min(-641f, 701f)), 927f, var_2.c))), min(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(14157u, var_2.a.x, 28987u)), _wgslsmith_clamp_vec3_u32(arg_1.wwy, arg_1.zzw, arg_1.yyy)), ~firstLeadingBit(vec3<u32>(u_input.b, 1u, u_input.e.x))), max(firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), vec3<u32>(_wgslsmith_mod_u32(32395u, var_2.a.x), ~var_2.a.x, 64575u))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, arg_0, 1007f, 198f))))), select(vec4<u32>(56550u, 4294967295u, 4294967295u, 4294967295u) << (~vec4<u32>(arg_2.x, 26176u, arg_2.x, arg_2.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 36790u, arg_2.x, 65342u), vec4<u32>(arg_2.x, 0u, 30301u, 1u)), reverseBits(vec4<u32>(0u, u_input.e.x, 21590u, 6131u))), arg_3) << ((abs(vec4<u32>(arg_2.x, arg_2.x, 66843u, 1u) << (vec4<u32>(4294967295u, 62444u, u_input.b, 1u) % vec4<u32>(32u))) >> (vec4<u32>(21362u, firstTrailingBit(0u), firstLeadingBit(u_input.e.x), 77312u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 3>();
    let var_1 = func_2(_wgslsmith_div_vec4_f32(var_0.a.e, _wgslsmith_f_op_vec4_f32(abs(var_0.a.e))), ~vec4<u32>(arg_2.x, arg_2.x, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 37369u, 0u, var_0.b.x), vec4<u32>(13393u, 1u, u_input.b, 1u))), 22600u)).a;
    var var_2 = vec2<bool>(true, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(u_input.c.wwy, u_input.c.xzz, false), u_input.c.zxx), _wgslsmith_mod_vec3_i32(u_input.c.xxy | vec3<i32>(0i, u_input.a.x, 2147483647i), vec3<i32>(2147483647i, arg_1, arg_1))) != ~19303i);
    global1 = array<Struct_2, 3>();
    return select(vec2<bool>(any(vec2<bool>(true, true)), all(!vec2<bool>(var_0.a.b, true)) | var_0.a.d), !select(select(select(vec2<bool>(var_0.a.d, arg_3), vec2<bool>(var_1.b, true), true), !vec2<bool>(true, var_2.x), true), vec2<bool>(true, true), !(var_1.c <= var_1.e.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false), true), func_1(_wgslsmith_f_op_f32(-1000f - -488f), u_input.d.x, ~vec2<u32>(u_input.e.x, u_input.e.x), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, !any(global0[_wgslsmith_index_u32(4294967295u, 17u)])), vec2<bool>(all(vec3<bool>(false, false, true)), true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), all(vec3<bool>(false, true, true))))));
    var var_1 = false;
    let var_2 = func_2(vec4<f32>(356f, 348f, _wgslsmith_f_op_f32(545f + 1f), 589f), vec4<u32>(~53935u, 4294967295u, ~reverseBits(_wgslsmith_add_u32(0u, u_input.e.x)), 25172u)).a;
    let var_3 = _wgslsmith_f_op_f32(-var_2.c) <= _wgslsmith_f_op_f32(func_3(~u_input.c.x, _wgslsmith_f_op_vec4_f32(select(var_2.e, vec4<f32>(_wgslsmith_div_f32(var_2.e.x, 500f), -1314f, _wgslsmith_f_op_f32(f32(-1f) * -2324f), _wgslsmith_f_op_f32(-var_2.e.x)), false)), !(!var_2.d), Struct_2(Struct_1(var_2.a, true, _wgslsmith_f_op_f32(floor(var_2.e.x)), true, vec4<f32>(var_2.c, 1000f, -1000f, 753f)), var_2.a)));
    global0 = array<vec4<bool>, 17>();
    var_0 = !select(vec2<bool>(-12159i == u_input.a.x, var_3), vec2<bool>(true || var_2.b, var_3), vec2<bool>(true, all(select(vec4<bool>(var_3, true, true, false), global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(35219u, 17u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_2.a.x | 12491u, u_input.b, true) & 100891u, -631f);
}

