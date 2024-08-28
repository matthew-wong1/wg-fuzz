struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 38264u;

var<private> global1: array<vec4<bool>, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<bool>) -> bool {
    var var_0 = select(select(vec2<bool>(any(!arg_2.yxw), false), !select(arg_2.ww, select(arg_2.wy, vec2<bool>(arg_0.x, arg_2.x), arg_0), false), !arg_1), !(!vec2<bool>(!arg_0.x, !arg_2.x)), vec2<bool>(false, ~(~u_input.b.x) <= u_input.a.x));
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_f32(abs(-284f));
    var var_3 = 4294967295u;
    var_1 = true;
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = vec4<bool>(arg_1, !(!func_3(select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), arg_1, !vec4<bool>(false, arg_1, arg_1, false))), arg_1, any(vec2<bool>(arg_1, false)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(623f, -1448f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(1812f + 637f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(659f - -916f) - _wgslsmith_div_f32(1134f, -382f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2175f + 116f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2175f - -1380f))))), _wgslsmith_div_f32(-563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1317f)) + _wgslsmith_div_f32(-185f, 677f)))), !var_0.x));
    var var_2 = !(!select(!vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, !var_0.x), select(select(vec3<bool>(true, arg_1, true), var_0.wyw, vec3<bool>(arg_1, false, false)), vec3<bool>(var_0.x, arg_1, false), !var_0.ywx)));
    var var_3 = select(firstTrailingBit(arg_2), abs(reverseBits(~vec2<i32>(arg_0.a.x, -1i))), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(534f, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, var_1, -2203f))))), var_0.x)));
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    global1 = array<vec4<bool>, 21>();
    global1 = array<vec4<bool>, 21>();
    var var_0 = vec4<u32>(4294967295u, ~min(u_input.b.x, u_input.a.x), 75560u, 0u) >> (~u_input.a % vec4<u32>(32u));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(min(max(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, var_0.yy)), 12413u), u_input.a.x, ~firstLeadingBit(abs(16915u)), u_input.b.x), ~func_2(Struct_3(abs(vec4<i32>(5154i, u_input.c, 0i, u_input.c)), ~u_input.a.www, ~vec4<i32>(16768i, u_input.c, u_input.c, u_input.c)), true, -select(vec2<i32>(-13151i, -20138i), vec2<i32>(u_input.c, -69651i), arg_0)));
    var var_1 = Struct_4(vec2<bool>(func_3(vec2<bool>(true, true), arg_0.x, select(!vec4<bool>(true, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, true), global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)]), select(vec4<bool>(false, false, true, arg_0.x), global1[_wgslsmith_index_u32(1u, 21u)], arg_0.x))), all(select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, false, false), vec3<bool>(true, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x)))));
    return _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, u_input.c, 1i)), vec4<i32>(-2147483647i, 17270i, u_input.c, 1i)), -(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<i32>(-1i, 0i, u_input.c, u_input.c)), ~(~vec4<i32>(20764i, u_input.c, -24979i, 1i))), -(~vec4<i32>(-1i, u_input.c, -3088i, 2957i) | vec4<i32>(0i, u_input.c, u_input.c, -1i)), var_1.a.x), ~(~_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), ~vec4<i32>(19256i, -26089i, u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 21>();
    let var_0 = false;
    global0 = 1166u;
    var var_1 = -firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, -40805i, u_input.c, u_input.c), func_1(vec2<bool>(var_0, var_0))) | vec4<i32>(u_input.c, 0i, 1i, u_input.c));
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(abs(100512u), ~u_input.a.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-226f, -478f));
}

