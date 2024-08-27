struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 16734u, 1u)));

var<private> global3: array<u32, 31>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    global3 = array<u32, 31>();
    var var_0 = u_input.a.x;
    var var_1 = ~(vec4<i32>(u_input.a.x, 43000i, -49417i, u_input.a.x | u_input.a.x) & countOneBits(abs(-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i))));
    return global2.a.a.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(any(global2.a.a), true != global2.a.a.x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, -767f)))), reverseBits(vec3<u32>(global2.a.b.x, reverseBits(u_input.b), abs(28265u))), vec3<u32>(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global2.a.c.x), 1u, 4294967295u)));
    let var_1 = Struct_1(!select(select(vec3<bool>(false, var_0.a.a.x, global2.a.a.x), global2.a.a, true), select(global1[_wgslsmith_index_u32(1u, 13u)], vec3<bool>(var_0.a.a.x, global2.a.a.x, arg_0.x), select(vec3<bool>(true, true, false), global2.a.a, vec3<bool>(false, true, false))), vec3<bool>(true, false, true)), ~_wgslsmith_mod_vec3_u32(global2.a.c, ~(~vec3<u32>(119569u, u_input.b, 4294967295u))), _wgslsmith_div_vec3_u32(var_0.a.c, vec3<u32>(abs(30900u), ~8538u, ~u_input.b)));
    let var_2 = var_0.a;
    let var_3 = vec2<bool>(!(!all(!vec3<bool>(arg_0.x, false, var_2.a.x))), true);
    let var_4 = Struct_2(Struct_1(vec3<bool>(any(vec4<bool>(var_2.a.x, false, var_0.a.a.x, true)) && (var_0.a.a.x || true), var_2.a.x, func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1213f), vec2<f32>(1000f, -2226f))))), firstLeadingBit(~(global2.a.c & vec3<u32>(348u, global3[_wgslsmith_index_u32(global2.a.c.x, 31u)], var_1.b.x))), vec3<u32>(25915u, abs(3609u), ~(~43617u))));
    return Struct_2(Struct_1(var_2.a, ~select(vec3<u32>(global2.a.b.x, global3[_wgslsmith_index_u32(64872u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]) & var_0.a.b, vec3<u32>(var_1.c.x, var_0.a.c.x, u_input.b) & var_0.a.c, true), var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global3 = array<u32, 31>();
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(select(45200u, arg_3.a.b.x, false), abs(1u), func_2(vec2<bool>(true, false)).a.b.x), ~1257u), arg_0.c.x ^ ~global3[_wgslsmith_index_u32(abs(u_input.b), 31u)], _wgslsmith_dot_vec2_u32(~global2.a.b.zx, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_3.a.b.xz, vec2<u32>(arg_0.b.x, arg_0.b.x)), global2.a.b.xz >> (arg_3.a.c.zy % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 47672u), vec2<u32>(46899u, arg_3.a.b.x)))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.a.b.x, _wgslsmith_mult_u32(global2.a.b.x, max(arg_3.a.b.x, 1u))), 31u)]), vec4<u32>(global3[_wgslsmith_index_u32(arg_3.a.c.x, 31u)], 13098u, u_input.b, 1u), reverseBits(max(abs(~vec4<u32>(u_input.b, 0u, 0u, 1u)), ~max(vec4<u32>(0u, global2.a.b.x, global2.a.c.x, global3[_wgslsmith_index_u32(global2.a.c.x, 31u)]), vec4<u32>(u_input.b, 50641u, global2.a.c.x, global2.a.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(685f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2059f, 1505f) + _wgslsmith_f_op_f32(abs(1827f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2536f, 790f)) * -856f), false))));
    global1 = array<vec3<bool>, 13>();
    let var_2 = arg_3.a;
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> f32 {
    var var_0 = vec3<u32>(0u, 22185u, 6022u);
    var var_1 = func_4(global2.a, arg_0.yy, true && global2.a.a.x, func_2(arg_0.yz));
    var var_2 = any(vec4<bool>(global2.a.a.x, any(!global2.a.a.yz), any(!vec2<bool>(global2.a.a.x, false)), false)) || var_1.a.x;
    var_1 = func_2(!var_1.a.yz).a;
    var var_3 = Struct_2(func_2(!vec2<bool>(!var_1.a.x, select(true, global2.a.a.x, true))).a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(min(233f, 304f)), false || arg_0.x)) + 353f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_f32(-651f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f * -1000f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(global2.a.a.x, global2.a.a.x, true, true), u_input.a.zz))), 2245f)));
    var var_1 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - vec2<f32>(var_0, _wgslsmith_f_op_f32(127f - -148f))));
    var var_2 = select(_wgslsmith_sub_vec3_u32(global2.a.b, vec3<u32>(global3[_wgslsmith_index_u32(~62146u, 31u)], 19853u, _wgslsmith_sub_u32(1u, u_input.b))) | _wgslsmith_add_vec3_u32(~global2.a.b, abs(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)))), global2.a.c, all(global2.a.a));
    global3 = array<u32, 31>();
    let var_3 = func_4(global2.a, !select(!func_2(vec2<bool>(false, global2.a.a.x)).a.a.zz, vec2<bool>(global2.a.a.x, any(vec2<bool>(true, global2.a.a.x))), vec2<bool>(global2.a.a.x || true, global2.a.a.x && global2.a.a.x)), false, func_2(func_4(global2.a, vec2<bool>(false, global2.a.a.x), func_2(!global2.a.a.yz).a.a.x, func_2(select(vec2<bool>(global2.a.a.x, global2.a.a.x), vec2<bool>(true, false), vec2<bool>(true, global2.a.a.x)))).a.zy));
    var var_4 = !vec4<bool>(!(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) > -20865i), any(!vec3<bool>(false, var_3.a.x, true)), !all(vec2<bool>(global2.a.a.x, var_3.a.x)), !var_3.a.x);
    var_2 = firstTrailingBit((~(~vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 31u)], 4294967295u, global3[_wgslsmith_index_u32(var_2.x, 31u)])) | global2.a.c) << ((global2.a.c >> (select(var_3.b, global2.a.c, !vec3<bool>(true, var_3.a.x, true)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(!(!vec4<bool>(global2.a.a.x, true, var_3.a.x, var_3.a.x)), select(select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx, vec2<bool>(false, true)), u_input.a.zy, var_3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-491f, -1334f)))), var_0), !select(true, var_4.x, true))), _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), -639f), ~(~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)) >> ((vec4<u32>(global2.a.c.x, ~0u, var_2.x, 37147u) << ((~vec4<u32>(50944u, 0u, global3[_wgslsmith_index_u32(4294967295u, 31u)], u_input.b) | ~vec4<u32>(5965u, 1u, 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

