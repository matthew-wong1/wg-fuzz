struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: vec4<f32> = vec4<f32>(-175f, -281f, -167f, -923f);

var<private> global2: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-global3.x, global3.x | _wgslsmith_sub_i32(24458i, 65718i)), 1i ^ global3.x), i32(-1i) * -5294i, _wgslsmith_add_i32(global3.x, firstLeadingBit(~global3.x)));
    global2 = array<vec2<bool>, 29>();
    var var_1 = arg_0;
    var var_2 = ~_wgslsmith_mult_vec3_u32(select(u_input.a.yyw >> (~vec3<u32>(4294967295u, 0u, arg_0) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.a.yyy, vec3<u32>(73738u, 72025u, 32081u)), true), u_input.a.wxz);
    global2 = array<vec2<bool>, 29>();
    return ~(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x, global3.x), global3.x), _wgslsmith_add_i32(2147483647i, global3.x)));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = min(u_input.a, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, ~u_input.a), ~vec4<u32>(56222u, u_input.a.x, 32465u, u_input.c)) & u_input.a);
    var var_1 = global2[_wgslsmith_index_u32(~20755u, 29u)];
    global3 = -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 61048i), vec2<i32>(global3.x, -2147483647i)) & -global3.x, 0i, func_3(26263u));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(637f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-360f)), _wgslsmith_div_f32(-258f, -850f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1478f * 627f) * arg_0), global1.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 121f, 1827f) - vec4<f32>(global1.x, global1.x, -128f, 370f)) - vec4<f32>(1000f, 1000f, arg_0, 1710f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-554f, arg_0, global1.x, -1144f) - vec4<f32>(arg_0, global1.x, global1.x, -201f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -129f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, 949f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.wy - global1.zx)))))));
    return abs(firstTrailingBit(~(-abs(-1i))));
}

fn func_1() -> vec3<i32> {
    global3 = vec3<i32>(-(~(~4555i ^ global3.x)), abs(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1244f + 1773f) - _wgslsmith_div_f32(global1.x, -724f)))), global3.x);
    var var_0 = !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), !(true & (global1.x >= 296f)));
    global2 = array<vec2<bool>, 29>();
    var var_1 = global1.zw;
    var var_2 = var_0.x;
    return abs(max(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, global3.x), func_2(-1007f), -10507i), vec3<i32>(firstTrailingBit(global3.x), -90655i, abs(global3.x))), reverseBits(min(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(-25710i, -3962i, global3.x))) ^ -firstTrailingBit(vec3<i32>(-3714i, 54304i, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, global1.x, global1.x, -1312f)))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-331f, -893f)))), global1.x, -725f), vec4<f32>(342f, _wgslsmith_f_op_f32(max(-167f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2357f))), _wgslsmith_f_op_f32(-global1.x)))));
    global2 = array<vec2<bool>, 29>();
    global3 = select(firstLeadingBit(func_1()), vec3<i32>(global3.x, global3.x, ~countOneBits(global3.x)) ^ reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(-1i, 1i, global3.x)), ~vec3<i32>(-4043i, 0i, 22932i))), any(select(!(!global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0[_wgslsmith_index_u32(u_input.c, 7u)], vec4<bool>(true, false, any(vec3<bool>(true, true, false)), true))));
    var var_0 = _wgslsmith_f_op_f32(1021f - _wgslsmith_f_op_f32(-global1.x));
    global3 = vec3<i32>(~_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(global3.x, global3.x), min(34049i, -2172i))), -_wgslsmith_div_i32(1i, -54413i), ~(-_wgslsmith_add_i32(firstLeadingBit(-7980i), _wgslsmith_add_i32(-2147483647i, global3.x))));
    let var_1 = global1.x;
    global3 = max(_wgslsmith_mod_vec3_i32(~(_wgslsmith_add_vec3_i32(vec3<i32>(-3597i, 0i, global3.x), vec3<i32>(global3.x, global3.x, -21619i)) >> ((vec3<u32>(u_input.d.x, 1u, u_input.b.x) & vec3<u32>(24663u, u_input.d.x, 30530u)) % vec3<u32>(32u))), min(_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, -2147483647i, global3.x), vec3<i32>(-20086i, global3.x, 20523i)), vec3<i32>(global3.x, -3705i, -6405i)) >> (firstLeadingBit(~u_input.a.xyw) % vec3<u32>(32u))), -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(15313i, 0i, global3.x), vec3<i32>(-18284i, 1i, 13092i)) & countOneBits(vec3<i32>(global3.x, -26050i, -10173i))));
    var_0 = _wgslsmith_f_op_f32(1096f + 540f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

