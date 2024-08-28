struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_1(0i, vec4<i32>(2147483647i, 2147483647i, 1i, 0i)), Struct_1(-5515i, vec4<i32>(-47920i, 1i, 53824i, 18069i))), Struct_5(Struct_1(0i, vec4<i32>(-23168i, 28052i, 1i, 0i)), Struct_1(-1i, vec4<i32>(27127i, 66242i, 4412i, 77498i))), Struct_5(Struct_1(-1i, vec4<i32>(15677i, -1i, -24432i, 1i)), Struct_1(36968i, vec4<i32>(-23275i, -42322i, 2147483647i, 22882i))), Struct_5(Struct_1(15701i, vec4<i32>(-29805i, 18186i, -31829i, -1i)), Struct_1(0i, vec4<i32>(-3120i, 2147483647i, i32(-2147483648), -14842i))), Struct_5(Struct_1(20634i, vec4<i32>(1i, 2555i, -1i, 1i)), Struct_1(38990i, vec4<i32>(-25012i, 21983i, -1i, 8649i))));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(-32687i, vec4<i32>(1i, -57834i, 1i, 1i)), Struct_2(true, vec4<u32>(0u, 0u, 14750u, 1u), vec3<i32>(0i, 45508i, 59367i)), Struct_2(false, vec4<u32>(102428u, 8829u, 4294967295u, 11903u), vec3<i32>(-22651i, 14062i, i32(-2147483648)))), Struct_3(Struct_1(-9937i, vec4<i32>(0i, 1i, 14108i, -1i)), Struct_2(false, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_2(false, vec4<u32>(46295u, 0u, 52824u, 5989u), vec3<i32>(-1i, -27014i, 2147483647i))), Struct_3(Struct_1(2147483647i, vec4<i32>(-1i, 17658i, 34106i, i32(-2147483648))), Struct_2(true, vec4<u32>(46959u, 24312u, 4294967295u, 0u), vec3<i32>(8735i, 1i, -3987i)), Struct_2(true, vec4<u32>(14949u, 87121u, 0u, 1u), vec3<i32>(-15267i, -52493i, 58697i))));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = firstLeadingBit(-9917i);
    global2 = array<Struct_3, 3>();
    var var_1 = Struct_2(select(any(!global0[_wgslsmith_index_u32(~u_input.d, 31u)]), false, select(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, false, true, false)) | true)), ~abs(firstTrailingBit(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.c.x))), -(~(-(vec3<i32>(var_0, 27192i, -2147483647i) & arg_0))));
    global1 = array<Struct_5, 5>();
    global1 = array<Struct_5, 5>();
    return 2147483647i;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(0i, vec4<i32>(-34374i, _wgslsmith_add_i32(u_input.b, -2147483647i), -28648i, u_input.a ^ func_3(vec3<i32>(-8823i, u_input.a, u_input.a), vec3<f32>(657f, 907f, -1976f), Struct_1(1i, vec4<i32>(u_input.a, u_input.a, 1i, u_input.b)))) ^ vec4<i32>(~u_input.a, 0i << (u_input.c.x % 32u), min(2147483647i, u_input.a), _wgslsmith_clamp_i32(u_input.b, ~u_input.b, firstTrailingBit(u_input.a))));
    var_0 = Struct_1(u_input.b, var_0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(970f, -864f, -545f) * vec3<f32>(161f, -667f, -822f))))))));
    let var_2 = vec4<bool>(all(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, false, false))), 4294967295u == u_input.d, select(select(true, true, select(false, true, false)) & false, true, false), true);
    global0 = array<vec2<bool>, 31>();
    return ~var_0.b.xyw;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_5 {
    let var_0 = u_input.b;
    let var_1 = min(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0, -12715i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 14848i), vec4<i32>(-34314i, 8708i, u_input.b, -1i))), var_0), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, 2147483647i), ~u_input.b), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -11509i), u_input.a)), 4090i));
    var var_2 = var_0 >> (abs(arg_0.x) % 32u);
    global1 = array<Struct_5, 5>();
    var var_3 = ~select(func_2(), firstLeadingBit(~(~vec3<i32>(u_input.a, u_input.b, 2147483647i))), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))));
    return Struct_5(Struct_1(var_1, _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, 7668i, 1i), vec4<i32>(u_input.b, -11097i, var_0, -41722i)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(12938i, -1i, 0i, var_1)), ~vec4<i32>(u_input.b, -2147483647i, u_input.a, 2147483647i)))), Struct_1(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, u_input.b, -1i, var_0), countOneBits(vec4<i32>(-2147483647i, var_3.x, var_3.x, -2147483647i))) & -vec4<i32>(0i, -1i, var_0, -16122i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 3>();
    global1 = array<Struct_5, 5>();
    global2 = array<Struct_3, 3>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(503f, 1101f))))))), firstLeadingBit(-vec4<i32>(i32(-1i) * -2147483647i, countOneBits(-2147483647i), u_input.b, u_input.b)), all(global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), -20058i << (~u_input.d % 32u), vec3<f32>(-1206f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-984f, _wgslsmith_f_op_f32(f32(-1f) * -234f))))), _wgslsmith_f_op_f32(-622f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(254f + 206f))))));
    let var_1 = !var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 826f));
    var var_3 = func_1(~select(min(_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(53586u, 21445u)), select(vec2<u32>(u_input.c.x, u_input.d), u_input.c.zy, var_0.c)), vec2<u32>(firstTrailingBit(u_input.d), ~342u), false), _wgslsmith_f_op_f32(432f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-126f)) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), -1372f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yx);
}

