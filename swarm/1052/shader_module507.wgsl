struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(42074u, 16225u, 72415u), vec3<u32>(29642u, 4260u, 57159u), vec3<u32>(1u, 56425u, 4294967295u), vec3<u32>(1u, 0u, 7604u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 48325u, 37610u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 82417u), vec3<u32>(26817u, 1u, 0u), vec3<u32>(4294967295u, 51424u, 19773u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(15096u, 9390u, 4294967295u));

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: Struct_2 = Struct_2(false, vec3<bool>(false, false, true), vec2<f32>(1133f, 762f), vec2<bool>(true, true));

var<private> global3: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global4: vec3<f32> = vec3<f32>(874f, -556f, 1384f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> bool {
    global4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) - global4.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.c.x - 1000f))))), global4.x);
    return !(!(38449i != (-1i ^ u_input.e)));
}

fn func_2() -> Struct_3 {
    global2 = Struct_2(true, global2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_div_f32(-1160f, global4.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(362f)) * _wgslsmith_div_f32(global2.c.x, global2.c.x))), -1000f), !global2.d);
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
    var var_1 = Struct_2(true, vec3<bool>(false, select(all(global2.b), true, func_3(vec4<i32>(-21014i, -2147483647i, 7281i, -2147483647i), abs(4343i))), true), vec2<f32>(868f, 1000f), select(vec2<bool>(true, ~u_input.d >= -u_input.e), global2.b.xy, any(select(global2.b.yx, global2.b.zy, global2.d.x)) | global2.d.x));
    return Struct_3(Struct_2(false, global3[_wgslsmith_index_u32(~(min(var_0.x, 18445u) & _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), 3u)], global2.c, vec2<bool>(false && (38784u <= u_input.a.x), var_1.b.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = func_2();
    global2 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(328f * 1628f), _wgslsmith_f_op_f32(2283f - var_0.a.c.x)), var_0.a.c.x), arg_1.a, arg_1.a, _wgslsmith_f_op_f32(floor(-1000f)))));
    let var_2 = var_1.x;
    let var_3 = ~(~(~max(~vec3<i32>(1i, u_input.e, u_input.e), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -6592i), vec3<i32>(u_input.b, u_input.e, -1i)))));
    return _wgslsmith_add_u32(~(~31148u), _wgslsmith_div_u32(~55765u, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, 915f, -520f) * vec4<f32>(-1100f, global4.x, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1804f, 506f, global2.c.x, global2.c.x), vec4<f32>(global2.c.x, 1000f, global2.c.x, global2.c.x)))))));
    global1 = array<vec3<u32>, 6>();
    global3 = array<vec3<bool>, 3>();
    global2 = Struct_2(false, !global2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, var_0.x) * _wgslsmith_f_op_vec2_f32(-var_0.yx)) - _wgslsmith_f_op_vec2_f32(var_0.xy - vec2<f32>(global4.x, var_0.x))), global4.yz), vec2<bool>(global2.d.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1861f, _wgslsmith_f_op_f32(global4.x * 717f), _wgslsmith_f_op_f32(-218f + 769f)), var_0.wxy, select(!global3[_wgslsmith_index_u32(42378u, 3u)], !vec3<bool>(global2.b.x, true, false), true)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x) | _wgslsmith_mult_u32(45843u, u_input.a.x), _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), ~u_input.a.x)), min(~(~u_input.a.x), min(4294967295u, _wgslsmith_clamp_u32(u_input.c.x, 121279u, 0u)))), ~(~(u_input.e << (~1u % 32u))), ~(~func_1(Struct_2(global2.d.x, vec3<bool>(global2.a, false, false), var_0.zy, global2.d), Struct_1(global4.x), global2.d) << (select(u_input.a.x, _wgslsmith_add_u32(8415u, 67785u), global2.b.x | true) % 32u)), u_input.d);
}

