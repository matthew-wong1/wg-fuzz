struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(true, 2147483647i, vec2<i32>(-1i, 4791i), 0u), Struct_3(false, -9370i, vec2<i32>(2147483647i, i32(-2147483648)), 17273u), Struct_3(true, i32(-2147483648), vec2<i32>(-941i, 13494i), 4294967295u), Struct_3(true, 0i, vec2<i32>(-86205i, 12260i), 8026u), Struct_3(false, i32(-2147483648), vec2<i32>(3479i, -28746i), 0u), Struct_3(false, 2147483647i, vec2<i32>(21293i, i32(-2147483648)), 4294967295u), Struct_3(false, i32(-2147483648), vec2<i32>(18593i, -9523i), 4294967295u), Struct_3(false, -55323i, vec2<i32>(-1i, 31037i), 1292u), Struct_3(false, -55017i, vec2<i32>(25645i, 0i), 4294967295u), Struct_3(true, 1i, vec2<i32>(-27411i, -1980i), 18314u), Struct_3(false, 1i, vec2<i32>(i32(-2147483648), -8754i), 4294967295u), Struct_3(false, 0i, vec2<i32>(-1i, 2147483647i), 13054u), Struct_3(true, 2147483647i, vec2<i32>(-14795i, -47712i), 23212u));

var<private> global2: array<Struct_2, 25>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = select(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x), -arg_1.b, 49065i), arg_1.b), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17693i, 23631i, 40527i), vec3<i32>(arg_1.c.x, -6812i, arg_1.b) ^ vec3<i32>(1i, arg_1.c.x, -49145i)), 1i), -_wgslsmith_div_i32(firstLeadingBit(arg_1.b), _wgslsmith_mod_i32(arg_1.c.x, arg_1.c.x)), reverseBits(34324i)), all(vec3<bool>(arg_1.c.x <= arg_1.b, true, all(vec4<bool>(true, arg_1.a, false, false)))) && true);
    let var_1 = Struct_3(false, firstTrailingBit(-var_0.x), ~max(vec2<i32>(-68448i, var_0.x), -vec2<i32>(-16234i, -27i)), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-177f, -1000f) + _wgslsmith_f_op_f32(trunc(-352f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1090f, _wgslsmith_f_op_f32(floor(1584f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1082f, 1000f)) + _wgslsmith_f_op_f32(floor(-134f)))))));
    let var_3 = Struct_2(513f, 351f, !(!(!(!vec3<bool>(var_1.a, false, false)))));
    let var_4 = var_1;
    return u_input.e.xz;
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x & _wgslsmith_dot_vec2_u32(abs(max(~u_input.e.wz, func_3(4294967295u, global1[_wgslsmith_index_u32(u_input.e.x, 13u)]))), u_input.e.xy), 25u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1365f, var_0.b) + arg_0)), vec2<f32>(338f, arg_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-var_0.b))));
    global2 = array<Struct_2, 25>();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(var_1));
    var var_3 = Struct_1((vec3<i32>(-1i) * -(vec3<i32>(26064i, -23510i, arg_1) >> (vec3<u32>(4294967295u, 44022u, u_input.c) % vec3<u32>(32u)))) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, arg_1)), -(-2274i << (0u % 32u)), -24405i), select(select(!vec4<bool>(var_0.c.x, false, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.c.x, true, true, false), var_0.c.x), select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), false), all(vec2<bool>(var_0.c.x, var_0.c.x))), vec4<bool>(true, var_0.c.x, true, !var_0.c.x)), !vec4<bool>(!var_0.c.x, all(vec4<bool>(var_0.c.x, true, false, true)), var_0.c.x, var_0.c.x), !select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), !vec4<bool>(true, true, true, var_0.c.x), select(vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec4<bool>(false, false, var_0.c.x, true), true))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1302f, var_1.x, arg_0) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.b, var_2.x) - vec3<f32>(876f, var_2.x, 2818f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_2.x, 351f))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -651f), 4605i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, 984f, _wgslsmith_div_f32(300f, 168f))))));
    var var_1 = ~(~u_input.e.x) ^ 1u;
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(4522i << (u_input.b.x % 32u), 1i, -75267i)), reverseBits(select(vec3<i32>(3921i, 3303i, -17569i), vec3<i32>(2147483647i, -1i, -12397i), true)) ^ ~(~vec3<i32>(-2147483647i, -25715i, -14498i))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 786f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 210f) - vec3<f32>(var_0.x, -790f, var_0.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, var_0.x, 251f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, 712f)), !var_2.b.wwx))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -163f)), -1382f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -519f, var_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -823f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1064f, -674f, -237f), vec3<f32>(var_0.x, -974f, 206f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, -347f, -750f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -566f, 1392f), vec3<f32>(var_0.x, var_0.x, var_0.x), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1381f, var_0.x))))));
    let var_4 = ~u_input.d.x;
    return var_2.b.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 25>();
    var var_0 = global0[_wgslsmith_index_u32(~max(~(~6945u), ~7718u), 25u)];
    var var_1 = func_1();
    var var_2 = firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec3_u32(select(u_input.e.zxy, u_input.e.yxz, vec3<bool>(var_1.x, true, false)), firstTrailingBit(vec3<u32>(u_input.c, 0u, u_input.a))), _wgslsmith_mult_u32(~(u_input.d.x | 51383u), ~(29889u >> (u_input.a % 32u))), ~51250u));
    let var_3 = global2[_wgslsmith_index_u32(select(~var_2.x, abs(u_input.a), var_1.x), 25u)];
    let var_4 = -89051i;
    var_2 = _wgslsmith_clamp_vec3_u32(u_input.e.www, vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(28480u, var_2.x, _wgslsmith_dot_vec3_u32(u_input.e.yyw, u_input.e.zyz))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.e.wwy, vec3<u32>(u_input.a, 27138u, 1u)), select(_wgslsmith_clamp_vec3_u32(u_input.e.wwx, vec3<u32>(var_2.x, var_2.x, 1u), vec3<u32>(25761u, 4294967295u, 35248u)), vec3<u32>(u_input.b.x, u_input.a, 0u) | u_input.e.xwy, select(var_3.c, var_3.c, true))), 1u), firstLeadingBit(select(_wgslsmith_div_vec3_u32(u_input.e.wyz, u_input.e.xzx) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), u_input.e.yyx) % vec3<u32>(32u)), vec3<u32>(~var_2.x, var_2.x << (u_input.d.x % 32u), 1u), select(!vec3<bool>(var_3.c.x, true, false), vec3<bool>(true, false, var_3.c.x), !var_3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 248f, -481f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, var_3.a, -517f), vec3<f32>(var_3.b, var_3.b, var_3.a)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-var_3.a)))), 8390u | u_input.d.x);
}

