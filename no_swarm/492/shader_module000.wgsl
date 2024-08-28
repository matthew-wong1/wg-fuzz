struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(32440u, 1u, 15418u, 1u)), Struct_1(vec4<u32>(0u, 31757u, 1u, 1u)), Struct_1(vec4<u32>(19756u, 39407u, 4294967295u, 98055u)), Struct_1(vec4<u32>(6665u, 1u, 47988u, 4294967295u)), Struct_1(vec4<u32>(6441u, 43813u, 4294967295u, 0u)), Struct_1(vec4<u32>(53834u, 43261u, 1u, 67748u)), Struct_1(vec4<u32>(4294967295u, 0u, 23155u, 52025u)), Struct_1(vec4<u32>(0u, 1u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 1u, 9447u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 39290u, 4294967295u, 0u)), Struct_1(vec4<u32>(91798u, 0u, 0u, 0u)));

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    return Struct_1(~(~vec4<u32>(0u, u_input.a.x, ~arg_0, ~u_input.a.x)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-20434i, _wgslsmith_dot_vec2_i32(vec2<i32>(-42902i, select(20392i, 33361i, global0[_wgslsmith_index_u32(101519u, 27u)])), abs(vec2<i32>(1i, 1i)))), 2265i, firstLeadingBit(firstTrailingBit(23133i)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(-1162f + -1172f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-832f, _wgslsmith_f_op_f32(-209f * -108f))) * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(257f)))));
    var var_2 = vec3<bool>(!select(global0[_wgslsmith_index_u32(arg_2.a.x, 27u)], true, global0[_wgslsmith_index_u32(~u_input.b, 27u)] != global0[_wgslsmith_index_u32(~arg_2.a.x, 27u)]), !global0[_wgslsmith_index_u32(arg_3.a.x, 27u)], global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_div_u32(0u, arg_0.x), _wgslsmith_sub_u32(0u, ~u_input.b)), 27u)]);
    let var_3 = ~(~func_2(arg_1.a.x, select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(arg_1.a.x ^ arg_2.a.x, 27u)])).a.x);
    let var_4 = vec2<u32>(57812u, _wgslsmith_sub_u32(0u, ~(~arg_2.a.x & var_3)));
    return -1000f;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 11>();
    var var_0 = 1144f;
    let var_1 = true;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(arg_3.a.yw, u_input.a.zx, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 27u)])), arg_3, func_2(108920u, vec3<bool>(var_1, true, true)), arg_3)) - _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(min(1011f, -1792f)))), _wgslsmith_f_op_f32(min(arg_2.x, -1147f))));
    var var_2 = arg_2;
    return ~u_input.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec3_u32(min(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(15293u, 1u, arg_2.a.x) & vec3<u32>(arg_2.a.x, 1u, arg_2.a.x)), arg_2.a.xzz), vec3<u32>(23454u, arg_0.x, 1u)), u_input.a);
    var var_1 = 0u;
    var_1 = ~(~arg_2.a.x);
    let var_2 = Struct_1(arg_0);
    global3 = 1267f;
    return -arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 16>();
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_0 = func_4(~_wgslsmith_div_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(28253u, 4294967295u, 21470u, 4294967295u), vec4<u32>(u_input.c, 18197u, 0u, u_input.b)), vec4<u32>(u_input.c, u_input.c, u_input.b, 2023u), global1[_wgslsmith_index_u32(45875u, 16u)]), vec4<u32>(func_1(-830f, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 4294967295u)), vec2<f32>(-730f, -244f), Struct_1(vec4<u32>(u_input.a.x, 0u, 4294967295u, 5532u))), ~12312u, u_input.c ^ u_input.b, countOneBits(u_input.c))), countOneBits(-(vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, -1i))), func_2(7133u, vec3<bool>(all(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(24285u, 27u)]), global0[_wgslsmith_index_u32(u_input.c, 27u)])), global0[_wgslsmith_index_u32(countOneBits(~2619u), 27u)], true)), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(max(select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.c, u_input.b, u_input.b, 0u), true), vec4<u32>(35u, 0u, u_input.a.x, u_input.b)) >> (vec4<u32>(~0u, u_input.a.x, 12867u, abs(u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(~9477u, 28646u, abs(func_1(1000f, Struct_1(vec4<u32>(u_input.c, 4294967295u, 74333u, u_input.c)), vec2<f32>(-1182f, -487f), global2[_wgslsmith_index_u32(u_input.c, 11u)])), _wgslsmith_sub_u32(51587u, 1u))));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(~u_input.a.zy, Struct_1(_wgslsmith_clamp_vec4_u32(var_1.a, ~vec4<u32>(1u, u_input.c, var_1.a.x, u_input.a.x), var_1.a)), func_2(~(~1u), vec3<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 27u)], !global0[_wgslsmith_index_u32(13832u, 27u)])), var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -2242f, false))) - _wgslsmith_div_f32(-848f, _wgslsmith_f_op_f32(sign(1000f)))), 1f)));
    var var_2 = var_1;
    let var_3 = func_2(1u << (abs(var_2.a.x) % 32u), vec3<bool>(_wgslsmith_mult_u32(var_2.a.x, _wgslsmith_clamp_u32(45676u, 14921u, var_2.a.x)) <= ~u_input.c, all(vec3<bool>(global0[_wgslsmith_index_u32(~67379u, 27u)], false, true)), true));
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~var_3.a.x)), var_3.a.x ^ 1u, -3049i, i32(-1i) * -42795i, 0u);
}

