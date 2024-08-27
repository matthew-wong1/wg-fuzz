struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false));

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(1f + 517f)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global0 = !(!(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x) != _wgslsmith_mult_i32(u_input.a.x, 24489i)) | true);
    global2 = array<vec4<bool>, 6>();
    global3 = array<Struct_1, 29>();
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(f32(-1f) * -229f)))));
    global2 = array<vec4<bool>, 6>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1051f, 1572f, true)), _wgslsmith_f_op_f32(-650f * -446f))))));
}

fn func_1() -> u32 {
    global2 = array<vec4<bool>, 6>();
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-55507i, firstTrailingBit(-66637i), -9352i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 7662i) ^ (vec4<i32>(26377i, u_input.a.x, u_input.a.x, -2842i) | vec4<i32>(2147483647i, 4795i, 0i, u_input.b.x))), ~vec4<i32>(36330i, 25596i, 2147483647i, -9187i << (0u % 32u))) & -vec4<i32>(-29733i, -1i, u_input.a.x, u_input.b.x);
    var var_1 = Struct_1(0u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global3[_wgslsmith_index_u32(~var_1.a, 29u)])) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(var_1.a)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1710f, 914f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-839f, -361f)), _wgslsmith_f_op_f32(-1865f + 1000f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, -661f, 1308f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, var_2.x, var_2.x) + vec3<f32>(var_2.x, -578f, -1232f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(737f, -422f, var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1156f, var_2.x, 933f))))), Struct_1(29355u));
    return ~abs(53107u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~func_1(), 29u)];
    global1 = array<vec2<u32>, 10>();
    var_0 = global3[_wgslsmith_index_u32(~(~(~var_0.a)), 29u)];
    var var_1 = abs(2147483647i);
    var_0 = Struct_1(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(49238u, 55854u));
}

