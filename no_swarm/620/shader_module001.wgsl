struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(0u, 4294967295u, 25454u, 41641u, 1u, 25109u, 6155u, 55071u, 52140u, 1u, 5596u, 28858u, 0u, 19186u, 60085u, 4294967295u, 2288u, 97553u, 60757u, 33355u, 0u, 11598u, 1u);

var<private> global1: array<bool, 29>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec2<bool>, 5>;

var<private> global4: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(global4.a.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(185f, 128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) - global4.a.b.x)) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3.a, 675f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(137f, arg_2)), arg_3.b.x)), abs(1u));
    var var_1 = var_0.c;
    var var_2 = ~0u;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(~arg_0, 1u, 27791u))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, u_input.d, 63518u)) << ((vec3<u32>(arg_3.c, var_0.c, 1u) ^ vec3<u32>(66315u, 49782u, 26285u)) % vec3<u32>(32u)), vec3<u32>(global4.a.c, u_input.b, arg_0)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a.c, global0[_wgslsmith_index_u32(u_input.a, 23u)], var_0.c), select(vec3<u32>(12616u, 1u, arg_3.c), vec3<u32>(1707u, arg_0, 28079u), global2.x), select(vec3<u32>(57083u, arg_3.c, 22936u), vec3<u32>(arg_3.c, 1u, 4294967295u), true)))), 5u)];
    var_2 = 4129u;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1142f, arg_2, global4.a.b.x) - vec4<f32>(var_0.b.x, arg_2, 1520f, 158f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-983f, arg_2, global4.a.b.x, global4.a.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-644f, -1145f, var_0.a, -873f), vec4<f32>(-227f, arg_2, global4.a.b.x, 646f)))), vec4<f32>(_wgslsmith_f_op_f32(1597f - -417f), -523f, 608f, _wgslsmith_f_op_f32(644f - arg_2)))), true));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = reverseBits(firstTrailingBit(arg_2) ^ arg_1.x);
    let var_1 = _wgslsmith_f_op_f32(sign(-740f));
    var var_2 = Struct_2(global4.a);
    let var_3 = Struct_2(Struct_1(var_2.a.a, vec3<f32>(141f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global4.a.b.x)), _wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -554f)))), (1u | ~arg_0) << ((4294967295u >> (arg_1.x % 32u)) % 32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global4.a.c << (arg_2 % 32u), 9538u, _wgslsmith_f_op_f32(-global4.a.a), Struct_1(var_1, var_3.a.b, global4.a.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, -928f, var_3.a.a, -1225f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-353f, -345f) + -1270f), -1533f, _wgslsmith_f_op_f32(var_3.a.b.x * _wgslsmith_f_op_f32(floor(global4.a.b.x))), global4.a.a)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3.a.b)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, global4.a.a, var_2.a.a))))))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> vec3<u32> {
    global0 = array<u32, 23>();
    let var_0 = ~global0[_wgslsmith_index_u32(~(~min(_wgslsmith_sub_u32(0u, 0u), arg_1.x)), 23u)];
    global2 = global3[_wgslsmith_index_u32(1u, 5u)];
    global1 = array<bool, 29>();
    let var_1 = Struct_1(global4.a.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global4.a.b)) - _wgslsmith_f_op_vec3_f32(func_2(var_0, _wgslsmith_mult_vec3_u32(vec3<u32>(global4.a.c, global0[_wgslsmith_index_u32(116148u, 23u)], arg_1.x), vec3<u32>(global4.a.c, u_input.d, var_0) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 23u)], var_0, 0u) % vec3<u32>(32u))), ~var_0 >> (global0[_wgslsmith_index_u32(arg_1.x, 23u)] % 32u), vec3<bool>(true, all(global3[_wgslsmith_index_u32(arg_1.x, 5u)]), false)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.x, 0u), 1u));
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1570u, 48702u, 0u)), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53641u, global4.a.c), vec3<u32>(1u, 101748u, 0u)), var_0)), _wgslsmith_add_vec3_u32(~(vec3<u32>(arg_1.x, global4.a.c, var_0) ^ vec3<u32>(5982u, arg_1.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.x, 4294967295u, 63240u), vec3<u32>(var_1.c, 17421u, arg_1.x) >> (vec3<u32>(12314u, 1u, global0[_wgslsmith_index_u32(var_1.c, 23u)]) % vec3<u32>(32u)), vec3<u32>(0u, 11250u, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 29>();
    var var_0 = countOneBits(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global4.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(460f, global4.a.a, -931f) + global4.a.b), true)))), select(~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 79534u, global0[_wgslsmith_index_u32(13038u, 23u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(global4.a.c, 23u)], 4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, global4.a.c), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 23u)])) << (_wgslsmith_add_vec3_u32(func_1(u_input.c.x, vec2<u32>(global4.a.c, global4.a.c), true), vec3<u32>(1u, 26535u, 1u)) % vec3<u32>(32u)), true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, -696f, global4.a.a, global4.a.a)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a, global4.a.b.x, global4.a.b.x, global4.a.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(422f, -1000f, global4.a.a, global4.a.a)))))))), u_input.c.x);
}

