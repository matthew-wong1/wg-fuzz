struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<bool> {
    var var_0 = u_input.b;
    var var_1 = !global0.a;
    var var_2 = !global0.a;
    var_1 = true;
    var_0 = u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b), ~93431u, 14310u) ^ ~(~vec3<u32>(u_input.b, u_input.b, 62249u)), vec3<u32>(1u, 1u, _wgslsmith_div_u32(~u_input.b, 26932u))) % 32u);
    return vec2<bool>(global0.a, global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_0;
    global0 = Struct_1(!(-1i < reverseBits(arg_0.b.x)), -firstTrailingBit((vec2<i32>(arg_0.b.x, 0i) & arg_0.b) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))));
    let var_1 = arg_1;
    var var_2 = u_input.b;
    return 25279u;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(round(1394f))) * arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1277f * arg_2)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-1232f * arg_2))));
    let var_1 = func_2();
    global0 = Struct_1(global0.a, global0.b);
    var var_2 = -(~countOneBits(vec3<i32>(u_input.a, -25193i, countOneBits(-42244i))));
    var var_3 = max(abs(vec2<i32>(6925i, ~global0.b.x)), -(vec2<i32>(var_2.x, u_input.c) >> (firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)))) >> (firstLeadingBit(vec2<u32>(func_3(Struct_1(global0.a, var_2.yz), arg_3, _wgslsmith_f_op_vec4_f32(floor(var_0))), _wgslsmith_mod_u32(firstTrailingBit(u_input.b), arg_0.x))) % vec2<u32>(32u));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_1(vec3<u32>(arg_3, ~13956u, 33834u), arg_2, -151f, arg_0);
    let var_2 = select(vec3<bool>(arg_2.a, var_1.a, any(!select(vec2<bool>(var_1.a, arg_0.a), vec2<bool>(arg_0.a, var_1.a), vec2<bool>(global0.a, arg_0.a)))), !vec3<bool>((global0.b.x >= arg_0.b.x) != false, all(select(vec3<bool>(arg_2.a, false, global0.a), vec3<bool>(false, true, true), var_1.a)), !any(vec2<bool>(true, true))), vec3<bool>(!(!(!global0.a)), !(var_1.b.x >= u_input.a), global0.b.x <= global0.b.x));
    let var_3 = func_1(select(countOneBits(vec3<u32>(68757u, 57059u, u_input.b) << (vec3<u32>(15273u, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<u32>(7955u, func_3(func_1(vec3<u32>(4294967295u, 893u, 0u), Struct_1(global0.a, arg_2.b), 1000f, arg_2), Struct_1(true, arg_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 241f, -166f, arg_1) * vec4<f32>(arg_1, arg_1, arg_1, arg_1))), ~(~31760u)), var_2.x), func_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, arg_3, 50310u), vec3<u32>(~arg_3, 109387u, _wgslsmith_div_u32(u_input.b, arg_3))), arg_0, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(489f + arg_1))), func_1(~min(vec3<u32>(arg_3, u_input.b, arg_3), vec3<u32>(18838u, 41560u, u_input.b)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1122f))), func_1(~vec3<u32>(1u, 1140u, u_input.b), arg_0, -672f, Struct_1(arg_0.a, var_1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1339f), func_1(~(~(vec3<u32>(u_input.b, 8470u, arg_3) ^ vec3<u32>(66042u, arg_3, u_input.b))), func_1(~vec3<u32>(4294967295u, u_input.b, u_input.b), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_1), Struct_1(false, countOneBits(var_1.b))), arg_1, Struct_1(325f != _wgslsmith_f_op_f32(-1210f + arg_1), firstLeadingBit(arg_0.b))));
    var var_4 = func_1(min(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(1u, 12478u, 40519u), firstLeadingBit(vec3<u32>(u_input.b, arg_3, 6388u))), ~abs(vec3<u32>(18701u, 0u, 27351u)), vec3<u32>(min(50242u, arg_3), arg_3, arg_3)), ~vec3<u32>(~23761u, 0u >> (u_input.b % 32u), 28391u)), Struct_1(true, vec2<i32>(~(global0.b.x & 1i), var_3.b.x | _wgslsmith_div_i32(arg_2.b.x, 24583i))), _wgslsmith_f_op_f32(-arg_1), func_1(vec3<u32>(arg_3, _wgslsmith_add_u32(reverseBits(u_input.b), 49032u), firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, u_input.b, 55530u))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), func_1(_wgslsmith_div_vec3_u32(min(vec3<u32>(6603u, 49839u, 0u), vec3<u32>(67016u, 64362u, u_input.b)), select(vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(4294967295u, u_input.b, arg_3), true)), var_3, 1460f, var_3)));
    return Struct_1(false, -var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(global0.a, -select(-global0.b, u_input.e.xy, global0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -893f), true))))), func_1(vec3<u32>(_wgslsmith_mult_u32(~4294967295u, 91686u), ~u_input.b, 12186u), Struct_1(true, ~firstLeadingBit(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1652f + -852f)), Struct_1(global0.a, vec2<i32>(37056i, u_input.e.x ^ 64121i))), ~(_wgslsmith_add_u32(u_input.b, ~41407u) << (30156u % 32u)));
    var var_0 = global0.a;
    var var_1 = ~abs(~min(_wgslsmith_mod_vec3_u32(vec3<u32>(56828u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, 1u, 4294967295u) << (vec3<u32>(4294967295u, 79649u, u_input.b) % vec3<u32>(32u))));
    var var_2 = func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(var_1.x, 29929u))), u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(var_1.x), 1u, 70234u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, u_input.b), firstLeadingBit(vec3<u32>(1u, var_1.x, 7690u))))), func_4(func_4(Struct_1(1i >= global0.b.x, _wgslsmith_div_vec2_i32(u_input.e.xy, global0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1765f, 1299f))), Struct_1(!global0.a, vec2<i32>(global0.b.x, u_input.c)), ~(~u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-425f, 1595f)))), Struct_1(true, vec2<i32>(u_input.d, 0i)), 1u), 1f, func_1(~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.x, var_1.x, 4294967295u), vec4<u32>(0u, u_input.b, u_input.b, 24384u)), 4294967295u), func_4(func_1(vec3<u32>(2915u, var_1.x, u_input.b), func_1(vec3<u32>(25529u, 0u, 0u), Struct_1(false, global0.b), 516f, Struct_1(global0.a, global0.b)), _wgslsmith_f_op_f32(floor(-446f)), Struct_1(global0.a, vec2<i32>(1i, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(898f * 262f)), func_4(Struct_1(false, global0.b), _wgslsmith_f_op_f32(abs(614f)), func_4(Struct_1(true, vec2<i32>(u_input.d, 6889i)), -871f, Struct_1(true, u_input.e.zy), 4294967295u), var_1.x), ~_wgslsmith_mult_u32(0u, 4294967295u)), -441f, Struct_1(true, -select(u_input.e.zy, vec2<i32>(global0.b.x, -7929i), true))));
    var var_3 = -var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(reverseBits(var_1.yy), select(min(var_1.xy, select(var_1.yz, vec2<u32>(20562u, 0u), global0.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 0u), var_1.xy), vec2<bool>(func_2().x, global0.a || global0.a))));
}

