struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-761f, 940f, -279f), vec3<f32>(-918f, -1000f, -105f), vec3<f32>(895f, -1589f, -597f), vec3<f32>(1717f, -878f, 1132f), vec3<f32>(1129f, 319f, 609f), vec3<f32>(-198f, 248f, 563f), vec3<f32>(839f, 511f, 313f), vec3<f32>(238f, 1439f, 623f), vec3<f32>(1000f, -238f, -2010f), vec3<f32>(868f, 253f, -1044f), vec3<f32>(1648f, 1660f, 1000f), vec3<f32>(123f, -895f, -1291f), vec3<f32>(908f, -1699f, -519f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = vec3<i32>(u_input.c, u_input.c, _wgslsmith_div_i32(-(_wgslsmith_sub_i32(u_input.c, u_input.b.x) << (~arg_0.b.x % 32u)), ~u_input.b.x));
    var_0 = vec3<i32>(~(i32(-1i) * -(~u_input.b.x)), select(var_0.x, ~(-2147483647i), true | (all(vec4<bool>(false, false, true, true)) | false)), _wgslsmith_div_i32(0i, min(-var_0.x, abs(2147483647i)) | -13381i));
    let var_1 = arg_0.b.x & 0u;
    var var_2 = u_input.d;
    var_0 = countOneBits(u_input.b);
    return vec2<u32>(var_1, ~arg_0.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_2(u_input.b.x, !all(!arg_1), arg_0);
    global0 = array<Struct_1, 32>();
    return _wgslsmith_mod_vec2_i32(var_0.c.wx, _wgslsmith_mod_vec2_i32(-arg_0.ww, var_0.c.ww)) >> (func_3(Struct_3(vec3<u32>(1u, 1u, 1u) << ((vec3<u32>(u_input.d, 0u, 31581u) >> (vec3<u32>(u_input.a, 1u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.d, 0u), 1u))) % vec2<u32>(32u));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_2(-13053i, _wgslsmith_clamp_i32(u_input.c, ~firstTrailingBit(u_input.c), abs(abs(u_input.c))) != min(0i, ~0i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~51801i, u_input.c >> (0u % 32u), abs(11430i), u_input.c | -30241i), (vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, 0i) << (vec4<u32>(u_input.d, 12897u, u_input.d, 0u) % vec4<u32>(32u))) >> (vec4<u32>(0u, u_input.d, u_input.a, 1u) % vec4<u32>(32u))), vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), func_2(vec4<i32>(-2147483647i, u_input.c, 27987i, u_input.b.x), vec2<bool>(false, true))), 7738i, _wgslsmith_mult_i32(12684i & u_input.b.x, i32(-1i) * -2147483647i))));
    global1 = array<vec3<f32>, 13>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_1 = ~(select(u_input.d, reverseBits(u_input.d), true) << (u_input.a % 32u));
    return vec3<bool>(false, select(!(!(!var_0.b)), any(vec2<bool>(u_input.d >= 0u, var_0.b)), !all(!vec3<bool>(var_0.b, true, var_0.b))), var_0.b || var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(select(vec3<bool>(true, -1i >= u_input.c, all(vec4<bool>(false, true, true, true))), func_1(), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))))), true, false, false);
    let var_1 = Struct_4(Struct_1(!var_0, vec2<bool>(!select(false, true, false), var_0.x | all(var_0.ywy)), select(select(vec4<bool>(var_0.x, var_0.x, true, true), var_0, !var_0), !select(vec4<bool>(true, var_0.x, var_0.x, false), var_0, var_0.x), _wgslsmith_clamp_u32(29349u, 4294967295u, 8704u) <= 8536u), -u_input.c), Struct_2(reverseBits(-u_input.c) >> (abs(26337u) % 32u), true, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, -5923i, u_input.b.x) << ((vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) | vec4<u32>(u_input.d, 41790u, 4294967295u, 6328u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c, -36368i, 18038i), vec4<i32>(u_input.c, 2147483647i, 1i, 12180i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-411f, 1000f, 1439f, 1994f), vec4<f32>(-779f, -116f, 1000f, 633f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-3216f, 2063f, 112f, 1000f) - vec4<f32>(1000f, -1360f, -950f, -854f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-311f, 581f, 2338f, 134f) + vec4<f32>(-1353f, 1000f, -268f, 509f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -1000f, 1346f, -2721f))))));
    let var_3 = var_1;
    global0 = array<Struct_1, 32>();
    let var_4 = reverseBits(u_input.a);
    var var_5 = Struct_2(u_input.b.x, true || any(!var_1.a.a.yxy), var_3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(var_5.c)), vec3<i32>(var_3.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.a, var_3.a.d, var_3.a.d, 1i), vec4<i32>(u_input.b.x, var_1.a.d, var_1.a.d, 41891i) >> (vec4<u32>(113456u, 0u, var_4, u_input.a) % vec4<u32>(32u))) << (abs(~u_input.a) % 32u), var_3.b.a), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_4) >> (vec2<u32>(20852u, u_input.d) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 13107u), vec2<u32>(var_4, var_4))), vec2<u32>(countOneBits(3209u & var_4), firstTrailingBit(u_input.d) << (_wgslsmith_div_u32(var_4, 99989u) % 32u))));
}

