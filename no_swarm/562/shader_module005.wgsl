struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -366f, vec3<i32>(2147483647i, 48325i, 1i), -18562i);

var<private> global1: vec4<u32> = vec4<u32>(1u, 18438u, 1u, 4294967295u);

var<private> global2: array<i32, 32> = array<i32, 32>(1i, -1i, i32(-2147483648), 41982i, -21490i, 35425i, -20055i, -1i, 2147483647i, 54040i, i32(-2147483648), -1i, 1i, -12962i, 6402i, -1i, 51939i, 0i, -27357i, -2363i, 0i, 2147483647i, 17060i, 2147483647i, 17544i, -1i, 45699i, i32(-2147483648), 14366i, -1i, -1i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = all(vec3<bool>(true, true, true));
    global1 = ~(~(~vec4<u32>(_wgslsmith_add_u32(u_input.d, global1.x), ~global1.x, arg_1, ~47678u)));
    global2 = array<i32, 32>();
    var var_1 = true && !any(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), !vec2<bool>(false, global0.a)));
    let var_2 = Struct_2(true);
    return ~min(1u, ~arg_2);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(~_wgslsmith_mod_i32(-(1i << (u_input.d % 32u)), _wgslsmith_mod_i32(567i, countOneBits(global2[_wgslsmith_index_u32(4294967295u, 32u)]))), ~(global2[_wgslsmith_index_u32(~global1.x, 32u)] ^ ((-2147483647i ^ global2[_wgslsmith_index_u32(global1.x, 32u)]) | _wgslsmith_mod_i32(global0.c.x, 69051i))));
    global1 = ~vec4<u32>(2788u, ~(~0u), _wgslsmith_sub_u32(global1.x, func_3(vec3<i32>(0i, 34630i, -1i), global1.x, 86142u)), 73648u) >> ((_wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 1u, 63483u, u_input.b.x), u_input.b, vec4<u32>(global1.x, 1u, global1.x, u_input.d)) & ~u_input.b) >> (countOneBits(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global1.x, 0u, global1.x, u_input.d) << (vec4<u32>(10669u, u_input.d, 22531u, global1.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_2(!(!all(!vec3<bool>(true, global0.a, true))));
    global0 = Struct_1(false, 149f, ~global0.c, global2[_wgslsmith_index_u32(countOneBits(~global1.x) | 0u, 32u)]);
    let var_2 = global0.b;
    return Struct_1(select(!(~var_0.x >= abs(-25659i)), true, true), global0.b, max(-min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.x), vec3<i32>(u_input.e, 24822i, -22390i)), ~vec3<i32>(11334i, -1i, var_0.x)), vec3<i32>(_wgslsmith_mod_i32(u_input.c, -1i), 10639i, -2147483647i)), i32(-1i) * -15477i);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0;
    global0 = func_2();
    global0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-497f, -1190f)), arg_2)))));
    return Struct_2(true);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(select(4294967295u, ~abs(~39857u), select(!(arg_1 != true), true, func_1(1u, vec4<bool>(false, true, false, true), _wgslsmith_f_op_f32(286f * global0.b), arg_2.x).a)), countOneBits(u_input.b.x), _wgslsmith_div_u32(24567u, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global1.x, 0u, 133399u)), global1.xyx)));
    let var_1 = Struct_1(arg_0.a, 1f, ~max(-reverseBits(vec3<i32>(1i, u_input.c, -2147483647i)), -_wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(global0.d, 10078i, 1i))), -2147483647i);
    global1 = u_input.b;
    var var_2 = vec3<i32>(0i & (-14021i << ((var_0.x & global1.x) % 32u)), 10471i, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(select(1i, global0.d, false), u_input.c), -37220i, u_input.c));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(649f, global0.b, -109f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -826f, 594f))))))));
    return func_1(~0u, select(vec4<bool>(arg_1, arg_0.a, select(false, select(true, true, arg_3.a), var_1.a & arg_1), _wgslsmith_sub_i32(-1i, u_input.c) != arg_2.x), vec4<bool>(all(select(vec4<bool>(true, arg_3.a, arg_0.a, false), vec4<bool>(arg_0.a, false, var_1.a, false), arg_3.a)), false, 1u >= ~u_input.d, any(!vec2<bool>(global0.a, false))), vec4<bool>(~arg_2.x == ~var_2.x, global0.a, arg_3.a, arg_1 & all(vec2<bool>(arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -784f), ~firstTrailingBit(1621i));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(vec2<bool>(all(select(vec2<bool>(true, true), !vec2<bool>(arg_3.a, false), arg_3.a | true)), false), select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(global0.a, true))), any(vec3<bool>(false, true, arg_3.a))), select(vec2<bool>(true, true), select(!vec2<bool>(false, global0.a), select(vec2<bool>(true, false), vec2<bool>(global0.a, true), true), all(vec4<bool>(true, global0.a, true, arg_3.a))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(arg_3.a, arg_3.a), all(vec2<bool>(arg_3.a, global0.a)))), vec2<bool>(!(global0.a | arg_3.a), any(!vec4<bool>(false, true, arg_3.a, true)))), !select(select(vec2<bool>(true, global0.a), !vec2<bool>(global0.a, global0.a), vec2<bool>(arg_3.a, arg_3.a)), !vec2<bool>(global0.a, global0.a), true));
    var var_1 = Struct_1(!all(select(var_0, vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(false, arg_3.a))) || (true || ((global2[_wgslsmith_index_u32(0u, 32u)] >> (77620u % 32u)) < -6876i)), 1033f, vec3<i32>(global0.c.x, max(min(_wgslsmith_mod_i32(65961i, 11278i), -2147483647i), u_input.c), -2147483647i), 68594i);
    global2 = array<i32, 32>();
    let var_2 = -countOneBits(vec4<i32>(-1i) * -reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(11385u, 32u)], 19569i, -2147483647i, u_input.e)));
    var_1 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-732f - func_2().b)))), vec3<i32>(-1i) * -global0.c, _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(0i, global0.c.x & global0.d)), -13403i));
    return Struct_1(select(all(!select(vec3<bool>(global0.a, false, true), vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(false, var_0.x, var_1.a))), arg_3.a, true), arg_0, var_2.yyx, 31060i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1372f)) + global0.b), u_input.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f), 1182f), _wgslsmith_f_op_f32(f32(-1f) * -769f)), func_4(func_1(4294967295u, !(!vec4<bool>(true, true, global0.a, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) * global0.b), global2[_wgslsmith_index_u32(1u, 32u)]), !(_wgslsmith_sub_u32(22910u, u_input.a.x) >= countOneBits(global1.x)), global0.c.yy, Struct_2(false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(599f, -118f, global0.b, global0.b), vec4<f32>(global0.b, global0.b, global0.b, 1000f), false))))))));
}

