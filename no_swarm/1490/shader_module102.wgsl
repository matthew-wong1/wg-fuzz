struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<f32>(-277f, -558f)), Struct_2(vec2<f32>(560f, 132f)), Struct_2(vec2<f32>(-191f, 1238f)), Struct_2(vec2<f32>(-252f, 177f)), Struct_2(vec2<f32>(1662f, -376f)), Struct_2(vec2<f32>(-1024f, -582f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1944f, -327f, 1000f, -509f))))))));
    var var_1 = false;
    global1 = array<vec2<i32>, 6>();
    var var_2 = Struct_2(var_0.xz);
    let var_3 = select(vec4<u32>(arg_0.x, firstTrailingBit(_wgslsmith_div_u32(arg_0.x, 0u)), abs(global0.b.x), countOneBits(_wgslsmith_sub_u32(arg_0.x, arg_0.x))), select(~(vec4<u32>(1u, arg_0.x, 4294967295u, 0u) >> (vec4<u32>(u_input.c.x, arg_0.x, 34739u, 63698u) % vec4<u32>(32u))), ~select(vec4<u32>(38118u, arg_0.x, arg_0.x, global0.b.x), vec4<u32>(global0.b.x, 27532u, 13699u, arg_0.x), vec4<bool>(false, false, false, false)), true), true) ^ abs(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(71353u, 1u, 62287u, arg_0.x), vec4<u32>(0u, global0.b.x, 12066u, 4294967295u)) | (vec4<u32>(global0.b.x, arg_0.x, 1u, global0.b.x) | vec4<u32>(48973u, global0.b.x, 4294967295u, u_input.c.x))));
    return u_input.a.xx;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), 521f))), _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x))))), vec2<bool>(true, !select(true, true, false)))));
    var var_1 = arg_0;
    let var_2 = Struct_1(-u_input.a, vec2<u32>(~u_input.b, ~4294967295u), func_3(global0.b, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-22229i, ~29618i), -(u_input.a.x & global0.a.x))));
    var_1 = arg_0;
    let var_3 = !vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true)), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), false);
    return 2147483647i;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(vec4<i32>(~2147483647i, func_2(global2[_wgslsmith_index_u32(abs(~u_input.b), 6u)]), -u_input.a.x, ~(~1i)), _wgslsmith_add_vec2_u32(reverseBits((vec2<u32>(u_input.b, 96689u) | vec2<u32>(global0.b.x, 0u)) ^ vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, 3032u), 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(11621u, 47402u, global0.b.x), u_input.c) | global0.b.x)), -firstLeadingBit(vec2<i32>(u_input.a.x, i32(-1i) * -2147483647i)));
    let var_1 = global2[_wgslsmith_index_u32(1u, 6u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f * -1841f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-915f, 771f)) * _wgslsmith_div_f32(-118f, var_1.a.x)), var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2060f) + var_1.a.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), 283f))), var_1.a.x);
    let var_3 = Struct_2(var_1.a);
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, -2147483647i, u_input.a.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.x, u_input.a.x, -45277i, var_0.c.x), -u_input.a)), vec4<i32>(select(-42958i, u_input.a.x, true), _wgslsmith_add_i32(global0.c.x, u_input.a.x) ^ -u_input.a.x, 4776i, -2147483647i ^ u_input.a.x)), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(0u, 51951u, 72852u), ~var_0.b.x)), var_0.c);
    return 37512i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1161f))), -319f), 125f));
    var var_1 = func_1();
    var var_2 = vec3<i32>(2147483647i, -1i, -89318i);
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(min(abs(abs(global0.b.x)), ~min(34442u, 1u)), u_input.b, u_input.c.x, 78147u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1804u, 1u, global0.b.x ^ 1u), vec4<u32>(select(global0.b.x, 24247u, true), 9680u, _wgslsmith_add_u32(u_input.b, global0.b.x), ~u_input.c.x)), abs(vec4<u32>(_wgslsmith_add_u32(0u, 16944u), u_input.b, global0.b.x, 1u))));
    var var_4 = Struct_1(vec4<i32>(func_1(), u_input.a.x, 1i, func_3(~vec2<u32>(u_input.c.x, u_input.b), firstTrailingBit(var_2.x)).x), ~(global0.b ^ ~vec2<u32>(4294967295u, 100257u)), func_3(u_input.c.zy, 6421i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~var_4.a.x, func_3(vec2<u32>(var_4.b.x, 4294967295u), (u_input.a.x >> (var_4.b.x % 32u)) ^ (global0.a.x << (u_input.b % 32u))).x));
}

