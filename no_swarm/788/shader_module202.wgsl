struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 14u)];
    let var_1 = Struct_5(_wgslsmith_mult_i32(-1i, ~(~u_input.c.x)), Struct_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, 6336u), 26072u)), true), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, 16131i, u_input.c.x), vec3<i32>(-1i, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u))), -(~vec3<i32>(u_input.c.x, -29449i, -2147483647i)), ~vec3<i32>(29089i, -1i, u_input.c.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.d.yy, arg_2.b), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d) | (u_input.d & vec3<u32>(arg_0.a.a, u_input.b, 13356u))) % vec3<u32>(32u)), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(arg_2.a.a, 38286u, 1u, u_input.b) & vec4<u32>(5292u, u_input.b, 0u, u_input.b), reverseBits(vec4<u32>(1u, u_input.a, arg_0.a.a, 0u)), !vec4<bool>(arg_0.b, var_0.x, arg_0.b, arg_0.b)), select(vec4<u32>(_wgslsmith_sub_u32(u_input.b, arg_2.b.x), 14860u >> (u_input.d.x % 32u), _wgslsmith_mult_u32(u_input.b, u_input.d.x), countOneBits(u_input.b)), vec4<u32>(~1u, ~68630u, ~44118u, 1u), true)));
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let var_2 = vec4<bool>(_wgslsmith_mult_u32(~reverseBits(34942u), select(1u, _wgslsmith_mod_u32(31108u, 55179u), var_1.b.b)) > _wgslsmith_div_u32(~firstTrailingBit(var_1.b.a.a), arg_0.a.a), !arg_0.b, arg_0.b, var_1.b.b);
    return arg_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = var_0.b;
    var var_2 = -var_0.c.wxy;
    let var_3 = countOneBits(arg_1.c);
    let var_4 = Struct_4(arg_0.a, var_0.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(567f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(arg_0.a, false), vec3<f32>(-340f, 1572f, var_0.a), arg_0)) - _wgslsmith_f_op_f32(floor(arg_1.b)))));
    return select(select(vec2<bool>(countOneBits(arg_2.x) == min(arg_3.x, arg_3.x), var_4.b), select(!(!vec2<bool>(var_4.b, true)), vec2<bool>(var_4.b, all(global0[_wgslsmith_index_u32(1u, 14u)])), any(select(global0[_wgslsmith_index_u32(20844u, 14u)], global0[_wgslsmith_index_u32(78971u, 14u)], global0[_wgslsmith_index_u32(arg_0.b.x, 14u)]))), select(vec2<bool>(!var_4.b, select(false, true, false)), select(vec2<bool>(true, false), vec2<bool>(var_4.b, true), false), var_4.b)), !vec2<bool>(!var_4.b, true), select(vec2<bool>(true, (var_2.x != var_0.c.x) && !var_4.b), vec2<bool>(true, true), vec2<bool>(true, -329f >= _wgslsmith_f_op_f32(floor(-1678f)))));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(global0[_wgslsmith_index_u32(0u, 14u)]))), vec4<bool>(any(func_2(Struct_3(Struct_1(0u), vec2<u32>(1u, 1u)), Struct_2(arg_0.x, arg_0.x, vec4<i32>(u_input.c.x, -20872i, u_input.c.x, 3716i)), u_input.d.zz, u_input.d.zx)), true, u_input.c.x != ~(-2147483647i), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), func_2(Struct_3(Struct_1(u_input.d.x), u_input.d.zx), Struct_2(arg_0.x, arg_0.x, vec4<i32>(u_input.c.x, u_input.c.x, 1363i, 2147483647i)), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)).x)));
    return ~(~min(i32(-1i) * -1i, max(u_input.c.x, 54508i))) << (89757u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let var_0 = Struct_5(-(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -774i), vec3<i32>(-6539i, -24474i, 33860i)), func_1(vec4<f32>(1030f, 509f, 864f, 1000f)), u_input.c.x) ^ -2147483647i), Struct_4(Struct_1(1u), false), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(-u_input.c.x, 1i), _wgslsmith_add_i32(countOneBits(u_input.c.x), _wgslsmith_mult_i32(-1i | u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, 59252i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))))), ~(~(~vec4<u32>(1u, 10814u, u_input.a, u_input.a))));
    var var_1 = Struct_2(-1104f, 1023f, _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.c.x, u_input.c.x, var_0.c.x), vec4<i32>(2147483647i, 27766i, u_input.c.x, u_input.c.x)), max(-vec4<i32>(-1i, -29883i, 1i, -10284i), abs(vec4<i32>(25017i, u_input.c.x, 5193i, var_0.c.x)))) >> (vec4<u32>(reverseBits(89534u), var_0.d.x, ~_wgslsmith_mod_u32(u_input.d.x, 22733u), var_0.b.a.a & _wgslsmith_div_u32(0u, u_input.a)) % vec4<u32>(32u)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - var_1.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2975f, 1f))), vec4<i32>(2147483647i, -34079i, 0i, 66580i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-879f, var_1.b, var_1.b)))))), u_input.d, ~var_0.c.x);
}

