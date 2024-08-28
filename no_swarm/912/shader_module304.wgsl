struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec3<f32> {
    var var_0 = ~(~30166i);
    var var_1 = -vec2<i32>(~abs(-1i), -12991i);
    var var_2 = select(select(select(select(!vec2<bool>(arg_2, true), !vec2<bool>(false, arg_2), false), select(vec2<bool>(true, true), !vec2<bool>(arg_2, true), any(vec4<bool>(arg_2, false, arg_2, arg_2))), arg_2), vec2<bool>(all(vec2<bool>(false, true)), false | any(vec3<bool>(arg_2, arg_2, true))), !arg_2), !vec2<bool>(false, arg_2), all(vec4<bool>(true, !all(vec3<bool>(true, arg_2, arg_2)), all(!vec2<bool>(true, arg_2)), -2147483647i != firstTrailingBit(arg_1.x))));
    var_1 = ~min(global1[_wgslsmith_index_u32(u_input.a, 23u)] >> (select(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(16732u, u_input.a), true) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(0u, 23u)]);
    var var_3 = select(~_wgslsmith_sub_vec2_u32(min(vec2<u32>(14690u, 43270u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(12458u, 1u), vec2<u32>(41268u, u_input.a))) & _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, ~20687u), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u, 4294967295u))), max(~abs(vec2<u32>(u_input.a, 8385u)) << (~vec2<u32>(42484u, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 29645u, u_input.a, 4294967295u)), _wgslsmith_mult_u32(70095u, u_input.a)), vec2<u32>(0u, u_input.a))), arg_2);
    return vec3<f32>(-1781f, _wgslsmith_f_op_f32(max(-1293f, 1307f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1460f * -321f) + 301f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-443f, 1000f)), -2257f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2094f)), -852f)));
}

fn func_2() -> StorageBuffer {
    global0 = ~(_wgslsmith_sub_i32(min(-1i, 36882i) >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-5707i, 1i, 0i), vec3<i32>(33580i, 0i, -28142i))) << (0u % 32u));
    var var_0 = Struct_1(~countOneBits(-7953i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, -277f, 115f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(34091i, -1i, 34629i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, -60925i), -vec3<i32>(-2147483647i, 2147483647i, -14593i))), ~vec2<i32>(select(1i, 12139i, true), 1i), true)));
    var var_1 = Struct_3(!all(vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false)), 0i < var_0.a, false)));
    let var_2 = Struct_2(~(-vec4<i32>(var_0.a, -2147483647i << (0u % 32u), ~var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, 2147483647i), vec3<i32>(var_0.a, var_0.a, var_0.a)))), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -8263i, var_0.a), ~vec3<i32>(-56637i, var_0.a, 2147483647i)) >> (~vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))));
    var var_3 = var_0.a <= var_0.a;
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-1f)))), 0u, var_0.b.x, _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 625f, var_0.b.x) - var_0.c))), true)));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1480f), -299f))), vec2<f32>(1083f, -1700f));
    global0 = 44783i;
    let var_1 = Struct_3((_wgslsmith_mult_i32(~1i, _wgslsmith_div_i32(1i, 20927i)) << (u_input.a % 32u)) >= _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(4203i, -2147483647i), min(2147483647i, -38979i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i) & global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)] & vec2<i32>(20086i, 0i))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 23>();
    var var_0 = Struct_2(vec4<i32>(min(-21315i, 42088i), _wgslsmith_mod_i32(min(1i, 12088i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-18271i, 0i), ~1i, -12896i >> (0u % 32u))), 1i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_mod_i32(-2147483647i, -2147483647i)));
    global0 = -1i;
    let var_1 = vec2<i32>(~_wgslsmith_sub_i32(var_0.a.x & -1i, _wgslsmith_mod_i32(var_0.b.x, 2147483647i)), 2147483647i) & -(~_wgslsmith_add_vec2_i32(vec2<i32>(46849i, 33987i), firstTrailingBit(var_0.b.xx)));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

