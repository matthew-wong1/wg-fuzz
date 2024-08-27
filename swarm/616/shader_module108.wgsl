struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<u32, 24> = array<u32, 24>(11371u, 54721u, 30057u, 1u, 43616u, 0u, 493u, 36591u, 49151u, 4294967295u, 91074u, 46314u, 29484u, 20563u, 0u, 1u, 1u, 46742u, 17396u, 63857u, 1u, 30160u, 1u, 51005u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> bool {
    var var_0 = 336f;
    var var_1 = global2[_wgslsmith_index_u32(30944u, 24u)];
    global0 = array<vec3<bool>, 6>();
    let var_2 = 1i;
    return any(!select(vec4<bool>(false, arg_1, any(vec4<bool>(false, true, false, false)), arg_1), !vec4<bool>(true, true, arg_1, false), true));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = ~u_input.a.wz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, _wgslsmith_f_op_f32(abs(-1306f)), 201f, _wgslsmith_f_op_f32(select(1668f, 890f, false)))))));
    let var_2 = vec2<i32>(~max(_wgslsmith_div_i32(min(-34205i, -1i), -6085i), _wgslsmith_mod_i32(-1i, 2147483647i)), i32(-1i) * -49976i);
    return var_1.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_5 {
    return Struct_5(Struct_3(arg_1, !global0[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(arg_0.x, func_2(arg_1.d.a.xz, !(arg_0.x | true)), all(select(select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 6u)], false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x))), Struct_4(_wgslsmith_f_op_vec4_f32(max(arg_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d.a + vec4<f32>(155f, arg_1.c.x, -387f, arg_1.c.x)) - arg_1.d.a))), firstLeadingBit(arg_1.e)));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = vec3<bool>(false, true, all(vec3<bool>(true, true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)))));
    let var_1 = func_4(!(!vec4<bool>(func_2(vec2<f32>(817f, -1714f), false), true, var_0.x, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -733f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(max(-1622f, -1230f))))), vec4<f32>(1f, _wgslsmith_f_op_f32(213f * _wgslsmith_f_op_f32(max(-719f, -860f))), -1325f, _wgslsmith_f_op_f32(step(-1491f, _wgslsmith_f_op_f32(f32(-1f) * -390f)))), global1[_wgslsmith_index_u32(23092u, 16u)], select(3816u, 1u << (global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(52146u, 24u)], 24u)] % 32u), var_0.x)));
    var var_2 = u_input.a.ww;
    var_0 = !func_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.b.x, var_0.x, false, true), func_2(vec2<f32>(1000f, var_1.a.a.d.a.x), var_1.b.x)), var_1.a.a).a.b;
    var var_3 = 0i;
    return StorageBuffer(~4294967295u, vec4<i32>(-80739i, 34779i, -1i, firstTrailingBit(26715i)), var_1.a.a.d.a.www);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(288f)) * _wgslsmith_f_op_f32(722f - -821f)), -1000f, -653f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(986f, 1000f, 953f) + vec3<f32>(-110f, 475f, 1000f)))))));
    let x = u_input.a;
    s_output = func_1(~(~(~u_input.b) & ~u_input.a.zzy));
}

