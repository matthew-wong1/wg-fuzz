struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    return vec2<u32>(_wgslsmith_add_u32(~(18844u << (max(u_input.b, u_input.e.x) % 32u)), ~(~u_input.b)), u_input.b & u_input.e.x);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(~u_input.e.x, u_input.e.x >> (0u % 32u)), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 367f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)))), Struct_1(~u_input.e.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(201f, -836f)))));
    let var_1 = countOneBits(abs(u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_f_op_f32(trunc(var_0.b.b))), var_0.a.b) - vec2<f32>(var_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -137f)));
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    return Struct_3(var_0.a, var_1.yz ^ abs(_wgslsmith_div_vec2_i32(var_1.zz ^ vec2<i32>(25942i, u_input.d), reverseBits(var_1.yz))), var_0.a.b, _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b.a.x, 75484u, u_input.b, 4294967295u), vec4<u32>(var_0.a.a.x, 45272u, var_0.b.a.x, u_input.e.x) << (vec4<u32>(38027u, var_0.a.a.x, var_0.a.a.x, 8396u) % vec4<u32>(32u)))), ~firstLeadingBit(vec4<u32>(var_0.a.a.x, var_0.a.a.x, u_input.e.x, var_0.b.a.x))), Struct_2(Struct_1(func_3(any(vec4<bool>(true, true, false, true))), 1f), var_0.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 4>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -769f, 1712f, var_0.e.a.b) * vec4<f32>(-399f, -2020f, var_0.a.b, var_0.e.b.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-567f, 1052f, -869f, var_0.e.b.b)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(375f, var_0.e.a.b, -1000f, var_0.c) - vec4<f32>(var_0.e.a.b, var_0.e.b.b, var_0.a.b, 1426f)))))))) - vec4<f32>(_wgslsmith_f_op_f32(-1f), -666f, _wgslsmith_f_op_f32(exp2(var_0.c)), var_0.e.a.b));
    let var_2 = Struct_4(var_0.e, Struct_1((~u_input.e.xy ^ ~u_input.e.xz) << ((~vec2<u32>(0u, arg_0.x) << ((vec2<u32>(4294967295u, arg_0.x) << (vec2<u32>(37763u, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(186f, _wgslsmith_f_op_f32(floor(var_0.c)))))));
    let var_3 = select(select(select(vec3<bool>(any(vec2<bool>(false, false)), false, false), vec3<bool>(false, select(false, true, false), 28598u < u_input.e.x), !global0[_wgslsmith_index_u32(4294967295u, 4u)]), select(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.d.x, 6075u), 4u)], vec3<bool>(true, true, true), (u_input.c >> (20910u % 32u)) != -2147483647i), select(all(vec2<bool>(true, true)) & select(false, true, false), true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, any(global0[_wgslsmith_index_u32(55392u >> (var_0.e.b.a.x % 32u), 4u)]), true), vec3<bool>(false, all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)))), global0[_wgslsmith_index_u32(u_input.e.x, 4u)]);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(~(~u_input.e.zx)), vec4<i32>(-(~u_input.d), 0i, _wgslsmith_mod_i32(u_input.c & -1i, reverseBits(_wgslsmith_add_i32(u_input.c, u_input.a.x))), -1i));
    let var_1 = 87577u;
    var_0 = func_2().a;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 605f), 600f, -142f)))));
    let var_3 = 26348i;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_2.x, var_2.x, -2005f)))), _wgslsmith_div_vec4_f32(vec4<f32>(877f, 773f, var_2.x, -278f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1489f, var_2.x, -1869f), vec4<f32>(-1708f, var_2.x, var_0.b, var_2.x), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 864f, var_2.x, -385f) + vec4<f32>(var_0.b, 926f, -348f, -132f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, var_2.x, var_2.x, var_0.b) * vec4<f32>(-953f, var_0.b, var_0.b, -1168f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + 653f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + var_0.b))), 409f, var_2.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2574f, var_0.b, var_2.x, -682f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -314f, var_0.b, 216f) + vec4<f32>(669f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_2.x, -209f, -1332f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -850f, 399f, -400f), vec4<f32>(var_0.b, 1070f, -957f, 232f), vec4<bool>(true, false, true, false))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1106f, 928f, var_2.x), vec4<f32>(var_2.x, -758f, var_2.x, -320f)))))), firstLeadingBit(~var_1));
}

