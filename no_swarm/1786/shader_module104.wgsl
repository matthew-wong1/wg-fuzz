struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    global0 = select(select(vec3<bool>(false, global0.x & (15767i <= global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), true), select(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, true, global0.x), global0.x), !vec3<bool>(global0.x, false, false)), !(!vec3<bool>(global0.x, true, global0.x)), global0.x && true), !global0.x), !vec3<bool>(true, all(!vec3<bool>(global0.x, true, global0.x)), all(vec3<bool>(false, false, false))), !vec3<bool>(true || global0.x, true | global0.x, true));
    let var_0 = vec4<i32>(~u_input.d, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~(~u_input.c.x), 3u)], -24656i), firstLeadingBit(-39751i), _wgslsmith_div_i32(u_input.d, 2147483647i) | global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), ~64287u), _wgslsmith_add_u32(~u_input.c.x, ~u_input.c.x)), 3u)]);
    let var_1 = global0.zy;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-725f, 676f))) + 812f)), -1244f);
    var var_3 = select(~abs(vec4<i32>(var_0.x | var_0.x, var_0.x, u_input.b >> (4294967295u % 32u), ~u_input.b)), vec4<i32>(~0i, u_input.b, _wgslsmith_add_i32(1i, reverseBits(select(-2147483647i, global1[_wgslsmith_index_u32(84345u, 3u)], true))), ~(-global1[_wgslsmith_index_u32(1u, 3u)] << (_wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x) % 32u))), !all(select(vec4<bool>(global0.x, false, true, true), select(vec4<bool>(true, var_1.x, global0.x, false), vec4<bool>(var_1.x, true, global0.x, global0.x), global0.x), vec4<bool>(var_1.x, true, var_1.x, false))));
    return vec3<bool>(all(vec4<bool>(1i > _wgslsmith_dot_vec3_i32(var_3.xyz, var_3.zxz), true, !(false && global0.x), true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, global0.x, false), var_1.x)) == true, !any(vec4<bool>(global0.x & var_1.x, all(vec4<bool>(var_1.x, true, false, global0.x)), true, !var_1.x)));
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_1(select(!(!vec3<bool>(arg_0.x, false, true)), vec3<bool>(any(arg_0.zz) | global0.x, true, true), arg_0.x), ~77877u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(701f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f + 1000f))))), max(~_wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), -global1[_wgslsmith_index_u32(4294967295u, 3u)] ^ _wgslsmith_add_i32(-2147483647i, 0i)) ^ 0i, !arg_0.xzx);
    global1 = array<i32, 3>();
    let var_1 = !vec2<bool>(true, !(!(!global0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.c - var_0.c), Struct_1(!arg_0.wzy, var_0.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(-1927f)), var_0.c.x))), min((global1[_wgslsmith_index_u32(0u, 3u)] ^ -1i) | (37674i ^ u_input.d), ~u_input.b), arg_0.wzx), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]))), vec2<i32>(_wgslsmith_mod_i32(1i, -1i), -2147483647i))), 44292u);
    var_0 = Struct_1(func_3(), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.c - vec2<f32>(-224f, var_0.c.x)) + _wgslsmith_f_op_vec2_f32(-var_0.c)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(817f, var_0.c.x) - vec2<f32>(var_0.c.x, var_2.a.x)))))), ~(-1i), var_0.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-523f, var_0.c.x), vec2<f32>(var_2.b.c.x, var_2.b.c.x)), vec2<f32>(-1000f, var_2.b.c.x)), var_0.c, vec2<bool>(arg_0.x, true)))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(!vec4<bool>(true, global0.x && false, any(vec4<bool>(true, true, global0.x, false)), !global0.x))), Struct_1(vec3<bool>(!(!global0.x), false, true), u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1777f, -296f), vec2<f32>(1089f, 328f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1918f, -476f) * vec2<f32>(-643f, 326f)))), min(u_input.d, abs(0i)), vec3<bool>(!(!global0.x), all(!vec4<bool>(false, false, true, global0.x)), true)), countOneBits(-abs(min(vec2<i32>(23350i, 7051i), vec2<i32>(-2147483647i, -1i)))), select(~min(firstTrailingBit(arg_0), ~u_input.c.x), ~1u, select(any(vec4<bool>(global0.x, false, global0.x, false)), global0.x, false) == global0.x));
    var var_1 = select(~vec3<u32>(28735u, max(u_input.c.x >> (arg_0 % 32u), var_0.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c)), firstLeadingBit(countOneBits(vec3<u32>(u_input.c.x, var_0.d, u_input.c.x) & countOneBits(vec3<u32>(arg_0, 56717u, u_input.c.x)))), !global0.x & !select(var_0.b.e.x, func_3().x, all(global0.yy)));
    var_1 = vec3<u32>(_wgslsmith_mod_u32(44629u, select(64794u, ~(~var_1.x), var_0.b.e.x)), u_input.c.x, firstTrailingBit(~(~83688u)) << (var_0.b.b % 32u));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(~20194u), abs(abs(var_1.x)), firstTrailingBit(_wgslsmith_clamp_u32(var_1.x, _wgslsmith_div_u32(49112u, u_input.c.x), arg_0))), ~(~abs(vec3<u32>(arg_0, arg_0, var_1.x))) & ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.x, 1u, 4805u), max(vec3<u32>(var_1.x, 4294967295u, 35614u), vec3<u32>(arg_0, arg_0, u_input.c.x))), ~(vec3<u32>(countOneBits(var_1.x), ~39055u, ~24159u) & ((vec3<u32>(var_0.d, 0u, 1u) ^ vec3<u32>(u_input.c.x, 31491u, 0u)) ^ vec3<u32>(4294967295u, arg_0, var_1.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, -345f, -962f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, 1000f, 831f) + vec3<f32>(var_0.b.c.x, var_0.a.x, 932f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.c.x, 1148f, var_0.b.c.x)))))));
    return all(vec2<bool>(var_0.b.a.x, any(vec4<bool>(select(var_0.b.e.x, var_0.b.e.x, false), !var_0.b.a.x, all(vec4<bool>(var_0.b.a.x, var_0.b.e.x, false, true)), global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec3<bool>(!func_1(u_input.c.x), true, true), select(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, true), false), !(!vec3<bool>(global0.x, false, true)), vec3<bool>(u_input.c.x > 4294967295u, true, true)), func_3(), !func_3()), 474f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) * _wgslsmith_f_op_f32(f32(-1f) * -380f)) * _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(-283f))))));
    var var_0 = _wgslsmith_mult_u32(10446u << (((u_input.c.x >> (u_input.c.x % 32u)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 42090u, 36919u, 58661u), vec4<u32>(27803u, 51447u, u_input.c.x, 4294967295u)) % 32u)) % 32u), _wgslsmith_div_u32(23254u, u_input.c.x));
    var var_1 = true;
    global0 = vec3<bool>(~(abs(u_input.c.x) ^ 1u) != max(75524u, 40185u), true, global0.x);
    var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1921f, -358f, -1694f, 1239f), _wgslsmith_f_op_vec4_f32(vec4<f32>(751f, 1635f, -907f, 581f) - vec4<f32>(-679f, -1021f, 992f, -1056f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, 1000f, 557f, 481f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 514f, 1000f, -284f)), true)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1596f, 663f, -1000f, -1718f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1671f, -376f, -893f, 1553f)))))));
}

