struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-530f, -2410f, 835f, 1000f, 865f, 1045f, 2033f, -734f, -1122f, 740f, -194f, -1386f, -188f, 241f, -1000f, -207f, 1596f, -1329f);

var<private> global1: array<i32, 14> = array<i32, 14>(2147483647i, 26677i, i32(-2147483648), 35843i, 41748i, -5283i, 37599i, 21158i, 12364i, -1i, -35977i, -1i, -39633i, -1i);

var<private> global2: array<vec3<i32>, 7>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    global1 = array<i32, 14>();
    global3 = array<Struct_1, 11>();
    var var_0 = Struct_2(_wgslsmith_mult_i32(1i, max(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]), 69241i)) ^ u_input.a.x);
    let var_1 = _wgslsmith_clamp_vec4_u32(arg_0, _wgslsmith_clamp_vec4_u32(firstLeadingBit(arg_0 | arg_0), ~vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x) | min(vec4<u32>(0u, 4294967295u, arg_0.x, 62353u) & vec4<u32>(44430u, 1u, 198u, 4294967295u), arg_0), ~(~abs(arg_0))), select(countOneBits(~(arg_0 >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u) % vec4<u32>(32u)))), firstLeadingBit(select(vec4<u32>(4294967295u, arg_0.x, 1u, arg_0.x), arg_0, false)), 0i != min(~u_input.b.x, 2147483647i)));
    global0 = array<f32, 18>();
    return (arg_0.x & 0u) > arg_0.x;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = func_3(~(~select(vec4<u32>(1u, 1u, 1u, 106757u), vec4<u32>(1u, 1u, 1u, 1u), true)), global3[_wgslsmith_index_u32(0u, 11u)]);
    let var_1 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = u_input.a;
    var var_3 = 1u;
    global3 = array<Struct_1, 11>();
    return var_1.a.x;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~1u, 18u)], global0[_wgslsmith_index_u32(firstLeadingBit(20895u), 18u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~19580u, firstLeadingBit(15662u)), 18u)]))), 706f));
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))));
    let var_2 = func_2(Struct_2(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(17345u, 14u)], -1i)) >> (1u % 32u)));
    let var_3 = Struct_2(~global1[_wgslsmith_index_u32(~45548u, 14u)]);
    let var_4 = Struct_2(_wgslsmith_clamp_i32(select(var_3.a, global1[_wgslsmith_index_u32(0u, 14u)], all(select(vec4<bool>(false, var_2, var_2, var_1.x), vec4<bool>(var_1.x, var_2, var_2, var_1.x), var_1.x))), countOneBits(~25060i >> (1u % 32u)), abs(var_3.a) & ~_wgslsmith_mod_i32(78541i, -1i)));
    return _wgslsmith_div_u32(~7275u, ~(~4294967295u));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec3<i32>, 7>();
    let var_0 = Struct_2(abs(~(~countOneBits(-90410i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -1014f)))), arg_2)));
    var var_2 = true;
    var var_3 = false;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 43349u, 112529u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 37218u, 1u), vec3<u32>(4294967295u, 8551u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(64729u, 1u, 1u), vec3<u32>(0u, 7913u, 1u), vec3<u32>(42703u, 1u, 4294967295u)), ~vec3<u32>(1u, 8737u, 4294967295u))) << (abs(abs(vec3<u32>(15925u, 4294967295u, 1u))) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(48391u, func_1()), _wgslsmith_clamp_u32(~0u, countOneBits(43378u), ~4294967295u)), countOneBits(~vec2<u32>(0u, 4294967295u))), 14u)], 1f, global3[_wgslsmith_index_u32(52066u, 11u)]);
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 15558u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 43369u, 13638u), countOneBits(vec3<u32>(4294967295u, 38588u, 0u))), ~(~4294967295u)) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(~47955u, 46707u), ~max(0u, 20948u)) % 32u)), 11u)];
    global3 = array<Struct_1, 11>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, (vec3<i32>(1i, i32(-1i) * -27760i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, u_input.c.x), vec2<i32>(-11782i, 2147483647i))) >> ((vec3<u32>(15598u, 18208u, 67918u) ^ select(vec3<u32>(733u, 43592u, 4294967295u), vec3<u32>(4294967295u, 2005u, 1u), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))) % vec3<u32>(32u))) | vec3<i32>(-2147483647i, var_0.a, 0i));
}

