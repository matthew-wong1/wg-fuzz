struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(4294967295u), Struct_3(79859u), Struct_3(57199u), Struct_3(1u), Struct_3(4294967295u), Struct_3(37501u), Struct_3(1u), Struct_3(1u), Struct_3(0u), Struct_3(21590u), Struct_3(44820u), Struct_3(4294967295u), Struct_3(1u), Struct_3(19756u), Struct_3(0u), Struct_3(51517u), Struct_3(4294967295u), Struct_3(1u), Struct_3(0u), Struct_3(1u), Struct_3(4294967295u), Struct_3(27091u), Struct_3(1u), Struct_3(4294967295u), Struct_3(0u), Struct_3(0u), Struct_3(0u), Struct_3(0u));

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<i32, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) + _wgslsmith_f_op_f32(f32(-1f) * -1188f)))));
    global3 = array<i32, 2>();
    let var_1 = ~_wgslsmith_mult_u32(u_input.d.x, 0u);
    var var_2 = u_input.b;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, var_1 | var_1, _wgslsmith_dot_vec3_u32(u_input.d.xww, min(u_input.d.yyw, vec3<u32>(var_1, var_1, 3160u))))), _wgslsmith_sub_vec3_u32(firstTrailingBit(~(~u_input.d.zyx)), u_input.d.xzz)), 13u)];
    return 1u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x);
    var var_1 = select(select(vec4<bool>(any(vec4<bool>(arg_2.b.x, true, false, arg_2.b.x)), true, !arg_2.d, !(arg_2.c > arg_2.e)), !(!select(vec4<bool>(false, arg_2.b.x, true, arg_2.d), vec4<bool>(false, false, true, arg_2.b.x), vec4<bool>(false, true, false, arg_2.d))), !(!select(vec4<bool>(arg_2.d, arg_2.d, arg_2.b.x, false), vec4<bool>(arg_2.d, arg_2.d, false, false), vec4<bool>(true, false, arg_2.d, false)))), !vec4<bool>(arg_2.b.x, !arg_2.b.x, arg_2.d, false), vec4<bool>(select(all(!arg_2.b.yy), !(u_input.b == u_input.d.x), !arg_2.b.x), all(select(vec3<bool>(arg_2.b.x, false, arg_2.b.x), vec3<bool>(true, arg_2.d, true), true || arg_2.d)), !all(select(vec4<bool>(true, arg_2.d, arg_2.d, arg_2.b.x), vec4<bool>(arg_2.b.x, true, arg_2.d, false), arg_2.d)), true));
    var var_2 = arg_0.x;
    return (_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(73008u, 2u)], -1i, -10423i, -1i), u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.a.x, 4294967295u), 2u)], firstTrailingBit(global3[_wgslsmith_index_u32(2191u, 2u)])), -(u_input.a.yxy << (arg_2.a.ywz % vec3<u32>(32u)))) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, -2147483647i) ^ u_input.c.x, -28215i)) | arg_2.e;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_1.x, 1u);
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-221f)), 295f)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-global3[_wgslsmith_index_u32(func_2(), 2u)], _wgslsmith_sub_i32(func_3(vec2<u32>(68527u, 58499u), arg_0.yyy, Struct_1(vec4<u32>(59641u, arg_1.x, arg_1.x, 0u), vec3<bool>(arg_2, arg_3.x, arg_3.x), global3[_wgslsmith_index_u32(arg_1.x, 2u)], true, -1i)), firstTrailingBit(-global3[_wgslsmith_index_u32(29922u, 2u)])), firstTrailingBit(1i)), u_input.a.xzx);
    var var_3 = global1[_wgslsmith_index_u32(0u, 28u)];
    var_1 = arg_0.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -318f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yy;
    var var_1 = var_0.x;
    var var_2 = select(vec2<bool>(false, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), vec2<bool>(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), 570f >= _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, 155f, -1602f, 494f)), abs(u_input.d), true, select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), vec2<bool>(true, true));
    var var_3 = ~0u;
    let var_4 = Struct_3(1u);
    var_2 = select(vec2<bool>(false, select(!any(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), any(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x))), true && (u_input.d.x > 30536u))), vec2<bool>(true, !(!var_2.x)), select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, var_2.x), vec2<bool>(false, true)), vec2<bool>(true, true)), !vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-539f, 1000f))), 51965u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, -365f)), vec2<f32>(-1942f, -826f)))));
}

