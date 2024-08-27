struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec2<i32>(1974i, 21504i), vec2<u32>(63942u, 7431u), vec2<bool>(false, false), 93897u, 22116u), vec4<f32>(476f, -423f, -698f, 1000f)), Struct_2(Struct_1(vec2<i32>(-23979i, 1i), vec2<u32>(11533u, 27227u), vec2<bool>(false, false), 0u, 46729u), vec4<f32>(1152f, 2047f, -596f, -1658f)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(-57207i, 2147483647i), vec2<u32>(4294967295u, 24349u), vec2<bool>(false, true), 4294967295u, 0u), vec4<f32>(-404f, 819f, 1063f, -649f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 2>();
    var var_0 = global1.a;
    let var_1 = abs(~(-_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.a, var_0.a.x, -1i), vec4<i32>(-2147483647i, u_input.a, var_0.a.x, 2147483647i) >> (vec4<u32>(1u, 12143u, u_input.b, global1.a.e) % vec4<u32>(32u)))));
    var var_2 = global1.b.x;
    var var_3 = -574f;
    return 60411i;
}

fn func_2() -> u32 {
    let var_0 = global1.a;
    global0 = array<Struct_2, 2>();
    let var_1 = global1.a;
    let var_2 = ~(~var_0.b);
    var var_3 = _wgslsmith_add_i32(-2147483647i, select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(global1.a.a.x, u_input.a, 23204i), -vec3<i32>(-1i, var_0.a.x, var_1.a.x)), vec3<i32>(var_0.a.x | -29977i, func_3(), select(var_1.a.x, -1i, false))), _wgslsmith_add_i32(~u_input.a, var_1.a.x), any(!vec2<bool>(var_1.c.x, var_0.c.x))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, min(4294967295u, ~70792u) ^ (_wgslsmith_clamp_u32(1u, u_input.b, 48621u) << (min(1u, var_1.b.x) % 32u)), _wgslsmith_div_u32(min(~var_2.x, _wgslsmith_clamp_u32(4294967295u, 1u, var_1.d)), var_1.b.x), ~firstTrailingBit(46954u)), _wgslsmith_clamp_vec4_u32(reverseBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, global1.a.e, u_input.b, 4294967295u), vec4<u32>(var_1.e, var_0.b.x, 4838u, global1.a.b.x)), ~vec4<u32>(var_2.x, 52956u, 66495u, 57579u), select(vec4<bool>(false, global1.a.c.x, true, true), vec4<bool>(var_0.c.x, global1.a.c.x, true, var_0.c.x), vec4<bool>(global1.a.c.x, true, false, var_1.c.x)))), ~firstLeadingBit(reverseBits(vec4<u32>(1u, 35998u, var_1.b.x, var_2.x))), ~vec4<u32>(~47172u, ~var_1.b.x, ~1u, _wgslsmith_add_u32(1u, var_1.b.x))));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = 0u;
    let var_1 = func_2();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var_0 = _wgslsmith_add_u32(var_1, u_input.b);
    return !vec2<bool>(any(vec4<bool>(true, !arg_0.a.c.x, all(global1.a.c), arg_0.a.c.x)), all(vec4<bool>(global1.a.c.x, all(vec2<bool>(true, arg_0.a.c.x)), all(vec3<bool>(true, true, arg_0.a.c.x)), any(arg_0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(-reverseBits(~1i), u_input.a | 1i), global1.a.b, func_1(global0[_wgslsmith_index_u32(countOneBits(~abs(u_input.b)), 2u)]), ~abs(u_input.b), 0u);
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(~(~u_input.b))) >> (reverseBits(select(~firstLeadingBit(0u), 4294967295u, !global1.a.c.x & true)) % 32u), 2u)];
    let var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1(countOneBits(var_0.a), var_1.a.b, global1.a.c, 1u, firstLeadingBit(~91488u) & select(global1.a.b.x, var_2.b.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(global1.b.x, 678f, var_1.b.x, -1213f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(671f, -647f, 358f, 542f), global1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1398f, -861f, global1.b.x) - vec4<f32>(263f, var_1.b.x, global1.b.x, global1.b.x))))));
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1599f), _wgslsmith_f_op_f32(floor(var_3.b.x))) + var_3.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-var_1.a.a.x), ~var_0.a.x >> (16671u % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(global1.a.a.x, -30061i), -1i | var_1.a.a.x), 0i), -vec4<i32>(0i, -283i, global1.a.a.x >> (8957u % 32u), firstLeadingBit(-20132i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(699f)), _wgslsmith_f_op_f32(exp2(global1.b.x)), global1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, global1.b.x, var_3.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(-675f, 108f), _wgslsmith_f_op_f32(-var_3.b.x)))));
}

