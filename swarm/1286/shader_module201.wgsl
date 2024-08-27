struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-25321i, 2147483647i, -20628i, -13284i, 0i, 17605i, 25363i, 3442i);

var<private> global1: Struct_4;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~(~global1.b.b.d)), global1.b.d.b.x), 8u)];
    global0 = array<i32, 8>();
    let var_1 = arg_1;
    var_0 = arg_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.a, _wgslsmith_div_f32(-1236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1766f)) - var_1.c.a)))));
    return 470f;
}

fn func_2(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = global0[_wgslsmith_index_u32(~global1.b.d.b.x, 8u)] & 2147483647i;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(func_3(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(min(-61718i, u_input.d.x), global0[_wgslsmith_index_u32(35138u, 8u)]), ~23715i)), global1.b, vec3<bool>(!(true | var_1.x), any(select(select(vec3<bool>(true, global1.a, false), vec3<bool>(true, false, true), vec3<bool>(arg_0.x, false, var_1.x)), vec3<bool>(arg_0.x, var_1.x, false), !vec3<bool>(var_1.x, global1.b.a, true))), true), Struct_1(global1.c.a, vec2<u32>(abs(global1.b.d.b.x), abs(global1.b.b.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.a))), -1000f), ~0u)));
    var var_3 = global1.c;
    global1 = Struct_4(false | (85915u < global1.b.b.b.x), global1.b, global1.c);
    return Struct_5(false, _wgslsmith_add_vec4_u32(vec4<u32>(global1.b.e.d << (global1.b.c.d % 32u), abs(global1.b.b.d), ~global1.b.d.b.x, global1.b.d.d & global1.b.e.b.x), reverseBits(vec4<u32>(16558u, global1.b.e.d, 4294967295u, 4294967295u) | vec4<u32>(global1.b.e.d, 1u, 1u, global1.b.b.d))) | abs(~(vec4<u32>(global1.b.d.b.x, 4294967295u, 4294967295u, global1.b.c.b.x) | vec4<u32>(4294967295u, global1.b.c.d, global1.b.e.b.x, global1.b.b.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    global0 = array<i32, 8>();
    global1 = Struct_4(func_2(!select(select(vec2<bool>(arg_1.a, true), vec2<bool>(global1.a, false), false), vec2<bool>(true, true), true)).a, global1.b, global1.c);
    let var_0 = Struct_4(all(vec4<bool>(false, all(vec2<bool>(false, true)), true, 4294967295u <= (41715u << (arg_0 % 32u)))), Struct_2(!global1.b.a, global1.b.e, global1.b.b, global1.b.e, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -579f))), _wgslsmith_mult_vec2_u32(arg_1.b.wx, _wgslsmith_div_vec2_u32(arg_1.b.wy, vec2<u32>(global1.b.e.d, arg_1.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(global1.b.d.c)))), ~(~arg_0))), Struct_3(_wgslsmith_f_op_f32(204f + _wgslsmith_f_op_f32(f32(-1f) * -844f))));
    let var_1 = global1.c;
    var var_2 = global1.b.e.d;
    return Struct_4(!(select(!arg_1.a, select(global1.a, arg_1.a, true), var_0.b.a) && any(select(vec3<bool>(global1.b.a, false, global1.b.a), vec3<bool>(global1.b.a, true, arg_1.a), vec3<bool>(var_0.a, false, false)))), Struct_2(true, Struct_1(-2033f, var_0.b.d.b, global1.b.c.c, _wgslsmith_mod_u32(1u, ~var_0.b.c.b.x)), global1.b.d, var_0.b.e, Struct_1(_wgslsmith_f_op_f32(min(-546f, _wgslsmith_f_op_f32(f32(-1f) * -939f))), global1.b.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.b.b.c, global1.b.e.c, arg_1.a)) + global1.b.b.c), 1u)), var_0.c);
}

fn func_1() -> Struct_1 {
    global1 = func_4(global1.b.c.d, func_2(select(vec2<bool>(global1.b.a, global1.a), vec2<bool>(global1.a, any(vec4<bool>(true, global1.b.a, true, false))), 1u >= global1.b.b.b.x)));
    let var_0 = vec3<bool>(!global1.b.a, !global1.b.a, false);
    global0 = array<i32, 8>();
    let var_1 = Struct_3(-3040f);
    var var_2 = func_4(reverseBits(global1.b.d.d), Struct_5(true, _wgslsmith_add_vec4_u32(~vec4<u32>(global1.b.b.b.x, global1.b.e.d, global1.b.d.d, global1.b.b.b.x), ~func_2(var_0.yz).b)));
    return Struct_1(-375f, vec2<u32>(1u << (1u % 32u), ~_wgslsmith_dot_vec2_u32(func_2(var_0.xy).b.yz, ~vec2<u32>(var_2.b.e.b.x, global1.b.b.b.x))), var_2.b.b.c, reverseBits(global1.b.e.b.x));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(0u, Struct_5(false, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, abs(8941u), _wgslsmith_clamp_u32(4294967295u, arg_1.c.b.x, 54721u)), vec4<u32>(~16296u, arg_1.b.d, firstTrailingBit(45047u), _wgslsmith_add_u32(arg_1.b.b.x, 68543u))))).c;
    let var_1 = u_input.d.x & _wgslsmith_div_i32(abs(1i), -70811i);
    var var_2 = true;
    global1 = Struct_4(arg_0, arg_1, Struct_3(152f));
    var_2 = !select(!(-1483f <= global1.b.e.c.x), func_4(arg_1.c.b.x, func_2(vec2<bool>(false, false))).b.a, false) & (true && !arg_0);
    return func_4((func_1().d >> (4294967295u % 32u)) | _wgslsmith_sub_u32(38124u, ~arg_2.b.x), func_2(vec2<bool>(any(select(vec3<bool>(arg_0, true, arg_1.a), vec3<bool>(true, true, false), true)), func_4(~4294967295u, Struct_5(arg_1.a, vec4<u32>(arg_2.b.x, 1u, 4294967295u, arg_2.d))).b.a))).b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.b.b.c.zx);
    let var_1 = ~select(vec3<u32>(global1.b.c.d, reverseBits(4294967295u), ~(~29426u)), vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(34007u, 1u, global1.b.d.d), min(~global1.b.c.d, abs(1u))), any(select(select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, global1.b.a, global1.b.a), vec3<bool>(global1.a, true, global1.b.a)), !vec3<bool>(global1.b.a, true, true), var_0.x < var_0.x)));
    global0 = array<i32, 8>();
    var var_2 = ~(~(~vec3<u32>(~0u, _wgslsmith_mod_u32(4294967295u, global1.b.b.d), global1.b.d.d)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1700f);
    let var_4 = func_5(global1.b.a, global1.b, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x << (32186u % 32u), -_wgslsmith_sub_i32(-1i, ~u_input.d.x), global0[_wgslsmith_index_u32(var_4.d, 8u)], vec3<u32>(_wgslsmith_sub_u32(63371u, ~_wgslsmith_mult_u32(var_4.b.x, 0u)), ~max(global1.b.c.d, var_4.d | 0u), 43902u), reverseBits(countOneBits(-u_input.b.x)));
}

