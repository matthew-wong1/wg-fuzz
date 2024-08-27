struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<f32>(-163f, -1390f), Struct_1(4294967295u, 0u), vec2<u32>(3702u, 40113u), vec2<u32>(1u, 13745u)), Struct_2(vec2<f32>(1193f, 2255f), Struct_1(16317u, 1u), vec2<u32>(48829u, 4294967295u), vec2<u32>(7673u, 89293u)), Struct_2(vec2<f32>(1000f, 1431f), Struct_1(1u, 1u), vec2<u32>(1u, 23968u), vec2<u32>(59193u, 1u)));

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    return 777f;
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(((1u ^ (u_input.a >> (1u % 32u))) >> (((20398u | _wgslsmith_mult_u32(u_input.a, 22591u)) >> (23145u % 32u)) % 32u)) ^ abs(select(~u_input.a, u_input.a, true) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(69875u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), 3u)];
    var var_1 = _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(47586u, var_0.c.x, 43416u))), max(max(vec3<u32>(0u, u_input.a, u_input.a), abs(vec3<u32>(var_0.c.x, 4294967295u, var_0.d.x))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.b.b, u_input.a), vec3<u32>(var_0.c.x, var_0.b.b, 1u)), vec3<u32>(1u, var_0.d.x, var_0.b.b)) % vec3<u32>(32u)), vec3<u32>(~4294967295u & min(112067u, var_0.d.x), _wgslsmith_add_u32(~var_0.b.a, 13549u), 8187u & select(4294967295u, u_input.a, false))));
    global1 = ~var_0.d.x;
    var var_2 = ~vec4<u32>(35139u, ~(~u_input.a), max(~(~24523u), min(1u, var_0.b.a)), countOneBits(~_wgslsmith_div_u32(1u, u_input.a)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(var_0.a.x, -753f)))))), var_0.b, select(select(vec2<u32>(~var_2.x, _wgslsmith_sub_u32(40320u, 3453u)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.a, 45242u)), _wgslsmith_mod_vec2_u32(var_2.yz, var_2.wz)), !(-736f <= var_0.a.x)), ~var_0.d, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_mod_vec2_u32(var_0.d, min(~vec2<u32>(4294967295u, 35017u), var_0.d) << ((select(vec2<u32>(var_2.x, u_input.a), vec2<u32>(36646u, 0u), false) & var_0.c) % vec2<u32>(32u))));
    return ~((_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 44959i, -2147483647i), vec4<i32>(-8452i, 2147483647i, 0i, 2147483647i)), -5373i) << (u_input.a % 32u)) | ~46477i);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(20228u, u_input.a)) & firstLeadingBit(5245u)), arg_0.x), 3u)];
    var var_1 = true;
    var var_2 = -29907i;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))), 303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -249f)))) - vec3<f32>(760f, _wgslsmith_f_op_f32(func_2()), var_0.a.x));
    var_2 = func_3();
    return true;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(~vec2<u32>(7658u, 10002u) << (firstTrailingBit(vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u)), abs(vec2<u32>(10127u, arg_3.b)), func_1(~vec2<u32>(43230u, 17708u), arg_3)), (vec2<u32>(62236u, 38204u) & select(vec2<u32>(0u, arg_0), vec2<u32>(arg_3.b, arg_0), arg_1.zy)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0, arg_3.a), vec2<u32>(u_input.a, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(arg_3.b, arg_0))) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_clamp_u32(~select(arg_3.b, u_input.a, false), ~min(u_input.a, arg_0), _wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(0u, arg_0, arg_3.b))), _wgslsmith_sub_u32(~arg_3.b & arg_3.a, arg_3.b)));
    global1 = ~(78816u << (arg_3.a % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(0u) ^ arg_0, arg_0), ~firstLeadingBit(~vec2<u32>(0u, arg_0)));
    let var_0 = arg_3;
    return ~_wgslsmith_sub_vec2_u32(select(abs(~vec2<u32>(var_0.a, arg_3.a)), countOneBits(vec2<u32>(83308u, arg_3.b)), arg_1.x), ~vec2<u32>(~u_input.a, select(var_0.a, arg_3.b, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~(~_wgslsmith_sub_u32(u_input.a | 0u, u_input.a))), 3u)];
    global1 = 5361u;
    global0 = array<Struct_2, 3>();
    global1 = ~47302u << (var_0.d.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(reverseBits(29842u), !vec3<bool>(func_1(vec2<u32>(53224u, u_input.a), var_0.b), true, u_input.a <= var_0.c.x), select(~vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2147483647i) >> (~vec2<u32>(u_input.a, var_0.b.b) % vec2<u32>(32u)), vec2<bool>(1000f == var_0.a.x, true)), Struct_1(~(~u_input.a), u_input.a)));
}

