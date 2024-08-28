struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(0u);

var<private> global1: array<Struct_3, 8>;

var<private> global2: Struct_1;

var<private> global3: Struct_4;

var<private> global4: array<u32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-193f, 1f), global2.a, !vec2<bool>(false || global2.c.x, true))), global2.b, !global2.c);
    global2 = var_0;
    var var_1 = !vec2<bool>(false, !var_0.c.x);
    global4 = array<u32, 28>();
    global1 = array<Struct_3, 8>();
    return true;
}

fn func_2() -> vec4<bool> {
    global1 = array<Struct_3, 8>();
    return !(!vec4<bool>(!(!global2.c.x), !func_3(u_input.b.x, Struct_4(global0.a)), global2.c.x, any(select(global2.c.wzw, global2.c.zxw, global2.c.x))));
}

fn func_1() -> f32 {
    global1 = array<Struct_3, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-global2.b.x));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(global2.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1665f, -1000f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-104f, _wgslsmith_div_f32(-479f, var_0.a)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(-1435f, var_0.a)), vec2<f32>(610f, global2.b.x))))), func_2());
    let var_1 = select(vec3<bool>(true, true, _wgslsmith_div_u32(~global3.a, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(81170u, 29453u, global4[_wgslsmith_index_u32(u_input.b.x, 28u)]), 28u)]) > min(4294967295u, _wgslsmith_add_u32(global3.a, global4[_wgslsmith_index_u32(10964u, 28u)]))), vec3<bool>(true, true, true), global2.c.zxx);
    global1 = array<Struct_3, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))) * _wgslsmith_f_op_f32(floor(global2.a.x))) < _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.x))));
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), -1603f) * global2.b), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * vec2<f32>(global2.a.x, 1335f)) - global2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.a.x)), global2.b.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b - global2.b)))), global2.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(-319f, global2.a.x)) + vec2<f32>(899f, global2.b.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, -1290f)), _wgslsmith_f_op_vec2_f32(-global2.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1765f))), global2.b.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(425f, global2.a.x))))), !global2.c);
    let var_2 = 14949i;
    var var_3 = Struct_1(vec2<f32>(-1000f, var_1.a.x), var_1.b, func_2());
    global0 = Struct_4(~(~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~29024u, global4[_wgslsmith_index_u32(4294967295u, 28u)] << (u_input.b.x % 32u)), 28u)]));
    var var_4 = 2216u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f + global2.a.x)), -170f), global2.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.b - global2.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(663f, global2.b.x), var_3.b, true)), var_3.c.x))))), ~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.a), u_input.d) & -u_input.d)));
}

