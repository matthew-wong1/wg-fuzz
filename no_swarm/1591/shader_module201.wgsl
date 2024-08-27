struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = 2147483647i;
    var var_1 = global1.c.a;
    var_1 = global1.c.a;
    var var_2 = global1.c;
    var var_3 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a, ~(-var_2.c), var_2.c, var_2.c)), countOneBits(min(u_input.b, ~firstTrailingBit(vec4<i32>(-56327i, 8031i, -1i, -19159i)))));
    return vec4<u32>(global1.a.x, countOneBits(14285u), 0u >> (u_input.d.x % 32u), reverseBits(20408u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 30046i;
    var var_1 = ~u_input.d;
    var_1 = ~(~_wgslsmith_div_vec4_u32(~arg_0.a, min(func_3(arg_1.b), arg_0.a)));
    var var_2 = ~abs(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, 30085i, 2147483647i, u_input.c), firstLeadingBit(u_input.b))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c.a + arg_0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-733f, global1.c.a.x, global1.c.a.x, 322f) + vec4<f32>(782f, 158f, 610f, global1.c.a.x)))), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(~0i, _wgslsmith_clamp_i32(-57625i, u_input.c, -6588i) & _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(~global1.c.c, u_input.b.x)), 4170i));
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(vec3<u32>(~arg_1.a.x, ~1u >> ((reverseBits(u_input.d.x) & abs(21011u)) % 32u), arg_1.a.x), 0i, func_2(Struct_2(~(~vec4<u32>(4294967295u, 67196u, arg_1.a.x, arg_1.a.x)), vec4<f32>(_wgslsmith_div_f32(416f, 1401f), _wgslsmith_f_op_f32(arg_1.c.a.x * arg_1.c.a.x), _wgslsmith_f_op_f32(select(arg_1.c.a.x, global1.c.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -797f))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, arg_1.a.x), 23u)], func_2(global0[_wgslsmith_index_u32(92214u, 23u)], Struct_3(arg_1.a, u_input.a, Struct_1(vec4<f32>(897f, 824f, 441f, -559f), arg_1.c.b, arg_1.b))))).c);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a.x, 1u, 1u)) >> (abs(min(vec3<u32>(global1.a.x, 1u, 4294967295u), vec3<u32>(u_input.d.x, 4294967295u, 25033u))) % vec3<u32>(32u)), ~global1.a), 23u)];
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-arg_1.c.a));
    let var_3 = global1.a.x != global1.a.x;
    let var_4 = vec4<u32>(1u, _wgslsmith_mult_u32(56378u, u_input.d.x), func_3(u_input.a).x, countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(~55970u, _wgslsmith_div_u32(0u, var_2.a.x)), ~arg_1.a.x & 27326u)));
    return var_4;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = func_4(false, func_2(Struct_2(~vec4<u32>(1u, global1.a.x, 99950u, 86777u), global1.c.a), Struct_3(_wgslsmith_div_vec3_u32(~arg_0.a.yzy, vec3<u32>(29907u, global1.a.x, 1u)), -2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), -2147483647i, global1.c.c))));
    var var_1 = true;
    var var_2 = u_input.d.x;
    let var_3 = var_0.x;
    global1 = func_2(arg_0, func_2(arg_0, Struct_3(abs(~global1.a), 1i, func_2(global0[_wgslsmith_index_u32(4294967295u, 23u)], func_2(arg_0, Struct_3(vec3<u32>(arg_0.a.x, 4294967295u, u_input.d.x), u_input.b.x, Struct_1(global1.c.a, global1.b, u_input.b.x)))).c)));
    return ~_wgslsmith_clamp_u32(~func_3(i32(-1i) * -21034i).x, ~func_3(1i).x | ~abs(1u), var_0.x);
}

fn func_5(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = false;
    var var_1 = global1.c;
    global1 = Struct_3(~(~vec3<u32>(_wgslsmith_div_u32(u_input.d.x, 4294967295u), firstTrailingBit(u_input.d.x), ~arg_1)), _wgslsmith_div_i32(-firstTrailingBit(~3899i), ~arg_0), global1.c);
    var var_2 = Struct_2(vec4<u32>(global1.a.x, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d << (u_input.d % vec4<u32>(32u))), global1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + global1.c.a.x), _wgslsmith_f_op_f32(trunc(392f)), -323f, _wgslsmith_f_op_f32(-867f - 767f))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1602f - 1740f) - global1.c.a.x), global1.c.a.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.a.x, -1250f))))));
    global1 = func_2(global0[_wgslsmith_index_u32(func_3(abs(-1i)).x, 23u)], Struct_3(max(min(~var_2.a.xxy, u_input.d.wyz), func_2(global0[_wgslsmith_index_u32(0u, 23u)], Struct_3(vec3<u32>(1u, 4373u, 1u), global1.b, Struct_1(global1.c.a, arg_0, global1.c.c))).a), firstTrailingBit(-1i), global1.c));
    return -func_2(Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-867f, -693f, -669f, 1628f), var_1.a))), Struct_3(min(max(u_input.d.zwy, global1.a), vec3<u32>(59358u, global1.a.x, 1u) ^ global1.a), -(~u_input.b.x), func_2(Struct_2(vec4<u32>(u_input.d.x, global1.a.x, 4294967295u, var_2.a.x), var_2.b), func_2(global0[_wgslsmith_index_u32(arg_1, 23u)], Struct_3(vec3<u32>(0u, 1u, global1.a.x), var_1.c, global1.c))).c)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -854f, 1f, -614f)), func_5(u_input.c, _wgslsmith_mult_u32(3242u, ~func_1(global0[_wgslsmith_index_u32(42671u, 23u)]))), u_input.c);
    global1 = Struct_3(countOneBits(countOneBits(_wgslsmith_mod_vec3_u32(global1.a, vec3<u32>(1u, 1u, 50441u)))) << (u_input.d.wyx % vec3<u32>(32u)), 0i, func_2(Struct_2(firstTrailingBit(vec4<u32>(global1.a.x, 4294967295u, 0u, global1.a.x)), _wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(650f, -1337f, var_0.a.x, var_0.a.x), var_0.a)))), Struct_3(vec3<u32>(4294967295u, u_input.d.x, ~1u), ~_wgslsmith_sub_i32(u_input.b.x, u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1187f, var_0.a.x, global1.c.a.x) - vec4<f32>(-536f, 547f, var_0.a.x, global1.c.a.x)), 2147483647i, ~global1.b))).c);
    var_0 = Struct_1(vec4<f32>(global1.c.a.x, 515f, _wgslsmith_f_op_f32(global1.c.a.x + global1.c.a.x), var_0.a.x), -27265i, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, global1.a.x, 65760u), u_input.d) % 32u), -1i), _wgslsmith_add_i32(i32(-1i) * -u_input.c, global1.c.b)));
    var var_1 = Struct_3(vec3<u32>(61110u, abs(55490u), ~global1.a.x << (reverseBits(global1.a.x) % 32u)) | ~countOneBits(_wgslsmith_add_vec3_u32(global1.a, global1.a)), func_2(Struct_2(firstTrailingBit(vec4<u32>(0u, 99296u, 11985u, global1.a.x)), var_0.a), func_2(Struct_2(max(u_input.d, vec4<u32>(6421u, u_input.d.x, 1u, global1.a.x)), vec4<f32>(var_0.a.x, global1.c.a.x, -1000f, 733f)), func_2(Struct_2(vec4<u32>(0u, u_input.d.x, 79092u, 0u), var_0.a), Struct_3(global1.a, var_0.c, Struct_1(vec4<f32>(1246f, -679f, 553f, 577f), 20298i, u_input.b.x))))).b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(464f, _wgslsmith_f_op_f32(ceil(2709f)), _wgslsmith_f_op_f32(global1.c.a.x + global1.c.a.x), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_sub_i32(global1.c.c, -2147483647i), 0i));
    var_1 = Struct_3(func_4(true, Struct_3(select(firstLeadingBit(vec3<u32>(70882u, global1.a.x, 45975u)), _wgslsmith_mod_vec3_u32(global1.a, global1.a), vec3<bool>(true, false, true)), _wgslsmith_mod_i32(select(1i, -26526i, false), 1i), func_2(Struct_2(u_input.d, var_1.c.a), func_2(Struct_2(vec4<u32>(0u, 48619u, 20952u, global1.a.x), var_0.a), Struct_3(vec3<u32>(1u, var_1.a.x, u_input.d.x), global1.b, global1.c))).c)).xxx, -47402i, func_2(global0[_wgslsmith_index_u32(firstTrailingBit(var_1.a.x), 23u)], Struct_3(firstLeadingBit(vec3<u32>(53050u, 41669u, 1u)), firstTrailingBit(abs(-2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.a.x, 1529f, -372f, var_1.c.a.x))), ~global1.b, u_input.a))).c);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(u_input.d.x << (u_input.d.x % 32u), ~global1.a.x, global1.a.x));
}

