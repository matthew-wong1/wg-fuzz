struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<f32>, 17>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1052f);
    let var_1 = !select(!any(vec2<bool>(false, arg_1.a.x)), (u_input.d >= max(arg_1.b.x, arg_1.b.x)) != true, true);
    return arg_0.x;
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> vec3<u32> {
    var var_0 = ~(-reverseBits(firstLeadingBit(0i)));
    var var_1 = arg_0.a.c.zz;
    var var_2 = arg_0.a.b.e;
    var var_3 = select(arg_0.a.c, _wgslsmith_add_vec4_u32(countOneBits(reverseBits(vec4<u32>(arg_0.a.c.x, u_input.d, arg_0.a.b.e.b.x, 781u))), ~vec4<u32>(~0u, var_1.x, 4294967295u, 0u)), vec4<bool>(var_2.a.x, !var_2.a.x, ~(~arg_0.a.b.c) < ~(i32(-1i) * -28052i), arg_0.a.b.d.x));
    global0 = u_input.b.wzy;
    return arg_0.a.c.yyw;
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), firstTrailingBit(func_3(Struct_5(Struct_4(vec3<bool>(true, true, false), Struct_2(vec3<u32>(u_input.d, 98274u, 1u), Struct_1(vec3<bool>(true, true, true), vec3<u32>(1u, u_input.d, 0u)), 2147483647i, vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, false), vec3<u32>(22518u, u_input.d, 4294967295u))), vec4<u32>(u_input.d, 0u, u_input.d, 55651u))), _wgslsmith_f_op_f32(floor(-145f)), true))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x >> (40195u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(36894i, -1i, u_input.a.x, 2147483647i), u_input.b), -global0.x, -2147483647i), -vec4<i32>(2197i, -1i, global0.x, global0.x) | vec4<i32>(global0.x, -25175i, global0.x, u_input.a.x)), u_input.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -292f, -371f) + vec3<f32>(-864f, -1292f, -1048f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1854f, 337f, 865f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(995f, 1000f)))), -1792f))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(select(vec2<bool>(all(vec4<bool>(true, true, false, true)), func_1(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, false), vec3<u32>(u_input.d, 52393u, u_input.d)))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), true)), all(vec3<bool>(true, true, true)) & all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global1 = array<vec4<f32>, 17>();
    var var_1 = vec2<f32>(-2199f, 647f);
    var var_2 = Struct_4(vec3<bool>(func_1(vec2<bool>(var_0.x, true), Struct_1(vec3<bool>(false, false, var_0.x), vec3<u32>(24157u, 2100u, 1u))) || any(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), !func_2(), -2147483647i > u_input.a.x), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(98018u, 107159u, u_input.d, u_input.d))), vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.d), select(5088u, 2578u, var_0.x), ~u_input.d)), Struct_1(select(!vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false)), any(vec3<bool>(false, var_0.x, false))), abs(vec3<u32>(62478u, u_input.d, u_input.d))), (_wgslsmith_mult_i32(2147483647i, 1i) ^ (global0.x | global0.x)) ^ ~1i, select(vec2<bool>(func_1(var_0, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, u_input.d, u_input.d))), false), !select(var_0, vec2<bool>(false, false), true), true), Struct_1(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, true), true), !vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x)), vec3<u32>(81472u, 1u, u_input.d))), vec4<u32>(~_wgslsmith_mult_u32(u_input.d, u_input.d), u_input.d, u_input.d, 76156u) ^ (vec4<u32>(firstLeadingBit(u_input.d), ~u_input.d, func_3(Struct_5(Struct_4(vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_2(vec3<u32>(15113u, u_input.d, u_input.d), Struct_1(vec3<bool>(true, false, var_0.x), vec3<u32>(1u, 72643u, 0u)), -1i, var_0, Struct_1(vec3<bool>(true, var_0.x, false), vec3<u32>(0u, u_input.d, u_input.d))), vec4<u32>(19987u, 40301u, 4294967295u, u_input.d))), -1344f, false).x, u_input.d & u_input.d) >> (firstTrailingBit(~vec4<u32>(35791u, 0u, u_input.d, 4294967295u)) % vec4<u32>(32u))));
    var var_3 = var_2.b.e;
    global1 = array<vec4<f32>, 17>();
    var var_4 = _wgslsmith_mod_vec3_u32(var_2.b.a, var_3.b);
    var_4 = ~var_2.c.yxx;
    var_2 = Struct_4(vec3<bool>(false || (var_2.b.c <= var_2.b.c), all(var_0), var_3.a.x), var_2.b, _wgslsmith_mult_vec4_u32(var_2.c, reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.c, var_2.c, vec4<u32>(52077u, 4294967295u, 3289u, 48803u)), var_2.c | vec4<u32>(u_input.d, var_2.b.b.b.x, var_2.b.a.x, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, reverseBits(vec2<u32>(u_input.d, min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47340u, 0u, u_input.d), var_2.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(884f, var_1.x))), vec2<f32>(1000f, 859f), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1050f, 700f) * vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-1250f, var_1.x)))))), ~var_3.b.yz, vec2<u32>(firstLeadingBit(reverseBits(u_input.d)), 1u));
}

