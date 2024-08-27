struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(3140u, 40830u)), Struct_1(vec2<u32>(1333u, 4294967295u)), Struct_1(vec2<u32>(22627u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(43810u, 16254u)), Struct_1(vec2<u32>(4294967295u, 2827u)), Struct_1(vec2<u32>(4294967295u, 92717u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 68015u)), Struct_1(vec2<u32>(29083u, 4294967295u)), Struct_1(vec2<u32>(0u, 39505u)), Struct_1(vec2<u32>(88592u, 1039u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(8014u, 4294967295u)), Struct_1(vec2<u32>(26923u, 50553u)), Struct_1(vec2<u32>(3570u, 0u)), Struct_1(vec2<u32>(4294967295u, 79946u)), Struct_1(vec2<u32>(81877u, 0u)), Struct_1(vec2<u32>(1u, 1180u)), Struct_1(vec2<u32>(22876u, 4294967295u)));

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = !(!(!(true && any(vec3<bool>(false, false, false)))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~4294967295u, 41091u), arg_0.a.a.x), _wgslsmith_mod_u32(0u, ~select(arg_0.a.a.x, u_input.c, var_0))), 23u)];
    let var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    let var_4 = Struct_2(_wgslsmith_mult_i32(-13307i, -_wgslsmith_div_i32(-19756i, -41567i)), var_2.a, -(~(~vec3<i32>(u_input.a.x, 24563i, u_input.a.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(63540i, u_input.d.x, u_input.a.x), -vec3<i32>(u_input.d.x, u_input.a.x, -2147483647i)), -31747i, u_input.d.x));
    return _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-542f)))), -414f, true))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = 1000f;
    let var_1 = !(!(!(arg_1 && false)));
    global0 = array<vec2<u32>, 26>();
    global1 = array<Struct_1, 23>();
    let var_2 = Struct_4(Struct_1(vec2<u32>(1u, ~0u)));
    return Struct_3(var_2.a, all(vec2<bool>(false, any(vec2<bool>(arg_1, true)) & all(vec4<bool>(arg_1, var_1, true, false)))), vec4<f32>(var_0, -1650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(global0[_wgslsmith_index_u32(arg_2.x, 26u)])))) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0))), arg_0));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    global0 = array<vec2<u32>, 26>();
    var var_0 = _wgslsmith_f_op_f32(-122f - 197f);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(arg_0.c.yxx))));
    let var_2 = Struct_1(arg_0.a.a);
    var var_3 = Struct_1(~var_2.a);
    return Struct_4(var_2);
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-664f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1218f)))), true, ~global0[_wgslsmith_index_u32(1u, 26u)]), ~(~vec3<u32>(0u, u_input.b.x, 24946u) << (~(~vec3<u32>(u_input.b.x, 0u, u_input.c)) % vec3<u32>(32u))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) - _wgslsmith_div_f32(-1000f, -557f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 468f))), false, vec2<u32>(u_input.c, func_2(207f, false, vec2<u32>(u_input.b.x, u_input.c)).a.a.x & u_input.b.x)), 2147483647i);
    let var_1 = func_2(2096f, any(select(vec3<bool>(arg_0.x, arg_0.x, true & arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, true, arg_0.x), !arg_0.x), !arg_0.x)), vec2<u32>(var_0.a.a.x, _wgslsmith_sub_u32(reverseBits(1u), u_input.c)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f + var_1.c.x)))) + 1439f);
    let var_3 = var_2;
    let var_4 = func_2(1000f, true, var_0.a.a).a;
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true), func_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false)))), func_1(vec4<bool>(true, true, true, true)));
    global2 = u_input.c;
    let var_1 = abs(reverseBits(u_input.d));
    var var_2 = ~countOneBits(-max(u_input.d.wz, vec2<i32>(u_input.d.x, 2147483647i) | var_1.xx));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(697f, -280f, -753f) + vec3<f32>(1033f, 1110f, -149f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(436f, -836f, 409f) + vec3<f32>(-1000f, -1703f, 561f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global1 = array<Struct_1, 23>();
    global2 = ~(~_wgslsmith_clamp_u32(127362u, u_input.c, ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, u_input.a.x, 11021i, u_input.d.x), ~vec2<u32>(40208u, ~(~u_input.b.x)), -select(-2147483647i, ~0i | var_1.x, _wgslsmith_f_op_f32(-var_3.x) < var_3.x), _wgslsmith_f_op_f32(floor(-1000f)), abs(abs(u_input.b)) << (u_input.b % vec2<u32>(32u)));
}

