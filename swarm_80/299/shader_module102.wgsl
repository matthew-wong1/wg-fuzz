struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, 1696i)), Struct_1(vec4<i32>(-58004i, 1i, -52639i, 43804i)), Struct_1(vec4<i32>(20663i, -6256i, 1i, 25400i)), Struct_1(vec4<i32>(5175i, 22880i, -18250i, 10385i)), Struct_1(vec4<i32>(0i, 2147483647i, 9072i, 1i)), Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), -221i)), Struct_1(vec4<i32>(17360i, 55492i, 77108i, -9950i)), Struct_1(vec4<i32>(10984i, 33144i, 9534i, 18033i)), Struct_1(vec4<i32>(1i, 2115i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(-1i, 22021i, 20885i, i32(-2147483648))), Struct_1(vec4<i32>(39630i, -1i, -14691i, 27052i)), Struct_1(vec4<i32>(9320i, 10729i, 1i, i32(-2147483648))), Struct_1(vec4<i32>(-34205i, 1i, 3438i, 0i)), Struct_1(vec4<i32>(19470i, -1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(10032i, 15047i, 0i, -63548i)), Struct_1(vec4<i32>(18921i, -9175i, -1i, 1i)), Struct_1(vec4<i32>(-1i, -43917i, 21396i, 1i)), Struct_1(vec4<i32>(5142i, 12330i, 1i, 0i)));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<i32>(2147483647i, -38112i, -19129i, 1i)), Struct_1(vec4<i32>(-1i, -30613i, 42622i, -675i)), Struct_1(vec4<i32>(1i, 0i, 1i, 1i)), Struct_1(vec4<i32>(-1i, 1i, 9067i, 38885i)), Struct_1(vec4<i32>(1i, 0i, 0i, 0i)), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), -33300i)), Struct_1(vec4<i32>(2147483647i, 16363i, -1i, -30004i)), Struct_1(vec4<i32>(-1i, -1i, -1i, -1i)), Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -1i)));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(26245i, 1i, 1i, -1955i)), Struct_1(vec4<i32>(-20087i, 1139i, 21592i, 0i)), Struct_1(vec4<i32>(-1i, 269i, -7774i, -72420i)), Struct_1(vec4<i32>(-6806i, -1i, -98060i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), -47657i, 0i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, -61100i)), Struct_1(vec4<i32>(0i, 1i, 0i, 0i)), Struct_1(vec4<i32>(63775i, i32(-2147483648), 8120i, 16552i)), Struct_1(vec4<i32>(54247i, -34563i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(22198i, -1546i, 0i, 25260i)), Struct_1(vec4<i32>(i32(-2147483648), 16408i, 1i, 2147483647i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 38824i)), Struct_1(vec4<i32>(14391i, 1283i, -1i, 622i)), Struct_1(vec4<i32>(-1i, -20635i, -32880i, 0i)));

var<private> global3: f32 = 1955f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    return !(!(!vec4<bool>(false, true, any(vec2<bool>(arg_1.x, false)), all(vec3<bool>(arg_1.x, false, arg_1.x)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.wzx), ~41690u, ~u_input.b.x, 26927u), _wgslsmith_clamp_vec4_u32(select(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), func_2(vec2<i32>(31348i, -31435i), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), firstTrailingBit(~vec4<u32>(1u, u_input.b.x, 0u, 1453u)), u_input.b)) % 32u), 14u)];
    global1 = array<Struct_1, 10>();
    return u_input.b;
}

fn func_3(arg_0: bool) -> u32 {
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    let var_0 = u_input.b.x;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -265f);
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.a, u_input.a, -1i, 23724i)), vec4<i32>(min(u_input.a, firstLeadingBit(29992i)), u_input.a, min(u_input.a, u_input.a << (11346u % 32u)), -u_input.a)));
    let var_2 = vec3<i32>(u_input.a, u_input.a, ~min(_wgslsmith_add_i32(2147483647i, var_1.a.x), i32(-1i) * -2147483647i) << (~var_0 % 32u));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-33904i, _wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.x, 23521i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_2.x, 0i), var_2)), -var_1.a.yww), u_input.a, -(16791i & var_2.x) << (~(~1u) % 32u)), _wgslsmith_clamp_vec4_i32(select(~vec4<i32>(23553i, -1i, 25508i, 1i), var_1.a, vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, var_2.x, u_input.a, var_1.a.x), ~var_1.a), -vec4<i32>(2147483647i, var_2.x, 0i, -25357i)) >> ((((u_input.b & u_input.b) | countOneBits(u_input.b)) >> (func_1(_wgslsmith_div_f32(-1536f, 1416f), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 18>();
    let var_4 = _wgslsmith_mult_u32(~45706u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x) | vec4<u32>(var_4, 4294967295u, 0u, u_input.b.x))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 31811u, func_3(true), var_0), _wgslsmith_mult_vec4_u32(u_input.b ^ u_input.b, u_input.b)), select(vec3<i32>(i32(-1i) * -59748i, _wgslsmith_mult_i32(var_3.x, 12248i), -32716i >> (var_4 % 32u)), -_wgslsmith_add_vec3_i32(var_2, var_1.a.yyy), (var_2.x >= var_3.x) && false) << (~vec3<u32>(~u_input.b.x, var_0, 8244u << (var_0 % 32u)) % vec3<u32>(32u)));
}

