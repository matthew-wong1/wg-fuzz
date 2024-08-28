struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<u32> = vec2<u32>(1270u, 33136u);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    global1 = vec2<u32>(abs(u_input.d), max(_wgslsmith_sub_u32(~firstLeadingBit(global1.x), global1.x), global0.x | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22758u, 4294967295u, 21919u) << (vec4<u32>(u_input.d, global0.x, 0u, 1u) % vec4<u32>(32u)), ~vec4<u32>(global0.x, 27147u, 60546u, u_input.d))));
    global1 = vec2<u32>(global1.x, _wgslsmith_sub_u32(reverseBits(~1u), ~_wgslsmith_div_u32(u_input.d, 31473u)));
    return _wgslsmith_sub_vec2_u32(global0.zz, firstLeadingBit(vec2<u32>(countOneBits(1u >> (global0.x % 32u)), reverseBits(~1u))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> bool {
    return global2.x;
}

fn func_1(arg_0: Struct_3) -> vec2<f32> {
    global1 = func_2(vec4<i32>(abs(u_input.a), abs(-2147483647i << (_wgslsmith_add_u32(arg_0.a, 52926u) % 32u)), max(2147483647i, 13950i), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -20486i, u_input.c, u_input.a), vec4<i32>(u_input.e.x, -3865i, u_input.c, u_input.a)))));
    let var_0 = ~(-(vec2<i32>(28513i, u_input.c) ^ ~vec2<i32>(9060i, -5957i)));
    let var_1 = Struct_2(~(select(var_0.x, -7220i, false) ^ -2147483647i), Struct_1(vec4<bool>(true, true, any(arg_0.b), select(arg_0.b.x, any(vec3<bool>(false, true, true)), !global2.x)), global2.x & func_3(Struct_5(Struct_2(var_0.x, Struct_1(vec4<bool>(arg_0.b.x, arg_0.b.x, false, true), global2.x, vec4<i32>(-2147483647i, 1i, u_input.e.x, var_0.x), vec3<f32>(-160f, -1496f, -401f), vec4<u32>(u_input.d, 86346u, arg_0.a, global0.x)), 13765u), Struct_2(u_input.c, Struct_1(vec4<bool>(true, false, true, false), arg_0.b.x, vec4<i32>(var_0.x, var_0.x, 33226i, -2147483647i), vec3<f32>(-145f, -735f, -831f), vec4<u32>(global0.x, 1u, 38563u, arg_0.a)), 1u), u_input.d), abs(var_0.x), 1f, vec3<u32>(32047u, 8868u, 1u) | vec3<u32>(1u, u_input.d, global0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 28924i, u_input.c, var_0.x), vec4<i32>(37441i, u_input.e.x, 22983i, 1i)), 17211i, var_0.x), vec4<i32>(2147483647i, 1i, var_0.x, -42308i)), vec3<f32>(-546f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(121f * 296f), -1000f), -115f), ~(~vec4<u32>(u_input.d, 55998u, global1.x, 1u))), _wgslsmith_div_u32(global1.x, 42889u >> (global1.x % 32u)));
    let var_2 = !(abs(~global1.x) >= (~_wgslsmith_div_u32(u_input.d, 0u) >> (~17674u % 32u)));
    var var_3 = -607f;
    return var_1.b.d.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~u_input.e.x), (u_input.c | min(u_input.a ^ 28580i, u_input.c)) << (~(~(~66305u)) % 32u), u_input.c & countOneBits(-16902i));
    var var_1 = -2147483647i;
    let var_2 = ~_wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(global1.x, global1.x, global1.x)), 4294967295u);
    global1 = ~select(~global0.yy, ~(~vec2<u32>(u_input.d, global0.x)) & ~vec2<u32>(global1.x, var_2), global2.x);
    global1 = select(global0.yz, abs(vec2<u32>(u_input.d, global1.x)), u_input.d >= ~var_2);
    var var_3 = max(var_0.zx, var_0.yy >> (global0.yy % vec2<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-895f, -1133f), vec2<f32>(-213f, -117f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, -1205f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1231f, -1000f), vec2<f32>(821f, -857f), true))))), _wgslsmith_div_vec2_f32(vec2<f32>(-501f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), 1930f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-126f, 303f) + vec2<f32>(-844f, 124f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(global1.x, vec2<bool>(global2.x, true)))) - vec2<f32>(788f, -996f))))), global2.x));
    global2 = select(!select(vec2<bool>(global2.x || false, global2.x), vec2<bool>(global2.x | false, true), !(!global2.x)), vec2<bool>(true, true), false);
    global1 = _wgslsmith_div_vec2_u32(select(max(vec2<u32>(~global0.x, ~u_input.d), global0.xx >> (countOneBits(vec2<u32>(u_input.d, 81317u)) % vec2<u32>(32u))), global0.zx, !(!vec2<bool>(global2.x, global2.x))), vec2<u32>(u_input.d << (global1.x % 32u), 49507u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(global0.x, _wgslsmith_sub_u32(var_2, global0.x))), firstLeadingBit(select(~(~global0.xz), vec2<u32>(100102u, 53861u) << (abs(global0.yy) % vec2<u32>(32u)), !vec2<bool>(global2.x, global2.x))), vec4<u32>(_wgslsmith_mod_u32(30049u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_2, global1.x, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, global0.x, 8507u, u_input.d), vec4<u32>(var_2, global1.x, 0u, 11479u)))), 0u, ~global0.x, 1u));
}

