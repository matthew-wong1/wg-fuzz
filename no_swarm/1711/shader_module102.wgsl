struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(45706i, i32(-2147483648)));

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = ~vec3<u32>(~35516u, 4294967295u, ~1u);
    let var_1 = true;
    var_0 = abs(vec3<u32>(_wgslsmith_add_u32(u_input.a | var_0.x, ~(var_0.x >> (var_0.x % 32u))), 0u, var_0.x << (1u % 32u)));
    global2 = array<i32, 15>();
    var var_2 = u_input.d.zy;
    return _wgslsmith_f_op_f32(sign(1788f));
}

fn func_3() -> f32 {
    var var_0 = ~(u_input.d & _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_mod_u32(0u, 4392u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x)), max(u_input.d.x, u_input.d.x), max(u_input.b.x, u_input.a))));
    var var_1 = ~(~(~abs(_wgslsmith_add_i32(-18572i, u_input.c))));
    let var_2 = Struct_1(30306u, (vec2<u32>(_wgslsmith_clamp_u32(34982u, 52762u, var_0.x), u_input.b.x) << (~vec2<u32>(99939u, 0u) % vec2<u32>(32u))) << (~var_0.xw % vec2<u32>(32u)));
    global1 = array<vec4<bool>, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -319f)))));
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<i32>, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) * -373f), 1343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -203f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1496f), all(vec3<bool>(false, false, true)))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(f32(-1f) * -933f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), 802f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(step(-1839f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1616f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.ww * _wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, 1383f))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x)))))));
    var var_2 = Struct_2(_wgslsmith_mult_i32(-global2[_wgslsmith_index_u32((12099u << (1u % 32u)) | ~u_input.d.x, 15u)], abs(3291i)), -_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.e, 53874i), global2[_wgslsmith_index_u32(~u_input.b.x, 15u)]));
    return StorageBuffer(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_0.x - var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-731f, -1264f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

