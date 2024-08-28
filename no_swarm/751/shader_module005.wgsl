struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-47653i, 5382i, 16064i, 0i, 17820i, 32661i, 0i, i32(-2147483648), 2147483647i, -1i, 58951i);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1425f, vec2<i32>(0i, 11518i)), Struct_1(-488f, vec2<i32>(0i, i32(-2147483648))), Struct_1(965f, vec2<i32>(4619i, 2147483647i)), Struct_1(-1203f, vec2<i32>(1483i, 0i)), Struct_1(-216f, vec2<i32>(-4921i, 1i)), Struct_1(1000f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(1486f, vec2<i32>(-98053i, 11793i)), Struct_1(-193f, vec2<i32>(-25186i, -30592i)), Struct_1(292f, vec2<i32>(0i, 12185i)), Struct_1(-662f, vec2<i32>(i32(-2147483648), -34900i)), Struct_1(-1174f, vec2<i32>(11338i, 1i)), Struct_1(-174f, vec2<i32>(-9139i, 18703i)), Struct_1(145f, vec2<i32>(14113i, 17034i)), Struct_1(383f, vec2<i32>(-28607i, -119i)), Struct_1(1000f, vec2<i32>(-1465i, 16945i)), Struct_1(487f, vec2<i32>(-26463i, i32(-2147483648))), Struct_1(1751f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(1479f, vec2<i32>(0i, i32(-2147483648))), Struct_1(-834f, vec2<i32>(-27570i, -1i)), Struct_1(585f, vec2<i32>(0i, 29312i)), Struct_1(792f, vec2<i32>(-114i, -56963i)), Struct_1(1090f, vec2<i32>(-11924i, 822i)), Struct_1(-932f, vec2<i32>(23224i, -68061i)), Struct_1(1228f, vec2<i32>(-19680i, -25494i)), Struct_1(-953f, vec2<i32>(1i, -22868i)), Struct_1(788f, vec2<i32>(-41611i, -45151i)), Struct_1(1133f, vec2<i32>(41161i, -24713i)), Struct_1(-142f, vec2<i32>(0i, -31965i)), Struct_1(-1507f, vec2<i32>(-28942i, -35286i)), Struct_1(2848f, vec2<i32>(7123i, 2147483647i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = array<i32, 11>();
    let var_0 = -1000f;
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 30u)];
    global1 = array<Struct_1, 30>();
    var var_2 = max(_wgslsmith_add_i32(38672i, u_input.b.x), 2147483647i);
    return !vec4<bool>(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), true, !(!select(false, true, false)), !(~u_input.c > abs(1u)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global0 = array<i32, 11>();
    var var_0 = Struct_1(-2008f, vec2<i32>(arg_0.x, 2147483647i) ^ select(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1337i, -1i), vec2<i32>(u_input.b.x, -6816i)), vec2<i32>(max(arg_0.x, -10277i), 2147483647i), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)));
    let var_1 = !vec4<bool>(false, all(vec2<bool>(all(vec2<bool>(false, true)), true)), true, all(func_3()));
    return _wgslsmith_div_f32(687f, 229f);
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(countOneBits(u_input.b), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], 4901i, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), select(vec4<bool>(true, false, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)))), _wgslsmith_div_f32(-590f, -604f), 1f);
    let var_1 = u_input.b;
    global0 = array<i32, 11>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.c, 30u)];
    global1 = array<Struct_1, 30>();
    return -2147483647i > _wgslsmith_sub_i32(var_2.b.x, abs(6339i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    global0 = array<i32, 11>();
    var var_0 = !func_1(_wgslsmith_sub_i32(max(0i, ~(-9498i)), firstTrailingBit(-11257i)), true);
    let var_1 = true;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.c, 30u)];
    let var_3 = Struct_1(var_2.a, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a, var_3.a, var_1)) + -987f))), _wgslsmith_mult_vec4_i32(~u_input.b, u_input.b), vec4<u32>(firstLeadingBit(0u), 0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 0u, u_input.c))), vec3<u32>(38320u, 3797u, 27924u) << (vec3<u32>(32834u, u_input.c, 4294967295u) % vec3<u32>(32u))), abs(_wgslsmith_mult_u32(1u, min(u_input.c, u_input.c)))), select(-1i, ~u_input.b.x, var_1) | reverseBits(~63524i), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 29856u), countOneBits(abs(vec2<u32>(80451u, u_input.c))))));
}

