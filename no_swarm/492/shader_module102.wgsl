struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: i32,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec4<bool>, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: i32, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1014f)));
    let var_1 = Struct_1(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0))))));
    let var_3 = arg_1;
    var var_4 = 1152f;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = firstTrailingBit(73699u);
    var var_1 = _wgslsmith_div_vec3_u32(u_input.a, u_input.a);
    let var_2 = Struct_5(vec2<bool>(true, true), Struct_4(-46777i), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-562f, -329f, -1132f, _wgslsmith_div_f32(-859f, -157f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1328f, 1000f, -382f, -123f))))))), Struct_3(Struct_2(var_1.x, select(any(arg_1.wyz), true, !arg_1.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(892f, 560f, -1000f))))), ~u_input.a.x, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, arg_0.a, arg_0.a), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, 80151u)))), ~arg_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x & var_1.x, 1u), u_input.a.yx), Struct_2(abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, var_1.x)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, -1901f, 685f) + vec3<f32>(-390f, -680f, -168f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, -357f, 883f))), ~abs(arg_0.a), Struct_1(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1332f, -772f, -344f, 162f)))));
    global0 = -1000f;
    let var_3 = Struct_4(1i);
    return var_2.e.d;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(func_3(Struct_1(u_input.a.x), !vec4<bool>(true, false, func_2(vec4<i32>(-30340i, -4726i, -29631i, -2147483647i), Struct_4(1i), 1i, vec3<i32>(-12426i, -2147483647i, 0i)), true), i32(-1i) * -(i32(-1i) * -1i)), u_input.a.x, ~firstLeadingBit(u_input.a.zx), Struct_2(~u_input.a.x, true && select(func_3(Struct_1(u_input.a.x), vec4<bool>(true, true, false, true), 35133i).b, true, u_input.a.x == 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(907f)), _wgslsmith_f_op_f32(f32(-1f) * -1419f), -638f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-491f, 1000f, 271f), vec3<f32>(1125f, -252f, 624f))), vec3<f32>(-1244f, 255f, 1830f))), max(min(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))), abs(select(0u, 56885u, true))), Struct_1(_wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1510f), 2007f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(729f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1807f * -1311f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(793f * -628f))), -248f)), func_3(func_3(func_3(Struct_1(1154u), global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i).e, vec4<bool>(false, true, true, false), _wgslsmith_div_i32(2147483647i, 31493i)).e, global1[_wgslsmith_index_u32(min(8456u, 4294967295u), 26u)], _wgslsmith_clamp_i32(select(-29422i, 0i, false), -2147483647i, max(2147483647i, -14096i))).c.x));
    return Struct_4(10934i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<bool>, 26>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1306f + _wgslsmith_f_op_f32(f32(-1f) * -900f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) * _wgslsmith_f_op_f32(f32(-1f) * -720f)))) + func_3(func_3(func_3(func_3(Struct_1(31172u), global1[_wgslsmith_index_u32(4294967295u, 26u)], -40510i).e, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), ~(-68921i)).e, global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, var_0.a), vec3<i32>(5838i, var_0.a, var_0.a)) >> (u_input.a.x % 32u)).e, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x)) & ~u_input.a.x, 26u)], abs(func_1().a)).c.x);
    global1 = array<vec4<bool>, 26>();
    let var_1 = firstTrailingBit(countOneBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<i32>(-2147483647i, 2147483647i << (u_input.a.x % 32u), -var_0.a, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1053f * -600f) - 873f)))), u_input.a.zy, _wgslsmith_f_op_f32(f32(-1f) * -141f), u_input.a);
}

