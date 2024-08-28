struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -702f;

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<Struct_2, 2>;

var<private> global3: u32 = 4745u;

var<private> global4: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(28648i, -11348i, 11730i, -38108i), vec4<i32>(5632i, 18850i, i32(-2147483648), 0i), vec4<i32>(-6209i, 1i, -1i, -7462i), vec4<i32>(0i, 0i, 0i, 2147483647i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    let var_0 = arg_2.c.a;
    global1 = array<vec3<u32>, 25>();
    return Struct_2(~var_0);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    var var_0 = !any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true)));
    global1 = array<vec3<u32>, 25>();
    global4 = array<vec4<i32>, 4>();
    var var_1 = select(select(!vec4<bool>(select(false, true, false), all(vec3<bool>(true, true, true)), true, arg_2.x != 1234f), vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), true & (u_input.a.x <= 1u), true && select(true, false, true), true), vec4<bool>(all(vec2<bool>(true, true)), select(true, true, select(false, true, false)), true, all(vec4<bool>(false, true, false, true)))), vec4<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), -427f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), arg_2.x), any(vec2<bool>(all(vec3<bool>(false, false, true)), true)), true), vec4<bool>(false, false, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), true));
    let var_2 = _wgslsmith_dot_vec3_i32(abs(~u_input.b.zyz), _wgslsmith_mod_vec3_i32(vec3<i32>(~firstLeadingBit(arg_0), countOneBits(arg_1.a), select(arg_0, select(53278i, -22475i, false), true)), -(~u_input.b.zzy) & vec3<i32>(2147483647i & u_input.b.x, 1i, -2147483647i)));
    return true;
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    var var_0 = arg_0;
    var var_1 = Struct_5(Struct_4(vec2<f32>(var_0.a.x, 1000f), global1[_wgslsmith_index_u32(83554u, 25u)] << (arg_0.b % vec3<u32>(32u)), var_0.c), select(select(select(!vec4<bool>(true, arg_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, arg_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, arg_0.c.x, var_0.c.x, true)), select(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), !vec4<bool>(false, arg_0.c.x, var_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, var_0.c.x, var_0.c.x, true)), !select(true, false, arg_0.c.x)), vec4<bool>(func_3(0i & u_input.b.x, func_2(vec3<u32>(16052u, 1u, var_0.b.x), u_input.b.x, Struct_5(arg_0, vec4<bool>(arg_0.c.x, false, false, false), Struct_2(u_input.b.x)), 1188f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2005f, 1000f, arg_0.a.x))), -1000f == _wgslsmith_f_op_f32(-var_0.a.x), !(arg_0.b.x >= var_0.b.x), var_0.c.x), select(select(vec4<bool>(var_0.c.x, var_0.c.x, arg_0.c.x, true), !vec4<bool>(false, arg_0.c.x, var_0.c.x, true), !vec4<bool>(false, false, true, var_0.c.x)), select(select(vec4<bool>(false, var_0.c.x, true, var_0.c.x), vec4<bool>(true, arg_0.c.x, var_0.c.x, var_0.c.x), arg_0.c.x), !vec4<bool>(true, arg_0.c.x, true, true), arg_0.c.x), !select(vec4<bool>(true, false, var_0.c.x, var_0.c.x), vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x)))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-7112i, firstTrailingBit(u_input.c.x), u_input.c.x), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 0i, u_input.c.x), vec3<i32>(u_input.c.x, 59456i, u_input.c.x)))));
    var_1 = Struct_5(arg_0, select(var_1.b, vec4<bool>(false, all(vec2<bool>(false, var_0.c.x)), arg_0.c.x, false), select(select(select(var_1.b, var_1.b, false), select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(true, arg_0.c.x, var_1.b.x, false), var_1.b.x), vec4<bool>(true, false, false, true)), !var_1.b, var_1.b)), func_2(vec3<u32>(u_input.a.x, u_input.a.x, var_0.b.x), firstTrailingBit(var_1.c.a), Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(step(var_1.a.a, arg_0.a)), var_1.a.b, !vec2<bool>(var_1.b.x, false)), vec4<bool>(var_1.b.x, false || arg_0.c.x, var_1.b.x, !var_0.c.x), func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_1.a.b.x, 5918u), vec3<u32>(1749u, var_0.b.x, var_0.b.x)), ~85043i, Struct_5(arg_0, vec4<bool>(var_1.b.x, arg_0.c.x, true, false), var_1.c), _wgslsmith_f_op_f32(abs(arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-159f * 1007f))) + 1f)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = ~(~(~max(firstLeadingBit(vec4<u32>(4294967295u, var_0.b.x, 35839u, 13884u)), reverseBits(vec4<u32>(33932u, u_input.a.x, 1u, 39648u)))));
    return Struct_5(var_1.a, select(select(select(var_1.b, select(vec4<bool>(var_1.b.x, false, false, true), vec4<bool>(false, false, var_1.b.x, true), var_1.a.c.x), var_1.b.x), !var_1.b, var_0.c.x), !var_1.b, vec4<bool>(u_input.b.x > _wgslsmith_mult_i32(u_input.c.x, -2147483647i), all(var_1.b), true, true)), Struct_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(u_input.c.x, var_1.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x >> (0u % 32u), 16872u), 25u)], select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true))));
    let var_1 = func_1(func_1(func_1(func_1(Struct_4(vec2<f32>(var_0.a.a.x, var_0.a.a.x), var_0.a.b, var_0.a.c)).a).a).a).a.c;
    var var_2 = var_0.a;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, firstLeadingBit(0i), _wgslsmith_clamp_i32(var_0.c.a, -28411i, 6695i)), 1i, -var_3.x), _wgslsmith_clamp_vec2_u32(var_2.b.xx, var_0.a.b.xz, reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.a.b.yy), u_input.a))), abs(~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.a, var_3.x), var_3.zz), -vec2<i32>(var_0.c.a, var_0.c.a))), ~firstTrailingBit(-select(vec4<i32>(-25121i, var_3.x, var_0.c.a, -1i), vec4<i32>(var_3.x, u_input.b.x, u_input.b.x, -7435i), true)), firstLeadingBit(abs(u_input.b.wyw)));
}

