struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_4, 9>;

var<private> global2: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = !(!(!arg_1));
    global1 = array<Struct_4, 9>();
    var var_0 = Struct_3(Struct_1(~vec4<i32>(_wgslsmith_add_i32(-42792i, -1i), min(10259i, 19391i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(9312i, 2147483647i, 0i), vec3<i32>(20949i, 24277i, 90837i)))), vec2<i32>(1i, 1i), !vec4<bool>(u_input.a.x <= 0u, true, arg_1 && (arg_1 || false), true), u_input.b);
    global0 = arg_1;
    let var_1 = !vec3<bool>(!(arg_1 || false), true, arg_1);
    return Struct_1(var_0.a.a);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1258f)), _wgslsmith_f_op_f32(-770f + -2154f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-243f, _wgslsmith_f_op_f32(max(332f, 2301f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590f + -1875f))))), all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true)))).a.zy;
    let var_1 = u_input.a.x;
    let var_2 = vec2<bool>(true, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))) && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))));
    global2 = _wgslsmith_f_op_f32(-230f - 745f);
    let var_3 = global1[_wgslsmith_index_u32(~(~arg_0.b.x), 9u)];
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.a.zy), vec2<f32>(-472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x)))), all(select(vec3<bool>(all(vec3<bool>(var_2.x, var_2.x, var_2.x)), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, false, true), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.x, true, false), false))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(func_2(153f, true), select(arg_1, arg_1, vec3<bool>(true, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, arg_1.x), vec4<u32>(arg_1.x, 17318u, 0u, u_input.a.x)))))))));
    global0 = 22139u <= ~(~u_input.b.x);
    return select(!vec4<bool>(true, false, true, all(vec3<bool>(true, false, true)) || all(vec2<bool>(false, true))), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), true), vec4<bool>(all(vec3<bool>(true, false, false)), true, -685f >= _wgslsmith_f_op_f32(var_0.x + var_0.x), all(vec2<bool>(true, true)))), vec4<bool>(true, select(true, select(false, arg_0.x < arg_0.x, any(vec4<bool>(false, false, false, true))), true), !(!any(vec2<bool>(false, false))), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(~arg_1.c.xw, _wgslsmith_add_vec2_u32(vec2<u32>(~(~arg_1.c.x), ~arg_1.b.x ^ firstLeadingBit(36716u)), vec2<u32>(87328u, _wgslsmith_dot_vec4_u32(arg_1.c, arg_1.c)) | u_input.a));
    let var_1 = select(arg_0.zz, func_1(arg_1.a.a.zxx, ~select(vec3<u32>(0u, 4294967295u, var_0.x) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_1.c.x, var_0.x), vec3<u32>(4294967295u, 29935u, arg_1.c.x), vec3<u32>(4294967295u, 0u, 1u)), func_1(vec3<i32>(arg_3.x, arg_1.a.a.x, arg_1.a.a.x), vec3<u32>(u_input.a.x, u_input.a.x, var_0.x)).wzx)).xw, arg_0.ww);
    let var_2 = arg_1.a.a.yw;
    global2 = -1036f;
    var var_3 = vec4<u32>(~var_0.x, ~(~57763u << (u_input.a.x % 32u)), var_0.x, var_0.x);
    return func_1(countOneBits(~vec3<i32>(_wgslsmith_dot_vec2_i32(var_2, arg_1.a.a.zw), -2147483647i, -2147483647i)), _wgslsmith_clamp_vec3_u32(select(countOneBits(u_input.b), _wgslsmith_sub_vec3_u32(arg_1.c.wzx & vec3<u32>(0u, arg_1.b.x, 4294967295u), vec3<u32>(var_0.x, var_0.x, 19908u)), arg_0.wyw), ~vec3<u32>(arg_1.c.x & 104736u, ~var_0.x, 1u), arg_1.b)).zw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zx;
    global2 = -614f;
    global0 = any(!(!func_4(func_1(vec3<i32>(0i, -43919i, 16891i), u_input.b), Struct_2(Struct_1(vec4<i32>(0i, -2147483647i, -2147483647i, -16459i)), vec3<u32>(var_0.x, var_0.x, 52276u), vec4<u32>(22722u, 37484u, var_0.x, 127697u)), false, vec3<i32>(0i, 0i, 55140i))));
    global2 = _wgslsmith_f_op_f32(abs(-738f));
    var var_1 = -471f;
    let var_2 = vec2<bool>(func_1(firstLeadingBit(~(vec3<i32>(-88752i, -2147483647i, 2147483647i) << (u_input.b % vec3<u32>(32u)))), abs(u_input.b)).x, false);
    var var_3 = false;
    global1 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, -36909i, 0i, 1i), vec4<i32>(0i, -39875i, -22963i, -2147483647i), false), firstLeadingBit(vec4<i32>(-1i, -22944i, 0i, 0i))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(57294i, -12434i, 0i), _wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(15209i, 1i), vec2<i32>(2147483647i, 1i)), ~(-2147483647i)), firstTrailingBit(-vec4<i32>(-4824i, 1i, 35395i, 19i))), !(!(!vec4<bool>(false, false, var_2.x, var_2.x)))));
}

