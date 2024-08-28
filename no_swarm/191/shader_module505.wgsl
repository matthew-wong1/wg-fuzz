struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: bool = true;

var<private> global2: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec3<f32> {
    var var_0 = 1u;
    let var_1 = ~vec2<i32>(arg_0, _wgslsmith_mult_i32(2147483647i, ~(~arg_0)));
    var var_2 = arg_1.a.b.x;
    return _wgslsmith_f_op_vec3_f32(arg_1.a.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.b.x, -1000f, arg_1.a.d)))))));
}

fn func_3() -> i32 {
    let var_0 = vec4<bool>(any(vec2<bool>(all(vec2<bool>(true, true)), true || select(true, true, false))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) - 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(339f, -878f)) + _wgslsmith_f_op_f32(f32(-1f) * -220f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1433f - -525f), _wgslsmith_f_op_f32(round(231f))))), !(firstTrailingBit(i32(-1i) * -1i) > _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, 44254i)), -vec2<i32>(10074i, 0i))));
    return 10229i;
}

fn func_2(arg_0: Struct_3) -> Struct_5 {
    global0 = array<Struct_4, 9>();
    global2 = array<u32, 3>();
    let var_0 = _wgslsmith_mod_vec4_i32(min(min(-(~vec4<i32>(arg_0.b, arg_0.b, 1494i, arg_0.b)), -(vec4<i32>(1i, -1i, arg_0.b, arg_0.b) | vec4<i32>(arg_0.b, -17531i, arg_0.b, -2147483647i))), vec4<i32>(-func_3(), 7559i, arg_0.b, 0i)), vec4<i32>(firstTrailingBit(i32(-1i) * -1i), -countOneBits(69188i), arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, 1i, -2147483647i, arg_0.b), select(vec4<i32>(arg_0.b, -1i, arg_0.b, 1862i), vec4<i32>(arg_0.b, 20424i, arg_0.b, arg_0.b), vec4<bool>(false, true, true, true)))) ^ -firstLeadingBit(~vec4<i32>(arg_0.b, 0i, arg_0.b, arg_0.b)));
    global0 = array<Struct_4, 9>();
    let var_1 = -var_0;
    return Struct_5(~abs(101360i), !vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -895f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<Struct_4, 9>();
    let var_1 = func_2(Struct_3(1015f, _wgslsmith_mod_i32(_wgslsmith_add_i32(max(11685i, 15049i), -25525i), var_0 << (~global2[_wgslsmith_index_u32(0u, 3u)] % 32u)), u_input.a.ww, vec2<f32>(-223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -188f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(18888i, -2147483647i), vec2<i32>(var_0, var_0)), Struct_2(Struct_1(true, vec3<f32>(-597f, 2242f, -231f), u_input.b, 1108f), vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false)))))));
    let var_2 = var_1.c;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1460f)) + -538f)), -select(var_1.a, -1i, true), vec2<u32>(98051u, ~u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_2), var_1.c) + _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(select(-647f, 369f, var_1.b.x))), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_2 - var_1.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, _wgslsmith_f_op_f32(trunc(var_1.c)), var_2)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, var_1.c, var_2))))) + vec3<f32>(var_1.c, _wgslsmith_f_op_f32(floor(var_2)), -650f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, u_input.a.x) >> (abs(24750u) % 32u), 11550u), min(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b, 2147483647i), vec2<i32>(var_3.b, var_0))), -25833i));
}

