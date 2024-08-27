struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec4<i32>, 2>;

var<private> global3: array<u32, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(0u, 2u)], vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -13872i), global2[_wgslsmith_index_u32(86501u, 2u)]), -vec4<i32>(1i, 19379i, arg_0.a.x, arg_0.a.x)), arg_0.a), false, arg_0.c, u_input.a.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f - arg_2)) + 1415f));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.d.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.d, u_input.a.xx), 0u)), 7u)];
    var_0 = Struct_1(vec4<i32>(-_wgslsmith_mod_i32(u_input.b.x, 1i), _wgslsmith_mod_i32(select(_wgslsmith_add_i32(var_0.a.x, -2147483647i), -arg_0.a.x, true), arg_0.a.x), arg_0.a.x, var_0.a.x), !all(vec2<bool>(any(vec3<bool>(false, false, arg_0.b)), arg_0.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(832f, -871f, -463f)) - _wgslsmith_f_op_vec3_f32(-arg_0.c))))), select(var_1.d, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(var_1.d.x, global3[_wgslsmith_index_u32(4294967295u, 14u)]), var_1.d), vec2<u32>(var_0.d.x, u_input.a.x)), u_input.a.zz), var_1.b), -287f);
    let var_2 = select(-max(vec2<i32>(var_1.a.x, 1i), arg_0.a.xx >> (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.d.x, 14u)], 14u)], global3[_wgslsmith_index_u32(var_1.d.x, 14u)]) % vec2<u32>(32u))) | ~(-u_input.b.xy & vec2<i32>(u_input.b.x, var_1.a.x)), ~u_input.b.zy, any(vec2<bool>(true, !all(vec2<bool>(var_1.b, true)))));
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(var_1.c - vec3<f32>(arg_0.e, -1000f, _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.e)))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(vec4<i32>(15862i, 10121i, _wgslsmith_dot_vec4_i32(-arg_0.a, global2[_wgslsmith_index_u32(~(~u_input.c), 2u)]), i32(-1i) * -18975i), true, _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(74392u, 7u)], vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2581f), -1055f), 126f), -102f)), u_input.a.xy, _wgslsmith_f_op_f32(384f - -803f));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.zz) * var_0.c.xz);
    global0 = var_0.a.x;
    let var_3 = -countOneBits(var_1.a & (vec4<i32>(2147483647i, var_0.a.x, 37562i, 0i) >> (~u_input.a % vec4<u32>(32u))));
    return -1461f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(_wgslsmith_sub_vec2_i32(u_input.b.yx, u_input.b.xx), arg_1.a.zw, arg_1.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.c)))));
    let var_2 = _wgslsmith_add_i32(select(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 47585i)), reverseBits(vec2<i32>(-1i, 42502i) & vec2<i32>(arg_2.a.x, arg_3.a.x))), u_input.b.x, !select(false, false, true)), var_0.x);
    global0 = -1i;
    var var_3 = _wgslsmith_mod_u32(u_input.a.x, 4294967295u);
    return vec4<f32>(arg_3.e, arg_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, arg_3.e))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(arg_1)), -2603f))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(-36177i), min(u_input.a, vec4<u32>(min(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 18603u, 44303u, u_input.a.x)), ~global3[_wgslsmith_index_u32(u_input.c, 14u)]), _wgslsmith_div_u32(~3529u, 6649u), min(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(57147u, 14u)], 14u)], 36628u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)]), 14u)], 14u)], 14u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, -1990f, 421f, 402f)) - _wgslsmith_f_op_vec4_f32(func_1(-2935f, Struct_1(vec4<i32>(u_input.b.x, -1i, 2147483647i, -27508i), true, vec3<f32>(-315f, 1267f, -1563f), vec2<u32>(28766u, 0u), -980f), global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 14u)], 14u)], 7u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(95721u, 53852u), 7u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1491f, -605f, -132f, 568f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1558f, 987f, 417f, -667f), vec4<f32>(-963f, -756f, -275f, 1056f))))))));
}

