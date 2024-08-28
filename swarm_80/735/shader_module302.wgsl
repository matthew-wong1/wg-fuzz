struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<Struct_3, 22>;

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<Struct_3, 1>;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    return ~vec4<u32>(u_input.a.x, ~(~(u_input.c << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)] % 32u))), u_input.b.x, 60522u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global3 = array<Struct_3, 1>();
    var var_0 = abs(_wgslsmith_mod_vec4_u32(func_2(~(-1i)), ~(~u_input.b)));
    return _wgslsmith_f_op_f32(min(971f, -1000f));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = !(!vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(false, true, false))));
    var var_1 = 1000f;
    global1 = array<Struct_3, 22>();
    global3 = array<Struct_3, 1>();
    let var_2 = Struct_2(Struct_1(vec2<u32>(10593u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 37510u), 4294967295u >> (global0[_wgslsmith_index_u32(4294967295u, 24u)] % 32u)), 24u)]), !(!var_0.yz), u_input.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_1) + vec3<f32>(arg_1, arg_0, 640f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, -561f, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, arg_1, arg_1), vec3<f32>(-1000f, -196f, 1623f))) * vec3<f32>(-853f, arg_1, 1792f)), (true & var_0.x) & false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(738f, 803f))))));
    return _wgslsmith_f_op_f32(-var_2.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(_wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f - -1036f) - -597f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14906u, 24u)], 24u)], 22u)], vec2<bool>(false, true), Struct_1(vec2<u32>(13896u, 24159u), vec2<bool>(true, true), global0[_wgslsmith_index_u32(8543u, 24u)], vec3<f32>(378f, -1429f, -1963f), 710f), u_input.b.yx)) * 1082f)))), -828f));
    global3 = array<Struct_3, 1>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(55961u, 22u)], vec2<bool>(false, true), Struct_1(u_input.b.zz, vec2<bool>(true, true), 0u, vec3<f32>(848f, 1109f, 124f), -591f), u_input.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 21u)], 142f, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u, 63242u), false, -656f), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(u_input.a, vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec3<f32>(1571f, 601f, 446f), -841f), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.b.zz))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(284f * 244f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1991f * -1436f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(min(-384f, -1006f)))))));
    var var_2 = true;
    let var_3 = ~(~(u_input.b.zw >> (vec2<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 24u)], 0u, 4294967295u), 52452u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, 44352i)), ~14098i), 1i, ~(i32(-1i) * -29983i), ~(39231i >> (global0[_wgslsmith_index_u32(29792u, 24u)] % 32u))), -abs(-vec4<i32>(25744i, 2147483647i, 20205i, 17180i))));
}

