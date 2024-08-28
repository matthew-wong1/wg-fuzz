struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: array<bool, 17> = array<bool, 17>(true, true, false, false, true, true, false, false, true, false, true, true, true, true, true, true, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, u_input.b, ~abs(u_input.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, 18090u, 17440u, 4294967295u) & (vec4<u32>(74938u, u_input.b, global0.x, u_input.b) | vec4<u32>(u_input.b, 29976u, 56659u, 65680u)), ~vec4<u32>(global0.x, 0u, u_input.b, 4294967295u))), ~_wgslsmith_div_u32(~min(global0.x, 43266u), 19112u << (global0.x % 32u)));
    global2 = array<bool, 17>();
    var var_1 = 1i;
    var var_2 = -138f;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1171f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1519f))))));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(~(~(~70849u)), _wgslsmith_sub_u32(45387u, 27518u)), 1u);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = Struct_5(!(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(22125u, 17u)], global2[_wgslsmith_index_u32(43682u, 17u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 17u)], arg_2), true))), arg_1, u_input.a);
    global1 = array<vec4<bool>, 1>();
    let var_1 = Struct_2(firstTrailingBit(countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -18113i, var_0.c, -2147483647i), vec4<i32>(1i, var_0.c, u_input.a, 12287i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 19747i, var_0.c, u_input.a), vec4<i32>(var_0.c, var_0.c, var_0.c, 0i))))), 34554u, -1849f, Struct_1(func_3(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, var_0.c), _wgslsmith_div_vec2_i32(vec2<i32>(12703i, -11470i), vec2<i32>(51327i, var_0.c))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.yz - arg_0.zz)))), 156f, !vec3<bool>(false, !arg_2, !global2[_wgslsmith_index_u32(global0.x, 17u)]), vec4<u32>(arg_1, 61866u, u_input.b, arg_1)), !(-1286f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(trunc(arg_0.x)))));
    return var_1.a;
}

fn func_1() -> vec4<f32> {
    let var_0 = ~((select(~vec3<u32>(u_input.b, 48586u, 0u), ~vec3<u32>(20471u, u_input.b, u_input.b), true) << (~vec3<u32>(u_input.b, global0.x, 4294967295u) % vec3<u32>(32u))) << (max(~max(vec3<u32>(u_input.b, global0.x, u_input.b), vec3<u32>(4294967295u, 0u, 16511u)), firstLeadingBit(~vec3<u32>(u_input.b, 4294967295u, u_input.b))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))))));
    let var_2 = vec4<i32>(u_input.a, u_input.a, u_input.a, min(u_input.a, -1i) ^ (i32(-1i) * -1i)) | _wgslsmith_mult_vec4_i32(~select(func_2(vec3<f32>(var_1, var_1, var_1), var_0.x, global2[_wgslsmith_index_u32(11195u, 17u)], u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(1u, 17u)])), countOneBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, u_input.b, 81584u, u_input.b)) % vec4<u32>(32u))));
    global0 = var_0.xx;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_div_f32(214f, var_1), var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -239f, var_1) - vec3<f32>(-1348f, var_1, var_1))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1684f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(var_1, var_1)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(step(var_1, var_1)), var_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2105f, var_1, -1984f))))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-441f, 650f, 171f, 355f), vec4<f32>(var_3.x, -1104f, var_3.x, var_1))), vec4<f32>(1450f, 238f, var_1, -1104f)), vec4<f32>(-425f, var_3.x, _wgslsmith_f_op_f32(var_1 - var_3.x), 656f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(f32(-1f) * -1820f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(select(-829f, _wgslsmith_f_op_f32(-626f + var_1), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(732u, 1u)];
    global1 = array<vec4<bool>, 1>();
    global2 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1864f, -335f, -1674f, 2107f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-244f, -736f, -718f, 2118f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1604f, 812f, -180f, -893f), vec4<f32>(199f, 889f, -1314f, -659f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(1180f, -275f, true)), _wgslsmith_div_f32(278f, -1143f), _wgslsmith_f_op_f32(f32(-1f) * -581f), 367f)))));
}

