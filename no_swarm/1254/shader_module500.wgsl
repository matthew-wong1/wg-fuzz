struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(8610i, -14330i, 18017i), vec3<i32>(0i, 40316i, 46008i), vec3<i32>(42121i, 2147483647i, 6251i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(1i, -39540i, -9404i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(2147483647i, 2147483647i, -50550i), vec3<i32>(0i, 10265i, 34921i), vec3<i32>(-50694i, -3691i, 0i), vec3<i32>(17002i, -1i, 0i), vec3<i32>(-12670i, -22523i, 2147483647i), vec3<i32>(-11834i, 30138i, 1i), vec3<i32>(-37795i, i32(-2147483648), -64592i), vec3<i32>(-9997i, 1i, -1i), vec3<i32>(36837i, -37336i, i32(-2147483648)), vec3<i32>(-18665i, -9348i, -52827i), vec3<i32>(32204i, -20919i, i32(-2147483648)), vec3<i32>(-49517i, 2147483647i, -43659i), vec3<i32>(-20388i, -1i, -57845i), vec3<i32>(0i, 2147483647i, -23951i), vec3<i32>(-19994i, 1i, 2147483647i), vec3<i32>(-301i, 2147483647i, 0i), vec3<i32>(34052i, i32(-2147483648), -1i), vec3<i32>(1i, 0i, 26059i), vec3<i32>(10799i, 6786i, 2147483647i), vec3<i32>(23355i, -17568i, -52248i), vec3<i32>(0i, 2147483647i, 2147483647i));

var<private> global2: array<u32, 15>;

var<private> global3: array<vec3<f32>, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    global3 = array<vec3<f32>, 15>();
    let var_0 = select(select(!vec2<bool>(u_input.c != u_input.c, any(vec3<bool>(global0.x, global0.x, global0.x))), !global0.xw, !select(global0.zy, vec2<bool>(false, global0.x), !global0.wz)), vec2<bool>(any(select(vec2<bool>(false, global0.x), vec2<bool>(true, false), !vec2<bool>(global0.x, global0.x))), all(select(vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, true), global0.x))), !global0.zy);
    let var_1 = Struct_1(1392f);
    var var_2 = u_input.c;
    global0 = vec4<bool>(!all(vec2<bool>(select(true, var_0.x, true), true)), !global0.x, true, select(!any(select(vec2<bool>(var_0.x, var_0.x), global0.yz, vec2<bool>(global0.x, global0.x))), var_0.x, global0.x));
    return ~u_input.b.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<vec3<f32>, 15>();
    var var_0 = Struct_2((vec4<u32>(~arg_0.x, func_3(1710f), u_input.a.x, ~0u) | ~(vec4<u32>(u_input.b.x, 67525u, 74679u, global2[_wgslsmith_index_u32(4294967295u, 15u)]) << (vec4<u32>(u_input.b.x, 21429u, u_input.d.x, 0u) % vec4<u32>(32u)))) | ~(~(~vec4<u32>(4294967295u, 69829u, 0u, arg_0.x))), u_input.c, 19229i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 888f))))), countOneBits(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(global2[_wgslsmith_index_u32(0u, 15u)], 25753u), arg_0.zx), vec2<u32>(arg_0.x << (global2[_wgslsmith_index_u32(30635u, 15u)] % 32u), u_input.d.x))));
    let var_1 = (_wgslsmith_f_op_f32(min(var_0.d.a, _wgslsmith_f_op_f32(-var_0.d.a))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.a)) - _wgslsmith_f_op_f32(-var_0.d.a)) * var_0.d.a)) || global0.x;
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c, -49052i), vec2<i32>(10433i, -11345i)) << (_wgslsmith_mult_vec2_u32(arg_0.zz, var_0.a.xw) % vec2<u32>(32u))), -(vec2<i32>(-1i, u_input.c) << (vec2<u32>(17813u, var_0.e) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(0i, -2470i) ^ vec2<i32>(u_input.c, var_0.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, u_input.c), vec2<i32>(u_input.c, 2147483647i), vec2<i32>(0i, 1i)) ^ vec2<i32>(47250i, u_input.c), vec2<i32>(firstTrailingBit(-43366i), 0i)), _wgslsmith_mod_vec2_i32(firstLeadingBit(select(vec2<i32>(u_input.c, 15741i), vec2<i32>(36137i, var_0.b), global0.wz)), abs(countOneBits(vec2<i32>(-58911i, 2147483647i)))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_0.c, -16477i) >> (arg_0.zy % vec2<u32>(32u)))));
    global1 = array<vec3<i32>, 27>();
    return Struct_1(1000f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1504f * -952f), _wgslsmith_f_op_f32(sign(-580f)), 502f, _wgslsmith_f_op_f32(sign(-613f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-814f, -2555f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f - 341f)), 1001f, _wgslsmith_f_op_f32(min(1788f, _wgslsmith_f_op_f32(f32(-1f) * -832f)))))));
    return func_2(~_wgslsmith_mod_vec3_u32(u_input.b, u_input.a.xzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(global1[_wgslsmith_index_u32(~1u, 27u)] ^ global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 310u), 27u)], global1[_wgslsmith_index_u32(42960u, 27u)]) >> (vec3<u32>(~10920u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66717u, 15u)], 15u)]), vec2<u32>(u_input.d.x, 1u)) % 32u), 4294967295u, 4294967295u) % vec3<u32>(32u));
    let var_1 = u_input.a;
    let var_2 = func_1(!(!vec3<bool>(u_input.c != var_0.x, true, false)));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, _wgslsmith_clamp_i32(min(u_input.c, 2147483647i) << (_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(40325u, var_1.x)) % 32u), -83904i, u_input.c), -2147483647i), firstLeadingBit(-(vec4<i32>(u_input.c, -14193i, var_0.x, u_input.c) << (vec4<u32>(718u, u_input.b.x, 10132u, var_1.x) % vec4<u32>(32u)))));
    var var_4 = ~(vec2<u32>(~u_input.d.x, select(countOneBits(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(21064u, 15u)], var_1.x, 36686u, 53797u), vec4<u32>(1u, var_1.x, 1938u, var_1.x)), false)) >> (var_1.yz % vec2<u32>(32u)));
    global1 = array<vec3<i32>, 27>();
    let var_5 = Struct_2(vec4<u32>(4294967295u, _wgslsmith_sub_u32(~var_1.x, 4294967295u), ~4294967295u, ~1u << (0u % 32u)) << (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c >> (var_4.x % 32u), -var_0.x), -37878i)), var_0.x, var_2, 4294967295u);
    var var_6 = countOneBits(var_5.c ^ (select(var_5.b, var_0.x << (var_1.x % 32u), global0.x) ^ 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(min(u_input.b.zy >> (u_input.d % vec2<u32>(32u)), abs(abs(vec2<u32>(var_1.x, 0u)))), max(var_5.a.xx, abs(var_1.xx))));
}

