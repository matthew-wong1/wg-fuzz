struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(374f, 590f, -1607f, 1536f), Struct_1(-34882i, vec4<bool>(false, false, false, false)), 362f, 12790i);

var<private> global2: array<f32, 6> = array<f32, 6>(-1396f, 2080f, 372f, -986f, -702f, -531f);

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<f32, 6>();
    var var_0 = Struct_1(54381i, vec4<bool>(true, !any(!vec2<bool>(global1.b.b.x, arg_0.b.b.x)), global1.b.b.x, ((-313f > global2[_wgslsmith_index_u32(4294967295u, 6u)]) != false) && true));
    var var_1 = _wgslsmith_mult_vec3_u32(abs(~(~(vec3<u32>(u_input.a, u_input.a, 62810u) & vec3<u32>(4294967295u, u_input.a, u_input.a)))), vec3<u32>(58165u, ~_wgslsmith_add_u32(u_input.a, u_input.a) >> (~0u % 32u), abs(_wgslsmith_div_u32(_wgslsmith_div_u32(61937u, u_input.a), u_input.a))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + -965f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1864f)) - arg_0.c), global1.a.x)) * global1.a.x));
    global2 = array<f32, 6>();
    return ~var_1.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, global1.c, 1031f, 1836f)))), _wgslsmith_f_op_vec4_f32(trunc(arg_1.a)))), arg_1.b, global2[_wgslsmith_index_u32(~(arg_0 | abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, arg_0)))), 6u)], _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.a, -36589i, arg_1.d), vec3<i32>(select(_wgslsmith_add_i32(100764i, 1i), 1i, all(vec3<bool>(true, true, global1.b.b.x))), min(88696i, firstTrailingBit(1i)), _wgslsmith_clamp_i32(-1i, -19529i, global1.b.a >> (4294967295u % 32u)))));
    let var_0 = Struct_2(global1.a, Struct_1(1i, !select(select(vec4<bool>(arg_1.b.b.x, false, arg_1.b.b.x, false), global1.b.b, global1.b.b), vec4<bool>(true, false, arg_1.b.b.x, arg_1.b.b.x), select(false, false, arg_1.b.b.x))), -1980f, ~1i);
    var var_1 = global1.b;
    var var_2 = Struct_1(~1i, select(arg_1.b.b, vec4<bool>(true, any(select(vec3<bool>(false, var_1.b.x, arg_1.b.b.x), vec3<bool>(global1.b.b.x, global1.b.b.x, global1.b.b.x), vec3<bool>(var_0.b.b.x, var_1.b.x, arg_1.b.b.x))), true, select(1i == var_1.a, true, true)), var_0.b.b.x));
    var var_3 = ~(vec3<i32>(-1i) * -vec3<i32>(var_1.a, 0i, -11726i)) | ~(~select(select(vec3<i32>(9789i, var_2.a, 0i), vec3<i32>(-21212i, 77703i, var_2.a), true), vec3<i32>(7874i, var_0.b.a, var_2.a) ^ vec3<i32>(-23121i, var_1.a, 1i), select(vec3<bool>(var_0.b.b.x, arg_1.b.b.x, false), var_0.b.b.zzy, global1.b.b.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 248f)))))), _wgslsmith_f_op_f32(-global0.x));
}

fn func_2(arg_0: u32) -> i32 {
    global3 = array<vec3<bool>, 25>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-672f))), global0.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(39310u, 6u)])))), global0.x) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-640f)) * _wgslsmith_f_op_f32(trunc(1568f))), _wgslsmith_f_op_f32(func_4(func_3(Struct_2(vec4<f32>(1853f, 1264f, global0.x, global2[_wgslsmith_index_u32(u_input.a, 6u)]), global1.b, -696f, global1.b.a)), Struct_2(vec4<f32>(-1148f, global2[_wgslsmith_index_u32(arg_0, 6u)], -1000f, -341f), global1.b, 177f, global1.d))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 1513f) * global1.a.yz)) - _wgslsmith_f_op_vec2_f32(select(global1.a.wz, vec2<f32>(global1.a.x, global1.a.x), true))))));
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(582f, global2[_wgslsmith_index_u32(18226u << (u_input.a % 32u), 6u)])) * -243f), 324f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~27027u), 6u)])), _wgslsmith_f_op_f32(max(449f, global1.a.x))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 579f) * _wgslsmith_f_op_f32(269f * global0.x)))), global1.b.a);
    global2 = array<f32, 6>();
    return _wgslsmith_add_i32(~global1.b.a, ~(~1i));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = 503f;
    global3 = array<vec3<bool>, 25>();
    global3 = array<vec3<bool>, 25>();
    let var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(29427i, i32(-1i) * -global1.b.a, ~reverseBits(global1.d)), -2147483647i | _wgslsmith_mod_i32(func_2(arg_0), -11544i)), min(_wgslsmith_add_i32(8824i, _wgslsmith_sub_i32(38376i, global1.d)), reverseBits(min(-global1.b.a, global1.b.a & global1.b.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_div_f32(-2467f, global2[_wgslsmith_index_u32(u_input.a, 6u)])))), (_wgslsmith_div_i32(abs(-14295i), 1i) & _wgslsmith_mult_i32(global1.d, var_1.x)) << (31118u % 32u));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(global1.d, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-5106i, 1i, _wgslsmith_add_i32(339i, -63674i)), -var_2.b.a << (u_input.a % 32u)), _wgslsmith_div_i32(abs(var_2.b.a | global1.d), 0i)), countOneBits(vec3<i32>(var_1.x, global1.d | _wgslsmith_div_i32(var_2.b.a, var_1.x), _wgslsmith_mod_i32(var_2.b.a, -55441i) << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a, 3328i, -24224i) & vec3<i32>(global1.d, global1.d, global1.b.a), abs(vec3<i32>(16138i, global1.b.a, global1.b.a))), abs(global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(global1.b.a, 49989i)), _wgslsmith_div_vec3_i32(func_1(~4294967295u & ~u_input.a, _wgslsmith_f_op_vec2_f32(-global0.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global0.x, 2030f, global2[_wgslsmith_index_u32(49907u, 6u)]) * vec4<f32>(-1000f, global0.x, global2[_wgslsmith_index_u32(u_input.a, 6u)], global1.a.x)))), vec3<i32>(~1i, -1i, -58918i)), vec2<i32>(global1.d, ~18403i), global1.c, firstLeadingBit(51552i >> (firstTrailingBit(61019u) % 32u)) | (~global1.b.a ^ firstTrailingBit(var_0.x >> (u_input.a % 32u))));
}

