struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(-19790i, Struct_1(vec4<f32>(-509f, 567f, -1000f, 2079f), vec2<u32>(64409u, 4294967295u), false, 2147483647i), vec2<bool>(true, true), 1u)), Struct_3(Struct_2(-23225i, Struct_1(vec4<f32>(763f, -598f, 152f, -1000f), vec2<u32>(1u, 1u), true, 0i), vec2<bool>(false, true), 33474u)), Struct_3(Struct_2(85522i, Struct_1(vec4<f32>(-822f, 1000f, -807f, -394f), vec2<u32>(0u, 4294967295u), false, 2147483647i), vec2<bool>(true, true), 1u)), Struct_3(Struct_2(23666i, Struct_1(vec4<f32>(987f, -1112f, 340f, 1292f), vec2<u32>(31621u, 6757u), true, 1i), vec2<bool>(false, true), 4294967295u)), Struct_3(Struct_2(4321i, Struct_1(vec4<f32>(-385f, -1987f, 1052f, -1214f), vec2<u32>(0u, 4294967295u), false, -5994i), vec2<bool>(false, true), 23924u)), Struct_3(Struct_2(12296i, Struct_1(vec4<f32>(346f, 843f, -1072f, -2348f), vec2<u32>(0u, 0u), true, 56566i), vec2<bool>(false, true), 17371u)));

var<private> global1: Struct_1;

var<private> global2: Struct_4 = Struct_4(1i, vec2<bool>(false, true), vec3<bool>(true, false, true), 0u, vec3<f32>(1000f, 2056f, -213f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = 46246u;
    let var_1 = ~(~(vec4<u32>(_wgslsmith_clamp_u32(global1.b.x, global2.d, global2.d), 4294967295u, global2.d, ~global2.d) >> (vec4<u32>(global2.d, 0u, 1u, global1.b.x) % vec4<u32>(32u))));
    var var_2 = vec2<bool>(all(vec4<bool>(true, (global1.d >> (global1.b.x % 32u)) <= ~global1.d, 37213u <= var_1.x, global1.c)), select(false, true, global1.c));
    let var_3 = global2.b;
    var var_4 = vec3<i32>(-16795i, firstTrailingBit(-3012i), -246i);
    return -1876f;
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), global2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-553f)) - global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-u_input.a.x)) - 141f)), countOneBits(global1.b), ~(~(i32(-1i) * -1476i)) <= ~global1.d, ~_wgslsmith_sub_i32(-1i ^ ~u_input.a.x, global2.a));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 1780f, global2.e.x, global1.a.x)), ~vec2<u32>(~global2.d, 0u), true, u_input.a.x);
    let var_0 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global2.d, 116758u) | vec3<u32>(41803u, arg_1, 8834u), ~vec3<u32>(global2.d, 1u, 9028u))) ^ vec3<u32>(arg_1, abs(global2.d), ~1u);
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global2.e.x, 207f, global1.a.x, global2.e.x)))), _wgslsmith_sub_vec2_u32(reverseBits(global1.b), vec2<u32>(_wgslsmith_sub_u32(var_0.x, 4294967295u), 27477u) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(46256u, global1.b.x), var_0.zx) % vec2<u32>(32u))), !((global2.e.x != _wgslsmith_f_op_f32(trunc(global1.a.x))) || (~global1.b.x != arg_1)), ~abs(_wgslsmith_clamp_i32(global1.d, global1.d, global1.d)));
    return -67520i;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(241f - _wgslsmith_f_op_f32(-global1.a.x));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, arg_1.e.x, -1467f, 312f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-475f, -1932f, global2.e.x, global2.e.x), global1.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, 872f, -1028f, arg_1.e.x))))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.e.x + 1188f), -1000f)), _wgslsmith_f_op_f32(global2.e.x * -670f), global2.e.x)), global1.b, true, ~u_input.a.x ^ u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(global1.a + global1.a);
    global0 = array<Struct_3, 6>();
    global2 = arg_1;
    return func_2(any(vec4<bool>(true, select(global2.c.x, arg_0, arg_0), global1.b.x != 1u, arg_1.a == arg_1.a)), 0u) >> (arg_1.d % 32u);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = abs(global2.d);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), abs(select(~vec2<u32>(global1.b.x, global2.d), _wgslsmith_mult_vec2_u32(global1.b, global1.b), true) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, 1000f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -1985f)), select(-2147483647i, reverseBits(~1i), all(vec4<bool>(all(vec4<bool>(var_0, global2.b.x, var_0, global2.c.x)), false, global2.b.x, global2.c.x == global2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<i32>(select(global2.a, func_1(any(vec2<bool>(false, global1.c)), Struct_4(u_input.a.x, vec2<bool>(global2.c.x, false), global2.c, 2309u, vec3<f32>(global1.a.x, global2.e.x, global2.e.x))), true), firstLeadingBit(u_input.a.x), (global1.d >> (reverseBits(15467u) % 32u)) & -_wgslsmith_clamp_i32(20523i, global1.d, 2147483647i)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1695f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) + -1547f), -2152f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - -134f), 1346f));
    global2 = Struct_4(var_0.d, vec2<bool>(any(select(global2.c.yz, vec2<bool>(var_0.c, true), false)) || any(global2.c), !all(!vec4<bool>(false, var_0.c, global2.c.x, false))), !vec3<bool>(true | global2.b.x, any(!global2.c), all(select(vec4<bool>(global2.b.x, true, true, var_0.c), vec4<bool>(var_0.c, global2.c.x, false, false), vec4<bool>(true, var_0.c, true, global2.b.x)))), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(794f, var_0.a.x, 1513f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(661f, var_0.a.x, var_1.x) + vec3<f32>(-585f, var_1.x, 242f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_0.a.x, 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, firstLeadingBit(~firstTrailingBit(~var_0.b.x)), -select(_wgslsmith_div_i32(0i, global2.a), -2147483647i, var_0.c));
}

