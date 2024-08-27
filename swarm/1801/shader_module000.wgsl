struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(true, 507f), -26981i, 1u), Struct_4(Struct_3(true, -1943f), -1i, 4294967295u), Struct_4(Struct_3(true, 593f), -9284i, 0u), Struct_4(Struct_3(false, 335f), -1i, 55650u), Struct_4(Struct_3(true, 2757f), i32(-2147483648), 1996u), Struct_4(Struct_3(true, -1772f), 0i, 0u), Struct_4(Struct_3(false, 1793f), -31043i, 4294967295u), Struct_4(Struct_3(false, 1088f), -44951i, 0u), Struct_4(Struct_3(true, 1479f), -2676i, 60554u));

var<private> global2: array<u32, 11>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    global3 = array<Struct_2, 22>();
    global0 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-global0.b))), -1513f)));
    var var_0 = global3[_wgslsmith_index_u32(10607u, 22u)];
    var_0 = Struct_2(arg_0.a);
    global0 = Struct_3(select(global0.a, any(vec2<bool>(false, true)), any(!select(vec3<bool>(arg_0.a, false, global0.a), vec3<bool>(arg_1.a, true, false), vec3<bool>(false, global0.a, true)))), global0.b);
    return vec4<u32>(4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, global2[_wgslsmith_index_u32(0u, 11u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)] % 32u), abs(1943u)), ~vec3<u32>(global2[_wgslsmith_index_u32(37832u, 11u)], global2[_wgslsmith_index_u32(121243u, 11u)], 0u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(0u, 11u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 4294967295u, 80522u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16763u, 11u)], 11u)], global2[_wgslsmith_index_u32(0u, 11u)], 38213u)) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~4294967295u ^ firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9778u, 11u)], 11u)]), 11u)] | _wgslsmith_add_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54747u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14937u, 11u)], 11u)], false), _wgslsmith_dot_vec3_u32(vec3<u32>(24533u, 10377u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21082u, 11u)], 11u)], 0u, 26685u))), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(54799u, 11u)], select(76026u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], false)) << (global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 11u)]), 11u)] % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = (!all(select(vec4<bool>(arg_1.a, true, false, global0.a), vec4<bool>(false, false, true, true), arg_1.b)) | arg_0.a) != false;
    let var_1 = Struct_3(select(24901u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 11u)], 1u, global2[_wgslsmith_index_u32(31085u, 11u)], 36067u), func_3(arg_0, Struct_2(true), arg_1.c.x)), true) > 34585u, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(arg_3.x + arg_3.x))));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 11u)], 4294967295u, ~3497u), _wgslsmith_add_u32(~48740u, 0u)), ~firstLeadingBit(~53980u)) >> (~18423u % 32u);
    var var_3 = Struct_5(-822f, arg_3.xyz, ~(~select(vec3<u32>(global2[_wgslsmith_index_u32(1u, 11u)], 4294967295u, 4294967295u), vec3<u32>(var_2, 1u, global2[_wgslsmith_index_u32(var_2, 11u)]), vec3<bool>(false, arg_0.a, var_1.a)) ^ func_3(Struct_2(global0.a), Struct_2(true), _wgslsmith_f_op_f32(abs(global0.b))).xwz), global1[_wgslsmith_index_u32(1u, 9u)]);
    let var_4 = vec2<u32>(firstLeadingBit(min(1u >> (global2[_wgslsmith_index_u32(1u, 11u)] % 32u), ~4294967295u)), _wgslsmith_dot_vec2_u32(var_3.c.yx, max(_wgslsmith_add_vec2_u32(var_3.c.zy, var_3.c.zx), var_3.c.zz))) << (abs(~countOneBits(vec2<u32>(1u, 0u))) % vec2<u32>(32u));
    return vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * var_1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.b)))), _wgslsmith_div_f32(2014f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -1124f)), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-1286f, var_3.b.x)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec2<f32>(-408f, global0.b);
    let var_1 = _wgslsmith_f_op_f32(-904f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), global0.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1543f, global0.b, -492f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(765f, global0.b, 1000f) * vec3<f32>(var_0.x, var_1, var_0.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.b, var_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-655f, 744f, 882f), vec3<f32>(-1089f, var_1, -195f)))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29437u, 11u)], 22u)], Struct_1(false, false, var_0), u_input.a.x, vec4<f32>(-1211f, -1516f, -177f, -981f))), _wgslsmith_div_vec3_f32(vec3<f32>(-892f, 373f, var_0.x), vec3<f32>(var_1, var_0.x, var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, -183f)), _wgslsmith_f_op_f32(f32(-1f) * -1205f))));
    global0 = Struct_3(false, -336f);
    global0 = Struct_3(true && global0.a, -204f);
    return StorageBuffer(~global2[_wgslsmith_index_u32(func_3(Struct_2(global0.a), Struct_2(all(vec2<bool>(global0.a, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(max(327f, -2277f)))).x, 11u)], select(-54152i, abs(abs(-32927i)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(any(!select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(true, true, global0.a, false), !global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global3 = array<Struct_2, 22>();
    global3 = array<Struct_2, 22>();
    var var_0 = select(vec4<bool>(true, true, all(select(vec4<bool>(false, global0.a, global0.a, global0.a), !vec4<bool>(false, global0.a, global0.a, true), true)), !(!any(vec3<bool>(global0.a, global0.a, global0.a)))), !(!vec4<bool>(false, global0.a, global0.b < -1000f, true)), true);
    var var_1 = all(select(var_0.xzz, vec3<bool>(-43100i >= u_input.a.x, !global0.a, true), select(var_0.ywz, var_0.xwy, true))) & !global0.a;
    let var_2 = Struct_3(global0.a, _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(826f + global0.b))));
    let x = u_input.a;
    s_output = func_1();
}

