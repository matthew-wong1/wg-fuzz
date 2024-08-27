struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(1i, -78330i, 265i, i32(-2147483648)), vec4<i32>(0i, 7217i, 1i, 1i), vec4<i32>(-1i, 0i, -1i, -1i), vec4<i32>(15964i, -13518i, 6797i, -82104i));

var<private> global1: vec4<u32> = vec4<u32>(3891u, 46047u, 45095u, 67899u);

var<private> global2: array<Struct_4, 8>;

var<private> global3: vec3<bool>;

var<private> global4: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> bool {
    global1 = ~vec4<u32>(114262u, ~_wgslsmith_mult_u32(global1.x, 4294967295u), 11342u, global1.x >> (global1.x % 32u));
    global4 = arg_3;
    global2 = array<Struct_4, 8>();
    global4 = Struct_4(_wgslsmith_sub_u32(1u, global1.x) > (~_wgslsmith_mult_u32(global1.x, global1.x) ^ _wgslsmith_add_u32(~global1.x, u_input.d)));
    global3 = arg_0.zww;
    return false;
}

fn func_2() -> u32 {
    global3 = !vec3<bool>(false, global4.a, !global4.a);
    let var_0 = any(vec4<bool>(!any(!vec3<bool>(global4.a, global4.a, global4.a)), true & !select(false, global3.x, true), !(!global4.a) & select(func_3(vec4<bool>(false, true, true, global3.x), Struct_1(u_input.b.x), global4.a, Struct_4(global3.x)), true && global4.a, false), !any(select(vec3<bool>(global4.a, global4.a, true), vec3<bool>(true, true, global3.x), vec3<bool>(true, false, true)))));
    let var_1 = Struct_1(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-869f, -514f, 516f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(936f, 1996f, -547f))))))));
    var var_3 = Struct_2(abs(~u_input.d | ~u_input.d), u_input.d, global3.x);
    return u_input.d;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global4 = Struct_4((false || (~7930u >= _wgslsmith_clamp_u32(u_input.d, global1.x, global1.x))) & !arg_0.c);
    var var_0 = _wgslsmith_f_op_f32(floor(146f));
    global1 = firstTrailingBit(vec4<u32>(abs(countOneBits(56509u)), arg_0.b, func_2(), 0u));
    var var_1 = arg_0;
    let var_2 = countOneBits(-_wgslsmith_add_i32(-19745i, u_input.a.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(45341u, firstTrailingBit(_wgslsmith_mod_u32(select(46385u, var_1.b, global3.x), 1u)), firstLeadingBit(26673u)), ~_wgslsmith_mult_vec3_u32(max(reverseBits(global1.zyw), ~global1.xxz), vec3<u32>(11867u, max(1u, arg_0.a), arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstTrailingBit(~(abs(vec3<u32>(global1.x, 1u, 0u)) | (vec3<u32>(23420u, 33813u, 152067u) & vec3<u32>(u_input.d, global1.x, global1.x)))), ~(~max(-64415i, _wgslsmith_add_i32(-1i, -58146i))), ~(~_wgslsmith_mod_u32(0u, 82612u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(37661u >> (u_input.d % 32u), _wgslsmith_mult_u32(1u, 11628u)), ~global1.zy));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(1i >> (func_1(Struct_2(4294967295u, 1u, global3.x)) % 32u), var_0.b) ^ (select(u_input.a.zw, u_input.a.wz, !vec2<bool>(false, global3.x)) & ~(-u_input.b)), ~(~u_input.a.wz));
    let var_2 = Struct_2(75400u, var_0.c, any(!(!select(vec4<bool>(true, true, false, global4.a), vec4<bool>(global3.x, false, true, true), vec4<bool>(global4.a, true, true, true)))));
    var var_3 = vec4<bool>(true, global3.x, any(!global3.xy), !func_3(!(!vec4<bool>(true, true, global3.x, global3.x)), Struct_1(var_0.b), all(vec2<bool>(false, global3.x)), Struct_4(global3.x)));
    var_3 = !select(select(!vec4<bool>(false, var_2.c, var_3.x, var_2.c), !select(vec4<bool>(false, global3.x, var_3.x, global3.x), vec4<bool>(false, true, global4.a, global3.x), vec4<bool>(global4.a, true, var_2.c, var_2.c)), !vec4<bool>(var_2.c, false, true, global4.a)), !vec4<bool>(false, var_0.b > u_input.a.x, select(false, true, false), !var_2.c), select(select(!vec4<bool>(var_3.x, var_3.x, true, global3.x), !vec4<bool>(var_3.x, global4.a, global3.x, true), global3.x), vec4<bool>(true, var_3.x, any(vec4<bool>(false, false, false, true)), func_3(vec4<bool>(global3.x, false, false, false), Struct_1(u_input.b.x), true, global2[_wgslsmith_index_u32(1u, 8u)])), all(select(var_3.xx, global3.xy, false))));
    var var_4 = vec3<u32>(55305u, select(u_input.d, 32035u, true), 79839u);
    var var_5 = select(u_input.a.zxy, _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(~u_input.a.x), (var_1.x >> (1u % 32u)) | _wgslsmith_mod_i32(0i, var_1.x), -min(30509i, 1i)), ~firstTrailingBit(u_input.a.zyz), _wgslsmith_sub_vec3_i32(~(~u_input.a.zxw), -(~vec3<i32>(1i, 2147483647i, -32034i)))), var_3.x);
    global1 = abs(~select(vec4<u32>(var_4.x, _wgslsmith_mod_u32(var_2.b, u_input.d), ~0u, 1u >> (u_input.d % 32u)), firstLeadingBit(vec4<u32>(23080u, var_2.b, 0u, var_0.c) >> (vec4<u32>(35070u, 1u, 68751u, var_2.b) % vec4<u32>(32u))), !(!global4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

