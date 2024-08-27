struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -855f;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(true, false, false, true), 1u, i32(-2147483648), vec2<f32>(-269f, 945f)), Struct_1(vec4<bool>(false, true, true, false), 18262u, 1i, vec2<f32>(156f, 2222f)), Struct_1(vec4<bool>(false, true, true, false), 1u, -1i, vec2<f32>(857f, -2288f)));

var<private> global4: array<vec2<u32>, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    var var_0 = true;
    var var_1 = vec3<i32>(arg_0, -(arg_0 >> (~(~0u) % 32u)), 10093i ^ (arg_0 >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, u_input.c), abs(u_input.d.x)) % 32u)));
    global1 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(global1.x, ~21521u, ~1u), vec3<u32>(~_wgslsmith_mod_u32(0u, u_input.a), 35707u, _wgslsmith_mod_u32(~global1.x, ~29414u)), (_wgslsmith_mod_i32(arg_0, arg_0) & _wgslsmith_mod_i32(1i, arg_0)) == arg_0), u_input.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(654f, -1282f));
    let var_3 = i32(-1i) * -3724i;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, _wgslsmith_add_u32(47514u, _wgslsmith_sub_u32(global1.x, 0u) & 0u), ~52509u), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, 53255u, u_input.c) | vec4<u32>(u_input.b.x, 4058u, 0u, u_input.b.x)), ~reverseBits(vec4<u32>(global1.x, 4294967295u, 32416u, global1.x))), global1.x, ~global1.x));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = Struct_1(select(vec4<bool>(false, true, any(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(false, true, false)), any(vec4<bool>(true, true, true, true))), true | any(vec2<bool>(true, true))), 40395u, _wgslsmith_sub_i32(-1i, i32(-1i) * -25000i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-478f, 1433f) * vec2<f32>(-270f, -1891f))))))));
    var var_1 = abs(~vec2<i32>(var_0.c, -var_0.c));
    global4 = array<vec2<u32>, 28>();
    global1 = u_input.d;
    global4 = array<vec2<u32>, 28>();
    return abs(min(reverseBits(func_2(-49994i) << (_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, 1u, 41056u)) % vec3<u32>(32u))), ~u_input.d));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = global1.x;
    global3 = array<Struct_1, 3>();
    global1 = ((u_input.d >> (firstTrailingBit(countOneBits(vec3<u32>(global1.x, 1u, 10958u))) % vec3<u32>(32u))) ^ ~func_2(-36367i)) | _wgslsmith_div_vec3_u32(vec3<u32>(63079u, 81708u, ~global1.x) >> ((u_input.d << (~u_input.d % vec3<u32>(32u))) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(502u, u_input.d.x, 71726u), u_input.d), func_3(~vec2<u32>(global1.x, u_input.a)), global1.x > abs(u_input.a)));
    let var_1 = all(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(all(vec2<bool>(true, false)), false), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true))));
    global2 = array<Struct_1, 24>();
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(0u, u_input.d.x), _wgslsmith_sub_u32(~(~global1.x), global1.x)), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    global2 = array<Struct_1, 24>();
    var var_1 = func_1(~(~_wgslsmith_mod_i32(-1237i, -30494i)));
    let var_2 = func_2(0i).x;
    var var_3 = var_1.a.x;
    global0 = _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(262f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f))));
    global3 = array<Struct_1, 3>();
    let var_4 = Struct_1(!var_1.a, ~37552u, _wgslsmith_dot_vec3_i32(vec3<i32>(-2047i, -22302i, -1i & var_1.c) >> (((vec3<u32>(var_2, 3574u, global1.x) >> (u_input.d % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 52884u, u_input.c), vec3<u32>(var_2, var_2, var_2)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c, -1i, 10734i), vec3<i32>(var_1.c, var_1.c, var_1.c)), select(vec3<i32>(var_1.c, var_1.c, 2147483647i), ~vec3<i32>(-1i, -2147483647i, -58717i), select(false, false, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d * var_1.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_3(global1.xx).x << (func_2(0i).x % 32u)));
}

