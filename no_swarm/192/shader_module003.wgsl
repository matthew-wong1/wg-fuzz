struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(-1000f, vec3<f32>(-730f, -1641f, -1095f), 29764i, false, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let var_0 = 225f;
    return true;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.a), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f), 1i, true, arg_2);
    global2 = var_1;
    var var_2 = vec2<bool>(var_1.d, !(!(any(vec2<bool>(false, false)) | all(vec4<bool>(false, true, true, false)))));
    let var_3 = -3158i >> (1u % 32u);
    return Struct_1(var_1.b.x, vec3<f32>(_wgslsmith_f_op_f32(select(738f, -1652f, arg_0 && false)), global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f + var_1.a))), firstTrailingBit(2147483647i), !(arg_0 | (!var_1.d != global2.d)), 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = firstLeadingBit(u_input.a.xx);
    global0 = array<vec2<bool>, 32>();
    let var_1 = ~28015u;
    var var_2 = !arg_0.d;
    let var_3 = -arg_1.e;
    return select(select(select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(~firstTrailingBit(var_0.x), 32u)], arg_1.d), vec2<bool>(false, arg_0.d), var_3 < firstTrailingBit(arg_1.e)), vec2<bool>(select(!arg_1.d, true, true), arg_0.d), select(!global0[_wgslsmith_index_u32(var_0.x, 32u)], select(vec2<bool>(global2.d, arg_0.d), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 32u)], vec2<bool>(false, true)), true));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec2_u32(~u_input.a.yz >> (u_input.a.xx % vec2<u32>(32u)), min(u_input.a.yx, arg_2.wz) | abs(vec2<u32>(arg_2.x, 3703u))) >> (~(vec2<u32>(firstTrailingBit(33567u), arg_1 << (17571u % 32u)) | max(vec2<u32>(1u, 0u), u_input.a.yx)) % vec2<u32>(32u));
    let var_1 = !func_4(func_3(any(!vec4<bool>(false, global2.d, false, arg_3.x)), 21825u, _wgslsmith_div_i32(1i, 1i)), func_3(true, _wgslsmith_mod_u32(min(arg_1, 16124u), var_0.x), arg_0));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(-1625f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1572f + global2.a), _wgslsmith_f_op_f32(step(global2.b.x, 874f)), global2.b.x))) + global2.b), ~(~(-2147483647i)), all(!arg_3), arg_0);
    global0 = array<vec2<bool>, 32>();
    var var_3 = func_3(var_2.b.x <= _wgslsmith_f_op_f32(var_2.b.x + 892f), ~abs(3113u), _wgslsmith_mult_i32(-32911i, -var_2.c));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(350f)) * 520f), _wgslsmith_f_op_f32(sign(var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1414f + global2.a) * -424f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.b)))), func_3(true, 0u, ~_wgslsmith_div_i32(var_2.e, arg_0)).c, any(!func_4(func_3(false, 1u, var_2.c), Struct_1(var_3.a, vec3<f32>(var_2.b.x, 369f, 322f), var_2.c, global2.d, 0i))), arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(global2.e, ~1u, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(8259u, 1u, 1u, u_input.b), select(vec4<u32>(u_input.c, u_input.c, u_input.b, 56086u) << (vec4<u32>(1u, u_input.c, u_input.b, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 5682u, u_input.b, u_input.b), vec4<u32>(4294967295u, 0u, u_input.b, 15158u), vec4<u32>(u_input.c, u_input.c, 31811u, 30976u)), !global2.d), vec4<u32>(select(27072u, 60113u, global2.d), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), countOneBits(31324u), u_input.c)), func_4(func_3(func_2(), u_input.a.x, _wgslsmith_mult_i32(0i, global2.e & -98328i)), func_3(false, 5886u, countOneBits(1i))));
    let var_1 = func_3(!global2.d, u_input.a.x, 1i);
    let var_2 = u_input.c;
    var var_3 = func_3(var_1.d, ~(~(4294967295u & _wgslsmith_clamp_u32(u_input.c, 53101u, 0u))), -(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.e), vec2<i32>(var_1.e, var_0.e)) & 1i)));
    var_3 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) - _wgslsmith_div_f32(global2.a, -782f))), var_3.b, ~1i, any(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(25493u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(32469u, 1u, u_input.a.x), u_input.a, var_0.d), abs(u_input.a))), 32u)]), _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.c << (~u_input.a.x % 32u), abs(func_5(-7192i, u_input.c, vec4<u32>(u_input.c, 4294967295u, 26987u, 48368u), vec2<bool>(true, var_3.d)).e)), global2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(~25884u, 32u)];
    var var_1 = firstLeadingBit(u_input.c);
    let var_2 = func_1();
    global1 = -114f;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-37785i, func_1().e) ^ func_5(-1i, u_input.a.x, ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), func_4(var_2, var_2)).e, 10735i));
}

