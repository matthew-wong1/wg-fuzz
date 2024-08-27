struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = ~u_input.c.x;
    var var_1 = (-_wgslsmith_sub_i32(-u_input.c.x, u_input.c.x ^ var_0) >> (_wgslsmith_mod_u32(1u, (12651u >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u)) % 32u)) & 16093i;
    var var_2 = !(!(!(!vec4<bool>(arg_0, false, false, false))));
    let var_3 = var_2.x;
    let var_4 = Struct_1(~(-((u_input.c.xx | vec2<i32>(0i, var_0)) & ~u_input.c.yx)), u_input.c.yx);
    return var_2.wz;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b) & ~u_input.b, 18u)];
    let var_1 = -35502i;
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 18u)];
    return 4294967295u << (~4294967295u % 32u);
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_add_u32(min(u_input.a.x ^ func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), func_2(false), global0[_wgslsmith_index_u32(~37555u, 18u)], vec4<i32>(-19113i, 0i, u_input.c.x, u_input.c.x)), u_input.b), _wgslsmith_div_u32(u_input.b, countOneBits(1u)));
    let var_1 = global0[_wgslsmith_index_u32(135935u & ~select(u_input.a.x, var_0, select(false, true, true)), 18u)];
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f - 1416f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1792f, -358f) * 936f)), _wgslsmith_f_op_f32(floor(-320f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = max(1u, ~(~u_input.b));
    var_0 = arg_1;
    let var_1 = (~(~vec3<u32>(4294967295u, u_input.b, u_input.a.x)) & vec3<u32>(_wgslsmith_add_u32(select(49804u, arg_1, true), _wgslsmith_mult_u32(1u, arg_1)), 0u, 7257u)) >> (vec3<u32>(firstLeadingBit(arg_1), u_input.a.x, arg_1) % vec3<u32>(32u));
    var var_2 = min(vec2<u32>(~1u, ~firstLeadingBit(u_input.b)), vec2<u32>(firstTrailingBit(var_1.x | var_1.x), _wgslsmith_add_u32(0u, u_input.b))) & ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1, u_input.b), vec2<u32>(0u, 58233u)));
    var var_3 = max(u_input.c.x, reverseBits(14757i));
    return global0[_wgslsmith_index_u32(~(~abs(1u)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, 269f, -1667f, 1928f) - vec4<f32>(-571f, -996f, 838f, 1576f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-1590f * -1235f), -395f, -173f))), u_input.b);
    var var_1 = !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(func_2(true).x, false, false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 1000f, 122f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2379f, -124f, -1000f, -1000f)))) * vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-611f, -397f, -1405f, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1126f, -200f, 1109f, 1743f), vec4<f32>(517f, -1523f, -537f, -361f), true))))));
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(var_2.x)), 1871f)), abs(~u_input.a.x));
    var_1 = select(select(select(!(!vec4<bool>(var_1.x, true, var_1.x, false)), select(select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, false, var_1.x, false), true), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, true, var_1.x, true), var_1.x)), select(select(vec4<bool>(var_1.x, false, var_1.x, true), !vec4<bool>(true, var_1.x, true, false), true), !vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), 14949i != var_0.a.x)), select(vec4<bool>(u_input.b < u_input.a.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), any(var_1.zx), var_1.x), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x)), select(select(select(!vec4<bool>(true, var_1.x, true, true), !vec4<bool>(var_1.x, false, var_1.x, true), var_1.x & var_1.x), select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false), var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true)), var_1.x | !var_1.x), !vec4<bool>(true, true, all(var_1.zzz), false), vec4<bool>(var_1.x, true, true, all(!vec4<bool>(true, true, var_1.x, false)))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, u_input.c);
}

