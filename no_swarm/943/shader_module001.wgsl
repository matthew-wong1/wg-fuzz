struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_3, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.a.c, u_input.a >> (8885u % 32u), ~arg_0.a.c, 64431u & var_0.a.c), abs(global1[_wgslsmith_index_u32(arg_0.a.c, 30u)])), _wgslsmith_div_vec4_u32(vec4<u32>(select(4294967295u, 821u, global2.x), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, arg_0.a.c), vec4<u32>(15443u, u_input.a, arg_0.a.c, var_0.a.c)), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(82816u, 1u, 8157u, 1u), vec4<u32>(0u, arg_0.a.c, 4294967295u, 4294967295u)) << (vec4<u32>(0u, 1u, arg_0.a.c, var_0.a.c) % vec4<u32>(32u)))), 17u)], max(1i, ~(-1i)), !vec3<bool>(true, arg_0.a.d || all(vec3<bool>(true, arg_0.a.d, true)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, var_0.b.x, 1611f), vec4<f32>(var_0.b.x, var_0.b.x, -1095f, -1089f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, var_0.b.x, var_0.b.x, 523f) - vec4<f32>(var_0.b.x, 268f, 601f, -243f)))))));
    var_1 = Struct_5(global3[_wgslsmith_index_u32(var_1.a.a.a.c, 17u)], 0i, vec3<bool>(var_0.b.x < _wgslsmith_f_op_f32(var_1.a.a.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), global2.xy)) != all(!vec4<bool>(false, var_1.a.a.a.d, false, arg_0.a.d)), select(var_1.c.x, all(select(vec3<bool>(var_1.c.x, false, true), var_1.c, var_0.a.d)), any(var_1.c.zx))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(395f * var_1.a.a.b.x))), 129f), -394f, var_0.b.x, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_1.d.x * -1260f))));
    let var_2 = var_0.b.x;
    let var_3 = Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~abs(var_1.a.b.xy), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a.a.a.c, var_0.a.c), firstTrailingBit(var_1.a.b.yx))), 41290u, _wgslsmith_add_u32(~_wgslsmith_div_u32(4294967295u, 30252u), _wgslsmith_add_u32(arg_0.a.c >> (0u % 32u), 5844u))), 17u)], -4193i, vec3<bool>(var_1.a.a.a.b, var_0.a.d, select(arg_0.a.b, var_1.c.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1236f, 130f, 400f, var_1.d.x), var_1.d) - vec4<f32>(1000f, var_0.b.x, 352f, 474f))) * var_1.d));
    return 33112u;
}

fn func_2(arg_0: f32) -> Struct_5 {
    global3 = array<Struct_3, 17>();
    var var_0 = func_3(Struct_2(Struct_1(-135i, !global2.x, 105929u, global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1184f)) + vec2<f32>(arg_0, 594f)))) ^ _wgslsmith_sub_u32(~(~func_3(Struct_2(Struct_1(u_input.b, false, 0u, true), vec2<f32>(arg_0, arg_0)))), 0u);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f * arg_0))));
    let var_3 = Struct_1(13723i, !any(select(!vec4<bool>(true, true, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, false, false), global2.x), !vec4<bool>(true, true, global2.x, true))), u_input.a, all(!vec2<bool>(true, global2.x)));
    return Struct_5(global3[_wgslsmith_index_u32(~(~(~u_input.a)), 17u)], ~min(_wgslsmith_mod_i32(var_3.a ^ -16709i, var_3.a ^ 38140i), _wgslsmith_add_i32(-var_3.a, -var_3.a)), global2.xzy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 573f, 319f, var_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1116f, arg_0, -1962f, var_1))) - vec4<f32>(846f, 1018f, var_1, arg_0)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec2<i32> {
    let var_0 = -6320i;
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1546f)) * 1266f));
    let var_2 = var_1.a.a.b;
    var var_3 = arg_0.c;
    let var_4 = !select(select(!select(vec4<bool>(var_1.a.a.a.d, false, true, true), vec4<bool>(global2.x, arg_0.b, arg_0.b, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b, var_1.c.x, arg_0.d, arg_0.b), !vec4<bool>(var_1.a.a.a.d, true, false, true), select(vec4<bool>(true, true, global2.x, false), vec4<bool>(true, var_1.a.a.a.b, global2.x, false), vec4<bool>(var_1.a.a.a.b, var_1.c.x, arg_0.d, false)))), !(!vec4<bool>(arg_0.d, false, arg_0.d, true)), !(var_2.x == 2662f));
    return max(arg_1.xy, arg_1.zy);
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    global3 = array<Struct_3, 17>();
    global1 = array<vec4<u32>, 30>();
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -61532i, u_input.b), max(_wgslsmith_dot_vec2_i32(arg_0, _wgslsmith_add_vec2_i32(~arg_0, arg_0)), arg_0.x), arg_0.x);
    global0 = array<vec2<u32>, 25>();
    var var_1 = Struct_4(Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(165f)) - -1558f)).a.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 27976u, 50254u), vec3<u32>(23115u, 43482u >> (0u % 32u), _wgslsmith_mult_u32(1026u, 0u)))), _wgslsmith_mod_i32(min(~65020i, u_input.b), -24249i), vec3<f32>(1657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 803f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f + -210f))))));
    return 20703u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(-2147483647i, global2.x, _wgslsmith_add_u32(u_input.a, u_input.a), true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-677f * 539f))))), vec3<u32>(~func_4(func_1(Struct_1(23371i, false, 41560u, true), vec3<i32>(u_input.b, 32583i, 29479i), vec3<u32>(u_input.a, 43088u, u_input.a))), u_input.a, u_input.a ^ ~47038u));
    var var_1 = select(vec4<bool>(true, true, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(786f)) - _wgslsmith_f_op_f32(f32(-1f) * -754f))).a.a.a.b, any(vec3<bool>(var_0.a.a.a >= -1i, true, any(global2.xxz)))), vec4<bool>(!(global2.x & true), select(true && var_0.a.a.b, (var_0.b.x > u_input.a) & all(vec2<bool>(var_0.a.a.b, true)), any(global2.xyx)), true, false), var_0.a.a.d);
    var var_2 = Struct_3(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-664f, _wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x)))))).a.a, ~(~(vec3<u32>(var_0.a.a.c, var_0.b.x, u_input.a) << ((var_0.b | var_0.b) % vec3<u32>(32u)))));
    global0 = array<vec2<u32>, 25>();
    var var_3 = _wgslsmith_clamp_vec3_i32(min(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.a.a, var_2.a.a.a, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 9168i, var_2.a.a.a), vec3<i32>(var_2.a.a.a, 1i, var_0.a.a.a), vec3<i32>(var_0.a.a.a, 2147483647i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(54396i, var_0.a.a.a, u_input.b), vec3<i32>(45590i, 2147483647i, 8772i)))), -reverseBits(~vec3<i32>(u_input.b, 0i, 4013i))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_0.a.a.a, -2147483647i) << (vec3<u32>(var_0.a.a.c, u_input.a, var_2.a.a.c) % vec3<u32>(32u)), ~vec3<i32>(var_2.a.a.a, -7053i, var_2.a.a.a)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -79i, var_2.a.a.a), abs(~vec3<i32>(var_2.a.a.a, -877i, u_input.b))), -(min(-vec3<i32>(1i, 1i, 45303i), ~vec3<i32>(-35704i, 2147483647i, 2147483647i)) >> (_wgslsmith_add_vec3_u32(~var_0.b, var_0.b) % vec3<u32>(32u))));
    let var_4 = any(select(func_2(var_2.a.b.x).c.xz, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(835f, 734f)) * 140f)).c.zx, vec2<bool>(!(!var_1.x), false)));
    var var_5 = func_2(_wgslsmith_f_op_f32(sign(var_2.a.b.x)));
    let var_6 = func_2(var_0.a.b.x).c.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d, _wgslsmith_f_op_vec3_f32(sign(var_5.d.ywx)), ~countOneBits(var_2.a.a.a) >> (1u % 32u));
}

