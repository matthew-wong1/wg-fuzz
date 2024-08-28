struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(true, vec2<f32>(-547f, -1543f), vec2<f32>(-551f, -574f));

var<private> global2: array<vec3<i32>, 8>;

var<private> global3: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> vec3<bool> {
    global0 = true;
    let var_0 = 1u ^ (reverseBits(u_input.b) | arg_0);
    global2 = array<vec3<i32>, 8>();
    var var_1 = arg_2;
    global0 = global1.a;
    return select(select(vec3<bool>(!global1.a, all(vec2<bool>(false, global1.a)), true), select(select(vec3<bool>(false, true, global1.a), vec3<bool>(global1.a, global1.a, global1.a), select(vec3<bool>(true, true, false), vec3<bool>(global1.a, true, true), global1.a)), select(select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(true, global1.a, global1.a), vec3<bool>(true, global1.a, global1.a)), select(vec3<bool>(global1.a, true, false), vec3<bool>(global1.a, global1.a, global1.a), false), select(vec3<bool>(true, false, false), vec3<bool>(global1.a, true, true), vec3<bool>(true, false, global1.a))), global1.a), false), vec3<bool>(!(arg_1 > countOneBits(-1i)), all(select(select(vec4<bool>(false, global1.a, false, true), vec4<bool>(false, global1.a, global1.a, true), false), !vec4<bool>(true, global1.a, global1.a, global1.a), select(vec4<bool>(false, false, global1.a, false), vec4<bool>(global1.a, false, global1.a, false), true))), !global1.a), vec3<bool>(global3.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) + 1023f), false, true));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    var var_0 = !vec2<bool>(all(vec3<bool>(arg_0.a, arg_0.a, false)) && false, true);
    let var_1 = Struct_1(all(func_3(30452u, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.c, -33475i) | vec4<i32>(u_input.d, -35361i, -43441i, 11975i), vec4<i32>(u_input.a.x, u_input.d, u_input.e, 1i) & vec4<i32>(u_input.d, -1i, u_input.a.x, u_input.e)), 1i)), _wgslsmith_f_op_vec2_f32(select(global3.xy, arg_0.c, vec2<bool>(var_0.x, !(!arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 1000f) + vec2<f32>(-1227f, -1000f)))))) - _wgslsmith_f_op_vec2_f32(global3.yz - _wgslsmith_f_op_vec2_f32(max(global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1812f) + global3.zx))))));
    let var_2 = ~countOneBits(firstTrailingBit(~max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))));
    let var_3 = select(vec4<bool>(var_1.a, var_0.x, func_3(0u, select(reverseBits(u_input.a.x), -u_input.d, true), max(u_input.e | -19551i, ~0i)).x, var_1.a), !(!select(select(vec4<bool>(false, var_0.x, var_1.a, true), vec4<bool>(false, global1.a, var_1.a, var_1.a), false), select(vec4<bool>(var_1.a, true, false, global1.a), vec4<bool>(false, global1.a, false, false), vec4<bool>(false, var_0.x, arg_0.a, arg_0.a)), !vec4<bool>(false, var_0.x, var_0.x, false))), false);
    var var_4 = Struct_1(false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1000f)), global1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.c.x) + vec2<f32>(2400f, -147f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.yy, arg_0.b, vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.x, 1152f)))) * global3.zx)));
    return _wgslsmith_f_op_vec2_f32(floor(var_1.b));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec3<i32>, 8>();
    var var_0 = Struct_1(arg_1, vec2<f32>(_wgslsmith_f_op_f32(global1.c.x - global1.c.x), global1.c.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1000f, arg_3.b.x), _wgslsmith_f_op_f32(round(global1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(466f, 1000f), arg_3.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, global1.c.x))), arg_3.a)), _wgslsmith_f_op_vec2_f32(-arg_3.b))));
    var var_1 = _wgslsmith_f_op_f32(arg_3.b.x + -1181f);
    let var_2 = arg_0;
    var var_3 = Struct_1(arg_3.a, vec2<f32>(arg_3.c.x, _wgslsmith_f_op_f32(abs(-1961f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-235f, global1.b.x) + var_0.b), !arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1857f, global3.x) * global3.zz))));
    return Struct_1(u_input.a.x > u_input.e, vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b.x, 655f)), global1.b.x), global3.zy), global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-18104i >> (min(1u, 1u) % 32u), ~u_input.d), -45104i, -(~u_input.d), -97057i), (vec4<i32>(~66i, ~u_input.d, 0i, abs(-2147483647i)) | reverseBits(vec4<i32>(u_input.d, 7708i, u_input.d, u_input.a.x))) & ~((vec4<i32>(-48819i, -23609i, -2147483647i, -28959i) ^ vec4<i32>(-2147483647i, u_input.d, 0i, u_input.c)) >> ((vec4<u32>(5027u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(52270u, 0u, 4294967295u, 29962u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = func_1(u_input.b, ((u_input.b ^ ~20101u) ^ 38271u) >= ~(~max(1u, u_input.b)), !vec2<bool>(any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a), global1.a)), global1.a), Struct_1(all(vec4<bool>(global1.a == global1.a, all(vec2<bool>(global1.a, global1.a)), false, u_input.b >= 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1187f) - _wgslsmith_f_op_vec2_f32(global3.xx - global1.b)) - vec2<f32>(-803f, -553f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(global3.x, global3.x)))))));
    var var_2 = vec3<i32>(-var_0.x, -u_input.c, ~(-1i));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1264f)), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(max(-1235f, global3.x))), _wgslsmith_f_op_f32(var_1.c.x * -1473f));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(36402u, u_input.b, 73829u, u_input.b), true), max(min(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(18827u, u_input.b, u_input.b, 0u)), abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))) << (firstLeadingBit(~(~vec4<u32>(u_input.b, 16240u, 1u, u_input.b))) % vec4<u32>(32u)), _wgslsmith_add_i32(~var_2.x, firstTrailingBit(~var_0.x)));
}

