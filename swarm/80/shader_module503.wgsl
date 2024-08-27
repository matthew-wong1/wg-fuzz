struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(14693u, vec2<f32>(102f, 1091f));

var<private> global1: array<bool, 22>;

var<private> global2: array<i32, 12> = array<i32, 12>(-12829i, -5202i, i32(-2147483648), -92599i, 0i, -104678i, 18443i, -11324i, 16551i, -40154i, -1i, i32(-2147483648));

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<bool>(true, false, true), 1i, 21426i, vec2<f32>(1567f, 1000f)), Struct_2(vec3<bool>(false, true, false), -1i, 34985i, vec2<f32>(2307f, -501f)), Struct_2(vec3<bool>(true, false, false), 3355i, 1i, vec2<f32>(-1026f, 704f)), Struct_2(vec3<bool>(false, false, true), i32(-2147483648), -1i, vec2<f32>(-1496f, 502f)), Struct_2(vec3<bool>(true, false, true), 2147483647i, 21030i, vec2<f32>(-1000f, 1642f)), Struct_2(vec3<bool>(true, true, true), -31444i, 1i, vec2<f32>(1594f, 636f)), Struct_2(vec3<bool>(true, true, false), -13297i, 38074i, vec2<f32>(-360f, -439f)));

var<private> global4: array<f32, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(~8515u, global0.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 20642u, global0.a), vec3<u32>(57642u, 38448u, 51468u)), ~(~global0.a), ~_wgslsmith_div_u32(u_input.a, 0u)), vec4<u32>(42485u, ~0u, 1u, abs(4294967295u))), 7u)];
    global1 = array<bool, 22>();
    let var_1 = ~(-1i);
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    return _wgslsmith_mod_i32(abs(-104266i), max(~12409i, _wgslsmith_div_i32(var_1, var_1))) ^ global2[_wgslsmith_index_u32(~(~u_input.b), 12u)];
}

fn func_1() -> f32 {
    var var_0 = Struct_2(select(vec3<bool>(!global1[_wgslsmith_index_u32(8035u, 22u)] != false, true, global1[_wgslsmith_index_u32(0u, 22u)]), !vec3<bool>(false, global0.a <= 3148u, false), global1[_wgslsmith_index_u32(global0.a, 22u)]), _wgslsmith_sub_i32(reverseBits(2147483647i ^ _wgslsmith_mult_i32(u_input.d, global2[_wgslsmith_index_u32(global0.a, 12u)])), 20219i), u_input.d, global0.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), 2323f, global4[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(-global0.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, var_0.d.x, global4[_wgslsmith_index_u32(120621u, 31u)], 1879f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_0.d.x, 577f, global0.b.x)))))));
    var var_2 = (~abs(-2147483647i) ^ ~_wgslsmith_mult_i32(func_2(), global2[_wgslsmith_index_u32(global0.a, 12u)])) & 54010i;
    let var_3 = vec4<bool>(false, false, false, false);
    var var_4 = Struct_1(global0.a, var_0.d);
    return -1000f;
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global4 = array<f32, 31>();
    global1 = array<bool, 22>();
    global2 = array<i32, 12>();
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d, ~(-1i)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -15675i, -14995i), vec3<i32>(0i, u_input.d, -2147483647i)), 1i) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-27439i, u_input.d, u_input.d, -1i), vec4<i32>(global2[_wgslsmith_index_u32(8927u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], 30133i, global2[_wgslsmith_index_u32(20415u, 12u)])), global2[_wgslsmith_index_u32(min(34399u, 50938u), 12u)])), ~(-(i32(-1i) * -global2[_wgslsmith_index_u32(19284u, 12u)])));
    var var_1 = global3[_wgslsmith_index_u32(1u, 7u)];
    return _wgslsmith_f_op_vec2_f32(-global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(0u, u_input.b, u_input.a, 42354u) >> (~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(0u, u_input.a, u_input.c), u_input.c, u_input.c & u_input.a) % vec4<u32>(32u)));
    global0 = Struct_1(var_0.x, vec2<f32>(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.x, ~u_input.a), 31u)], _wgslsmith_f_op_f32(func_1())));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(56968u, 3425u), 7u)];
    var var_2 = global2[_wgslsmith_index_u32(0u, 12u)];
    var_2 = global2[_wgslsmith_index_u32(global0.a, 12u)];
    var var_3 = select(_wgslsmith_mod_i32(0i, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.xxy, vec3<u32>(61614u, 30183u, 13999u)), 12u)]), ~2147483647i, !var_1.a.x);
    var var_4 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(42727u, global0.b))))) * var_1.d));
    var var_5 = Struct_1(var_0.x, _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(global0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, 216f, -1127f, var_1.d.x))), 9490i, 40122i, _wgslsmith_div_i32(1i, var_1.b), firstLeadingBit(var_1.c));
}

