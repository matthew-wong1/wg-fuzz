struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -282f, -1431f, 405f);

var<private> global1: array<vec2<i32>, 1>;

var<private> global2: u32;

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> f32 {
    global2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(34951u, _wgslsmith_dot_vec2_u32(~vec2<u32>(42587u, u_input.a), ~(~vec2<u32>(arg_2, 1u)))), u_input.a, firstLeadingBit(~arg_2));
    let var_0 = Struct_1(~max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2, arg_2, u_input.a, 1u), vec4<u32>(67099u, arg_2, u_input.a, 1u), vec4<u32>(u_input.a, arg_2, arg_2, arg_2)), vec4<u32>(0u, ~u_input.a, arg_2, ~0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_2), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2) >> (vec2<u32>(u_input.a, 83855u) % vec2<u32>(32u)), vec2<u32>(1u, 83413u))) ^ _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(29236u, arg_2)), reverseBits(vec2<u32>(4294967295u, arg_2)) << (~vec2<u32>(arg_2, u_input.a) % vec2<u32>(32u)), vec2<u32>(~1u, 1u)), all(arg_0.yxz));
    let var_1 = Struct_1(vec4<u32>(~_wgslsmith_mod_u32(1u ^ u_input.a, 4294967295u), _wgslsmith_clamp_u32(~var_0.b.x, 54421u, select(13535u, var_0.b.x, false)) << ((~arg_2 >> (1u % 32u)) % 32u), ~min(14979u, 0u), firstLeadingBit(u_input.a)), max(var_0.b, abs(vec2<u32>(arg_2, ~377u))), false);
    var var_2 = ~9318u;
    var_2 = arg_2;
    return _wgslsmith_f_op_f32(round(-336f));
}

fn func_2() -> vec4<bool> {
    global2 = 6997u;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), true, 1u)), -1235f)) - _wgslsmith_f_op_f32(1383f - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f - global0.x))) * global0.x));
    let var_1 = Struct_1(vec4<u32>(u_input.a, 15235u & reverseBits(select(1u, 0u, true)), _wgslsmith_mult_u32(u_input.a, ~u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), firstTrailingBit(4294967295u))), vec2<u32>(~1u, ~4294967295u), false);
    let var_2 = !select(!select(select(vec4<bool>(var_1.c, var_1.c, var_1.c, false), vec4<bool>(false, var_1.c, var_1.c, var_1.c), var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, true), false), vec4<bool>(u_input.b != firstLeadingBit(u_input.b), var_1.c, select(all(vec4<bool>(var_1.c, false, var_1.c, var_1.c)), true, false), false), var_1.c);
    global2 = ~30927u;
    return select(vec4<bool>(all(!var_2), true, var_1.c, true), vec4<bool>(any(select(select(var_2.zwz, vec3<bool>(false, false, false), var_2.xwy), select(vec3<bool>(false, var_1.c, true), vec3<bool>(var_2.x, var_1.c, var_1.c), vec3<bool>(var_2.x, var_1.c, true)), var_2.zzy)), var_2.x, var_2.x, true), true);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = global0.x;
    global1 = array<vec2<i32>, 1>();
    let var_1 = func_2();
    return 1f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 62640i, select(_wgslsmith_mod_i32(-2147483647i, global3.x), global3.x, any(arg_1))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.x, global3.x), vec3<i32>(3490i, 2147483647i, u_input.b))) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), (vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, -1i, 1i))) >> (reverseBits(~(vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(u_input.a, u_input.a, 20798u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -10114i, -u_input.b), func_4(_wgslsmith_f_op_f32(func_1(u_input.a, vec2<bool>(false, true))), vec2<bool>(true, true))), max(36401i, u_input.b)), -2147483647i);
    let var_1 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-13789i, select(1i, 1i, true)), reverseBits(_wgslsmith_div_i32(var_0.x, u_input.b))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global3.x, 0i), vec3<i32>(26758i, var_0.x, 0i))), _wgslsmith_div_i32(global3.x & -2906i, var_0.x)));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 89235u, 4294967295u, 40834u), vec4<u32>(36278u, 1u, u_input.a, u_input.a), true), vec4<u32>(1u, u_input.a, 104063u, 9582u)), max(u_input.a & u_input.a, firstLeadingBit(u_input.a)) | min(~u_input.a, 4294967295u)), _wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_add_u32(u_input.a, 4294967295u), ~max(~u_input.a, u_input.a)));
    global3 = vec3<i32>(-33738i, -1314i, -4117i ^ u_input.b);
    let var_3 = Struct_1(~vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(var_2, u_input.a), 19269u, firstLeadingBit(~4294967295u)), vec2<u32>(~firstLeadingBit(~var_2), var_2 << (0u % 32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -569f, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, 167f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -954f, -528f, -1146f) + vec4<f32>(-2285f, 591f, global0.x, -1385f)) * vec4<f32>(-839f, 590f, global0.x, global0.x)))));
}

