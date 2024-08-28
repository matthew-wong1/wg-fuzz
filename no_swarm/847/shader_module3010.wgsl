struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f * 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, 635f))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_div_u32(27883u, 51403u);
    global1 = array<vec2<i32>, 1>();
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~(u_input.a >> (u_input.a % vec4<u32>(32u)))), ~(~(~u_input.a))), 29u)], !(!vec3<bool>(arg_0 | false, arg_0, all(vec3<bool>(arg_0, false, arg_0)))), vec4<f32>(_wgslsmith_div_f32(-140f, 161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) + 303f), _wgslsmith_f_op_f32(abs(-549f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1000f) + 308f), 1107f))));
    let var_2 = any(!var_1.a.d.xxz);
    global0 = array<Struct_2, 29>();
    return var_1.a.b.x;
}

fn func_2() -> StorageBuffer {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-41636i ^ _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 8059i)), vec2<i32>(86669i, 2147483647i)), func_3((u_input.a.x >= u_input.a.x) | true), ~1i), 1i, _wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(i32(-1i) * -59323i, 0i)), 24043i));
    var var_1 = 530f;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], select(!vec3<bool>(false, any(vec3<bool>(true, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, 2147483647i <= var_0.x, false), true), -2735i != -func_3(true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -1013f, 299f, -487f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2082f, -1006f, -1566f, 1257f)))))))));
    return StorageBuffer(vec2<u32>(firstTrailingBit(~var_2.a.c >> (4294967295u % 32u)), var_2.a.c), var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global1 = array<vec2<i32>, 1>();
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))));
    global0 = array<Struct_2, 29>();
    let var_1 = vec2<bool>(true, true);
    global1 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = func_2();
}

