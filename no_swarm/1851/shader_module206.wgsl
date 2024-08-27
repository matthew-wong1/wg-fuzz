struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-765f, -1051f, -1000f), vec4<f32>(1192f, -789f, 1672f, -1228f));

var<private> global1: i32 = -1i;

var<private> global2: i32;

var<private> global3: array<vec3<u32>, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(~(~33389u), _wgslsmith_add_u32(arg_1.x, 4294967295u) & ~11157u)), ~firstTrailingBit(4294967295u) << (u_input.c.x % 32u));
    let var_1 = abs(select(vec3<i32>(arg_0, abs(u_input.a) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -20683i, arg_0), vec3<i32>(1i, 2682i, -26263i)), ~max(5195i, 23242i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_0, 0i), vec3<i32>(u_input.a, arg_0, 39864i)), vec3<i32>(1i, u_input.a, -2390i)) << (global3[_wgslsmith_index_u32(1u, 22u)] % vec3<u32>(32u)), true));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), global0.b.x), _wgslsmith_mod_vec3_i32(var_1, countOneBits(~(vec3<i32>(var_1.x, var_1.x, 0i) & vec3<i32>(29489i, arg_0, arg_0)))));
    var var_3 = !all(vec2<bool>(true, true));
    let var_4 = 0i;
    return var_2.b.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = firstLeadingBit(firstTrailingBit(select(vec2<u32>(u_input.c.x, ~u_input.d), u_input.c, select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_0, false), true))));
    let var_1 = Struct_2(~vec3<i32>(func_3(-1i, global3[_wgslsmith_index_u32(var_0.x, 22u)]), 33151i, abs(arg_1.x)) | select(vec3<i32>(arg_1.x, -1i, ~(-1i)), arg_1.yxw, true), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(994f, 306f, global0.a.x) + global0.b.zwx) + _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, global0.b.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * _wgslsmith_f_op_vec3_f32(-global0.b.xwy)))), _wgslsmith_f_op_vec4_f32(step(global0.b, global0.b))), u_input.a);
    global3 = array<vec3<u32>, 22>();
    let var_2 = Struct_3(var_1, _wgslsmith_sub_vec4_u32(u_input.b, ~(select(u_input.b, vec4<u32>(var_0.x, u_input.c.x, 1u, u_input.c.x), arg_2) << (~vec4<u32>(u_input.d, var_0.x, 33042u, 1u) % vec4<u32>(32u)))), all(select(vec3<bool>(false, arg_0, false), select(vec3<bool>(false, arg_2.x, arg_0), vec3<bool>(arg_0, false, arg_0), arg_2.ywy), arg_2.xxx)) && (-320f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.a.x)) + _wgslsmith_div_f32(913f, arg_3.x))));
    var var_3 = any(arg_2);
    return -vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.a.x, u_input.a, -31259i, 0i), arg_1), var_2.a.c)), ~(u_input.a << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 48919u, var_0.x, 1u)) % 32u)), i32(-1i) * -(var_2.a.c & -48912i));
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = Struct_5(countOneBits(~arg_1.a), !vec3<bool>(any(vec3<bool>(arg_1.b.x, false, arg_1.b.x)), arg_1.b.x & all(vec2<bool>(arg_1.b.x, true)), !arg_1.b.x), _wgslsmith_f_op_f32(-global0.a.x));
    var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_5(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 1u), var_0.a), var_0.a), !(!(!(!arg_1.b))), -587f);
    var var_1 = Struct_5(29791u, arg_1.b, global0.a.x);
    return abs(~_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(u_input.a, u_input.a, -1i)), vec3<i32>(u_input.a | u_input.a, 0i, -18201i), abs(func_2(arg_1.b.x, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, arg_1.b.x, false), global0.b.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var_0 = u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-17155i, ~u_input.a, abs(reverseBits(-9037i)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-56475i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, 1i)), abs(0i))), vec4<i32>(2147483647i, u_input.a, 2147483647i, ~u_input.a));
    let var_1 = true;
    global3 = array<vec3<u32>, 22>();
    var var_2 = u_input.b.wwz;
    var var_3 = Struct_3(Struct_2(min(vec3<i32>(19365i, u_input.a, 0i), -vec3<i32>(u_input.a, u_input.a, 1i)) & _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), func_1(global0.b.x, Struct_5(102637u, vec3<bool>(var_1, var_1, var_1), -567f), u_input.b.xw)), Struct_1(global0.b.zyx, vec4<f32>(_wgslsmith_f_op_f32(392f - -834f), _wgslsmith_f_op_f32(max(global0.a.x, -947f)), _wgslsmith_f_op_f32(global0.a.x * -300f), _wgslsmith_f_op_f32(global0.b.x - -673f))), u_input.a), ((~u_input.b ^ ~vec4<u32>(var_2.x, 1u, 1u, var_2.x)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(22345u, var_2.x, 1u, var_2.x), u_input.b)) | firstTrailingBit(u_input.b), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1919f, var_3.a.b.a.x, any(vec2<bool>(false, var_1)))))), firstLeadingBit(u_input.b));
}

