struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: i32;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), -781f, -224f, -65379i), Struct_1(vec3<u32>(54621u, 30221u, 51062u), 363f, -565f, -21626i), Struct_1(vec3<u32>(4294967295u, 0u, 81180u), -1000f, 230f, 78892i), Struct_1(vec3<u32>(19636u, 0u, 4294967295u), 1200f, 646f, 1i), Struct_1(vec3<u32>(14232u, 5914u, 17075u), 1162f, 852f, -28913i), Struct_1(vec3<u32>(0u, 0u, 19846u), -458f, -789f, -7833i), Struct_1(vec3<u32>(1u, 42238u, 4294967295u), 1964f, 499f, 16486i), Struct_1(vec3<u32>(1u, 49751u, 4294967295u), 1000f, -1769f, 1i), Struct_1(vec3<u32>(0u, 83346u, 27224u), -1000f, 1405f, -3584i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 41852u), 1095f, 152f, 2147483647i), Struct_1(vec3<u32>(1u, 61341u, 92368u), 1434f, -926f, 18708i), Struct_1(vec3<u32>(66582u, 9358u, 42324u), 615f, -917f, 67731i), Struct_1(vec3<u32>(34902u, 4294967295u, 1u), -178f, 2958f, i32(-2147483648)), Struct_1(vec3<u32>(0u, 77406u, 4294967295u), 1381f, 469f, -13162i), Struct_1(vec3<u32>(61323u, 29949u, 40771u), 1017f, 1503f, 2147483647i), Struct_1(vec3<u32>(4294967295u, 0u, 3986u), 102f, -1522f, -1i), Struct_1(vec3<u32>(1u, 4294967295u, 0u), -446f, -1000f, i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 39215u, 0u), 407f, 513f, 1i));

var<private> global3: Struct_3 = Struct_3(vec4<f32>(-1000f, 657f, 479f, 263f), true, vec4<f32>(-1356f, -177f, -1366f, 1389f), Struct_1(vec3<u32>(1u, 0u, 1u), 626f, 754f, 3192i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(-(~global3.d.d), _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, -34164i, 2147483647i, global3.d.d)), firstTrailingBit(vec4<i32>(global3.d.d, 35116i, u_input.b, 0i)))), min(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, firstLeadingBit(u_input.b)), ~(-1i)), 41787i));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, global3.c.x)))) + global3.c.x)), global3.d.c));
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(47858u, 18u)], global3.d.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(global3.c.x, arg_0.b), 155f)))))));
    global1 = u_input.b;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(global3.d.d, -(~arg_0.d)), -17278i & -arg_0.d, ~u_input.b, 2147483647i >> (~u_input.a.x % 32u));
    let var_2 = global3.d;
    var var_3 = select(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(27040u, 0u, 0u)), global3.d.a), countOneBits(u_input.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(3940u, 52310u, var_2.a.x, 4294967295u)), ~firstLeadingBit(vec4<u32>(1u, u_input.a.x, 24841u, u_input.a.x))), abs(647u), ~global3.d.a.x), any(vec2<bool>(true, true)));
    return select(false, global3.b && (_wgslsmith_sub_u32(~0u, 4294967295u) <= var_2.a.x), any(!select(global0.zww, select(vec3<bool>(global0.x, true, true), global0.wwz, global0.wyw), true)));
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(~(~u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global3.c.x, global3.a.x)))), _wgslsmith_f_op_f32(-global3.d.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -648f)))), global3.d.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * global3.a.x));
    var var_1 = global0.xz;
    let var_2 = vec3<i32>((_wgslsmith_mult_i32(var_0.a.d, _wgslsmith_add_i32(arg_1, var_0.a.d)) | 10004i) >> (31262u % 32u), 2147483647i, ~u_input.b);
    var_1 = !(!select(vec2<bool>(global0.x, arg_0), global0.xy, true));
    global0 = vec4<bool>(var_1.x, global3.b, global0.x, func_3(Struct_1(u_input.a, _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(select(-902f, global3.a.x, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f) + _wgslsmith_f_op_f32(max(664f, var_0.a.b))), firstTrailingBit(2147483647i))));
    return countOneBits(global3.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(49522i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, 15311i, u_input.b, 1i), vec4<i32>(u_input.b, -1i, global3.d.d, 1i << (1u % 32u))));
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3.a), global3.a)), !(all(!global0.zy) || (4294967295u <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 5710u)))), vec4<f32>(_wgslsmith_f_op_f32(-936f + _wgslsmith_f_op_f32(-global3.d.b)), 1194f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) * _wgslsmith_div_f32(global3.d.b, 175f)), _wgslsmith_f_op_f32(-397f - -1211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.b + 1413f)) * -714f)), global2[_wgslsmith_index_u32(~(~(~1u)), 18u)]);
    global2 = array<Struct_1, 18>();
    global1 = func_1(global3.a.x > -1609f, -28253i);
    var var_1 = global3.c;
    let var_2 = Struct_1(~(~u_input.a) & global3.d.a, global3.d.b, 1701f, _wgslsmith_div_i32(2147483647i, -(-66818i << (_wgslsmith_mod_u32(global3.d.a.x, u_input.a.x) % 32u))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global3.c))))), var_0.x != _wgslsmith_add_i32(-(~57442i), var_2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f - var_2.c) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(global3.c.x + var_2.b), _wgslsmith_f_op_f32(step(1390f, var_2.b))) * _wgslsmith_f_op_vec4_f32(round(global3.a))), Struct_1(max(_wgslsmith_div_vec3_u32(u_input.a, ~global3.d.a), var_2.a), -260f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.b)))), _wgslsmith_add_i32(-_wgslsmith_clamp_i32(global3.d.d, global3.d.d, -27809i), ~(-global3.d.d))));
    var_1 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~8105u, ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(15564u, 1u, var_3.d.a.x, 0u)), abs(vec4<u32>(1u, 72470u, 1u, var_3.d.a.x))) << (~(~countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 43046u))) % vec4<u32>(32u)), global3.d.c);
}

