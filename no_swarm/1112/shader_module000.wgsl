struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), 34172i);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true), 1i);

var<private> global4: array<bool, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec4<bool>(any(select(select(vec4<bool>(arg_0, true, global1.a.x, global1.a.x), select(vec4<bool>(global3.a.x, false, false, true), vec4<bool>(global3.a.x, global3.a.x, false, false), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 31u)], true, arg_0)), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(global3.a.x, global3.a.x, false, false), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 31u)], global3.a.x, false))), vec4<bool>(true, any(vec3<bool>(global2.a.x, arg_0, true)), true, any(vec4<bool>(true, false, false, true))), arg_0)), false, all(!vec3<bool>(true, any(vec4<bool>(arg_0, global2.a.x, global0.a.x, true)), global1.a.x)), !(select(false, true | arg_0, !global0.a.x) & all(!vec3<bool>(false, true, global2.a.x))));
    let var_1 = true | !global0.a.x;
    let var_2 = Struct_1(select(select(select(select(global3.a, vec2<bool>(true, true), global0.a), global3.a, true), vec2<bool>(all(vec3<bool>(global3.a.x, var_0.x, var_1)), !var_1), !all(vec3<bool>(false, global0.a.x, true))), global2.a, global2.a), firstTrailingBit(global3.b));
    let var_3 = var_2;
    var var_4 = false;
    return -2176f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(any(global1.a), global1.a.x), 0i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)), _wgslsmith_div_f32(_wgslsmith_div_f32(2122f, -1715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1386f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global1.a.x)))));
    let var_2 = Struct_1(select(select(global0.a, select(!vec2<bool>(true, arg_1.x), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], global1.a.x), global0.a.x), select(select(var_0.a, vec2<bool>(false, global1.a.x), vec2<bool>(arg_1.x, global0.a.x)), vec2<bool>(true, true), var_0.a.x)), !vec2<bool>(1i == global0.b, true), all(vec4<bool>(var_0.a.x, var_0.a.x | true, false, any(var_0.a)))), 45383i);
    global1 = Struct_1(select(!vec2<bool>(false, var_0.a.x), !(!select(vec2<bool>(global2.a.x, true), var_0.a, true)), global1.a), _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(27092i, -25654i, arg_0.b)), vec3<i32>(global0.b, var_0.b, global0.b) >> (select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(15578u, 17956u, u_input.e), arg_1.xyz) % vec3<u32>(32u))) >> (~_wgslsmith_sub_u32(u_input.c, ~45257u) % 32u));
    let var_3 = vec3<i32>(0i ^ arg_0.b, -27176i, 31535i);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_1(select(select(select(select(global2.a, vec2<bool>(true, false), global2.a), !global2.a, false), global3.a, global0.a.x), func_2(Struct_1(global0.a, -20104i), vec4<bool>(all(global0.a), true, true, false)), !global3.a), global3.b);
    let var_1 = -747f;
    let var_2 = Struct_1(var_0.a, -2147483647i);
    global1 = Struct_1(global0.a, global1.b);
    global3 = Struct_1(select(!global3.a, !global1.a, select(vec2<bool>(true, global1.a.x), func_2(var_2, vec4<bool>(false, false, true, true)), !func_2(Struct_1(var_2.a, -1i), vec4<bool>(true, true, global2.a.x, false)))), abs(global0.b));
    return ~u_input.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = ~(~vec4<i32>(global3.b, -13380i, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.d.x, 7043i)), abs(_wgslsmith_add_i32(global0.b, arg_1.x))));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(global3.b, ~(global2.b << (26119u % 32u)), -reverseBits(global0.b));
    var_1 = countOneBits(reverseBits(abs(-vec3<i32>(-11495i, var_1.x, global2.b) << (~vec3<u32>(arg_0.x, arg_0.x, u_input.e) % vec3<u32>(32u)))));
    var var_2 = vec2<i32>(global3.b, global2.b);
    global1 = Struct_1(!select(global3.a, global0.a, true), _wgslsmith_clamp_i32(3542i, _wgslsmith_mult_i32(countOneBits(13432i) & _wgslsmith_sub_i32(-1i, global2.b), _wgslsmith_mult_i32(abs(global2.b), _wgslsmith_add_i32(2147483647i, global0.b))), -41512i));
    return Struct_1(global2.a, firstTrailingBit(reverseBits(_wgslsmith_div_i32(global3.b, _wgslsmith_div_i32(10821i, 51870i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(abs(25378u), 4294967295u, u_input.e << (86678u % 32u), countOneBits(3210u)), ~(~vec4<u32>(u_input.e, 0u, u_input.e, 80310u))), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-221f, 867f, true)) + _wgslsmith_f_op_f32(round(-527f)))))));
    let var_0 = Struct_1(select(!vec2<bool>(true, !global4[_wgslsmith_index_u32(u_input.e, 31u)]), global2.a, any(select(vec3<bool>(global1.a.x, false, true), vec3<bool>(global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 31u)], global2.a.x), vec3<bool>(global4[_wgslsmith_index_u32(59393u, 31u)], global2.a.x, global1.a.x))) || any(select(vec4<bool>(global2.a.x, global3.a.x, false, true), vec4<bool>(global2.a.x, global2.a.x, global3.a.x, global0.a.x), global0.a.x))), global1.b);
    global4 = array<bool, 31>();
    let var_1 = func_4(vec4<u32>(min(u_input.e, min(7601u, _wgslsmith_add_u32(u_input.e, 4294967295u))), u_input.e, 0u, _wgslsmith_add_u32(25364u, 40619u)), -vec2<i32>(_wgslsmith_div_i32(global3.b, 3459i), ~global3.b) << (abs(vec2<u32>(24292u, _wgslsmith_dot_vec3_u32(vec3<u32>(12481u, u_input.e, u_input.e), vec3<u32>(u_input.e, 0u, 33036u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-383f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1078f)) + -217f))), _wgslsmith_f_op_f32(695f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(654f, _wgslsmith_f_op_f32(-981f + 279f)))))), u_input.d);
}

