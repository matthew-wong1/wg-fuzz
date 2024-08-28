struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 2>;

var<private> global4: vec3<u32> = vec3<u32>(28562u, 44089u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-384f, 2032f), _wgslsmith_div_f32(global1.a, global2.a.a))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_div_f32(global2.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1213f)), _wgslsmith_div_f32(global2.a.a, global2.a.b.x)))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-355f, 2415f) - _wgslsmith_f_op_f32(global2.a.a - global0.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(84919u, 45001u), 2u)];
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, global0.x, var_1, var_0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, 121f, global0.x, global0.x) + vec4<f32>(-108f, -1000f, 745f, global0.x)) - vec4<f32>(global1.a, global2.a.a, global2.a.a, -1083f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(1652f)), _wgslsmith_f_op_f32(1000f + global0.x), _wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_f32(var_0.x * global1.a))))), vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, -414f))), var_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    global2 = global3[_wgslsmith_index_u32((u_input.c.x << (1u % 32u)) >> ((_wgslsmith_sub_u32(global4.x, ~(arg_0 | 9729u)) >> (1u % 32u)) % 32u), 2u)];
    return _wgslsmith_f_op_f32(select(2386f, _wgslsmith_div_f32(var_2.a.b.x, 1459f), var_2.a.c.x));
}

fn func_2() -> vec2<f32> {
    let var_0 = 1461f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) + _wgslsmith_f_op_f32(global2.a.a * -2264f)) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.a.a, 896f)))));
    let var_2 = global3[_wgslsmith_index_u32(~u_input.e, 2u)];
    var var_3 = var_2.a.d.zx;
    var_1 = true;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_2.a.b, var_2.a.b))))));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = -(~(-_wgslsmith_mod_vec3_i32(min(u_input.a, vec3<i32>(0i, u_input.a.x, u_input.b.x)), firstTrailingBit(u_input.a))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2()))) * global2.a.b);
    var var_1 = vec3<bool>(global2.a.e.x, false, true);
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(-global2.a.b.x) < global1.a, any(select(!select(global2.a.c, vec3<bool>(global2.a.e.x, false, global2.a.e.x), global2.a.e.x), vec3<bool>(true, all(vec2<bool>(false, true)), !global2.a.c.x), !global2.a.e)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(-1151f, _wgslsmith_f_op_f32(-global2.a.a))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_div_f32(global0.x, 1316f)), _wgslsmith_f_op_f32(-var_3.a), global0.x) + vec3<f32>(727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.b.x)) - 1622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, global1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(12241u))) * vec3<f32>(-162f, _wgslsmith_div_f32(1149f, 410f), global1.a))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), 1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_u32(1u, global4.x))).x)));
    let var_1 = vec3<u32>(15990u, abs(global4.x), 60840u);
    let var_2 = 103735u;
    global3 = array<Struct_3, 2>();
    let var_3 = Struct_4(-940f);
    let x = u_input.a;
    s_output = StorageBuffer((var_1 ^ _wgslsmith_div_vec3_u32(var_1, _wgslsmith_mult_vec3_u32(var_1, vec3<u32>(1u, 21491u, var_1.x)))) >> (~(~vec3<u32>(global4.x, var_1.x, u_input.c.x)) % vec3<u32>(32u)), var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1937f)))));
}

