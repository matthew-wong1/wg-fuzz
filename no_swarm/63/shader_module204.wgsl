struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-1609f, -21761i, 1397f, 62531i, false), Struct_1(-204f, -12624i, -1000f, 27372i, true), Struct_1(-1000f, 31471i, 489f, 1i, true), Struct_1(1000f, -37688i, -2084f, i32(-2147483648), true), Struct_1(157f, 2147483647i, 460f, 1i, false), Struct_1(416f, 2147483647i, 910f, 0i, false), Struct_1(339f, 37380i, 1062f, 1i, false), Struct_1(531f, -1i, 917f, 17380i, true), Struct_1(-505f, 35522i, 427f, i32(-2147483648), true), Struct_1(-539f, -1i, -597f, -1673i, true), Struct_1(856f, 56426i, 378f, 80103i, true), Struct_1(2415f, 5646i, -1000f, 0i, false), Struct_1(-333f, 21259i, 193f, 67529i, false), Struct_1(-1783f, 0i, 1113f, -27985i, false));

var<private> global2: array<i32, 20> = array<i32, 20>(-16204i, 0i, 0i, 2147483647i, 5318i, -1i, 0i, -57234i, 23355i, -19087i, 0i, -23394i, -1i, 0i, 19638i, i32(-2147483648), 2147483647i, 0i, 9495i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c & ~(~_wgslsmith_clamp_u32(u_input.c, 1860u, u_input.b.x) >> (4294967295u % 32u)), 14u)];
    var var_1 = -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -13452i) << (vec2<u32>(u_input.b.x, ~1u) % vec2<u32>(32u)), u_input.a);
    var_1 = -(~(-u_input.a));
    var_1 = vec2<i32>(1444i, var_1.x ^ _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -25014i, var_1.x), vec3<i32>(19231i, -1i, var_1.x)))));
    var var_2 = Struct_1(492f, var_1.x, var_0.c, -46054i, var_0.e);
    return !vec4<bool>(any(select(select(vec4<bool>(var_0.e, true, var_0.e, var_2.e), vec4<bool>(false, true, false, var_0.e), var_2.e), !vec4<bool>(true, false, var_2.e, var_0.e), 0i >= var_0.d)), true, false, var_2.e);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec4<bool> {
    var var_0 = false | any(select(select(func_3(624f), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !any(vec4<bool>(false, true, false, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_2 = 156f;
    global1 = array<Struct_1, 14>();
    var var_3 = Struct_1(var_1, -2147483647i, var_1, arg_0.x, 18877u >= ~(~u_input.c));
    return select(!select(func_3(_wgslsmith_f_op_f32(f32(-1f) * -219f)), !(!vec4<bool>(false, var_3.e, true, var_3.e)), var_3.e), select(!func_3(-1148f), vec4<bool>(true, true || all(vec2<bool>(var_3.e, false)), var_3.e, var_3.e & (true || var_3.e)), vec4<bool>(true || var_3.e, !(!var_3.e), !(25717u >= u_input.c), var_3.e)), select(vec4<bool>(false, any(vec4<bool>(var_3.e, var_3.e, var_3.e, false)), false, any(select(vec2<bool>(false, var_3.e), vec2<bool>(var_3.e, var_3.e), vec2<bool>(false, var_3.e)))), vec4<bool>(true, true, all(vec4<bool>(false, var_3.e, true, false)), all(func_3(var_1))), !vec4<bool>(u_input.a.x <= u_input.a.x, !var_3.e, true, false)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f - -2776f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1211f));
    global1 = array<Struct_1, 14>();
    return any(select(select(vec4<bool>(true, true, true, true), func_2(vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(u_input.c, 20u)]), u_input.c), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, true, (83912u == u_input.c) || true, true || any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, false), true, false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    global0 = -535f;
    var var_1 = -select(u_input.a.x, u_input.a.x, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1143f, -852f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1171f, 773f) - vec2<f32>(318f, -929f)))))));
    global1 = array<Struct_1, 14>();
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -577f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, 1415f), vec2<f32>(-424f, -2036f)))))))) + vec2<f32>(537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-601f))), global2[_wgslsmith_index_u32(0u, 20u)], -1000f, -52308i, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.c, var_3.a), ~_wgslsmith_add_vec3_u32(u_input.b.yyx, firstLeadingBit(vec3<u32>(u_input.c, u_input.b.x, 37221u) & u_input.b.yxz)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.x, 142f), -157f, 1256f, _wgslsmith_f_op_f32(920f + var_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_3.a, var_3.c, 937f, var_3.a)), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c, -1046f, var_2.x, var_2.x), vec4<f32>(-689f, var_3.c, -396f, -159f)))))));
}

