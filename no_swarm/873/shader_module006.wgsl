struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool;

var<private> global2: array<f32, 7>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = vec4<u32>(~u_input.b.x, ~(~u_input.b.x ^ ~u_input.b.x), firstLeadingBit(~(~0u) ^ u_input.b.x), 50440u);
    let var_1 = arg_1 >= 260f;
    let var_2 = abs(firstTrailingBit(select(vec3<i32>(-2147483647i, 2147483647i, -21921i), max(-vec3<i32>(u_input.c, 0i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(14346i, u_input.a.x, 1i), vec3<i32>(0i, u_input.c, -1i))), false)));
    let var_3 = abs(~countOneBits(firstLeadingBit(u_input.b | vec2<u32>(u_input.b.x, u_input.b.x))));
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 7u)], -313f))))), -372f)) + _wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(1199f, !vec2<bool>(global3.b.x, false));
    global3 = Struct_1(_wgslsmith_f_op_f32(func_3(-456f, -2249f)), !select(var_1.b, !var_1.b, var_0.b.x));
    var var_2 = vec4<bool>(true, true, select(arg_1.b.x, false, (u_input.b.x > u_input.b.x) && any(vec4<bool>(true, var_1.b.x, true, arg_1.b.x))), !any(select(select(vec4<bool>(false, arg_1.b.x, false, true), vec4<bool>(true, false, global3.b.x, var_0.b.x), vec4<bool>(false, var_1.b.x, var_0.b.x, true)), vec4<bool>(true, false, true, false), u_input.b.x == u_input.b.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_0.a)))));
    return ~(~(~8348u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<u32>(13711u, firstLeadingBit(~min(4294967295u, u_input.b.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, u_input.b.x), vec2<u32>(arg_2.x >> (0u % 32u), 4294967295u)), 12324u);
    var var_1 = arg_3;
    let var_2 = arg_3;
    var var_3 = firstLeadingBit(~(~abs(vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x))));
    global2 = array<f32, 7>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1139f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_2.b);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1315f, global3.a, global3.a, 2090f), vec4<f32>(global0.x, global0.x, global2[_wgslsmith_index_u32(1u, 7u)], -1242f)))))));
    var var_0 = -vec4<i32>(~(-2147483647i), ~reverseBits(1i), -_wgslsmith_mod_i32(64620i, ~18652i), 1i);
    let var_1 = arg_0.x;
    global3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 804f, 1558f)))), ~((~vec2<i32>(var_0.x, -59230i) << (~vec2<u32>(u_input.b.x, 13102u) % vec2<u32>(32u))) ^ (u_input.a >> (select(vec2<u32>(25410u, u_input.b.x), u_input.b, arg_0.x) % vec2<u32>(32u)))), vec4<u32>(func_2(vec4<f32>(_wgslsmith_f_op_f32(879f * 380f), _wgslsmith_f_op_f32(floor(global3.a)), _wgslsmith_f_op_f32(738f * -417f), _wgslsmith_f_op_f32(-global3.a)), Struct_1(global3.a, vec2<bool>(global3.b.x, false))), abs(abs(1u)), ~u_input.b.x, ~(~(~u_input.b.x))), Struct_1(1045f, vec2<bool>(_wgslsmith_add_i32(var_0.x, -5390i) > -2147483647i, true)));
    var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x | select(var_0.x, 2147483647i, true), firstTrailingBit(select(11453i, -1i, global3.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, var_0.x, -1i), ~vec4<i32>(var_0.x, 7720i, -5864i, var_0.x)), 2147483647i), ~countOneBits(-(vec4<i32>(u_input.a.x, -14730i, -42385i, u_input.a.x) & vec4<i32>(1i, var_0.x, 0i, 1i))));
    return func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, -925f, global2[_wgslsmith_index_u32(u_input.b.x ^ 1u, 7u)], 691f)))), vec2<i32>(~u_input.c, var_0.x), vec4<u32>(0u, ~4294967295u, firstLeadingBit(u_input.b.x & 10838u), u_input.b.x) ^ ~vec4<u32>(max(33387u, 16902u), u_input.b.x, u_input.b.x, u_input.b.x << (88641u % 32u)), Struct_1(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~3321u >> (countOneBits(u_input.b.x) % 32u), 7u)], -664f)), arg_0.xz));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    global3 = func_1(select(select(select(!vec4<bool>(global3.b.x, true, false, global3.b.x), !vec4<bool>(false, true, global3.b.x, global3.b.x), select(vec4<bool>(global3.b.x, false, true, false), vec4<bool>(global3.b.x, true, global3.b.x, false), true)), vec4<bool>(any(vec2<bool>(global3.b.x, global3.b.x)), any(vec2<bool>(arg_0.b.x, true)), 1u <= u_input.b.x, !global3.b.x), arg_0.b.x), select(select(!vec4<bool>(arg_0.b.x, true, global3.b.x, global3.b.x), !vec4<bool>(true, false, arg_0.b.x, global3.b.x), true), !(!vec4<bool>(false, arg_0.b.x, true, false)), select(!vec4<bool>(false, true, global3.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), vec4<bool>(true, arg_0.b.x, global3.b.x, arg_0.b.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-13643i, u_input.a.x), u_input.a) >= 1i));
    global2 = array<f32, 7>();
    return vec3<bool>(any(!(!vec4<bool>(arg_0.b.x, global3.b.x, global3.b.x, true))), !func_1(select(vec4<bool>(true, global3.b.x, arg_0.b.x, true), !vec4<bool>(false, arg_0.b.x, global3.b.x, true), vec4<bool>(arg_0.b.x, global3.b.x, false, global3.b.x))).b.x, any(global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global3.b.x;
    let var_1 = Struct_1(1592f, global3.b);
    var var_2 = !(!(!func_5(func_1(vec4<bool>(false, false, false, true)), vec3<f32>(-268f, global0.x, global3.a))));
    let var_3 = true;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(global0.x, var_1.a)), func_1(!(!select(vec4<bool>(var_1.b.x, true, true, false), vec4<bool>(false, true, var_2.x, false), true))).b);
    let var_5 = _wgslsmith_f_op_f32(-global3.a);
    let var_6 = func_1(!select(vec4<bool>(global3.a >= 515f, var_0, var_1.b.x, var_3), vec4<bool>(any(vec4<bool>(var_1.b.x, var_0, false, global3.b.x)), false || var_3, true, any(vec3<bool>(true, false, var_4.b.x))), vec4<bool>(!var_4.b.x, -131f > global0.x, false, true)));
    var var_7 = Struct_1(_wgslsmith_f_op_f32(-var_6.a), !(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_3), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 38849u) | vec3<u32>(u_input.b.x, 5458u, u_input.b.x), max(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(0u, u_input.b.x, 1u)))), ~1u, (vec4<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x, u_input.b.x) & abs(countOneBits(vec4<u32>(u_input.b.x, 61297u, 0u, u_input.b.x)))) & ~vec4<u32>(func_2(vec4<f32>(var_1.a, 251f, 451f, var_7.a), var_6), u_input.b.x, firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 40814u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 7u)]) - var_6.a))));
}

