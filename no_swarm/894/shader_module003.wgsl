struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 15>();
    var var_0 = Struct_2(~(~vec3<u32>(0u, 0u, 4294967295u) | u_input.b.zyz), !vec2<bool>(!(-2147483647i > u_input.a.x), true), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(274f)) + _wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-397f)), -1962f, true)))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2938i, u_input.a.x, -46327i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), u_input.a), -20386i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 168f, 1f, _wgslsmith_f_op_f32(1f - -466f)), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a, var_0.c.a) + _wgslsmith_f_op_f32(sign(var_0.d.x))), var_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.zx))));
    return -440f;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz, firstTrailingBit(vec2<i32>(41636i, 3109i))) << (vec2<u32>(4294967295u, 4294967295u << (u_input.c.x % 32u)) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, -27792i));
    global0 = array<Struct_3, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 393f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1)))));
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    return global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.yyx << (u_input.c.xzy % vec3<u32>(32u));
    let var_1 = vec3<bool>(all(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), !(!(_wgslsmith_f_op_f32(step(1000f, 1046f)) == _wgslsmith_f_op_f32(f32(-1f) * -439f))), (true && (~u_input.a.x > -2147483647i)) && true);
    global0 = array<Struct_3, 15>();
    var var_2 = func_2(false | (select(true, true, any(vec2<bool>(true, var_1.x))) | true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))), ~1u);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1301f, -518f, -1181f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1110f, 311f, -869f))), select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_1.x, false, var_1.x), var_3))))))), u_input.b.x);
}

