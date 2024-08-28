struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 30> = array<i32, 30>(-1i, 1087i, 1i, -7436i, 38261i, -24588i, 2147483647i, -17735i, 35314i, 48404i, i32(-2147483648), 56680i, -26611i, 1i, 0i, -1i, i32(-2147483648), -24548i, -1778i, -37026i, 40660i, 38193i, 1i, 1i, 29997i, i32(-2147483648), 54807i, -1i, -22142i, 42506i);

var<private> global2: u32 = 30823u;

var<private> global3: array<i32, 8>;

var<private> global4: i32 = -27343i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec3<bool>(any(select(!(!vec4<bool>(false, arg_2.d, arg_2.a, true)), !(!vec4<bool>(arg_0.b, arg_2.d, true, true)), select(vec4<bool>(arg_2.d, arg_2.d, true, true), vec4<bool>(true, false, false, arg_2.d), all(vec4<bool>(false, arg_0.b, true, false))))), true, arg_0.b);
    let var_1 = Struct_4(u_input.c.x, !(!(!select(vec3<bool>(true, false, arg_2.a), vec3<bool>(false, true, false), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 750f) - _wgslsmith_div_f32(811f, arg_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))), arg_2);
    var var_2 = u_input.c;
    var var_3 = var_1.d;
    var var_4 = ~vec2<u32>(~(~_wgslsmith_mult_u32(0u, 83833u)), ~(u_input.c.x >> (1u % 32u)));
    return vec4<u32>(0u, ~31144u, ~0u, ~var_1.a);
}

fn func_2() -> bool {
    global2 = ~41532u;
    global3 = array<i32, 8>();
    global1 = array<i32, 30>();
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(~(u_input.c >> (vec4<u32>(0u, u_input.a.x, 1u, 79687u) % vec4<u32>(32u))), ~(func_3(Struct_2(0u, false, vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], -41248i, 85050i, -1i), vec2<u32>(u_input.c.x, u_input.a.x)), vec2<f32>(-707f, -210f), Struct_1(true, 0i, -1795i, false)) | (u_input.c & u_input.c))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), any(vec3<bool>(true, false, true))), vec3<bool>(!any(vec4<bool>(true, false, false, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), (u_input.a.x <= 0u) == false), vec3<bool>(all(vec2<bool>(false, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), any(vec2<bool>(false, false)) && false)), -329f, Struct_1(all(vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), -_wgslsmith_mod_i32(~2147483647i, ~(-7039i)), 57787i, true && !any(vec3<bool>(false, true, true))));
    global2 = ~var_0.a | 42528u;
    return !var_0.b.x;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = !vec3<bool>(any(vec2<bool>(arg_0 < arg_0, func_2())), true, !(~97324i != _wgslsmith_clamp_i32(u_input.b, -9742i, global3[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    let var_1 = vec4<i32>(u_input.b, (firstLeadingBit(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c.x, 30u)])) << (_wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.a) % 32u)) | ~(-11288i), ~(-global1[_wgslsmith_index_u32(60551u, 30u)]), -1i);
    global2 = u_input.c.x;
    return _wgslsmith_f_op_f32(step(arg_0, -925f));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, -1000f, 238f))))))))));
    global2 = select(_wgslsmith_div_u32(14723u, ~_wgslsmith_mod_u32(0u, countOneBits(73107u))), u_input.a.x, false);
    global2 = arg_1.c.d.x;
    var var_1 = Struct_4(4294967295u, vec3<bool>(~_wgslsmith_mod_u32(0u, arg_1.b.x) == countOneBits(abs(arg_1.c.a)), arg_1.c.b, arg_2.c.b), arg_3, Struct_1(any(select(!vec3<bool>(false, arg_2.c.b, arg_1.c.b), vec3<bool>(true, true, true), arg_1.c.b)), ~arg_2.d.x, -30354i, arg_1.c.b));
    global1 = array<i32, 30>();
    return _wgslsmith_f_op_f32(min(arg_3, 1597f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(-605f, 2032f)))) + 1224f))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f - -1023f)) + _wgslsmith_f_op_f32(abs(-1809f))), select(vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.a.x, 16204u), u_input.c.x), _wgslsmith_clamp_vec3_u32(~u_input.c.wzx, _wgslsmith_sub_vec3_u32(u_input.c.zzz, u_input.c.www), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.b) == -global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), Struct_2(u_input.c.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], 1i, global3[_wgslsmith_index_u32(95003u, 8u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], -1i, 11860i, u_input.b)), countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(1005u, 30u)], u_input.b, 24580i)), vec4<bool>(true, true, true, true)), abs(~vec2<u32>(66938u, u_input.a.x))), vec2<i32>(_wgslsmith_sub_i32(-53395i, 1i), select(32043i, 2221i, false))), Struct_3(1061f, select(~(u_input.c.yzw << (u_input.c.wxz % vec3<u32>(32u))), u_input.c.yww, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), Struct_2(_wgslsmith_mult_u32(u_input.a.x, 1u), true, -vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.b, -12076i, u_input.b), firstTrailingBit(vec2<u32>(10916u, u_input.a.x)) ^ ~vec2<u32>(2968u, u_input.a.x)), firstLeadingBit(max(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<i32>(46490i, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-120f, 752f)))))))));
    let var_1 = !(func_2() || false);
    var var_2 = firstLeadingBit(u_input.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-932f * _wgslsmith_div_f32(1875f, -844f)), -741f, -728f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-936f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f - -2248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1325f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1511f + _wgslsmith_f_op_f32(ceil(426f))))), vec3<bool>(var_1, any(select(vec3<bool>(true, true, var_1), select(vec3<bool>(true, var_1, false), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1)), var_1)), var_1)));
    var var_4 = min(global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~max(1u, u_input.a.x), ~(~60001u))), 8u)], abs(~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(20209u, 30u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])))));
    global2 = _wgslsmith_mod_u32(select(u_input.c.x, u_input.a.x, any(vec4<bool>(var_1, var_1, false, true))), u_input.a.x) ^ u_input.a.x;
    var_3 = vec3<f32>(154f, var_3.x, 410f);
    var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1949f - var_3.x)) - var_3.x), _wgslsmith_f_op_f32(-var_3.x), -330f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, -892f, var_3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -262f, var_3.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(688f, var_3.x, var_3.x) * vec3<f32>(var_3.x, -1000f, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.x, 1030f, 167f) * vec4<f32>(var_3.x, -1249f, -334f, var_3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1258f, 757f, var_3.x) + vec4<f32>(-488f, -157f, var_3.x, -586f)))) * vec4<f32>(var_3.x, var_3.x, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_3.x), _wgslsmith_div_f32(var_3.x, 362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_3.x))))), ~u_input.c.yxz);
}

