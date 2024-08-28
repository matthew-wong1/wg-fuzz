struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<f32, 26>;

var<private> global4: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(36594u, 13u)];
    let var_1 = arg_3.x;
    global4 = array<vec4<bool>, 18>();
    global3 = array<f32, 26>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, -796f)) - arg_0));
    return var_2;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1529f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.e.a * arg_2.e.a), 1328f))) - -447f));
    let var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-27588i, _wgslsmith_mod_i32(-1i, 1i), u_input.c.x)), -select(select(vec3<i32>(u_input.c.x, arg_1.x, 0i), vec3<i32>(-2147483647i, 6089i, 18313i), true) ^ _wgslsmith_sub_vec3_i32(u_input.c, u_input.c), -(vec3<i32>(75120i, arg_1.x, arg_1.x) >> (vec3<u32>(arg_2.b, 11964u, arg_2.b) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(min(u_input.c, -u_input.c), reverseBits(vec3<i32>(-1i, 1i, 36348i))), -max(u_input.c, -u_input.c)));
    let var_2 = arg_2;
    var var_3 = arg_1.x;
    let var_4 = Struct_2(~firstLeadingBit(var_2.b));
    return func_2(global3[_wgslsmith_index_u32(1u, 26u)], -vec3<i32>(~u_input.c.x, -(~5424i), _wgslsmith_div_i32(var_1.x, 38566i)), arg_3, global4[_wgslsmith_index_u32(u_input.b, 18u)]);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(step(arg_3.x, global3[_wgslsmith_index_u32(u_input.b, 26u)])))), _wgslsmith_f_op_f32(sign(arg_1.x)))), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.yw, vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], arg_0))) - _wgslsmith_f_op_vec2_f32(-arg_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 26u)], -845f) - vec2<f32>(arg_0, -2105f)) - vec2<f32>(-981f, arg_3.x))), global4[_wgslsmith_index_u32(67446u, 18u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(450f)))))) - _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -766f))), true))));
    global4 = array<vec4<bool>, 18>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(firstTrailingBit(40766u)), 26u)]) - _wgslsmith_f_op_f32(-arg_1.x)), ~u_input.b, var_1, var_1, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * global3[_wgslsmith_index_u32(u_input.b, 26u)]))))));
    let var_3 = Struct_3(-977f, abs(abs(1u)), var_1, Struct_1(-276f), func_3(1u, -vec2<i32>(arg_2, u_input.c.x), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, -783f))), ~u_input.a.x & _wgslsmith_add_u32(var_2.b, var_2.b), var_1, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1569f)), var_2.c), vec2<f32>(arg_1.x, -196f)));
    return -1708f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -28924i;
    let var_1 = max(65676u, ~_wgslsmith_mod_u32(select(~u_input.a.x, u_input.b, false), min(~u_input.b, 0u)));
    let var_2 = u_input.a.x <= ~_wgslsmith_add_u32(var_1, ~_wgslsmith_div_u32(var_1, 1u));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-877f + 1000f)), -700f);
    global0 = var_2;
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, 1386f, var_3)), ~(-17444i), vec2<f32>(-112f, 1967f))))), 2059f, var_2)), _wgslsmith_f_op_f32(f32(-1f) * -694f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b | var_1, u_input.b, ~var_1), u_input.a.wwz << (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u))) & u_input.a.yyw, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(545f, var_3)) * -535f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1079f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 26u)], var_5.x) * vec2<f32>(713f, var_5.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, 1035f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(369f, 307f)))))));
}

