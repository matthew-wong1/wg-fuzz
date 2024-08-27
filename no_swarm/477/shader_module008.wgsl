struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 44007i, -12048i);

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(66454i, 18825i);

var<private> global3: array<i32, 29>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = Struct_2(~vec2<i32>(global2.x, arg_1));
    global1 = !(true & any(!(!vec2<bool>(arg_0, true))));
    let var_1 = global0.x;
    var var_2 = vec4<i32>(var_0.a.x, -firstTrailingBit(-_wgslsmith_div_i32(56754i, 4339i)), global3[_wgslsmith_index_u32(~u_input.b, 29u)], _wgslsmith_sub_i32(firstLeadingBit(1i), -25966i));
    var_2 = vec4<i32>(arg_1 << (min(~u_input.a, 1u) % 32u), 48878i, -abs(-1i), -30983i);
    return u_input.c.x >> (u_input.a % 32u);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    var var_0 = func_3(!(0u < _wgslsmith_mult_u32(23100u, _wgslsmith_mult_u32(arg_0.b, 52526u))), global2.x);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(min(-1026f, 710f))) + 1314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0.c))))), !(any(vec2<bool>(false, false)) | (14786u > u_input.a)))), -1230f, !(!select(true, true, true))));
    let var_2 = Struct_1(reverseBits(~(~vec2<u32>(arg_0.b, arg_0.b))) << (abs(firstTrailingBit(firstLeadingBit(vec2<u32>(4294967295u, arg_0.b)))) % vec2<u32>(32u)), select(vec4<bool>(true, select(false, true, all(vec2<bool>(true, true))), !any(vec2<bool>(true, false)), any(vec2<bool>(false, true))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, any(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), arg_0.b <= 1u)), vec4<bool>(all(vec2<bool>(false, true)) && true, true, true, !all(vec2<bool>(false, true)))), global0.zz);
    global2 = vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_2.c.x, arg_1.x, -23107i), vec4<i32>(u_input.c.x, -32774i, global0.x, -15890i)) | -global3[_wgslsmith_index_u32(8970u, 29u)]) << (select(abs(1u), 9016u | countOneBits(arg_0.b), select(true, true, var_2.b.x)) % 32u), abs(max(min(-1i, ~28039i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a.x, global2.x, global3[_wgslsmith_index_u32(26058u, 29u)], global2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, global0.x, 1i), vec4<i32>(-19059i, 17900i, -12669i, -40493i))))));
    global3 = array<i32, 29>();
    return -887f;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(659f, _wgslsmith_div_f32(-2505f, _wgslsmith_f_op_f32(f32(-1f) * -760f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(arg_0.wx), 0u, -603f), arg_0.wzy)), 275f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, 1292f) * vec3<f32>(var_0.x, -903f, 712f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), 751f)) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(133f)), var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-602f)))))));
    let var_2 = -1161f;
    let var_3 = Struct_1(_wgslsmith_add_vec2_u32(max(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, 15531u)), vec2<u32>(30994u, 0u), vec2<bool>(true, true)), ~vec2<u32>(u_input.a, 30250u)), abs(abs(~vec2<u32>(u_input.a, u_input.a)))), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(var_1.x < var_1.x, true, true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-6315i, reverseBits(0i)), u_input.c));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(603f)), var_2, var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1675f, 297f, var_1.x, 738f))))))));
    return all(vec3<bool>(select(any(!var_3.b.wz), true, var_3.b.x), true, var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true && func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-15919i, global0.x, ~global2.x, 5421i), reverseBits(vec4<i32>(u_input.c.x, -94723i, global0.x, -14313i))));
    global1 = any(vec2<bool>(true, true));
    global2 = vec2<i32>(u_input.c.x, -2147483647i) >> (~(~(~(~vec2<u32>(37458u, u_input.a)))) % vec2<u32>(32u));
    global1 = true;
    var var_0 = !(func_3(true, i32(-1i) * -global3[_wgslsmith_index_u32(9062u, 29u)]) >= -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -3816i, -2147483647i), vec4<i32>(u_input.c.x, global0.x, 1i, -5518i)), 1i, global3[_wgslsmith_index_u32(10520u, 29u)]));
    var var_1 = -abs(abs(vec2<i32>(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(16791u, u_input.b), 29u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a ^ u_input.b, 0u), global2.x);
}

