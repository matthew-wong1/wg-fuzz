struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(259f, -701f);

var<private> global1: array<vec3<f32>, 20>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-1051f, -254f, -1384f), Struct_1(vec2<u32>(60743u, 1u)), Struct_2(Struct_1(vec2<u32>(34977u, 23866u)), Struct_1(vec2<u32>(52445u, 4294967295u)), 33669u, Struct_1(vec2<u32>(4294967295u, 30957u)), Struct_1(vec2<u32>(0u, 4294967295u))), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = vec2<u32>(2430u, 33302u);
    global2 = arg_0;
    let var_1 = Struct_1(global2.b.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-390f, arg_0.a.x) - _wgslsmith_f_op_f32(-arg_0.a.x))))), arg_0.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -974f))) * _wgslsmith_f_op_vec2_f32(-global2.a.xx)))), global2.a.zx, !(!vec2<bool>(all(vec3<bool>(true, arg_0.d, true)), arg_0.d && false))));
    return 8323i;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    var var_0 = 36445i << (select(~global2.c.b.a.x, ~min(global2.b.a.x, global2.b.a.x), !global2.d) % 32u);
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -161i), u_input.b);
    var_0 = u_input.b.x;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 1i, -15439i) << (~vec4<u32>(25546u, 0u, 60407u, 4294967295u) % vec4<u32>(32u)), select(abs(vec4<i32>(35868i, u_input.b.x, 60602i, -8320i)), countOneBits(vec4<i32>(var_1.x, u_input.b.x, var_1.x, var_1.x)), global2.d)), var_1.x, var_1.x) | (~(~vec3<i32>(-29245i, -11967i, -2147483647i)) & vec3<i32>(reverseBits(func_3(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(global2.b.a), Struct_2(Struct_1(global2.b.a), Struct_1(global2.b.a), u_input.a, global2.b, global2.b), global2.d))), abs(_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(var_1.x, -2147483647i))), _wgslsmith_add_i32(~var_1.x, -20808i)));
    global2 = Struct_3(vec3<f32>(-651f, global0.x, _wgslsmith_div_f32(arg_0, 703f)), Struct_1(global2.b.a), Struct_2(global2.b, Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(global2.b.a.x, 49063u), _wgslsmith_sub_vec2_u32(global2.c.b.a, vec2<u32>(41250u, 12918u)))), 104509u, global2.c.e, global2.c.e), _wgslsmith_f_op_f32(-arg_1.x) != global0.x);
    return vec2<bool>(all(select(vec4<bool>(any(vec3<bool>(global2.d, global2.d, false)), global2.d, true, true), vec4<bool>(false, all(vec4<bool>(false, false, true, true)), global2.d && global2.d, 536i != u_input.b.x), select(global2.d, any(vec3<bool>(false, false, global2.d)), any(vec2<bool>(false, global2.d))))), false);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    var var_0 = select(arg_3.xy, select(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1116f, arg_0.x, arg_2.d)), _wgslsmith_f_op_f32(step(global0.x, -1569f))), _wgslsmith_f_op_vec2_f32(global2.a.yx + arg_2.a.yx), -u_input.b.x), vec2<bool>(true, false), global2.d), true || any(vec2<bool>(true, u_input.b.x == u_input.b.x)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(-1138f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.x, arg_1.x))) - _wgslsmith_f_op_f32(exp2(global2.a.x))), _wgslsmith_f_op_f32(-arg_0.x)), global2.b, Struct_2(Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(1426u, 25943u), arg_2.c.a.a)), Struct_1(~vec2<u32>(76776u, 21804u) >> (countOneBits(arg_2.b.a) % vec2<u32>(32u))), u_input.a, Struct_1(countOneBits(vec2<u32>(arg_2.c.a.a.x, 39483u)) >> (~vec2<u32>(arg_2.b.a.x, u_input.a) % vec2<u32>(32u))), global2.b), !all(arg_3));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x)))));
    let var_3 = vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -u_input.b.x) ^ -48200i, -24201i);
    let var_4 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(global2.b.a.x, var_1.b.a.x), max(arg_2.c.e.a, vec2<u32>(28137u, 13551u)), vec2<bool>(false, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<f32>(-1191f, 1000f), ~(-1i)).x)), reverseBits(~vec2<u32>(0u, _wgslsmith_clamp_u32(9056u, 25884u, 0u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - 1151f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, 581f)), global2.a.x, -1000f);
    var var_1 = global2.c.b;
    global1 = array<vec3<f32>, 20>();
    global1 = array<vec3<f32>, 20>();
    var var_2 = select(vec2<bool>(-646f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(global0.x, var_0.x, 1388f, global2.a.x), vec3<f32>(global0.x, 1609f, var_0.x), Struct_3(var_0, global2.c.a, Struct_2(global2.c.d, Struct_1(vec2<u32>(0u, var_1.a.x)), 0u, Struct_1(global2.c.b.a), global2.b), global2.d), vec4<bool>(false, true, false, global2.d))) - global2.a.x), global2.d), vec2<bool>(true, any(vec4<bool>(!global2.d, any(vec3<bool>(global2.d, global2.d, global2.d)), true, global2.d & global2.d))), false);
    var var_3 = min(~(_wgslsmith_mod_u32(1u, abs(1u)) ^ ~global2.b.a.x), global2.b.a.x);
    let var_4 = Struct_2(Struct_1(select(global2.b.a, ~global2.b.a, select(!vec2<bool>(var_2.x, false), vec2<bool>(global2.d, false), all(vec2<bool>(false, false))))), global2.c.e, global2.b.a.x, global2.b, Struct_1(vec2<u32>(global2.b.a.x, 0u) | (_wgslsmith_mod_vec2_u32(global2.c.d.a, global2.c.d.a) ^ ~var_1.a)));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, var_0.x, global2.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -648f)) + global2.a)), Struct_1(~_wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(var_4.b.a.x, var_1.a.x)) << (_wgslsmith_sub_vec2_u32(var_4.e.a, vec2<u32>(4294967295u, var_4.e.a.x)) % vec2<u32>(32u))), global2.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, 131f, global2.a.x, 780f) + vec4<f32>(3467f, var_0.x, var_0.x, global2.a.x)))))), ~85630u);
}

