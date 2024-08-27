struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(27688i, -6844i, -26124i, 2147483647i), vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 2927i, 2147483647i), vec4<i32>(-1i, 2147483647i, -21233i, -14362i), vec4<i32>(i32(-2147483648), -103348i, i32(-2147483648), 0i), vec4<i32>(-23721i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(26363i, -46416i, -1i, 1i), vec4<i32>(i32(-2147483648), -10031i, 30481i, i32(-2147483648)), vec4<i32>(30296i, -64484i, -1i, 30820i), vec4<i32>(-36444i, -3410i, -33494i, -1i), vec4<i32>(1i, -1i, -7578i, 0i), vec4<i32>(32892i, -2419i, -1i, 2147483647i), vec4<i32>(26027i, -21058i, 21785i, 2147483647i), vec4<i32>(1i, 18581i, i32(-2147483648), -1i), vec4<i32>(-39948i, 0i, -4459i, i32(-2147483648)));

var<private> global1: array<u32, 23> = array<u32, 23>(4294967295u, 48708u, 0u, 4294967295u, 36458u, 52119u, 38065u, 1u, 28005u, 5127u, 1u, 38278u, 37200u, 12718u, 0u, 4294967295u, 53002u, 40060u, 0u, 0u, 51646u, 1u, 18319u);

var<private> global2: array<vec2<bool>, 30>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 56106u);

var<private> global4: array<vec3<i32>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-323f - 1275f), _wgslsmith_f_op_f32(arg_3.b - -164f), true)), arg_3.b), -1385f, all(vec4<bool>(!arg_1, arg_1 | true, arg_1, true)))), arg_2.x));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(ceil(-738f));
    global1 = array<u32, 23>();
    var var_2 = u_input.b;
    var var_3 = max(min(~countOneBits(var_2.x), _wgslsmith_div_i32(var_2.x, -_wgslsmith_clamp_i32(-715i, var_2.x, -35100i))), var_2.x);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(~firstTrailingBit(max(global3.x, 0u)), 23u)], ~1u), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 0u)) << (abs(~u_input.d.xy) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(select(2917u, 39361u, true), 107080u >> (global1[_wgslsmith_index_u32(40450u, 23u)] % 32u)), 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(~18575u, 25031u), ~global3.zz & u_input.d.xy)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_2(301f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~arg_1, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, -1459f, -2349f, -912f)), Struct_2(-125f, -1158f, arg_0.x, 3643u))) + 119f)), _wgslsmith_sub_i32(~arg_0.x, u_input.b.x), global3.x);
    global1 = array<u32, 23>();
    let var_1 = Struct_1(129f);
    var var_2 = _wgslsmith_mod_u32(arg_1.x, 4294967295u) | min(func_3(true, Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a)))), ~4485u);
    var var_3 = var_0.a;
    return min(-1i, -(_wgslsmith_mod_i32(reverseBits(2147483647i), u_input.c << (12915u % 32u)) >> (global3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(358f)) * _wgslsmith_f_op_f32(sign(1246f))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global3.x, 23u)]), vec2<u32>(6302u, 18584u)), false, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1328f, -666f, 362f, 1007f))), Struct_2(469f, 748f, u_input.e.x, global3.x))))), 1f);
    var var_1 = vec4<i32>(func_2(u_input.b, u_input.d.yy), abs(u_input.e.x), u_input.c ^ _wgslsmith_sub_i32(21410i, -_wgslsmith_mod_i32(u_input.b.x, -31230i)), u_input.e.x);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 502f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, 546f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1423f, -2243f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(751f - var_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))));
    var var_2 = -68901i;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wxz, max(u_input.d.xx, abs(~(~vec2<u32>(12385u, u_input.d.x)))));
}

