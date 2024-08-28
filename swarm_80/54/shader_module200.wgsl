struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 18976u, 70629u), 1024f, vec2<f32>(-392f, 2725f));

var<private> global1: array<f32, 13>;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global3 = _wgslsmith_sub_vec2_i32(vec2<i32>(min(u_input.c.x >> (0u % 32u), 1i), ~min(global3.x, -30731i)), ~reverseBits(abs(vec2<i32>(-27401i, 1i)))) | (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-26690i, u_input.c.x)));
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) + global1[_wgslsmith_index_u32(0u | (u_input.d | global0.a.x), 13u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 13u)]));
    var var_1 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false), var_0.a), true)));
    global2 = array<vec4<f32>, 26>();
    var var_2 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2651i, global3.x, firstTrailingBit(8104i)), _wgslsmith_mult_vec3_i32(u_input.c.zwx, u_input.b), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, u_input.c.x, -1i), reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, global3.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), u_input.b, u_input.b))) | vec3<i32>(~(-2147483647i), -(~global3.x), -global3.x | -24634i));
    return -global3.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global3 = vec2<i32>(~u_input.b.x ^ _wgslsmith_mult_i32(arg_2, _wgslsmith_mod_i32(func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 40032i, arg_2), vec3<i32>(0i, global3.x, 1i)))), -40680i);
    let var_0 = global0.a.x;
    let var_1 = Struct_2(all(vec2<bool>(true, true)) | all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x ^ (arg_0.x ^ arg_0.x), 13u)]) * 805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~arg_0.x, 13u)])) - arg_1.x)));
    var var_2 = arg_0.zz;
    var var_3 = vec3<bool>(true, !((42109i >= _wgslsmith_sub_i32(global3.x, global3.x)) & !(!var_1.a)), var_1.a);
    return Struct_1(abs(_wgslsmith_clamp_vec4_u32(abs(u_input.a), max(~u_input.a, global0.a ^ u_input.a), min(select(vec4<u32>(var_2.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.d, 4294967295u, 1u), var_3.x), u_input.a))), _wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(382f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(16450u, 3030u), 13u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.c)) * _wgslsmith_f_op_vec2_f32(-global0.c)))));
}

fn func_1() -> vec2<u32> {
    let var_0 = true;
    var var_1 = true;
    var var_2 = Struct_1(reverseBits(~vec4<u32>(countOneBits(0u), global0.a.x, ~4294967295u, 0u)), _wgslsmith_f_op_f32(step(1084f, 1466f)), global0.c);
    var_2 = func_2(~((~vec3<u32>(u_input.a.x, var_2.a.x, var_2.a.x) ^ firstLeadingBit(global0.a.zyz)) & vec3<u32>(u_input.a.x, global0.a.x, ~0u)), var_2.c, global3.x);
    global2 = array<vec4<f32>, 26>();
    return max(select(_wgslsmith_mult_vec2_u32(global0.a.yx, vec2<u32>(var_2.a.x, global0.a.x)) ^ ~var_2.a.xw, vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.a.yy << (vec2<u32>(51041u, global0.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, global0.a.x), u_input.a.wx)), firstTrailingBit(~global0.a.x)), true), ~u_input.a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(u_input.c.zw >> (firstTrailingBit(func_1() ^ global0.a.ww) % vec2<u32>(32u)));
    let var_0 = _wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(sign(1095f)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(~u_input.a.wzx, vec2<f32>(373f, var_0), _wgslsmith_mult_i32(u_input.b.x, global3.x)).a.wx, u_input.a.yx), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, 25515u), ~vec2<u32>(global0.a.x, global0.a.x)), vec2<u32>(3350u, 48420u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), u_input.a.zz) % vec2<u32>(32u)))), global0.a.x), 26u)];
    global3 = vec2<i32>(2147483647i, 8649i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, 28523i, 0i), vec3<i32>(25612i, global3.x, u_input.c.x)), -u_input.c.wwz), ~(~44958u) >> ((0u | global0.a.x) % 32u), global0.a, _wgslsmith_dot_vec3_u32(abs(reverseBits(countOneBits(u_input.a.yyz))), vec3<u32>(4294967295u, 0u, 4294967295u)), global0.a.x);
}

