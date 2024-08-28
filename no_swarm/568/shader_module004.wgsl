struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<u32>(19121u, 28593u, 4294967295u));

var<private> global1: vec4<i32>;

var<private> global2: Struct_4;

var<private> global3: array<u32, 15>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = arg_3;
    global2 = Struct_4(u_input.b.xx, ~global0.a.x, global2.c, arg_1, ~select(~global0.a, arg_1.a.xzy ^ vec3<u32>(u_input.a.x, 48998u, 1u), true) & vec3<u32>(arg_0.e.x, 4294967295u, 1u));
    var var_1 = global0.a.x;
    global1 = abs(vec4<i32>(select(1i, ~global1.x, false) ^ _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(1i, -59413i, arg_2.x)), 21755i, global1.x, i32(-1i) * -abs(-829i)));
    var_1 = (arg_3 << (~(~7991u) % 32u)) ^ ~1426u;
    return abs(-firstTrailingBit(max(global1.x, ~2147483647i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    var var_0 = ~(~arg_1 | min(_wgslsmith_div_i32(func_3(Struct_4(vec2<u32>(u_input.d.x, global0.a.x), 97044u, Struct_2(u_input.b, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.c.b.x, 15u)], 15u)], global0.a.x, 11147u)), global2.d, global2.d.a.wzw), global2.d, global1.wzy, u_input.d.x), _wgslsmith_add_i32(arg_1, -33878i)), ~19357i));
    let var_1 = -global1.yw;
    let var_2 = abs(13421u);
    global3 = array<u32, 15>();
    global1 = vec4<i32>(arg_1, ~_wgslsmith_div_i32(-(arg_1 >> (u_input.c.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(61917i, global1.x) << (vec2<u32>(global0.a.x, global2.c.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(global1.wy, vec2<i32>(global1.x, var_1.x)))), firstTrailingBit(0i), firstLeadingBit(-1i));
    return _wgslsmith_dot_vec3_u32(global0.a | (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43821u, var_2, 0u), vec4<u32>(13332u, 1u, 0u, 34195u)), _wgslsmith_add_u32(global0.a.x, 0u), global2.e.x) | ~abs(vec3<u32>(96414u, 41405u, 73012u))), global2.c.b);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_1.x, 4294967295u), 8063u ^ _wgslsmith_add_u32(u_input.b.x << (global0.a.x % 32u), ~39947u), _wgslsmith_mult_u32(_wgslsmith_div_u32(func_2(vec4<f32>(-487f, 418f, 386f, -376f), -7414i), ~global2.a.x), ~89606u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x | 6551u, u_input.a.x), select(global0.a.xy >> (u_input.b.ww % vec2<u32>(32u)), max(vec2<u32>(20052u, 45703u), arg_1), all(vec4<bool>(false, false, false, true)))), ~25204u, ~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 0u) ^ global0.a.x, 15u)]));
    let var_1 = Struct_4(arg_1, firstLeadingBit(global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(u_input.c, global0.a.yx) | global0.a.x), 15u)]), Struct_2(~global2.d.a << (~_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, 33982u, 0u, global2.c.a.x), global2.d.a) % vec4<u32>(32u)), vec3<u32>(1u, ~abs(u_input.e.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(130712u, 48764u, u_input.b.x, var_0), u_input.b)), ~firstLeadingBit(~(vec3<u32>(68632u, 46824u, global0.a.x) << (global0.a % vec3<u32>(32u)))));
    let var_2 = vec3<i32>(arg_0.x, arg_0.x | firstTrailingBit(_wgslsmith_dot_vec3_i32(global1.xww, arg_0)), _wgslsmith_dot_vec2_i32(~global1.zz, _wgslsmith_div_vec2_i32(-global1.xx, abs(vec2<i32>(arg_0.x, global1.x))))) << (~var_1.e % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(304f, -823f, true)), _wgslsmith_f_op_f32(f32(-1f) * -303f))))));
    global3 = array<u32, 15>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c;
    var var_1 = ~(vec3<i32>(-1i) * -func_1(vec3<i32>(global1.x, global1.x, global1.x), global0.a.zy));
    let var_2 = select(select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_3 = Struct_3(8004i, -5531i, (-global1.x > -min(1i, -2147483647i)) == true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-453f, 2598f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1207f, 110f), vec2<f32>(-1391f, -855f))))) - vec2<f32>(1f, 1f)));
}

