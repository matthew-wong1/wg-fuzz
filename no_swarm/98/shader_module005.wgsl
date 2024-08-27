struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: vec4<i32> = vec4<i32>(-17114i, -73420i, 2147483647i, 62705i);

var<private> global2: array<Struct_3, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global1 = vec4<i32>(-2147483647i, -abs(~_wgslsmith_mod_i32(-18660i, -2147483647i)), -u_input.b.x & firstTrailingBit(u_input.c), 2147483647i);
    global2 = array<Struct_3, 18>();
    global2 = array<Struct_3, 18>();
    let var_0 = !(!vec4<bool>(true, true, true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))));
    global2 = array<Struct_3, 18>();
    return _wgslsmith_clamp_u32(~(~abs(arg_1.c.b) & _wgslsmith_sub_u32(arg_1.c.a, ~arg_1.d.b)), arg_1.a.a, ~reverseBits((4294967295u ^ arg_1.c.b) >> (arg_1.d.a % 32u)));
}

fn func_2() -> vec3<u32> {
    global0 = array<Struct_2, 13>();
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_1(var_0.x, 1u, -2147483647i);
    global1 = vec4<i32>(-global1.x, -u_input.b.x | global1.x, min(-var_1.c, ~(-(~(-52052i)))), global1.x);
    let var_2 = Struct_3(~vec3<u32>(_wgslsmith_sub_u32(var_1.a, 46264u), var_1.b, ~(~var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f), _wgslsmith_f_op_f32(-572f - -410f))))), !(_wgslsmith_mod_u32(~68423u, _wgslsmith_dot_vec3_u32(var_0, var_0)) > var_1.a), _wgslsmith_sub_i32(1i, reverseBits(abs(u_input.a))) >> (func_3(vec2<i32>(var_1.c, firstTrailingBit(1854i)), global0[_wgslsmith_index_u32(var_1.a, 13u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(155f, -1650f, -1551f), vec3<f32>(445f, -482f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, -639f, 480f) + vec3<f32>(-1468f, -1077f, -1947f)))) % 32u), Struct_2(Struct_1(var_1.a, var_1.a, ~reverseBits(var_1.c)), -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, -29286i, u_input.c, var_1.c), vec4<i32>(-1i, -9925i, u_input.c, -36358i))), Struct_1(var_0.x, ~(~64786u), ~831i), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15170u, var_0.x, 58645u), vec4<u32>(4294967295u, var_0.x, 0u, 30u)), var_0.x), 0u, reverseBits(-u_input.c)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, var_1.a, var_0.x), reverseBits(vec4<u32>(32185u, var_1.b, 12295u, var_1.b))), 0u, -8935i)));
    return (vec3<u32>(var_1.b, ~1756u, ~var_1.a) >> (select(~(~var_2.a), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(var_2.a.zx, var_2.a.zx), ~15413u), !(!var_2.c)) % vec3<u32>(32u))) & var_2.a;
}

fn func_1() -> vec3<u32> {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~func_1() >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - -455f)), _wgslsmith_f_op_f32(-1f))), !any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)))), true, -firstLeadingBit(select(reverseBits(u_input.a), global1.x, any(vec2<bool>(true, false)))), global0[_wgslsmith_index_u32(1u, 13u)]);
    let var_1 = ~var_0.e.a.a;
    var var_2 = 1i != _wgslsmith_add_i32(global1.x, ~var_0.d);
    let var_3 = 7811i;
    global0 = array<Struct_2, 13>();
    global2 = array<Struct_3, 18>();
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1013f - var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) + _wgslsmith_f_op_f32(select(var_0.b, 824f, var_0.c)))))), _wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(-984f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), var_0.b))));
    var var_5 = !select(select(select(!vec2<bool>(false, var_0.c), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, false), false), select(vec2<bool>(true, false), vec2<bool>(var_0.c, true), var_0.c)), vec2<bool>(true, true), _wgslsmith_dot_vec2_i32(global1.zz, u_input.b.xz) < (u_input.a >> (var_0.e.a.b % 32u))), vec2<bool>(var_0.c, !(6400u >= var_0.a.x)), select(select(select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c), false), vec2<bool>(var_0.c, true), select(vec2<bool>(false, false), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false))), !select(vec2<bool>(true, false), vec2<bool>(true, var_0.c), var_0.c), !var_0.c));
    let var_6 = abs(_wgslsmith_clamp_i32(countOneBits(1i), global1.x, ~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, countOneBits(select(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a.x, 4294967295u, var_1), ~vec3<u32>(81868u, var_1, 31976u)), vec3<u32>(88918u, var_0.a.x, ~1u), false)), select(vec2<i32>(~(~(-13237i)), var_6), vec2<i32>(var_3, _wgslsmith_div_i32(0i, global1.x)) ^ vec2<i32>(1i, -34398i), select(vec2<bool>(29401u > var_1, true), vec2<bool>(var_3 <= 290i, true & var_0.c), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 439f), _wgslsmith_f_op_f32(sign(-235f)))));
}

