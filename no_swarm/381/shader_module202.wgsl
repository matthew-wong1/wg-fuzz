struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, true, true, false, true, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true), 16093i, 1i, vec2<f32>(584f, -1505f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = abs(select(min(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -35038i, u_input.d), -vec3<i32>(13446i, arg_0.c.c, -2147483647i)), vec3<i32>(1i, _wgslsmith_div_i32(global2.c, global2.b), abs(41222i))), abs(vec3<i32>(-2147483647i, 19919i, global2.c)), false));
    var var_1 = vec2<u32>(1u, _wgslsmith_mod_u32(~global0.x, global0.x));
    var_1 = vec2<u32>(~abs(1u), ~1u);
    let var_2 = vec2<bool>(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_add_u32(21692u & u_input.b.x, _wgslsmith_add_u32(45513u, 0u))) <= abs(~(~u_input.a.x)), any(select(vec3<bool>(true, false, arg_0.a), arg_0.c.a, any(global2.a.yx))) != !arg_1.a.x);
    global0 = abs(vec4<u32>(u_input.a.x, var_1.x, 40274u, ~_wgslsmith_dot_vec2_u32(global0.zw, vec2<u32>(4294967295u, 19191u)) ^ ~(~global0.x)));
    return !(!vec4<bool>(any(vec2<bool>(global2.a.x, true)), true, !all(arg_0.c.a.zz), _wgslsmith_f_op_f32(step(global2.d.x, -272f)) > 1046f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = select(!select(vec4<bool>(all(global2.a.xz), arg_1, false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(53491u, u_input.a.x), 12u)]), vec4<bool>(!global1[_wgslsmith_index_u32(global0.x, 12u)], global2.c <= -20116i, global1[_wgslsmith_index_u32(56721u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), select(vec4<bool>(arg_0.a.x, true, false, false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global2.a.x), vec4<bool>(global2.a.x, true, arg_1, false), vec4<bool>(false, arg_0.a.x, arg_1, arg_0.a.x)), func_3(arg_2, Struct_1(arg_0.a, -7407i, global2.b, vec2<f32>(-1830f, global2.d.x))))), !func_3(Struct_3(!global1[_wgslsmith_index_u32(global0.x, 12u)], arg_0.b, Struct_1(arg_2.c.a, u_input.d, 2147483647i, vec2<f32>(-715f, -401f)), _wgslsmith_f_op_f32(global2.d.x + 487f)), Struct_1(func_3(arg_2, Struct_1(arg_2.c.a, arg_0.b, 33885i, vec2<f32>(arg_2.c.d.x, -1232f))).wzw, 7155i, global2.b | -1i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.d.x, arg_0.d.x), global2.d)))), !any(!(!vec4<bool>(arg_1, true, global1[_wgslsmith_index_u32(global0.x, 12u)], global2.a.x))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 33431u, global0.x, 4294967295u), vec4<u32>(4294967295u, u_input.c, 13190u, u_input.c)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, 6178u, global0.x), vec4<u32>(1u, global0.x, global0.x, u_input.c), vec4<u32>(1u, u_input.a.x, 18540u, 1u)) % vec4<u32>(32u)), ~abs(vec4<u32>(global0.x, u_input.b.x, 79060u, 1u)), !select(vec4<bool>(global2.a.x, false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], arg_1, false, true), var_0)), ~((vec4<u32>(u_input.e.x, global0.x, global0.x, global0.x) >> (vec4<u32>(global0.x, u_input.b.x, 84272u, u_input.a.x) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, global0.x, 16244u, 22486u), vec4<u32>(global0.x, global0.x, 0u, 26756u)) % vec4<u32>(32u))));
    return global2.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), global2.d.x, _wgslsmith_f_op_f32(step(435f, 528f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1532f, global2.d.x, global2.d.x) - vec3<f32>(1532f, global2.d.x, 263f)), !func_2(Struct_1(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 12u)]), u_input.d, global2.b, vec2<f32>(320f, 1210f)), true, Struct_3(global2.a.x, 14918i, Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(26263u, 12u)], true), global2.b, global2.c, global2.d), global2.d.x)))))));
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.xz), vec3<f32>(547f, -275f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(1000f - -1058f))))), _wgslsmith_f_op_f32(-var_0.x), global2.d.x, Struct_1(global2.a, abs(u_input.d), select(~countOneBits(-1i), -11278i, all(select(vec2<bool>(false, global2.a.x), global2.a.yz, global1[_wgslsmith_index_u32(1u, 12u)]))), global2.d));
    global0 = reverseBits(select(vec4<u32>(~110907u, 81179u, u_input.c, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 0u, 30190u, global0.x) | vec4<u32>(4294967295u, global0.x, 63511u, arg_0), vec4<u32>(global0.x, 0u, arg_0, u_input.e.x), vec4<u32>(global0.x, 80937u, 62920u, arg_0)), vec4<bool>(global1[_wgslsmith_index_u32(~12845u, 12u)], var_2.e.a.x, func_3(Struct_3(false, global2.b, Struct_1(global2.a, global2.b, u_input.d, var_2.e.d), var_2.b.x), var_2.e).x, global2.a.x)) << ((~(~vec4<u32>(global0.x, 1u, global0.x, arg_0)) << (vec4<u32>(4294967295u, global0.x, countOneBits(9095u), global0.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = 72279u;
    return Struct_1(select(vec3<bool>(!(u_input.a.x == global0.x), var_2.e.a.x, any(select(vec2<bool>(global2.a.x, false), var_2.e.a.zz, vec2<bool>(false, global1[_wgslsmith_index_u32(var_3, 12u)])))), global2.a, !select(vec3<bool>(global1[_wgslsmith_index_u32(var_3, 12u)], var_2.e.a.x, true), select(global2.a, vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], var_2.e.a.x), true), -59515i >= global2.c)), var_2.e.c, countOneBits(select(max(abs(var_2.e.b), global2.c), global2.c, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(-global2.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d * var_2.e.d))), func_2(Struct_1(vec3<bool>(true, var_2.e.a.x, global2.a.x), var_2.e.c, global2.c, _wgslsmith_f_op_vec2_f32(min(var_0.zx, vec2<f32>(var_0.x, -1921f)))), global2.a.x, Struct_3(var_2.e.a.x, -1i, Struct_1(global2.a, 690i, 2147483647i, var_2.e.d), -1000f)).xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~u_input.b.x));
    let var_1 = true;
    global2 = Struct_1(global2.a, 31281i, -(_wgslsmith_add_i32(-var_0.b, _wgslsmith_div_i32(u_input.d, u_input.d)) | u_input.d), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -2166f) - vec2<f32>(-1081f, 1397f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(global2.d)), global2.d)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(global2.d.x)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(460f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1421f)))))));
    let var_3 = Struct_3(all(!select(!vec3<bool>(global2.a.x, true, false), global2.a, global1[_wgslsmith_index_u32(global0.x, 12u)] || var_1)), -(~firstTrailingBit(20349i)), var_0, _wgslsmith_f_op_f32(trunc(2055f)));
    let var_4 = Struct_3(!select(global1[_wgslsmith_index_u32(1u, 12u)], false, false) || var_0.a.x, _wgslsmith_div_i32(global2.b, ~11724i), Struct_1(vec3<bool>(var_1, func_1(~u_input.c).a.x, !global2.a.x), var_3.c.c, 0i, var_3.c.d), _wgslsmith_f_op_f32(879f - var_3.d));
    var var_5 = !(!(!(!(!vec4<bool>(false, false, true, global2.a.x)))));
    var_5 = vec4<bool>(false, !func_1(global0.x).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.c.d.x))) + _wgslsmith_f_op_f32(min(895f, global2.d.x))), any(!(!var_0.a.yx)));
    global2 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(754f)), select(~(~u_input.d ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, u_input.d), vec2<i32>(27646i, -18483i))), u_input.d, all(vec2<bool>(true, any(vec3<bool>(false, true, var_3.c.a.x))))));
}

