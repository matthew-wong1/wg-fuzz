struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: bool;

var<private> global3: vec4<f32> = vec4<f32>(-564f, 1000f, -386f, 862f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_sub_u32(53331u, 25786u), 1u) ^ u_input.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a, arg_0.x) | (u_input.a.wz >> (u_input.c % vec2<u32>(32u))), ~(~arg_0)), !vec2<bool>(0i <= arg_2.b, -1087f <= arg_1.x)), arg_0);
    global1 = array<vec2<f32>, 16>();
    var var_1 = Struct_3(~(~vec3<u32>(firstTrailingBit(arg_0.x), ~4294967295u, ~arg_0.x)), Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1891f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, arg_1.x, arg_1.x), vec4<f32>(-1120f, arg_1.x, global3.x, arg_1.x), true))))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x)))), var_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global3.x)))) * global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(330f))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(~vec3<u32>(min(u_input.a.x, 54806u), u_input.a.x, 81132u) ^ u_input.a.zwx, Struct_2(Struct_1(firstTrailingBit(u_input.d.x), 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -2597f), global3.x, global3.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, 609f, 453f), vec4<f32>(global3.x, -713f, global3.x, -777f), vec4<bool>(true, false, false, false)))))));
    let var_1 = ~u_input.a;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, _wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(ceil(-442f)), -871f) + vec4<f32>(_wgslsmith_div_f32(global3.x, var_0.b.b.x), _wgslsmith_f_op_f32(round(-273f)), global3.x, -699f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(10935u, 0u), _wgslsmith_f_op_vec2_f32(-global3.ww), Struct_1(18274u, var_0.b.a.b))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a.x, var_1.x)), global1[_wgslsmith_index_u32(firstLeadingBit(38913u), 16u)], var_0.b.a))) - vec4<f32>(-141f, 635f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.x, 686f))), 1909f)));
    var var_2 = true;
    let var_3 = Struct_2(var_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.b - var_0.b.b))));
    return Struct_2(Struct_1(25407u, -3014i), _wgslsmith_f_op_vec4_f32(floor(var_3.b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    global0 = array<vec3<i32>, 25>();
    var var_0 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-arg_1.a.b, ~arg_1.a.b), vec2<i32>(_wgslsmith_div_i32(0i, 2147483647i), 2147483647i));
    let var_1 = func_2();
    var var_2 = -(arg_1.a.b >> (func_2().a.a % 32u));
    let var_3 = func_2().a;
    return 9473u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = select(vec3<bool>(true, true, true), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, false)) && select(true, true, false)), select(vec3<bool>(true, true, 1u > arg_0.a), vec3<bool>(true, true, all(vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), all(vec3<bool>(false, false, false)))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    global2 = true;
    var var_2 = Struct_1(firstTrailingBit(~var_0.a & u_input.b), _wgslsmith_sub_i32(_wgslsmith_add_i32(-(~1i), -var_0.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.b, 34912i, -11371i)), global0[_wgslsmith_index_u32(u_input.c.x, 25u)])));
    let var_3 = Struct_2(func_2().a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -1793f, global3.x, global3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, global3.x, global3.x, global3.x) + vec4<f32>(global3.x, -572f, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1399f, 504f, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2().b - vec4<f32>(global3.x, 730f, 1989f, -467f)) * vec4<f32>(global3.x, 968f, 1314f, _wgslsmith_f_op_f32(-791f - 361f)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(reverseBits(20766u << (~u_input.a.x % 32u)), -1i), _wgslsmith_add_vec3_i32(countOneBits(abs(global0[_wgslsmith_index_u32(u_input.a.x, 25u)])) ^ global0[_wgslsmith_index_u32(func_1(vec2<bool>(true, true), Struct_2(Struct_1(55307u, -42154i), vec4<f32>(491f, -1300f, global3.x, 686f))), 25u)], _wgslsmith_sub_vec3_i32(~(global0[_wgslsmith_index_u32(84214u, 25u)] & vec3<i32>(1i, -4650i, 2147483647i)), max(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 1u), 25u)], global0[_wgslsmith_index_u32(0u & u_input.b, 25u)]))));
    var var_1 = global3.zxw;
    var var_2 = -(~(vec4<i32>(-2147483647i, _wgslsmith_add_i32(8219i, var_0.b), 1i, -24521i) >> (vec4<u32>(52262u, u_input.c.x, u_input.a.x, 0u) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_add_vec4_i32(reverseBits(~vec4<i32>(1i, _wgslsmith_add_i32(55227i, 30302i), func_2().a.b, select(-7396i, 9423i, false))), vec4<i32>(var_2.x, 49308i, var_2.x, ~(-2147483647i)));
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_i32(i32(-1i) * -var_0.b, ~var_0.b));
    let var_4 = u_input.a.xz;
    let var_5 = (countOneBits(firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, var_3.x, 0i, var_0.b)))) ^ -(~max(vec4<i32>(var_2.x, var_0.b, -26259i, var_0.b), vec4<i32>(-17665i, -2147483647i, var_0.b, var_0.b)))) << (vec4<u32>(0u, var_4.x, firstLeadingBit(u_input.d.x), 4294967295u ^ ~_wgslsmith_mod_u32(var_0.a, 24128u)) % vec4<u32>(32u));
    var var_6 = all(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_3.xww, vec3<i32>(var_3.x, var_2.x, -var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1122f * 1122f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(global3.x + 275f)))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), 259f), vec2<i32>(i32(-1i) * -1i, 32790i));
}

