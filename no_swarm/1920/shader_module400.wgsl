struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), vec2<f32>(-1000f, 272f), vec3<u32>(35195u, 1u, 24615u)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec2<f32>(968f, -1866f), vec3<u32>(59591u, 1u, 52149u)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec2<f32>(-563f, 369f), vec3<u32>(4294967295u, 38568u, 0u)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), vec2<f32>(904f, 1000f), vec3<u32>(4294967295u, 34314u, 31713u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_3.x)) - 1000f))) * _wgslsmith_f_op_f32(-1f));
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b, 1u), (~(~0u) << ((_wgslsmith_mod_u32(44845u, u_input.a.x) << (44680u % 32u)) % 32u)) >> (1016u % 32u));
    let var_2 = -517f;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_3.x))));
    global1 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec3_f32(step(arg_3.zyy, vec3<f32>(var_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1502f, 1862f))), _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(min(var_2, -487f))))), 1000f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_1.b.c.x), 1091f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c.x, arg_2.b.c.x, arg_2.b.c.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_1.b.c.x, -136f), vec3<f32>(arg_0.x, 1665f, 999f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_1.a.zz, ~vec3<i32>(12040i, arg_2.a.x, 0i), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 1080f, -645f, 1000f) - vec4<f32>(-940f, 1379f, arg_1.b.c.x, arg_1.b.c.x)))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.yx * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.c.x)) - _wgslsmith_f_op_f32(1975f * 1219f))))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.x, _wgslsmith_div_i32(reverseBits(arg_2.a.x), -12831i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_2.a.x, -51336i) | ~55138i, arg_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), arg_1.a.xx) ^ (arg_1.a.x | -1i))), arg_1.a);
    return var_1.x;
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_1, 4>();
    let var_0 = vec3<i32>(~(-49934i), -45772i, -80247i) | ~(-vec3<i32>(1i, 7717i, _wgslsmith_dot_vec2_i32(vec2<i32>(1115i, -2147483647i), vec2<i32>(0i, 27638i))));
    let var_1 = ~54305i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(326f, _wgslsmith_f_op_f32(round(-475f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1285f, -2194f), Struct_2(var_0, global1[_wgslsmith_index_u32(u_input.b, 4u)]), Struct_2(var_0, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec2<f32>(-848f, -276f), u_input.a.zyz)))))) * _wgslsmith_f_op_f32(func_2(vec2<f32>(-536f, -1000f), Struct_2(vec3<i32>(var_0.x, var_0.x, var_1), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), vec2<f32>(-590f, 1393f), u_input.a.yxz)), Struct_2(var_0, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec2<f32>(2296f, -1901f), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)))))))) * -711f);
    var var_3 = all(vec2<bool>(true, true));
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, select(true, false, false), true), vec3<bool>(true, any(global0[_wgslsmith_index_u32(44185u, 11u)]), all(vec3<bool>(false, false, false)))), vec3<bool>(false, ~u_input.a.x >= ~u_input.b, any(vec4<bool>(false, true, true, false))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)))), vec3<bool>(true, true, true), all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, all(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), true), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(select(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 11u)], global0[_wgslsmith_index_u32(~70906u, 11u)], !global0[_wgslsmith_index_u32(u_input.a.x, 11u)])));
    let var_1 = true;
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    let var_2 = vec3<bool>(var_1, true, !any(!vec2<bool>(var_1, false)) || all(func_1()));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, -36329i) ^ vec4<i32>(1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(31406i, 2147483647i, 31314i)), vec3<i32>(8176i, -42814i, -63792i)), -1i, countOneBits(1i)), select(-vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(1i, ~2147483647i, 1i, _wgslsmith_mult_i32(-33572i, -1i)), vec4<bool>(!var_1, false, !any(vec2<bool>(var_1, var_1)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(-21401i, max(16461i, 2487i)), i32(-1i) * -_wgslsmith_add_i32(-2147483647i, -1i), 26678i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, -381f, 282f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, -646f, -178f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, -1230f, -420f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1820f, -635f, 489f) + vec3<f32>(-1382f, -654f, -668f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(791f - 1404f), 1164f)))), _wgslsmith_f_op_f32(110f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1132f, -1085f) - _wgslsmith_f_op_f32(floor(-109f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1989f + 492f)))));
}

