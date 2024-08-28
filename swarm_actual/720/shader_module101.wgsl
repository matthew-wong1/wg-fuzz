struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 2> = array<bool, 2>(false, false);

var<private> global2: array<Struct_4, 14>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> u32 {
    global1 = array<bool, 2>();
    let var_0 = 2147483647i;
    global0 = vec2<u32>(arg_0.a.d, 4213u);
    let var_1 = Struct_3(global3.a, !vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, global3.d), 2u)] | (var_0 >= u_input.b), global1[_wgslsmith_index_u32(arg_2, 2u)]), global3.a.b, reverseBits(~0u));
    global0 = _wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(global0.x, 1u));
    return 121217u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = global3.a.b;
    global2 = array<Struct_4, 14>();
    let var_1 = global3.a.b;
    var var_2 = ~u_input.a.x ^ abs(~func_3(global2[_wgslsmith_index_u32(min(34481u, 27576u), 14u)], select(global3.b, global3.b, global3.b.x), 1u, _wgslsmith_div_f32(global3.a.b, global3.a.b)));
    var_2 = _wgslsmith_mult_u32(global0.x, ~16955u | (countOneBits(u_input.a.x) << (28087u % 32u)));
    return global3.a;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b * global3.c) * _wgslsmith_f_op_f32(-global3.c))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, 348f)), 1000f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(464f, global3.c))))));
    var_1 = var_0.x;
    global3 = Struct_3(func_2(u_input.b), select(vec2<bool>(all(select(vec2<bool>(true, false), global3.b, true)), true | select(true, true, global1[_wgslsmith_index_u32(global0.x, 2u)])), vec2<bool>(u_input.a.x <= 1u, true), select(select(global3.b, global3.b, !global3.b), !(!global3.b), vec2<bool>(true, !global3.b.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1479f)) + global3.a.b)), global3.d);
    let var_2 = vec2<i32>(-18760i, u_input.c);
    return Struct_3(Struct_1(true | !global3.a.a, _wgslsmith_f_op_f32(global3.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f))), global0.x >= u_input.a.x), vec2<bool>(true, var_0.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), global3.c, 21334u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.b, u_input.b, ~(-u_input.b));
    var var_1 = func_1();
    let var_2 = vec2<bool>(!var_1.b.x, var_1.b.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 541f, global3.a.b) - vec3<f32>(-1367f, 1147f, -1951f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, global3.c, -1102f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c * global3.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2647f) - _wgslsmith_f_op_f32(global3.a.b - global3.c))), global3.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b, global3.c, global3.a.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.b, global3.a.b, var_1.a.b), vec3<f32>(global3.c, 2088f, global3.c))), _wgslsmith_div_vec3_f32(vec3<f32>(global3.c, var_1.c, -786f), vec3<f32>(-681f, var_1.c, global3.a.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, -153f, 768f))))))));
    global3 = func_1();
    let var_4 = Struct_5(true, global1[_wgslsmith_index_u32(116258u, 2u)], _wgslsmith_f_op_vec2_f32(select(var_3.yy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.zy), _wgslsmith_f_op_vec2_f32(var_3.xx * var_3.xy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yz)))), select(!(!var_2), func_1().b, func_1().b))), func_1());
    var_1 = Struct_3(Struct_1(false, -633f, any(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global3.b.x, global3.b.x), vec4<bool>(global1[_wgslsmith_index_u32(4633u, 2u)], var_1.a.c, false, true), global0.x != 0u))), var_4.d.b, _wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, min(_wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(41458u, var_4.d.d, global3.d)), 29534u) ^ var_4.d.d, _wgslsmith_add_u32(~(~max(0u, var_4.d.d)), ~(~global3.d)), select(_wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.a.yw, vec2<u32>(~var_1.d, global0.x & 55968u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, func_1().d), ~abs(u_input.a.ww)), var_1.b));
}

