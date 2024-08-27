struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-71349i, true), -1i, Struct_1(-1i, true));

var<private> global1: bool = true;

var<private> global2: vec4<u32> = vec4<u32>(0u, 78319u, 4294967295u, 27093u);

var<private> global3: array<Struct_3, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    global1 = any(select(!vec2<bool>(true, any(vec3<bool>(false, false, arg_0))), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, arg_0), vec2<bool>(global0.c.b, false)), vec2<bool>(global0.c.b, global0.a.b && true), false), true));
    let var_0 = select(vec3<bool>(arg_0, select(true, u_input.a.x < global0.c.a, global0.a.b & arg_0), any(vec3<bool>(any(vec4<bool>(global0.c.b, arg_0, global0.c.b, global0.a.b)), false, arg_0))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, global0.c.b, false), false)), select(select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(true, true, global0.c.b), any(vec4<bool>(global0.a.b, false, global0.a.b, arg_0))), !vec3<bool>(arg_0, global0.c.b, arg_0), !(!vec3<bool>(true, global0.c.b, true))), !select(vec3<bool>(arg_0, global0.a.b, true), select(vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, global0.c.b, arg_0)), all(vec2<bool>(false, false)))), select(select(!vec3<bool>(true, arg_0, false), !vec3<bool>(true, false, arg_0), vec3<bool>(true, global0.a.b, true)), !select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(global0.a.b, global0.c.b, global0.c.b), global0.a.b), true));
    global2 = vec4<u32>(arg_1, arg_1, arg_1 & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(40374u, 57432u) ^ vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, 47553u) >> (global2.wx % vec2<u32>(32u)))), countOneBits(~(~35784u >> (global2.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_2(global0.a, select(_wgslsmith_clamp_i32(-global0.c.a, 0i, global0.b), firstLeadingBit(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), global0.a.b), Struct_1(_wgslsmith_div_i32(u_input.a.x, 1i), !(!global0.a.b)));
    return _wgslsmith_mod_u32(firstLeadingBit(30493u) & reverseBits(arg_1), 0u);
}

fn func_2() -> Struct_3 {
    global1 = global0.a.b;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(542f * -1545f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1738f), -862f))))) - 853f);
    let var_1 = select((vec2<u32>(abs(global2.x), _wgslsmith_add_u32(global2.x, 59211u)) << (global2.wy % vec2<u32>(32u))) & vec2<u32>(~abs(0u), func_3(true, global2.x)), ~global2.zy, global0.a.b);
    var var_2 = _wgslsmith_add_i32(max(-53405i, -1i), i32(-1i) * -u_input.a.x) ^ ~(~(select(global0.b, global0.b, global0.c.b) & _wgslsmith_div_i32(11767i, -6403i)));
    let var_3 = vec2<i32>(global0.b, reverseBits(reverseBits(-19691i)));
    return global3[_wgslsmith_index_u32(global2.x, 18u)];
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = Struct_3(!all(!vec2<bool>(global0.a.b, true)), firstTrailingBit(0u), vec4<i32>(~global0.b, -30369i, firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(62231i, global0.c.a, arg_0), vec3<i32>(-2147483647i, arg_0, -2147483647i))), -1i));
    var_1 = func_2();
    var var_2 = Struct_2(Struct_1(var_0.c.x, var_0.a), -var_0.c.x, global0.a);
    let var_3 = func_2().a;
    return Struct_2(Struct_1(arg_0, var_1.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-var_1.c.x, -2147483647i), -2147483647i, i32(-1i) * -52809i), -(arg_0 >> (0u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(25305i), var_0.c.x), ~arg_0 ^ (var_1.c.x & var_2.a.a))), Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, var_0.c.x), u_input.a), var_1.c.wxy), all(!select(vec3<bool>(var_0.a, var_1.a, true), vec3<bool>(global0.c.b, var_0.a, var_3), vec3<bool>(global0.c.b, global0.a.b, var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c.a, 7433u, 1u >> ((~89612u >> (abs(~global2.x) % 32u)) % 32u));
    var var_0 = ~(~abs(vec4<u32>(59739u, ~104910u, _wgslsmith_mult_u32(global2.x, global2.x), _wgslsmith_mult_u32(18918u, global2.x))));
    let var_1 = Struct_2(func_1(u_input.a.x, countOneBits(~min(global2.x, 53501u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.zwz, ~vec3<u32>(var_0.x, 34259u, 0u)), countOneBits(vec3<u32>(9940u, var_0.x, 56416u)))).c, global0.a.a, global0.a);
    global1 = any(!(!select(!vec2<bool>(global0.a.b, var_1.a.b), select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(true, global0.c.b), global0.c.b), func_1(57419i, 27418u, var_0.x).c.b)));
    global3 = array<Struct_3, 18>();
    global0 = Struct_2(Struct_1(global0.b, all(vec4<bool>(true, false, !global0.c.b, global0.c.b))), -1i, var_1.a);
    let var_2 = var_1;
    let var_3 = func_1(abs(var_1.a.a), reverseBits(34408u), ~(~_wgslsmith_mod_u32(max(var_0.x, global2.x), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.a.a, -max(8152i, var_1.a.a), var_1.c.b), min(vec4<u32>(min(global2.x, 4294967295u), ~global2.x, 12365u, ~var_0.x) | ~vec4<u32>(93926u, 47119u, var_0.x, global2.x), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 4294967295u), func_2().b, 25885u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), var_0.zx)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, global2.x, var_0.x, 56061u), countOneBits(vec4<u32>(global2.x, 1u, global2.x, 1u))) % vec4<u32>(32u))), vec3<i32>(var_3.c.a, -global0.c.a, var_3.b));
}

