struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: u32 = 7390u;

var<private> global2: Struct_1 = Struct_1(-147f, -1i, true, vec2<f32>(1877f, -2210f));

var<private> global3: array<i32, 4>;

var<private> global4: vec2<u32> = vec2<u32>(60654u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    return -37812i;
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.d.x, global2.d.x, -581f) - vec4<f32>(global2.a, global2.a, global2.d.x, global2.d.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-502f, 963f, 276f, global2.d.x)))))));
    global0 = array<Struct_3, 32>();
    global2 = Struct_1(610f, ~(-3776i), (func_3(global2.c, Struct_1(-1135f, global2.b, global2.c, global2.d), !vec2<bool>(false, global2.c)) & (global3[_wgslsmith_index_u32(~u_input.b, 4u)] ^ global2.b)) <= 4177i, vec2<f32>(1047f, _wgslsmith_f_op_f32(f32(-1f) * -347f)));
    var var_1 = global2.d;
    var var_2 = -(u_input.e.xxw << (_wgslsmith_sub_vec3_u32(u_input.a.zxx, countOneBits(u_input.a.xww) & ~u_input.a.wzy) % vec3<u32>(32u)));
    return u_input.a.xzz;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))) - -353f))), arg_2.x);
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global4.x, 4u)], global2.b)), 56695i) << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_0.x, min(var_0.x, u_input.b)), abs(global4.x << (u_input.a.x % 32u))) % 32u), global2.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a))), _wgslsmith_f_op_f32(trunc(-973f))));
    global4 = vec2<u32>(select(firstLeadingBit(5008u | global4.x), 2121u, var_3.c) | (global4.x << (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u)), global4.x);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-391f))));
    var var_1 = func_1(abs(-766i << (~select(4294967295u, 0u, global2.c) % 32u)), global0[_wgslsmith_index_u32(95656u, 32u)], _wgslsmith_f_op_vec2_f32(abs(global2.d)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(770f)), -472f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) - var_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d.x))) + global2.a)), -2147483647i, any(vec2<bool>(!any(vec4<bool>(global2.c, true, global2.c, global2.c)), _wgslsmith_mult_u32(u_input.a.x, 4294967295u) < ~74280u)), global2.d);
    global1 = _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38609u), vec2<u32>(37715u, global4.x) << (u_input.a.zw % vec2<u32>(32u))), 60966u));
    global3 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.d.x)), -2097f)), vec4<u32>(_wgslsmith_sub_u32(~70367u, global4.x), abs(countOneBits(0u)), ~global4.x, ~firstLeadingBit(44705u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, 76261u, abs(299u), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, u_input.b, 4294967295u), u_input.a.xyz)), firstLeadingBit(~vec4<u32>(35672u, u_input.b, u_input.a.x, u_input.b)), u_input.a) % vec4<u32>(32u)), u_input.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, 551f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.d.x, var_1.a)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(var_2.d))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d + vec2<f32>(1373f, -1361f))))), !select(vec2<bool>(var_2.c, global2.c), select(vec2<bool>(true, global2.c), vec2<bool>(var_2.c, var_2.c), vec2<bool>(false, true)), select(global2.c, global2.c, var_2.c)))), global2.d);
}

