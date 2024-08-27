struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(1i, 25999i, 22553i), vec3<i32>(1i, 1i, -74721i), vec3<i32>(1i, -28384i, 2147483647i), vec3<i32>(44764i, 13952i, 19203i), vec3<i32>(17058i, 22954i, i32(-2147483648)), vec3<i32>(-9832i, 6078i, 1i), vec3<i32>(30591i, 2147483647i, 58190i));

var<private> global1: vec3<f32> = vec3<f32>(-2641f, -1412f, -1259f);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, false, true), vec2<u32>(12618u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<bool>(true, true, true), vec2<u32>(31838u, 5383u)), Struct_1(vec2<bool>(false, false), true, vec3<bool>(false, false, true), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, false, true), vec2<u32>(51526u, 37589u)), Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, false), vec2<u32>(10731u, 4003u)), Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, true), vec2<u32>(74358u, 4294967295u)), Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, true, true), vec2<u32>(31660u, 12740u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: i32) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + 1996f) - -556f)), 1088f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) + -447f)));
    global2 = array<Struct_1, 7>();
    return true;
}

fn func_2() -> vec3<u32> {
    global2 = array<Struct_1, 7>();
    let var_0 = 26275i;
    let var_1 = !(!vec3<bool>(func_3(vec3<u32>(u_input.a, 0u, 19980u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, global1.x, global1.x), vec3<bool>(true, false, true))), 329f, -14928i), true, true));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 7u)];
    global0 = array<vec3<i32>, 7>();
    return ~(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, 24867u), select(vec3<u32>(var_2.d.x, u_input.a, 7430u), vec3<u32>(u_input.a, u_input.a, var_2.d.x), var_1.x)), 1u) << (_wgslsmith_add_vec3_u32(select(~vec3<u32>(var_2.d.x, 0u, 4294967295u), abs(vec3<u32>(var_2.d.x, 33158u, 57607u)), var_2.c.x & true), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 13563u), vec3<u32>(var_2.d.x, var_2.d.x, 8066u)), vec3<u32>(81328u, u_input.a, u_input.a), vec3<u32>(1u, 4294967295u, 4654u) ^ vec3<u32>(var_2.d.x, 39335u, u_input.a))) % vec3<u32>(32u)));
}

fn func_1() -> bool {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(4294967295u, 0u)) | (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(537u, 80320u)) ^ vec2<u32>(u_input.a, u_input.a)));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = countOneBits(~(~(~func_2())));
    global2 = array<Struct_1, 7>();
    let var_3 = firstTrailingBit(countOneBits(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(16957i, -12100i, 34986i, 2147483647i), vec4<i32>(-32613i, -35206i, 2147483647i, 1i)), 14383i, -_wgslsmith_clamp_i32(-5689i, -21345i, -38044i))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, true, true, true));
    var_0 = any(select(vec4<bool>(!func_1(), select(u_input.a >= u_input.a, true, true), _wgslsmith_f_op_f32(select(global1.x, global1.x, true)) != _wgslsmith_f_op_f32(-global1.x), !all(vec2<bool>(false, false))), select(vec4<bool>(true, func_1(), any(vec3<bool>(true, true, false)), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), true), func_1()), vec4<bool>(any(vec3<bool>(true, true, true)), true, func_3(vec3<u32>(48805u, u_input.a, 48645u), vec3<f32>(global1.x, global1.x, global1.x), 223f, ~16650i), true)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -277f);
    global2 = array<Struct_1, 7>();
    var_0 = any(vec4<bool>(func_3(vec3<u32>(40856u, u_input.a & u_input.a, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1180f, 1193f, global1.x) + vec3<f32>(-1014f, global1.x, 207f))), 1880f, -_wgslsmith_mult_i32(56589i, -5400i)), false, false, func_3(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<f32>(var_1, global1.x, var_1), _wgslsmith_f_op_f32(global1.x - global1.x), i32(-1i) * -68936i) != true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(886f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1098f * global1.x), var_1)), 1544f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -170f, _wgslsmith_f_op_f32(select(-1879f, var_1, (var_1 > 1000f) | func_1())), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, -248f, 628f, var_1)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -3393f), 1000f, _wgslsmith_f_op_f32(step(var_1, global1.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 139f, var_1, 1304f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 106f, 1045f, -568f))), false)))), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40261i, 2147483647i, -4473i, -34659i), vec4<i32>(15490i, -1i, 6879i, -13075i)), -1i, _wgslsmith_mult_i32(reverseBits(23682i), -45158i << (u_input.a % 32u)), min(-10079i, -2147483647i >> (u_input.a % 32u))));
}

