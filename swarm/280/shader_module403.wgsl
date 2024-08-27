struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(24150u, -636f), vec4<i32>(20135i, 957i, -1996i, i32(-2147483648)), Struct_1(76893u, 1109f), vec3<bool>(false, false, false)), Struct_2(Struct_1(9912u, -433f), vec4<i32>(0i, 15914i, 6122i, 0i), Struct_1(27042u, -744f), vec3<bool>(false, false, true)), Struct_2(Struct_1(4294967295u, -266f), vec4<i32>(-15472i, -48774i, 4550i, i32(-2147483648)), Struct_1(4294967295u, -319f), vec3<bool>(false, false, true)), Struct_2(Struct_1(1u, -1353f), vec4<i32>(-32391i, -5058i, -4792i, -1i), Struct_1(5028u, -514f), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, 480f), vec4<i32>(2147483647i, -1i, 0i, 0i), Struct_1(29412u, -281f), vec3<bool>(false, true, true)), Struct_2(Struct_1(4294967295u, 629f), vec4<i32>(1i, 2147483647i, -1i, 22517i), Struct_1(0u, 788f), vec3<bool>(false, false, true)), Struct_2(Struct_1(0u, 259f), vec4<i32>(52882i, -8036i, -21238i, -77048i), Struct_1(28086u, -1890f), vec3<bool>(true, true, false)), Struct_2(Struct_1(1u, 1190f), vec4<i32>(-38668i, 2147483647i, i32(-2147483648), 32309i), Struct_1(1403u, 987f), vec3<bool>(false, false, false)), Struct_2(Struct_1(29360u, -641f), vec4<i32>(0i, i32(-2147483648), 0i, 11065i), Struct_1(4294967295u, 400f), vec3<bool>(false, true, false)), Struct_2(Struct_1(58843u, 545f), vec4<i32>(15870i, 2147483647i, -1033i, 0i), Struct_1(4294967295u, 1152f), vec3<bool>(true, false, true)));

var<private> global2: u32;

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    global2 = arg_0.c.a;
    global1 = array<Struct_2, 10>();
    global0 = array<Struct_3, 2>();
    var var_0 = _wgslsmith_f_op_f32(arg_0.a.b - arg_0.a.b);
    let var_1 = vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, false);
    return 408f;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> i32 {
    global2 = u_input.a.x;
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 4u)];
    let var_1 = Struct_3(abs(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(52999u, 5605u)), vec2<u32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(~9648u, u_input.a.x) % vec2<u32>(32u))));
    return _wgslsmith_clamp_i32(reverseBits(-22607i), ~arg_1.x, -_wgslsmith_add_i32(arg_3.x, -1i));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    global1 = array<Struct_2, 10>();
    var var_0 = !(u_input.d.x == func_3(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(16588u, 981f), vec4<i32>(-16981i, u_input.d.x, u_input.d.x, 4232i), Struct_1(u_input.c.x, -120f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec2<i32>(0i, u_input.d.x))), -(~vec4<i32>(u_input.d.x, u_input.d.x, -1i, 39218i)), arg_0.xw, _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, 1i, -2147483647i, -51806i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 50779i, u_input.d.x), vec4<i32>(36800i, u_input.d.x, u_input.d.x, -1i)))));
    global1 = array<Struct_2, 10>();
    let var_1 = vec3<f32>(191f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1218f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1219f + 121f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(round(-890f)))), -365f))));
    var_0 = true;
    return vec3<bool>(false, all(!vec2<bool>(arg_0.x, false)) && arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 2>();
    let var_0 = all(select(func_1(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, false, false), false)), !vec3<bool>(true, true, 0u == u_input.c.x), true));
    let var_1 = Struct_3(~vec2<u32>(~0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1097f, 292f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1172f, 1018f)), vec2<f32>(-187f, 189f), all(vec2<bool>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, 675f))))))), ~u_input.a.wxw, select(_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, ~firstLeadingBit(vec4<u32>(93327u, u_input.a.x, 41589u, var_1.a.x))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, 50834u, var_1.a.x, var_1.a.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, var_1.a.x)), ~u_input.a), !select(vec4<bool>(true, var_0, true, false), !vec4<bool>(var_0, var_0, var_0, var_0), any(vec3<bool>(false, true, false)))), _wgslsmith_mod_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(2140u, var_1.a.x, 46084u), u_input.a.zxy, ~vec3<u32>(0u, u_input.c.x, u_input.b.x)), min(u_input.c.xyz, vec3<u32>(var_1.a.x, 4568u, 1u))), ~(~u_input.c.ywz | u_input.c.yyx)));
}

