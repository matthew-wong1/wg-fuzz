struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(41602u, 0u, 110439u, 1u);

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(2565u, 35109u, 20700u, 19757u), vec4<u32>(12860u, 0u, 4294967295u, 9876u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(8991u, 14767u, 29595u, 4294967295u), vec4<u32>(13303u, 22718u, 0u, 0u), vec4<u32>(4294967295u, 1u, 52601u, 230u), vec4<u32>(17787u, 28002u, 8452u, 4294967295u), vec4<u32>(17759u, 4294967295u, 1u, 0u), vec4<u32>(88978u, 34453u, 96735u, 4294967295u), vec4<u32>(1u, 4294967295u, 31944u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u));

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = global0.wy;
    global1 = array<vec4<u32>, 11>();
    var var_1 = 295f;
    let var_2 = vec2<bool>(false & arg_0.x, !(!all(vec2<bool>(arg_3.c.x, true))));
    global0 = firstTrailingBit(arg_1.b | global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, _wgslsmith_div_u32(32096u, _wgslsmith_dot_vec2_u32(arg_1.b.yy, arg_3.b.zy)), 1u), 11u)]);
    return vec4<bool>(true, all(arg_0.zz), var_2.x, _wgslsmith_f_op_f32(min(827f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1118f)))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) - 1136f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = arg_3;
    global2 = !arg_3;
    global0 = ~(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, u_input.b, arg_0.b.x, 4294967295u), arg_0.b), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 35031u, 58377u, 0u), arg_0.b), select(func_3(vec4<bool>(arg_3, false, true, true), Struct_1(arg_0.a, global1[_wgslsmith_index_u32(arg_0.b.x, 11u)], vec4<bool>(arg_0.c.x, arg_0.c.x, arg_3, false)), -18524i, arg_0), !arg_0.a, arg_0.a.x)) ^ ~(~(~arg_0.b)));
    let var_1 = select(!vec2<bool>(select(arg_3, arg_3, arg_3) && true, all(vec4<bool>(arg_3, arg_3, arg_0.c.x, arg_0.c.x)) != all(vec3<bool>(arg_0.c.x, arg_3, true))), arg_0.c.zx, !arg_0.a.zz);
    global1 = array<vec4<u32>, 11>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    global0 = vec4<u32>(abs(~func_2(arg_1, func_2(arg_0, arg_0.b.wwx, 315f, arg_0.a.x).b.www, _wgslsmith_f_op_f32(trunc(702f)), true).b.x), ~global0.x, 1u, 1u);
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(u_input.b & min(24135u, ~_wgslsmith_mod_u32(u_input.b, 23118u)), 1u);
    var var_1 = ~1u >> (~func_4(func_2(Struct_1(vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(global0.x, 11u)], vec4<bool>(false, false, true, false)), global0.zxy, _wgslsmith_f_op_f32(-759f * 1198f), true), func_2(Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(71607u, var_0, 1u, global0.x), vec4<bool>(false, true, true, false)), ~global0.yyw, _wgslsmith_f_op_f32(floor(478f)), false), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-183f, 272f))) % 32u);
    var var_2 = func_2(Struct_1(vec4<bool>(true, true, true, true), ~_wgslsmith_div_vec4_u32(func_2(Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.b, var_0, global0.x, 7175u), vec4<bool>(false, false, false, true)), global0.yyw, 1472f, true).b, ~vec4<u32>(0u, u_input.b, 4294967295u, 0u)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))), global0.xzw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(ceil(518f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(809f)) - _wgslsmith_f_op_f32(max(-500f, _wgslsmith_f_op_f32(f32(-1f) * -128f))))), u_input.a == 1i);
    var var_3 = var_2.c.x;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.b), 0u), 11u)];
    return func_2(Struct_1(func_3(vec4<bool>(any(var_2.c.yyw), any(var_2.a.yz), var_2.a.x, true && var_2.a.x), Struct_1(!vec4<bool>(var_2.a.x, var_2.c.x, var_2.a.x, var_2.c.x), ~global1[_wgslsmith_index_u32(1u, 11u)], var_2.c), 33212i, Struct_1(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(42778u, 11u)], vec4<bool>(var_2.c.x, false, false, false))), select(global1[_wgslsmith_index_u32(var_0, 11u)] << (_wgslsmith_add_vec4_u32(var_2.b, var_2.b) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(func_4(func_2(Struct_1(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<u32>(0u, var_2.b.x, 0u, 19121u), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x)), global0.zzx, 472f, var_2.c.x), func_2(Struct_1(var_2.c, var_2.b, var_2.c), vec3<u32>(var_0, var_0, 1u), -441f, false), vec4<bool>(true, false, var_2.c.x, var_2.c.x), _wgslsmith_f_op_f32(min(-170f, -331f))), 11u)], vec4<bool>(4294967295u < var_0, true, var_2.a.x, var_2.a.x)), var_2.a), var_2.b.wzw, 894f, all(func_3(vec4<bool>(var_2.a.x, all(vec4<bool>(var_2.a.x, true, var_2.c.x, true)), true, var_2.a.x), func_2(Struct_1(vec4<bool>(false, var_2.c.x, var_2.a.x, var_2.a.x), global1[_wgslsmith_index_u32(global0.x, 11u)], vec4<bool>(true, var_2.c.x, false, false)), global0.yyx, _wgslsmith_f_op_f32(-1112f - 460f), any(var_2.a)), _wgslsmith_div_i32(u_input.a, -1i) ^ ~u_input.d, func_2(func_2(Struct_1(vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.c.x), var_2.b, vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.c.x)), var_2.b.yxz, 1027f, false), firstTrailingBit(vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -840f), var_2.a.x && var_2.a.x)).yyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(23495u, 37496u, 64393u, var_0.b.x)), ~vec4<u32>(u_input.b, 58984u, u_input.b, 1u)), var_0.b.x, u_input.a);
}

