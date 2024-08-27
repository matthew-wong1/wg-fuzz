struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: array<vec2<u32>, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<vec2<bool>, 23>();
    var var_0 = firstTrailingBit(~vec3<u32>(~min(u_input.a, 22975u), ~u_input.a, 1u));
    global3 = array<vec2<u32>, 18>();
    let var_1 = Struct_2(false, 9620i >> ((reverseBits(~u_input.a) << (14121u % 32u)) % 32u), Struct_1(1139f, true, vec2<f32>(933f, _wgslsmith_f_op_f32(ceil(global0.c.a)))));
    global1 = ~0u;
    return select(select(!vec3<bool>(var_0.x > 33644u, arg_0.b, any(vec4<bool>(var_1.a, var_1.a, var_1.c.b, true))), vec3<bool>(true, !any(vec3<bool>(true, false, true)), arg_0.b), true && global0.c.b), vec3<bool>(!(!(!var_1.c.b)), true, !(!var_1.a)), true);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(global0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f - global0.c.c.x)));
    global3 = array<vec2<u32>, 18>();
    global1 = max(29549u, ~0u);
    global1 = 5567u;
    return Struct_2(false, global0.b, global0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.c.c.x), global0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a, -1500f)) - vec2<f32>(1f, 1f))))));
    global2 = array<vec2<bool>, 23>();
    let var_2 = !vec3<bool>(u_input.d > _wgslsmith_mult_i32(firstLeadingBit(u_input.b.x), global0.b ^ 2147483647i), true, all(vec3<bool>(true, true, !var_1.b)));
    var_1 = global0.c;
    return func_3(!(!func_2(global0.c)), global0.c.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2.b & _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(-global0.b, arg_2.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.a, -898f)) * -1000f), global0.c.c.x, _wgslsmith_f_op_f32(abs(944f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, _wgslsmith_f_op_f32(arg_2.c.a * 836f), 1106f)))));
    let var_2 = arg_2.c.b;
    let var_3 = 61557i;
    return ~((_wgslsmith_sub_i32(2147483647i, 2147483647i) & _wgslsmith_mod_i32(countOneBits(var_3), ~2147483647i)) >> (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-634f))), any(!(!select(vec4<bool>(global0.a, false, global0.a, false), vec4<bool>(true, global0.a, true, global0.c.b), false))), vec2<f32>(-830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(700f, global0.c.a))))));
    var_0 = global0.c;
    var var_1 = vec4<i32>(-(~global0.b), max(-21149i, 43715i), _wgslsmith_mult_i32(~global0.b >> (~(~63337u) % 32u), func_4(func_1(), u_input.a, func_1())), _wgslsmith_div_i32(abs(0i), global0.b));
    let var_2 = Struct_2(!(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), ~global3[_wgslsmith_index_u32(4294967295u, 18u)]) < _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(u_input.a, 0u))), 1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1645f, _wgslsmith_f_op_f32(-global0.c.c.x)))), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), global0.c.a), _wgslsmith_f_op_f32(func_1().c.c.x - -893f))));
    let var_3 = -1814f;
    global1 = 0u;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3, -882f, -1631f, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1418f, var_3, 416f, -566f))), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, -1155f)), global0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1591f), var_3))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c.a, -2285f, var_2.c.c.x, 367f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(440f, global0.c.a, -1322f, -730f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1533f, var_0.a, -1188f) * vec4<f32>(-1220f, -1000f, var_3, -691f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(func_1().c.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.c.x), _wgslsmith_f_op_f32(trunc(110f))), func_3(func_2(Struct_1(var_3, false, var_0.c)), _wgslsmith_f_op_f32(-var_0.c.x)).c.c)), !vec2<bool>(!var_0.b, true))), min(75159u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1113f, var_3, var_4.x, _wgslsmith_f_op_f32(global0.c.c.x - _wgslsmith_f_op_f32(-var_4.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, var_4.x, 1000f, 626f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, var_0.c.x, global0.c.c.x, 402f)), !var_0.b)))), ~(~u_input.a));
}

