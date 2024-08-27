struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(false), Struct_1(false), 0u, false), Struct_2(Struct_1(false), Struct_1(false), 1u, true), Struct_2(Struct_1(false), Struct_1(true), 21257u, false), Struct_2(Struct_1(false), Struct_1(false), 1u, false), Struct_2(Struct_1(true), Struct_1(true), 4294967295u, true), Struct_2(Struct_1(false), Struct_1(false), 3795u, false), Struct_2(Struct_1(false), Struct_1(false), 18043u, false), Struct_2(Struct_1(true), Struct_1(false), 1u, true), Struct_2(Struct_1(false), Struct_1(true), 28265u, false), Struct_2(Struct_1(false), Struct_1(true), 0u, false), Struct_2(Struct_1(true), Struct_1(false), 0u, true), Struct_2(Struct_1(true), Struct_1(false), 85821u, true), Struct_2(Struct_1(true), Struct_1(false), 0u, true), Struct_2(Struct_1(false), Struct_1(true), 45422u, true), Struct_2(Struct_1(false), Struct_1(true), 0u, false), Struct_2(Struct_1(true), Struct_1(false), 4294967295u, false), Struct_2(Struct_1(true), Struct_1(false), 9852u, true), Struct_2(Struct_1(false), Struct_1(false), 4294967295u, true), Struct_2(Struct_1(true), Struct_1(true), 47784u, true), Struct_2(Struct_1(true), Struct_1(false), 31353u, true), Struct_2(Struct_1(true), Struct_1(false), 2537u, true), Struct_2(Struct_1(true), Struct_1(true), 4294967295u, true), Struct_2(Struct_1(true), Struct_1(false), 4294967295u, true));

var<private> global2: array<vec4<u32>, 20>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.a.yy, select(~firstLeadingBit(reverseBits(vec2<u32>(57089u, 4294967295u))), u_input.a.xy, true));
    var var_1 = Struct_2(Struct_1(!global0.a.a), global0.b, global0.c, false);
    var_1 = global1[_wgslsmith_index_u32(10346u >> (select(abs(_wgslsmith_add_u32(select(60403u, var_0.x, var_1.d), 31934u)), 70160u, global0.a.a) % 32u), 23u)];
    let var_2 = Struct_2(global0.b, Struct_1((~var_0.x & var_1.c) <= ((var_1.c ^ 26929u) & ~var_1.c)), var_1.c, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(trunc(arg_0.a.x))) > arg_0.a.x);
    var var_3 = vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_f32(round(117f))), arg_0.a.x, _wgslsmith_div_f32(-944f, _wgslsmith_f_op_f32(arg_0.a.x * 1038f)));
    return ~(1u << (firstTrailingBit(~abs(var_2.c)) % 32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec4<f32> {
    var var_0 = arg_0.xyz;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 269f), 974f)))) + _wgslsmith_div_f32(-1202f, -1107f));
    global0 = Struct_2(global0.a, Struct_1(1u <= func_3(Struct_3(vec4<f32>(var_1, -966f, -342f, 422f)))), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, ~global0.c << (~global0.c % 32u))), true);
    var var_2 = select(vec4<i32>(-_wgslsmith_sub_i32(~u_input.c.x, ~u_input.d.x), min(firstTrailingBit(countOneBits(u_input.b)), _wgslsmith_dot_vec4_i32(-u_input.d, u_input.d)), u_input.d.x, u_input.b), u_input.d, vec4<bool>(true, !(_wgslsmith_f_op_f32(-var_1) == _wgslsmith_f_op_f32(trunc(arg_1))), any(!select(arg_0.yxx, vec3<bool>(true, false, var_0.x), vec3<bool>(false, global0.b.a, true))), global0.d || !global0.b.a));
    global1 = array<Struct_2, 23>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 306f) - _wgslsmith_f_op_f32(select(arg_1, var_1, false))))), _wgslsmith_f_op_f32(ceil(arg_1)), -942f, _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> bool {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(reverseBits(_wgslsmith_add_i32(-1i, 1i)), -23086i);
    var_0 = vec2<i32>(u_input.b, var_0.x);
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.x, -525f), arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(-242f - arg_0), _wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(any(vec2<bool>(global0.a.a, true)), all(vec4<bool>(global0.a.a, global0.b.a, global0.a.a, true)), !global0.a.a, global0.d), arg_0)).x));
    let var_2 = Struct_1(arg_1.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-854f)) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -2651f))));
    let var_3 = abs(1u);
    return ~(~_wgslsmith_mod_u32(abs(global0.c), _wgslsmith_mod_u32(1u, 39878u))) <= global0.c;
}

fn func_1(arg_0: bool) -> bool {
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    var var_0 = global0.b;
    var var_1 = Struct_1(!(!var_0.a));
    var var_2 = select(vec2<bool>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f * -756f) + 827f), Struct_3(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(global0.b.a, arg_0, arg_0, arg_0), -289f)))), true), select(vec2<bool>(true, any(!vec4<bool>(arg_0, false, false, var_0.a))), !select(!vec2<bool>(true, var_0.a), select(vec2<bool>(false, false), vec2<bool>(global0.d, true), var_0.a), any(vec3<bool>(var_0.a, var_1.a, var_0.a))), select(!(!vec2<bool>(arg_0, arg_0)), vec2<bool>(false, global0.a.a), vec2<bool>(false, var_1.a))), false);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.b.a);
    var var_1 = _wgslsmith_f_op_f32(abs(2348f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(904f, 748f, -1852f, 1552f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 545f, 316f, -643f) - vec4<f32>(-562f, 237f, 326f, 1250f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2663f), _wgslsmith_f_op_f32(select(-1280f, -1917f, global0.d)), 1215f, _wgslsmith_f_op_f32(max(-789f, 1086f))))));
    global2 = array<vec4<u32>, 20>();
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.c.x, 2147483647i, 0i, u_input.b), abs(2147483647i));
}

