struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: array<f32, 17>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> u32 {
    var var_0 = vec2<u32>(~43439u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0)), _wgslsmith_add_u32(arg_0.x, arg_0.x)), ~select(4294967295u, 4294967295u, arg_2.x) ^ ~4294967295u, ~(arg_0.x | _wgslsmith_dot_vec4_u32(vec4<u32>(43826u, 10114u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 1u, arg_0.x, 0u)))));
    let var_1 = true;
    let var_2 = true;
    var_0 = ~arg_0 | arg_0;
    global2 = array<f32, 17>();
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(~(~1u), 1u), 1u);
    global0 = array<Struct_2, 29>();
    let var_1 = ~(~(~countOneBits(4880u)));
    let var_2 = vec4<bool>(arg_0.x, true, false, false);
    var var_3 = -263f;
    return vec2<u32>(~func_3(firstLeadingBit(vec2<u32>(26623u, var_0.x)), ~u_input.a.x, var_2, vec4<i32>(0i, -3196i, 19930i, 2147483647i) ^ vec4<i32>(u_input.a.x, u_input.a.x, -47425i, -833i)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 69909u), select(vec3<u32>(var_0.x, 22294u, var_1), vec3<u32>(var_0.x, var_1, 12724u), var_2.x))) & ~(~(~vec2<u32>(var_1, 0u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = 2324i;
    var var_1 = Struct_3(~_wgslsmith_mult_vec4_u32(select(firstLeadingBit(vec4<u32>(arg_1.b, arg_1.b, 1u, 4294967295u)), max(vec4<u32>(0u, 0u, arg_1.a.x, 54345u), vec4<u32>(52355u, arg_0.x, arg_1.a.x, 9749u)), true), vec4<u32>(~4294967295u, 17203u, ~0u, countOneBits(arg_1.a.x))), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, arg_0.x, 22587u, arg_1.b), vec4<u32>(4294967295u, arg_1.a.x, 14949u, 12826u)), 576u, _wgslsmith_mult_u32(0u, arg_1.a.x))) & ~(vec3<u32>(4294967295u, arg_1.a.x, 1u) << (vec3<u32>(1u, arg_0.x, 1u) % vec3<u32>(32u))), arg_1, Struct_1(vec2<u32>(func_2(vec3<bool>(true, true, false), u_input.a).x, 69488u), ~(arg_1.a.x ^ ~59090u)));
    var var_2 = Struct_3(var_1.a, var_1.b, arg_1, Struct_1(abs(func_2(vec3<bool>(false, true, true), u_input.a)), ~func_3(_wgslsmith_div_vec2_u32(arg_1.a, arg_0), -u_input.a.x, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -38557i, 47245i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 0i, u_input.a.x)))));
    let var_3 = Struct_3(var_2.a, vec3<u32>(~abs(0u), var_2.b.x, func_3(var_2.d.a, ~(~u_input.a.x), vec4<bool>(true, -440f <= global2[_wgslsmith_index_u32(4294967295u, 17u)], select(false, false, true), true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -44817i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 105245i, 2147483647i, -1i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i))))), var_1.d, var_1.d);
    var var_4 = vec4<bool>(!(!all(vec4<bool>(false, false, true, true)) || !all(vec3<bool>(false, false, false))), reverseBits(firstTrailingBit(u_input.a.x) & select(u_input.a.x, 2147483647i, false)) < (i32(-1i) * -1i), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(637f, global2[_wgslsmith_index_u32(54599u, 17u)]) - _wgslsmith_div_f32(180f, 1087f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 17u)]))), false);
    return vec3<i32>(max(_wgslsmith_clamp_i32(u_input.a.x, -14812i, abs(u_input.a.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.a.x, 0i), -vec3<i32>(u_input.a.x, 1i, -253i))), u_input.a.x | _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x)), -23144i) | -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -1i, u_input.a.x)), ~(-vec3<i32>(-6426i, u_input.a.x, -26773i)));
}

fn func_1() -> bool {
    global2 = array<f32, 17>();
    var var_0 = func_4(func_2(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true), u_input.a), Struct_1(func_2(vec3<bool>(true, true, true), _wgslsmith_clamp_vec2_i32(~u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(38803i, 0i))), 1u));
    var var_1 = all(vec2<bool>(true, true));
    let var_2 = _wgslsmith_mod_u32(42966u, firstLeadingBit(~(~abs(56814u))));
    var var_3 = global0[_wgslsmith_index_u32(~var_2, 29u)];
    return true;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6766u), vec2<u32>(4294967295u, 45192u))), abs(1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(54060u, 0u), vec2<u32>(64758u, 4294967295u), vec2<u32>(29830u, 4294967295u)), vec2<u32>(_wgslsmith_sub_u32(32525u, 0u), ~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 10150u, _wgslsmith_mod_u32(4822u, 7494u)), min(vec3<u32>(54298u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)))));
    let var_1 = Struct_3(vec4<u32>(select(0u, var_0.x, true) ^ (var_0.x << (var_0.x % 32u)), var_0.x, var_0.x, 1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 5725u, 1u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, 22490u))), ~(~(~min(vec3<u32>(4294967295u, var_0.x, 0u), vec3<u32>(var_0.x, 1u, 43350u)))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(select(var_0.x, 0u, true), select(var_0.x, var_0.x, true)), countOneBits(~vec2<u32>(var_0.x, 1u)), vec2<u32>(1u, var_0.x)), var_0.x), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(var_0.x, 126715u), vec2<u32>(472u, 22855u)), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(countOneBits(73460u), ~var_0.x)), ~(~var_0.x)));
    var var_2 = Struct_1(vec2<u32>(var_0.x, var_0.x), var_1.b.x);
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.x), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.a.x, 10549u), ~var_2.a.x), var_1.c.b ^ ~var_1.d.a.x)) >> (_wgslsmith_mult_vec2_u32(var_1.a.yy, _wgslsmith_clamp_vec2_u32(~var_1.c.a, vec2<u32>(max(41025u, var_0.x), 0u), var_1.c.a)) % vec2<u32>(32u));
    let var_4 = var_1;
    return var_1.d;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    var var_0 = firstLeadingBit(reverseBits(4294967295u));
    let var_1 = -1i;
    var var_2 = global0[_wgslsmith_index_u32(arg_1.a.x, 29u)];
    var_0 = 53856u;
    let var_3 = Struct_3(vec4<u32>(44254u, max(11286u, ~(~arg_0.x)), abs(func_2(vec3<bool>(true, true, true), var_2.d.xy).x), max(_wgslsmith_sub_u32(arg_0.x, 1u), abs(var_2.e.b))), firstLeadingBit(countOneBits(abs(~arg_0))), func_5(any(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1.a.x, 17u)] != global2[_wgslsmith_index_u32(var_2.e.b, 17u)], -2147483647i >= u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 17u)]), -1376f))), func_5(!(u_input.a.x != var_1), vec2<f32>(414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(195f))))));
    return var_2.a << (_wgslsmith_mod_u32(func_5(var_2.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_3.b.x, 17u)], global2[_wgslsmith_index_u32(7437u, 17u)]) * vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 17u)], -242f))))).a.x, _wgslsmith_dot_vec2_u32(var_3.c.a, arg_0.yz)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -14872i;
    var var_1 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, false, false)))));
    global1 = array<vec3<f32>, 21>();
    var var_2 = _wgslsmith_sub_i32(func_6(~vec3<u32>(1u, 1u, 1u), Struct_3(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), func_5(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, global2[_wgslsmith_index_u32(77314u, 17u)]))), Struct_1(vec2<u32>(4189u, 21656u), func_2(vec3<bool>(false, false, false), vec2<i32>(var_0, u_input.a.x)).x)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), firstTrailingBit(var_0));
    var var_3 = Struct_1(~vec2<u32>(1u, 1u), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, ~(~var_3.a.x), var_3.b > 4294967295u), 601f, ((var_3.b ^ select(var_3.b, var_3.a.x, true)) >> (var_3.a.x % 32u)) ^ (max(85701u, abs(1u)) | var_3.a.x));
}

