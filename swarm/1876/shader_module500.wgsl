struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = Struct_1(~((~vec3<i32>(0i, u_input.a.x, arg_1.x) & (vec3<i32>(-2147483647i, 2147483647i, arg_0) | vec3<i32>(u_input.a.x, -65312i, arg_0))) & vec3<i32>(arg_0, u_input.a.x, -2147483647i)));
    let var_1 = !(false & any(vec2<bool>(all(vec2<bool>(true, true)), true)));
    let var_2 = countOneBits(_wgslsmith_mult_i32(0i, reverseBits(arg_0)) << (firstTrailingBit(~4294967295u) % 32u)) & u_input.a.x;
    global0 = array<vec2<i32>, 3>();
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1282f, -1102f, 240f, 207f), vec4<f32>(548f, 270f, 573f, 310f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1687f, 190f, -836f, -1536f), vec4<f32>(-1246f, 515f, -385f, -599f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(207f, 1011f)), _wgslsmith_f_op_f32(f32(-1f) * -752f), 2137f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, 1482f, 522f, -485f))))))));
    return (~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 2869u, 4294967295u))) ^ firstTrailingBit(abs(vec3<u32>(0u, u_input.b.x, u_input.b.x)) & ~vec3<u32>(0u, 0u, u_input.b.x))) << (vec3<u32>(min(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), 1u)), ~u_input.b.x, firstLeadingBit(_wgslsmith_div_u32(64353u, u_input.b.x) | 94124u)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_1.x | arg_2.a.x;
    global0 = array<vec2<i32>, 3>();
    var var_1 = arg_1;
    var var_2 = func_3(-2147483647i, _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(-28066i), u_input.a.x), _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)] | u_input.a, vec2<i32>(arg_1.x, firstLeadingBit(0i)))));
    global2 = array<Struct_2, 10>();
    return all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(false, !(false && func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, -192f, 932f, -1154f)), _wgslsmith_div_vec3_i32(vec3<i32>(-15138i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec3<i32>(27115i, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-870f))) < _wgslsmith_div_f32(1091f, _wgslsmith_f_op_f32(trunc(1131f))));
    global2 = array<Struct_2, 10>();
    let var_1 = Struct_2(Struct_1(firstTrailingBit(vec3<i32>(19252i ^ u_input.a.x, select(28539i, 14285i, var_0.x), ~u_input.a.x))), 1u, vec4<i32>(_wgslsmith_dot_vec2_i32(min(global0[_wgslsmith_index_u32(~1u, 3u)], vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(-26902i, u_input.a.x)), select(vec2<i32>(u_input.a.x, 2507i), global0[_wgslsmith_index_u32(reverseBits(38400u), 3u)], true)), -1i, u_input.a.x, u_input.a.x & -(u_input.a.x ^ -1i)));
    var var_2 = var_1.a;
    let var_3 = vec4<f32>(-662f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f - -3159f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-934f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-212f, 586f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1343f, 1098f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -598f), var_1.c.x > var_1.a.a.x)), any(!vec4<bool>(true, true, var_0.x, var_0.x)))), -849f), -820f);
    return Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 1419i)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_1.b, u_input.b.x), vec3<u32>(var_1.b, 49380u, 52515u)), _wgslsmith_sub_u32(0u, ~u_input.b.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_1.a.a, vec3<i32>(_wgslsmith_sub_i32(var_1.a.a.x, var_2.a.x), -25883i, abs(2147483647i))), var_1.c.x, 5306i, reverseBits(31683i & (u_input.a.x << (var_1.b % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = true;
    var var_2 = Struct_1(var_0.a.a);
    let var_3 = vec2<bool>(false, any(vec4<bool>(true, true, true, true)));
    global2 = array<Struct_2, 10>();
    let var_4 = Struct_2(Struct_1(~vec3<i32>(~(-28354i), -17495i, u_input.a.x & -52057i)), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(29754u, var_0.b, 0u), ~max(1u, firstLeadingBit(u_input.b.x))), abs(-var_0.c));
    var var_5 = _wgslsmith_mod_u32(~u_input.b.x, ~select(var_0.b | (u_input.b.x << (u_input.b.x % 32u)), 1u, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_2.a.x >> (((var_4.b ^ u_input.b.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 6074u), vec3<u32>(0u, var_0.b, u_input.b.x))) % 32u), _wgslsmith_div_i32(select(reverseBits(u_input.a.x), u_input.a.x, all(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), firstLeadingBit(var_4.c.x >> (64622u % 32u)))));
}

