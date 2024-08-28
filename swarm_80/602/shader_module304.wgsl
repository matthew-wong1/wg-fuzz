struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> bool {
    let var_0 = -844f;
    let var_1 = max(vec3<i32>(2147483647i, max(-27240i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-5986i, u_input.e.x, 9672i, 2147483647i), arg_1, arg_0), arg_1)), -24764i), -_wgslsmith_add_vec3_i32(vec3<i32>(35720i, 31038i, 2147483647i) & vec3<i32>(u_input.c, -1i, arg_1.x), firstTrailingBit(arg_1.wwz)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, arg_2, 1u), ~global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec3<u32>(32u)));
    let var_2 = u_input.e;
    let var_3 = true;
    let var_4 = 47211i;
    return true;
}

fn func_2() -> vec4<i32> {
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    let var_0 = select(select(vec2<bool>(func_3(false, vec4<i32>(-48095i, -2124i, u_input.c, u_input.d), 0u), true && select(true, false, false)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(-202f < _wgslsmith_f_op_f32(floor(784f)), any(vec4<bool>(true, false, true, false)))), select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.a.x < u_input.a.x), vec2<bool>(true, true));
    let var_1 = Struct_2(~(~u_input.a.x | min(u_input.a.x, _wgslsmith_add_u32(0u, 1u))));
    global0 = array<vec3<u32>, 10>();
    return select(select(vec4<i32>(_wgslsmith_div_i32(-u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -26707i, u_input.d, u_input.e.x), vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, u_input.c))), 2147483647i, ~(~4873i), 41173i), ~abs(-vec4<i32>(u_input.c, u_input.d, u_input.c, 2147483647i)), any(vec3<bool>(true, true, true))), select(reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17814i, u_input.e.x, u_input.e.x, 1i), vec4<i32>(482i, u_input.b.x, 26726i, u_input.e.x), vec4<i32>(u_input.d, 42198i, u_input.d, 1i)), -vec4<i32>(u_input.b.x, -20158i, 1729i, u_input.b.x))), _wgslsmith_add_vec4_i32(~min(vec4<i32>(1i, u_input.d, -45910i, u_input.d), vec4<i32>(u_input.b.x, 59980i, 30984i, u_input.c)), reverseBits(-vec4<i32>(35678i, 30107i, u_input.b.x, -2147483647i))), true), vec4<bool>(countOneBits(33073i ^ u_input.d) <= min(u_input.b.x, _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.b.x)), var_0.x && true, any(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, false, true, var_0.x)), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, true), false), !var_0.x)), !any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
}

fn func_4(arg_0: i32) -> Struct_3 {
    global1 = array<Struct_3, 26>();
    global1 = array<Struct_3, 26>();
    let var_0 = vec4<bool>(!(!(!all(vec4<bool>(false, false, false, true)))), all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), countOneBits(4294967295u) != ~u_input.a.x)), !(!(u_input.a.x > _wgslsmith_mod_u32(0u, u_input.a.x))), !all(vec4<bool>(false, false, true, true)));
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(u_input.e.x, u_input.d, u_input.b.x)), u_input.b.x);
    var var_2 = ~(-32970i);
    return Struct_3(Struct_1(u_input.a.xyx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-780f, _wgslsmith_f_op_f32(sign(-2013f)), 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(208f, -219f, -786f) + vec3<f32>(596f, -409f, 284f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -1277f, 1194f))))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    var var_0 = countOneBits(6632i);
    var var_1 = func_4(min(-(~u_input.b.x << (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(min(max(vec4<i32>(u_input.c, -6836i, 18451i, u_input.c), vec4<i32>(-12107i, 2147483647i, u_input.e.x, 22816i)), func_2()), (vec4<i32>(u_input.e.x, 0i, -1i, 53781i) & vec4<i32>(2147483647i, u_input.e.x, u_input.b.x, u_input.b.x)) ^ vec4<i32>(7189i, u_input.c, u_input.e.x, u_input.c))));
    var_0 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.b.x, 1i, 32489i), -vec4<i32>(-42634i, 2147483647i, u_input.d, u_input.d)), u_input.e.x);
    return min(_wgslsmith_dot_vec3_u32(var_1.a.a, _wgslsmith_mult_vec3_u32(var_1.a.a, vec3<u32>(countOneBits(arg_1), 93703u, arg_1))), ~_wgslsmith_div_u32(arg_3, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 26u)];
    var var_1 = _wgslsmith_mult_u32(~var_0.a.a.x << (9527u % 32u), _wgslsmith_mod_u32(u_input.a.x, ~7783u));
    var_1 = 1u;
    global1 = array<Struct_3, 26>();
    var var_2 = vec2<u32>(~func_1(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], ~1u, _wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x), 43477u), 11625u) ^ ~(~select(~var_0.a.a.zz, vec2<u32>(1u, var_0.a.a.x) | vec2<u32>(u_input.a.x, 41343u), true));
    global0 = array<vec3<u32>, 10>();
    let var_3 = false;
    var_2 = vec2<u32>(max(14052u, ~1u), 0u);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zx, max(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -29016i), vec2<i32>(3357i, -2147483647i), u_input.e), u_input.b));
}

