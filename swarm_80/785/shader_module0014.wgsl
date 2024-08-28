struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-602f, -787f, -1224f), vec3<f32>(-1297f, -2154f, -1333f), vec3<f32>(-362f, -1000f, 737f), vec3<f32>(1412f, 1157f, -594f), vec3<f32>(781f, -439f, -552f), vec3<f32>(-2006f, -274f, 2178f), vec3<f32>(-2564f, -2274f, -970f), vec3<f32>(-935f, -1000f, -1111f), vec3<f32>(-1002f, -292f, -637f), vec3<f32>(533f, -1420f, 1475f), vec3<f32>(-2210f, 1000f, -270f), vec3<f32>(1917f, -132f, 691f), vec3<f32>(450f, 651f, -512f), vec3<f32>(-845f, 135f, -730f), vec3<f32>(-196f, -208f, -636f), vec3<f32>(-1133f, 1655f, 112f), vec3<f32>(109f, -1008f, 816f), vec3<f32>(467f, -258f, -747f), vec3<f32>(-513f, 257f, 1697f), vec3<f32>(-2692f, 561f, 382f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = Struct_1(arg_1, _wgslsmith_f_op_f32(-arg_1));
    global0 = false;
    global2 = ((min(~vec4<u32>(4294967295u, 63414u, 47523u, 4294967295u), firstLeadingBit(vec4<u32>(1u, 0u, 1u, global2.x))) >> (~(~vec4<u32>(global2.x, 28981u, 52743u, 69991u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(global2.x, global2.x, global2.x, 1u) >> (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u)), min(vec4<u32>(4294967295u, 4294967295u, 1u, global2.x), vec4<u32>(global2.x, 1u, 1u, 52599u)), true), _wgslsmith_mod_vec4_u32(vec4<u32>(50289u, global2.x, global2.x, 1u), ~vec4<u32>(global2.x, 1u, 52236u, global2.x))) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(28224u, ~global2.x, 1u, abs(62138u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u | global2.x, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(19302u, global2.x, 4294967295u, 0u), vec4<u32>(global2.x, 0u, global2.x, 4294967295u), vec4<u32>(26567u, 1u, global2.x, global2.x)), ~vec4<u32>(26097u, global2.x, global2.x, global2.x)), ~global2.x, (global2.x & global2.x) << (_wgslsmith_div_u32(global2.x, global2.x) % 32u))) % vec4<u32>(32u));
    global3 = array<vec3<f32>, 20>();
    var var_1 = Struct_1(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2433f))));
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.x, -778f, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f) * 1000f), -939f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, _wgslsmith_f_op_f32(abs(264f)), 938f))) * _wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(68634u, global2.x), 20u)], vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.b * 155f), _wgslsmith_f_op_f32(-arg_0.a))))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, ~_wgslsmith_sub_i32(-76745i, 1i)), u_input.a & u_input.b.x), max(-min(u_input.b, vec2<i32>(u_input.b.x, -1i)), vec2<i32>(-56253i, u_input.b.x)) | -u_input.b);
    global2 = vec4<u32>(_wgslsmith_mult_u32(0u, arg_1), 9848u, 0u, arg_1);
    var var_2 = _wgslsmith_f_op_f32(max(428f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 * 512f), arg_0.b))))), _wgslsmith_f_op_f32(floor(-246f)));
    return -15607i > _wgslsmith_clamp_i32(var_1.x, ~firstLeadingBit(u_input.b.x), u_input.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = select(func_3(Struct_1(-307f, 1388f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)), _wgslsmith_f_op_f32(1000f + -2220f), true)))), true, false);
    var var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), 929f)) + -1000f)), _wgslsmith_f_op_f32(-arg_2.b));
    global1 = 0i;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(arg_0.x, 13890u) | _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(1u, arg_0.x), ~(global2.x ^ 5421u), 1u), min(~(~global2.x) << (~(global2.x >> (0u % 32u)) % 32u), 3357u), ~(~(~global2.x)), global2.x);
    return select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), 650f == arg_2.a), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), func_3(arg_2, 0u, 544f)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_1.b != arg_2.a, any(vec2<bool>(false, true)), true)), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -511f) > var_1.b), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(4294967295u, ~4294967295u << (global2.x % 32u)));
    var var_1 = var_0.x;
    let var_2 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_2(~vec2<u32>(1u, 54418u), Struct_1(_wgslsmith_f_op_f32(min(-1617f, -1349f)), _wgslsmith_f_op_f32(func_1(-2147483647i, -1194f, 16816i))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(f32(-1f) * -319f)))), vec4<bool>(true, func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2572f), _wgslsmith_f_op_f32(1000f - -392f)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0), abs(25674u)), 585f), true, true), select(vec4<bool>(true, true != all(vec4<bool>(true, true, true, false)), false, true), vec4<bool>(select(true, all(vec3<bool>(false, true, false)), func_3(Struct_1(-1426f, 519f), 1u, 631f)), func_3(Struct_1(-942f, -1098f), 708u, -1046f), u_input.a < _wgslsmith_sub_i32(u_input.a, 0i), global2.x <= (1u ^ var_0.x)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))));
    var var_3 = vec3<i32>(31118i, u_input.b.x, _wgslsmith_mult_i32(-1i, u_input.b.x));
    var var_4 = all(!func_2(~vec2<u32>(global2.x, 0u), Struct_1(-192f, -196f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1048f)).zz);
    global0 = (reverseBits(firstLeadingBit(5099u)) ^ global2.x) == ~36441u;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(16649i) | firstLeadingBit(-15251i | _wgslsmith_mult_i32(var_3.x, var_3.x)), abs(-select(countOneBits(u_input.b), vec2<i32>(2147483647i, -23620i), var_2.xw)), vec2<i32>(abs(var_3.x), ~min(abs(var_3.x), -1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1117f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(-1000f * 155f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, 1874f))))))));
}

