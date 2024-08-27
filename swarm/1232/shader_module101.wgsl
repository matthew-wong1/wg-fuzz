struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0u, 1u, false, 10403i, vec4<i32>(-40774i, 26737i, 13944i, i32(-2147483648))), Struct_1(0u, 4294967295u, false, 5106i, vec4<i32>(0i, -1i, -70807i, -5896i)), Struct_1(44093u, 4294967295u, false, 5382i, vec4<i32>(10652i, 20298i, 2147483647i, i32(-2147483648))), Struct_1(0u, 1u, false, 47129i, vec4<i32>(24402i, 23536i, 0i, -1i)), Struct_1(4294967295u, 1u, true, 0i, vec4<i32>(-1i, -17144i, -13500i, -35805i)), Struct_1(33469u, 1u, false, 0i, vec4<i32>(-17925i, 0i, 1i, 19069i)), Struct_1(4294967295u, 0u, false, -41676i, vec4<i32>(-51131i, 2147483647i, i32(-2147483648), 26655i)), Struct_1(0u, 1u, true, -8920i, vec4<i32>(24786i, 42094i, -1i, i32(-2147483648))), Struct_1(0u, 46144u, false, i32(-2147483648), vec4<i32>(-9661i, 1i, -17858i, 68194i)));

var<private> global2: array<vec2<f32>, 26>;

var<private> global3: array<u32, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~firstTrailingBit(0u), 9u)];
    let var_1 = arg_1;
    global1 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 51817u), firstTrailingBit(max(vec2<u32>(var_1.a, abs(25611u)), min(arg_2.yz, firstLeadingBit(u_input.d.yx)))));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstTrailingBit(~(arg_0 ^ vec2<u32>(var_2, var_1.b))), arg_0), 9u)];
    return -333f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(721f))), _wgslsmith_f_op_f32(f32(-1f) * -207f), 294f, _wgslsmith_div_f32(_wgslsmith_div_f32(-184f, -923f), _wgslsmith_f_op_f32(floor(1090f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(544f * 1000f) - _wgslsmith_div_f32(-1000f, 1685f)), -396f, _wgslsmith_div_f32(-660f, _wgslsmith_f_op_f32(abs(-142f))), _wgslsmith_f_op_f32(func_3(u_input.d.wx, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 19u)] | 28897u, 19u)], 9u)], u_input.d.zyy << (vec3<u32>(u_input.d.x, u_input.d.x, 67376u) % vec3<u32>(32u)))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -836f)));
    var var_2 = vec4<bool>(true, all(vec3<bool>(true, true, true)), false, false);
    return true;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1375f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(564f, -375f))))));
    var var_1 = 1025f;
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1077f)), _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(u_input.d.x, 23586u, var_2, u_input.c.x, vec4<i32>(u_input.e.x, u_input.c.x, 7249i, u_input.a.x)), vec3<u32>(0u, 0u, 4294967295u))), _wgslsmith_f_op_f32(894f - 3037f), _wgslsmith_f_op_f32(f32(-1f) * -2095f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-825f, -1040f, -651f, -2319f), vec4<f32>(-343f, -1000f, 540f, -133f), false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(307f, 144f, -668f, 670f))), true))))), vec4<f32>(1f, 1f, 1f, 1f), var_2));
    let var_4 = var_3.x;
    return 35715u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 26>();
    var var_0 = Struct_1(u_input.d.x, func_1(), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, select(false, true, true), true, true))), -min(27400i, _wgslsmith_add_i32(u_input.a.x, 6867i)) & (7640i ^ ~abs(u_input.e.x)), ~max(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.c.x, 2396i, 0i)), vec4<i32>(u_input.a.x, 1i, u_input.e.x, -2147483647i) & vec4<i32>(2147483647i, -2147483647i, u_input.b.x, -1i), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x)), vec4<i32>(~u_input.b.x, -9551i, i32(-1i) * -2147483647i, reverseBits(u_input.a.x))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a & _wgslsmith_sub_u32(35263u, var_0.a), global3[_wgslsmith_index_u32(~0u, 19u)]), 19u)] | _wgslsmith_add_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 19u)] & u_input.d.x, 4294967295u), 4294967295u), ~u_input.d.x), 9u)];
    let var_2 = 1f;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, var_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + global2[_wgslsmith_index_u32(34230u, 26u)]))))) * _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.a, u_input.d.x), 26u)] * vec2<f32>(_wgslsmith_f_op_f32(min(var_2, 2270f)), _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 0u), global1[_wgslsmith_index_u32(var_1.a, 9u)], vec3<u32>(4294967295u, 1u, 20057u))))))));
    let var_4 = global3[_wgslsmith_index_u32(var_0.a, 19u)];
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(u_input.c, -select(vec3<i32>(64494i, 8570i, u_input.b.x), vec3<i32>(u_input.a.x, u_input.c.x, u_input.e.x), var_1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1264f - var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x - var_2))), var_2) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, var_2, var_2) + vec3<f32>(-633f, var_3.x, 344f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, var_2, var_2)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, var_3.x)) - -2219f), var_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1126f, _wgslsmith_f_op_f32(sign(var_2)))), _wgslsmith_f_op_f32(f32(-1f) * -802f), !var_1.c & true))));
}

