struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 2518i);

var<private> global2: Struct_1 = Struct_1(false, vec2<u32>(52692u, 0u), true);

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(false, vec2<u32>(1u, 4294967295u), false), Struct_1(true, vec2<u32>(21656u, 4294967295u), true), Struct_1(true, vec2<u32>(1u, 1u), false), Struct_1(false, vec2<u32>(4294967295u, 30712u), false), Struct_1(true, vec2<u32>(0u, 4294967295u), false), Struct_1(false, vec2<u32>(43488u, 1u), false), Struct_1(true, vec2<u32>(1u, 0u), true), Struct_1(false, vec2<u32>(4294967295u, 0u), true), Struct_1(false, vec2<u32>(1u, 1u), true));

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = global0.x;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), max(global2.b.x, global2.b.x)), 11u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1455f);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.x, global1.x, -63248i, -40275i)) & -vec4<i32>(-3695i, -1i, u_input.a, arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x >> (global2.b.x % 32u), global1.x, u_input.a), ~(vec4<i32>(43805i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(13376u, global2.b.x, global2.b.x, 4294967295u) % vec4<u32>(32u))))), global1.x);
    return 615f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = 714f;
    let var_1 = ~arg_1.b;
    global4 = array<Struct_1, 11>();
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_1(u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_3(global1.x, vec4<f32>(arg_0, var_0, var_0, var_0), arg_1.c, global0.x)), _wgslsmith_f_op_f32(func_3(u_input.a, vec4<f32>(var_0, -220f, 1436f, -977f), global0.x, global0.x))), vec4<f32>(-1793f, var_0, var_0, -573f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(-2383f * 568f)), _wgslsmith_f_op_f32(var_0 * -656f), _wgslsmith_f_op_f32(max(arg_0, var_0)), _wgslsmith_f_op_f32(-var_0)))));
    var var_3 = arg_1;
    return 16993u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(783f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(462f - -316f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(func_1(-33625i, -9745i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f))), _wgslsmith_f_op_f32(floor(661f)));
    global1 = ~vec2<i32>(-(i32(-1i) * -2147483647i) | u_input.a, min(u_input.a, 0i));
    let var_1 = select(vec2<u32>(~global2.b.x, 1u), vec2<u32>(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), 1574f)), Struct_1(false, global2.b, global2.c), 23058u), 8355u), global2.c);
    let var_2 = 0u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-361f, var_0.x, 414f) + vec3<f32>(-319f, -1188f, -1228f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-224f, var_0.x, 1834f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(698f, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(abs(-239f)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-589f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global1.x, vec4<f32>(-399f, 1015f, var_0.x, var_0.x), true, global0.x)))), -710f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f * -1494f) - _wgslsmith_f_op_f32(var_0.x * var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1246f, var_0.x)) - _wgslsmith_f_op_f32(ceil(1583f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(1279f, 1f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 2535f, var_0.x), vec4<f32>(var_0.x, 1952f, var_0.x, var_0.x), vec4<bool>(global0.x, global0.x, global0.x, true))))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -551f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, var_0.x, var_0.x, -1202f) - vec4<f32>(var_0.x, var_0.x, 471f, var_0.x))))), ~(~vec4<u32>(var_1.x, 0u, global2.b.x, 0u)) | ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, 51072u, 39159u, var_2), vec4<u32>(var_1.x, var_1.x, 1u, 0u) << (vec4<u32>(var_1.x, 0u, var_1.x, 0u) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) + var_0.x), _wgslsmith_f_op_f32(-1000f * var_0.x), _wgslsmith_f_op_f32(select(-614f, var_0.x, !global2.a | true)), var_0.x), 1151f);
}

