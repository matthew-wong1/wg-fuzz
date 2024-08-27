struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<vec2<u32>, 15>;

var<private> global3: array<bool, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = arg_0.a.x;
    let var_2 = 0i;
    var var_3 = Struct_3(Struct_1(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, 33503u), vec2<u32>(4294967295u, 41832u)))), ~_wgslsmith_sub_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(var_2, -44278i))), countOneBits(vec2<i32>(2147483647i, var_2)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 15u)], vec2<u32>(arg_0.a.x, arg_0.a.x)) % vec2<u32>(32u))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1119f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f)))), !select(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], false, true)), vec3<bool>(u_input.a <= 24186u, any(vec2<bool>(false, true)), !global3[_wgslsmith_index_u32(var_3.a.a.x, 27u)]), u_input.a > ~var_3.a.a.x));
    return Struct_1(arg_0.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = select(true, !(select(true, all(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.b.x, false)), true) && !select(true, true, true)), global3[_wgslsmith_index_u32(~22278u, 27u)]);
    var var_1 = func_1(func_1(func_1(Struct_1(vec2<u32>(u_input.a, u_input.a)))));
    let var_2 = func_1(Struct_1(~(~countOneBits(vec2<u32>(11275u, u_input.a)))));
    global0 = array<Struct_4, 31>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -518f);
    return Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(38246u, 15u)] >> (var_1.a % vec2<u32>(32u)), countOneBits(vec2<u32>(1u, 38897u)), vec2<u32>(u_input.a, 90767u))), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, var_2.a.x), var_1.a, vec2<u32>(0u, 0u)), firstLeadingBit(var_2.a & vec2<u32>(u_input.a, var_2.a.x))), var_1.a));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_3(Struct_1(vec2<u32>(u_input.a, abs(u_input.a))), arg_2.zy);
    var var_1 = Struct_3(var_0.a, ~_wgslsmith_mod_vec2_i32(arg_2.yy, ~(~vec2<i32>(1i, var_0.b.x))));
    let var_2 = 16826u;
    var_0 = Struct_3(func_3(arg_1, Struct_2(_wgslsmith_f_op_f32(sign(arg_0.d)), !(!arg_0.b))), var_0.b);
    var var_3 = max(var_0.a.a.x, var_0.a.a.x);
    return any(vec2<bool>(global3[_wgslsmith_index_u32(5390u, 27u)], any(!(!vec4<bool>(false, arg_0.b.x, true, arg_0.c)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(min(global2[_wgslsmith_index_u32(1u, 15u)], ~(~global2[_wgslsmith_index_u32(109430u, 15u)]))));
    let var_1 = true;
    global3 = array<bool, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - -655f))));
    var var_3 = _wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, 40315u), 15u)], max(vec2<u32>(1u, var_0.a.x), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-293f, 840f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-244f, 336f)) + 1022f), _wgslsmith_f_op_f32(func_4(vec2<f32>(1f, 1f), ~1u, func_2(global0[_wgslsmith_index_u32(var_0.a.x, 31u)], vec2<f32>(-602f, -550f), vec3<i32>(-19785i, -2147483647i, -2294i)), vec4<bool>(var_1, false, false, global3[_wgslsmith_index_u32(0u, 27u)]))))));
}

