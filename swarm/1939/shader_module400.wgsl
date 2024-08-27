struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 11503u, 4294967295u, 1u), vec4<u32>(45926u, 0u, 4294967295u, 9715u), vec4<u32>(8774u, 0u, 24133u, 1u));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2;
    global1 = arg_1;
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(7176u, ~abs(u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), 4746u), firstLeadingBit(u_input.a.x) ^ _wgslsmith_div_u32(45193u, 1u))), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1285u));
    let var_2 = u_input.b.x;
    var var_3 = ~var_1.zzy;
    return arg_1;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec3<bool>(true, false, false), global1.b);
    global0 = array<vec4<u32>, 3>();
    let var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(622f - 1968f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), Struct_1(select(var_0.a, global1.a, global1.a), select(global1.b, !var_0.a.xy, var_0.a.x)), select(select(!vec4<bool>(true, global1.b.x, true, var_0.b.x), vec4<bool>(global1.a.x, false, global1.b.x, true), vec4<bool>(var_0.a.x, true, global1.a.x, var_0.b.x)), select(vec4<bool>(false, global1.a.x, true, true), !vec4<bool>(global1.a.x, var_0.a.x, global1.a.x, global1.a.x), true), any(select(vec4<bool>(false, false, global1.a.x, false), vec4<bool>(var_0.b.x, false, var_0.a.x, false), global1.a.x)))), !select(select(select(vec4<bool>(var_0.a.x, var_0.b.x, true, true), vec4<bool>(false, false, global1.a.x, true), true), vec4<bool>(global1.b.x, var_0.b.x, var_0.a.x, false), select(vec4<bool>(global1.b.x, true, false, global1.b.x), vec4<bool>(global1.a.x, true, global1.a.x, true), vec4<bool>(global1.a.x, true, false, true))), select(select(vec4<bool>(false, global1.b.x, var_0.a.x, global1.b.x), vec4<bool>(true, var_0.b.x, true, false), global1.a.x), !vec4<bool>(false, var_0.a.x, global1.a.x, true), global1.b.x), !(!vec4<bool>(false, false, var_0.a.x, var_0.b.x))));
    var var_2 = func_2(-1000f, Struct_1(select(vec3<bool>(all(vec2<bool>(true, global1.a.x)), u_input.b.x >= -1i, var_1.a.x), vec3<bool>(!var_0.b.x, true, var_1.a.x), any(!global1.a)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -167f), func_2(-1490f, func_2(1111f, Struct_1(vec3<bool>(global1.b.x, false, var_1.b.x), vec2<bool>(false, global1.b.x)), vec4<bool>(var_1.a.x, true, var_1.b.x, var_1.a.x)), !vec4<bool>(var_1.b.x, global1.a.x, global1.a.x, true)), vec4<bool>(u_input.a.x > u_input.a.x, false, false, false)).b), select(!select(vec4<bool>(var_0.a.x, false, var_1.a.x, false), !vec4<bool>(var_1.b.x, true, false, global1.a.x), global1.a.x & false), vec4<bool>(global1.b.x, var_1.a.x, (u_input.b.x ^ u_input.b.x) < -3088i, global1.a.x), true));
    var var_3 = !select(select(select(vec4<bool>(var_2.b.x, var_2.a.x, var_0.a.x, global1.a.x), select(vec4<bool>(false, true, false, false), vec4<bool>(var_2.b.x, var_0.a.x, false, false), var_1.a.x), vec4<bool>(var_1.b.x, true, true, var_0.a.x)), !vec4<bool>(var_0.b.x, false, true, var_0.b.x), true), vec4<bool>(any(vec3<bool>(var_2.b.x, false, var_2.b.x)), global1.b.x, false, true), vec4<bool>(global1.a.x, abs(u_input.b.x) > u_input.b.x, !any(vec4<bool>(var_2.b.x, true, var_1.a.x, var_0.a.x)), global1.b.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -812f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = ~(~_wgslsmith_add_u32(~43992u, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))));
    let var_1 = arg_2;
    var var_2 = Struct_1(func_2(-175f, func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0)))), Struct_1(vec3<bool>(global1.b.x, true, true), arg_1.b), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, arg_2.b.x, false, true), vec4<bool>(global1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(false, arg_2.b.x, true, arg_1.a.x)), vec4<bool>(arg_2.a.x, false, false & arg_2.a.x, !global1.b.x), !select(vec4<bool>(var_1.b.x, false, global1.a.x, false), vec4<bool>(var_1.a.x, global1.b.x, true, true), vec4<bool>(false, false, arg_1.b.x, var_1.b.x)))).a, vec2<bool>(arg_2.a.x, select(_wgslsmith_f_op_f32(f32(-1f) * -888f) <= arg_0, !(1u < u_input.a.x), arg_2.b.x)));
    var var_3 = !vec4<bool>(var_2.b.x, var_1.a.x, var_1.b.x, true);
    let var_4 = Struct_1(var_2.a, var_3.wz);
    return ~0u;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = select(vec4<bool>(arg_0, !global1.b.x, false, true), !vec4<bool>(true, true, true, select(select(false, arg_2.b.x, true), u_input.a.x == u_input.a.x, true)), arg_2.b.x);
    var var_2 = vec3<u32>(select(~_wgslsmith_div_u32(min(4294967295u, 4105u), abs(4294967295u)), u_input.a.x, _wgslsmith_clamp_u32(reverseBits(4294967295u), ~u_input.a.x, ~u_input.a.x) == func_4(691f, func_2(986f, arg_2, vec4<bool>(false, arg_1.b.x, false, arg_1.b.x)), arg_3, _wgslsmith_f_op_f32(func_3()))), ~9322u >> (_wgslsmith_add_u32(u_input.a.x, ~36042u) % 32u), _wgslsmith_div_u32(u_input.a.x, abs(~26745u & ~u_input.a.x)));
    let var_3 = u_input.b.x;
    var var_4 = !(!select(!vec4<bool>(var_1.x, true, var_0.a.x, global1.a.x), vec4<bool>(all(vec3<bool>(false, true, false)), true, select(arg_2.b.x, false, false), true), vec4<bool>(true, false, any(vec3<bool>(false, arg_0, true)), func_2(-1000f, Struct_1(arg_1.a, arg_3.b), vec4<bool>(var_0.a.x, false, var_1.x, false)).b.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.a.x, 1u, firstLeadingBit(u_input.a.x), reverseBits(func_1(true, Struct_1(global1.a, vec2<bool>(false, true)), Struct_1(global1.a, global1.b), Struct_1(vec3<bool>(false, global1.b.x, false), vec2<bool>(false, global1.b.x))) | abs(u_input.a.x)));
    var var_1 = vec3<i32>(min(-43201i, _wgslsmith_dot_vec2_i32(u_input.b, max(vec2<i32>(-55151i, 65010i), u_input.b))), 2147483647i, _wgslsmith_mod_i32(u_input.b.x, 28179i));
    global0 = array<vec4<u32>, 3>();
    var_1 = -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(47858i, _wgslsmith_clamp_i32(39348i, -30761i, 62743i), 25783i)), firstTrailingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(-29021i, 3958i, var_1.x), vec3<i32>(42176i, u_input.b.x, -455i))), -(vec3<i32>(-1i) * -vec3<i32>(46665i, 0i, -14664i)));
    global0 = array<vec4<u32>, 3>();
    var_0 = ~select(global0[_wgslsmith_index_u32(countOneBits(~33911u), 3u)], ~global0[_wgslsmith_index_u32(var_0.x, 3u)], !(false && global1.a.x)) | ~vec4<u32>(_wgslsmith_mod_u32(21056u, var_0.x) ^ ~92217u, ~(~u_input.a.x), _wgslsmith_mod_u32(abs(var_0.x), firstTrailingBit(37853u)), ~var_0.x);
    global0 = array<vec4<u32>, 3>();
    var_1 = vec3<i32>(28311i, u_input.b.x, (i32(-1i) * -u_input.b.x) & var_1.x);
    global1 = func_2(-182f, Struct_1(func_2(-1132f, Struct_1(func_2(-707f, Struct_1(global1.a, global1.b), vec4<bool>(false, global1.b.x, global1.a.x, false)).a, func_2(-400f, Struct_1(global1.a, global1.b), vec4<bool>(global1.b.x, false, global1.a.x, false)).b), select(!vec4<bool>(false, false, false, global1.a.x), select(vec4<bool>(false, true, global1.a.x, global1.b.x), vec4<bool>(global1.a.x, global1.b.x, global1.b.x, true), vec4<bool>(true, global1.b.x, global1.a.x, global1.b.x)), all(global1.b))).a, func_2(1f, func_2(_wgslsmith_f_op_f32(max(2381f, -439f)), Struct_1(vec3<bool>(global1.b.x, global1.a.x, false), vec2<bool>(global1.b.x, global1.a.x)), !vec4<bool>(global1.a.x, global1.b.x, global1.a.x, global1.b.x)), vec4<bool>(false, global1.a.x && true, global1.a.x, global1.a.x)).b), select(vec4<bool>(!all(vec4<bool>(true, global1.a.x, false, false)), func_2(-261f, Struct_1(vec3<bool>(global1.b.x, false, false), global1.b), !vec4<bool>(false, global1.b.x, global1.b.x, true)).a.x, !all(vec3<bool>(global1.a.x, global1.b.x, global1.b.x)), any(global1.a)), vec4<bool>(false, global1.a.x, all(select(global1.a, global1.a, true)), any(select(global1.b, global1.a.zz, vec2<bool>(true, global1.a.x)))), select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), select(!vec4<bool>(true, true, global1.a.x, true), select(vec4<bool>(true, global1.a.x, true, false), vec4<bool>(false, global1.b.x, global1.b.x, false), global1.a.x), all(vec4<bool>(true, global1.a.x, false, global1.b.x))), !vec4<bool>(true, global1.a.x, global1.a.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(u_input.b.x, 2147483647i, _wgslsmith_mod_i32(-18557i, var_1.x << (u_input.a.x % 32u)), 29186i), -(~(-vec4<i32>(var_1.x, -43050i, -2147483647i, -1485i)))), 26002i, 234f, ~_wgslsmith_mult_vec2_u32(var_0.wx, var_0.xw) | var_0.xx);
}

