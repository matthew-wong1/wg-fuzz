struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_1, 23>();
    let var_0 = ~u_input.e << (u_input.e % vec3<u32>(32u));
    global0 = array<Struct_1, 23>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(22902u, ~(u_input.b | abs(~var_0.x))), 23u)];
    var_1 = global0[_wgslsmith_index_u32(~(~(~(0u | var_1.a))), 23u)];
    return Struct_2(_wgslsmith_mod_vec2_i32(~u_input.d.zy, u_input.d.zz), global0[_wgslsmith_index_u32(var_0.x, 23u)]);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    var var_0 = select(!select(vec3<bool>(false, arg_1.e, true), select(!vec3<bool>(true, arg_1.e, arg_0.b.e), !vec3<bool>(arg_0.b.e, arg_0.b.e, arg_1.e), !vec3<bool>(false, arg_1.c, arg_1.c)), vec3<bool>(true, arg_2 <= 509f, any(vec2<bool>(arg_0.b.c, false)))), vec3<bool>(select(false, any(select(vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_1.e, true, arg_1.c), vec3<bool>(arg_0.b.c, arg_1.e, arg_0.b.c))), arg_1.e), any(!vec4<bool>(arg_0.b.e, false, false, true)), all(vec4<bool>(any(vec3<bool>(true, arg_1.e, false)), arg_0.b.c | true, arg_1.c || false, true))), any(!vec4<bool>(true, true, any(vec2<bool>(arg_1.c, arg_0.b.c)), true)));
    var var_1 = !vec4<bool>(var_0.x, arg_1.c, true, any(vec4<bool>(arg_0.b.e, true, false, false)));
    var var_2 = func_2(arg_0.a.x).b;
    var_0 = !var_1.zzx;
    var var_3 = func_2(-26639i).b;
    return abs(min(vec3<i32>(var_2.b.x, -28168i, 1298i) ^ (arg_0.b.b.xww << (vec3<u32>(arg_0.b.a, arg_0.b.a, arg_0.b.a) % vec3<u32>(32u))), vec3<i32>(var_2.b.x, _wgslsmith_dot_vec3_i32(arg_0.b.d, vec3<i32>(39027i, arg_0.b.b.x, 1i)), arg_0.a.x & 34378i))) << (u_input.e % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = vec2<u32>(4969u, u_input.b);
    let var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(49630u, 30712u, 31620u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 2585u, u_input.a.x, u_input.a.x), min(vec4<u32>(u_input.e.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 69773u, 41713u, var_0.x))) & var_0.x, reverseBits(vec4<i32>(arg_0.x ^ -1i, -47668i, 26524i, arg_0.x)), true, func_3(func_2(_wgslsmith_div_i32(-13848i, 60130i)), Struct_1(~var_0.x, vec4<i32>(-1i, 2147483647i, arg_0.x, 18582i) << (vec4<u32>(57333u, 1u, var_0.x, 45780u) % vec4<u32>(32u)), any(vec3<bool>(true, true, false)), select(vec3<i32>(1i, 0i, 0i), u_input.d, true), true), 1152f), false));
    let var_2 = ~1u;
    var var_3 = func_2(_wgslsmith_mod_i32(59923i, _wgslsmith_clamp_i32(0i, 0i, _wgslsmith_dot_vec4_i32(var_1.b.b, ~var_1.b.b)))).b;
    global0 = array<Struct_1, 23>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1144f * -972f))) - _wgslsmith_div_f32(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-616f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1205f * -468f))))), var_1.b.e));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = -firstLeadingBit(u_input.d.x);
    let var_1 = u_input.e.zy;
    global0 = array<Struct_1, 23>();
    var var_2 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, abs(u_input.d.x), select(1i, _wgslsmith_sub_i32(u_input.d.x, var_0), true)), _wgslsmith_clamp_vec4_i32(arg_3.b, _wgslsmith_div_vec4_i32(select(vec4<i32>(var_0, arg_3.b.x, u_input.d.x, -2147483647i), arg_3.b, arg_3.c), arg_3.b), _wgslsmith_clamp_vec4_i32(~arg_3.b, vec4<i32>(-7403i, u_input.d.x, 1i, arg_3.b.x), arg_3.b))));
    var var_3 = Struct_2(u_input.d.xy, func_2(2147483647i).b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1668f;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(step(3922f, 1060f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-791f, 1007f) + _wgslsmith_f_op_f32(ceil(-279f)))), -890f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1000f, false)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(min(vec2<i32>(u_input.d.x, 54993i), vec2<i32>(52267i, u_input.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_div_f32(950f, -262f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -192f))), false, Struct_1(49716u, ~_wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.d.x, u_input.d.x, 1i), ~vec4<i32>(u_input.d.x, -2147483647i, 21340i, 2147483647i)), false, firstTrailingBit(u_input.d), false)));
    var var_2 = ~(_wgslsmith_dot_vec3_u32((u_input.e | u_input.e) << (vec3<u32>(1u, u_input.e.x, u_input.b) % vec3<u32>(32u)), u_input.e) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.b), u_input.b), _wgslsmith_mod_u32(countOneBits(u_input.a.x), 0u)) % 32u));
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_div_i32(~u_input.d.x, -_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 10755i), vec2<i32>(25447i, u_input.d.x)), ~u_input.d.xz));
    var var_5 = -vec4<i32>(2147483647i, ~min(2147483647i, -1i) >> (~(~1u) % 32u), u_input.d.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec2<i32>(-37019i, ~34687i), reverseBits(vec2<i32>(u_input.d.x, _wgslsmith_div_i32(74732i, var_5.x))), vec2<bool>(true, true)), var_1.x, u_input.b);
}

