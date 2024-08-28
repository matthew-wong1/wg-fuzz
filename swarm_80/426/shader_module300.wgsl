struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(false, false, true), true, 34061i, Struct_1(0u, vec4<bool>(true, true, false, true), vec3<u32>(27700u, 50020u, 6662u), false)), Struct_2(vec3<bool>(false, false, true), true, 1i, Struct_1(30076u, vec4<bool>(true, true, false, true), vec3<u32>(0u, 0u, 20414u), false)), Struct_2(vec3<bool>(true, false, false), true, 0i, Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec3<u32>(1u, 35455u, 0u), false)), Struct_2(vec3<bool>(false, true, true), true, 2147483647i, Struct_1(0u, vec4<bool>(true, true, false, true), vec3<u32>(36746u, 19410u, 4294967295u), true)), Struct_2(vec3<bool>(true, true, true), false, -17381i, Struct_1(54649u, vec4<bool>(true, true, true, false), vec3<u32>(30376u, 4389u, 4294967295u), true)), Struct_2(vec3<bool>(false, true, false), true, -1i, Struct_1(0u, vec4<bool>(true, false, true, true), vec3<u32>(1u, 42429u, 1u), true)));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(vec3<bool>(true, false, 1u >= max(_wgslsmith_mod_u32(40307u, 4294967295u), arg_0.c.x)), false, _wgslsmith_mod_i32(firstTrailingBit(countOneBits(_wgslsmith_mult_i32(0i, 23278i))), -27540i), Struct_1(1u, vec4<bool>(all(global1.d.b.wz), all(!arg_0.b.zyz), !arg_0.b.x, min(1u, arg_0.a) > 29550u), _wgslsmith_clamp_vec3_u32(~global1.d.c, vec3<u32>(19108u, global1.d.c.x, _wgslsmith_mod_u32(11112u, 1u)), ~(vec3<u32>(7069u, arg_0.a, 4294967295u) | vec3<u32>(global1.d.a, 8448u, arg_0.c.x))), global1.b));
    var var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(718u, ~(~30839u), arg_0.a | _wgslsmith_sub_u32(var_0.d.a, 2256u), ~global1.d.c.x), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.d.c.x, arg_0.a, 48467u, global1.d.c.x) | firstLeadingBit(vec4<u32>(arg_0.c.x, 49568u, 24348u, arg_0.a)), vec4<u32>(arg_0.a, 0u, var_0.d.a, global1.d.c.x) & _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1.d.a, 5015u), vec4<u32>(var_0.d.c.x, arg_0.a, global1.d.a, 14698u))));
    global0 = array<Struct_2, 6>();
    var_1 = ~vec4<u32>(firstLeadingBit(~(global1.d.a | arg_0.c.x)), arg_0.c.x, 55744u, global1.d.a);
    let var_2 = select(arg_0.a, abs(var_0.d.c.x), true);
    return 1i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(!arg_3.b.xxw, true, ~(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, -17910i), global1.c)), Struct_1(arg_3.c.x, vec4<bool>(arg_3.d, all(global1.d.b.zyw), true, (arg_3.d & global1.a.x) || !arg_3.b.x), abs(abs(global1.d.c)), arg_3.b.x));
    var var_1 = Struct_1(firstTrailingBit(1u), arg_3.b, vec3<u32>(1u, _wgslsmith_dot_vec2_u32(arg_3.c.xy, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), global1.d.c.xy & arg_3.c.zy)), abs(1u & _wgslsmith_sub_u32(arg_3.c.x, arg_3.a))), true);
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_2 = arg_1;
    return vec2<bool>(false, select(any(!(!vec3<bool>(arg_3.b.x, true, false))), all(!(!vec3<bool>(true, var_1.b.x, var_1.b.x))), _wgslsmith_mod_i32(2147483647i, reverseBits(var_0.c)) < ~(-var_0.c)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec2<bool> {
    return func_4(func_3(global1.d) ^ u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-710f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), arg_1.x))), max(global1.c, reverseBits(firstTrailingBit(-1i))), Struct_1(global1.d.a, select(vec4<bool>(all(global1.a.yz), global1.b && global1.b, !global1.b, global1.d.d), !vec4<bool>(global1.a.x, false, true, true), (true | global1.d.b.x) | false), firstLeadingBit(~global1.d.c), any(global1.a)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = -u_input.a.xy | (_wgslsmith_mod_vec2_i32(u_input.b.yy, abs(vec2<i32>(72246i, -12927i))) >> ((arg_0.yy & global1.d.c.yz) % vec2<u32>(32u)));
    var var_1 = Struct_1(arg_0.x, vec4<bool>(global1.d.d, !global1.b, true, all(select(global1.a.xx, func_2(global1.d.c.x, vec3<f32>(1000f, -930f, 704f)), vec2<bool>(false, false)))), ~(~(~arg_0.zyx >> (global1.d.c % vec3<u32>(32u)))), true);
    global0 = array<Struct_2, 6>();
    let var_2 = Struct_2(!(!select(var_1.b.yzy, !var_1.b.xzz, var_1.b.wxy)), !var_1.b.x, var_0.x, Struct_1(_wgslsmith_dot_vec4_u32((vec4<u32>(global1.d.a, 1u, arg_0.x, global1.d.a) ^ vec4<u32>(arg_0.x, 7331u, 4294967295u, 8532u)) << (arg_0 % vec4<u32>(32u)), ~arg_0), !global1.d.b, vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(arg_0.zwx, vec3<u32>(var_1.c.x, var_1.c.x, global1.d.a))), ~57538u, global1.d.c.x), !(-44849i != var_0.x) || select(!global1.a.x, var_1.d, all(vec3<bool>(true, global1.d.b.x, false)))));
    let var_3 = Struct_1(var_1.a, global1.d.b, firstLeadingBit(global1.d.c), !(!func_4(firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1630f, -726f)), i32(-1i) * -17962i, global1.d).x));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(select(select(select(!global1.d.b.zzz, global1.d.b.wyy, !global1.d.b.x), select(select(vec3<bool>(true, false, true), global1.a, global1.b), !global1.a, true), true), select(select(global1.a, select(global1.d.b.yxw, global1.a, true), select(vec3<bool>(global1.b, global1.a.x, true), vec3<bool>(true, true, global1.a.x), global1.a)), !select(vec3<bool>(true, global1.a.x, global1.a.x), vec3<bool>(true, true, false), true), global1.d.b.wzw), vec3<bool>(false, _wgslsmith_f_op_f32(round(-1000f)) > _wgslsmith_div_f32(400f, 1999f), false)), !(!any(!vec3<bool>(global1.d.b.x, true, true))), global1.c, func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(51830u, global1.d.c.x, ~4294967295u, global1.d.a), ~vec4<u32>(global1.d.a, 17484u, global1.d.c.x, global1.d.a) ^ ~vec4<u32>(global1.d.c.x, 0u, 1u, 0u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-940f, -547f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1323f))))))));
    global0 = array<Struct_2, 6>();
    global1 = global0[_wgslsmith_index_u32(~global1.d.c.x, 6u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-685f, 783f)), 319f), 905f)));
    var var_2 = global1.d;
    global0 = array<Struct_2, 6>();
    var_2 = func_1(_wgslsmith_add_vec4_u32(~(firstTrailingBit(vec4<u32>(4294967295u, global1.d.c.x, 55714u, global1.d.a)) >> (~vec4<u32>(var_2.a, global1.d.a, global1.d.c.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(var_2.c.x, var_2.c.x, ~(global1.d.a >> (10127u % 32u)), ~1u)));
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

