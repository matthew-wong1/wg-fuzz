struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: Struct_4,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(60621u, 76101u, 14861u, 35894u), vec4<u32>(0u, 0u, 21353u, 47362u), vec4<u32>(1u, 70304u, 23683u, 22660u), vec4<u32>(1u, 0u, 22396u, 4294967295u), vec4<u32>(1u, 36339u, 0u, 0u), vec4<u32>(19726u, 1u, 1u, 54452u), vec4<u32>(40654u, 4294967295u, 16137u, 38733u), vec4<u32>(4294967295u, 22067u, 17001u, 56328u), vec4<u32>(0u, 76692u, 0u, 126709u), vec4<u32>(47873u, 4294967295u, 1u, 13738u), vec4<u32>(60826u, 0u, 0u, 4294967295u), vec4<u32>(30505u, 0u, 11976u, 42481u), vec4<u32>(0u, 25588u, 1u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 36781u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 1u, 102681u, 15255u), vec4<u32>(0u, 61263u, 28151u, 9563u), vec4<u32>(84u, 0u, 4294967295u, 0u), vec4<u32>(1u, 78484u, 4294967295u, 6356u));

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(0i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 13192i), vec2<i32>(7814i, 31086i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(0i, -14745i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-20344i, 2147483647i), vec2<i32>(-31100i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(26608i, 56220i), vec2<i32>(-1i, 2147483647i), vec2<i32>(4486i, 2147483647i));

var<private> global3: Struct_4;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.b)));
    let var_1 = global3.c;
    let var_2 = Struct_1(u_input.c << (u_input.a % 32u), select(vec2<bool>(u_input.a <= (u_input.a >> (19275u % 32u)), !all(vec4<bool>(true, global3.a.x, false, arg_0.a.x))), arg_0.a.wz, arg_0.a.x));
    global3 = Struct_4(arg_0.a, i32(-1i) * -arg_2, Struct_2(true, _wgslsmith_f_op_f32(var_0 + global3.c.b)), Struct_3(arg_0.a), global3.e);
    return var_1.b;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = !vec4<bool>(all(global3.a.yzz), !any(global3.a.yzy), true, arg_0.b.x);
    let var_1 = 1u;
    let var_2 = Struct_5(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(global3.c.b * _wgslsmith_f_op_f32(func_3(global3.d, -vec4<i32>(-2147483647i, -7282i, 2147483647i, global3.b), arg_0.a, !arg_0.b.x)))), 112f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, -302f, global3.c.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1789f, global3.c.b) + vec3<f32>(arg_1, -369f, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.b, arg_1, 388f) - vec3<f32>(-945f, 421f, global3.c.b)))))))), Struct_4(select(vec4<bool>(!arg_0.b.x, select(arg_0.b.x, global3.c.a, global3.c.a), any(global3.e.a.ww), var_0.x), !select(global3.e.a, global3.e.a, var_0.x), select(vec4<bool>(global3.c.a, false, var_0.x, true), select(vec4<bool>(arg_0.b.x, true, false, false), vec4<bool>(false, false, global3.a.x, true), vec4<bool>(true, arg_0.b.x, false, false)), !global3.e.a)), u_input.c, Struct_2(!(!arg_0.b.x), arg_1), global3.e, Struct_3(select(global3.e.a, select(vec4<bool>(global4.x, var_0.x, arg_0.b.x, false), global3.d.a, global4.x), vec4<bool>(var_0.x, global4.x, true, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(703f, 792f, -420f, global3.c.b)), vec4<f32>(arg_1, -790f, -1261f, 1344f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.c.b, global3.c.b, -1000f, global3.c.b), vec4<f32>(global3.c.b, -1038f, global3.c.b, arg_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1639f, -1337f, arg_1, global3.c.b))))));
    let var_3 = all(!global3.e.a.wzx);
    let var_4 = vec2<u32>(0u, 0u);
    return var_2.d;
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = u_input.a;
    var var_1 = func_2(Struct_1(55544i, func_2(Struct_1(_wgslsmith_div_i32(global3.b, arg_0.b), select(global3.a.zy, vec2<bool>(global4.x, global4.x), global3.a.wz)), 1066f).d.a.yy), 965f).d.a;
    let var_2 = -21448i;
    var var_3 = global3.b;
    global0 = global3.c.b;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, global3.c.b, _wgslsmith_f_op_f32(-global3.c.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.b, 1347f, _wgslsmith_f_op_f32(-global3.c.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c.b)));
    let var_0 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.b, u_input.c, 16152i, -1i), select(vec4<i32>(global3.b, global3.b, global3.b, -22107i), vec4<i32>(-11713i, global3.b, 12293i, 1i), vec4<bool>(true, global3.a.x, false, false))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, -6136i), vec4<i32>(u_input.c, 2147483647i, global3.b, -2147483647i))) > (-u_input.c ^ u_input.c));
    let var_1 = true;
    let var_2 = vec3<u32>(u_input.b.x, arg_1, 73680u);
    let var_3 = ~vec2<u32>(firstTrailingBit(abs(~8441u)), 36297u);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(-u_input.c, !global3.e.a.yx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(664f - global3.c.b), _wgslsmith_f_op_f32(round(593f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.b + 411f) + arg_0.x) + -1117f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.b - arg_0.x) + _wgslsmith_f_op_f32(-global3.c.b)))), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1188f + global3.c.b) + _wgslsmith_f_op_f32(round(484f))))), -527f, _wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) + global3.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f + -1917f)), global3.c.b), select(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) | vec2<u32>(1u, u_input.a), _wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.b.yy, u_input.b.xy)), global3.c.a))), func_2(Struct_1(min(_wgslsmith_div_i32(u_input.c, 18535i), i32(-1i) * -8140i), global3.e.a.xy), -768f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(step(global3.c.b, 116f)), -1068f, _wgslsmith_f_op_f32(step(global3.c.b, _wgslsmith_f_op_f32(global3.c.b - 288f)))))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.b * var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1146f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.e.yxy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.b, 769f, global3.c.b) + vec3<f32>(global3.c.b, 1000f, -128f)))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, var_0.e.x)))))), func_2(Struct_1(-47819i, var_0.d.a.zy), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(975f)), var_0.b))))), var_0.e);
    global0 = -244f;
    var var_2 = _wgslsmith_f_op_f32(round(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~u_input.a)));
}

