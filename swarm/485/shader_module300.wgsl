struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_3, 21>;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<vec3<i32>, 2>;

var<private> global4: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d);
    let var_1 = arg_0.a.x;
    global0 = array<bool, 13>();
    var var_2 = arg_0.b.b;
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(85472u, 13u)], Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), arg_0.b.b.zw), var_2.x), u_input.b), arg_0.b.b, -4228i, _wgslsmith_f_op_f32(step(1223f, 628f)), -_wgslsmith_add_i32(13084i, var_2.x) & ~firstLeadingBit(1i)), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], select(global4.x, false, !global4.x)), select(global4.xx, vec2<bool>(true, false), select(vec2<bool>(global4.x, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_1, 13u)]), global4.xx, global0[_wgslsmith_index_u32(24864u, 13u)]), global4.xx)), select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), global4.zz, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], true), true), vec2<bool>(global4.x, global0[_wgslsmith_index_u32(1u, 13u)])))));
    return ((arg_1.d != -1107f) == (_wgslsmith_add_i32(~arg_0.c.c, arg_1.a) > var_3.b.e)) | var_3.c.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    global3 = array<vec3<i32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f - 675f));
    var var_1 = Struct_3(false, Struct_1(1i, countOneBits(arg_1.c.b), -60299i, arg_2.x, -firstTrailingBit(-arg_1.c.e)), !select(vec2<bool>(true, true), vec2<bool>(func_3(arg_1, global2[_wgslsmith_index_u32(4294967295u, 30u)]), arg_0.x), all(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], false, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)])))));
    var var_2 = arg_2.zz;
    let var_3 = ~select(20097u, ~11267u, true);
    return any(select(!select(vec3<bool>(var_1.a, arg_0.x, var_1.c.x), !vec3<bool>(global4.x, true, false), !vec3<bool>(false, global4.x, var_1.c.x)), !vec3<bool>(any(vec4<bool>(global4.x, true, true, arg_0.x)), true, select(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global4.x)), true));
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    global2 = array<Struct_1, 30>();
    var var_0 = !(!(!select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, global4.x), vec3<bool>(global0[_wgslsmith_index_u32(22841u, 13u)], true, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 13u)]))));
    global4 = select(select(vec3<bool>(true, func_2(vec2<bool>(var_0.x, global4.x), Struct_2(vec2<u32>(0u, 1u), Struct_1(arg_0.x, vec4<i32>(u_input.c.x, 2147483647i, arg_0.x, u_input.a.x), u_input.c.x, 1656f, u_input.a.x), global2[_wgslsmith_index_u32(4226u, 30u)]), vec3<f32>(534f, 1326f, -1306f)) | true, false), select(select(!vec3<bool>(global4.x, false, var_0.x), select(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(5406u, 13u)], false), vec3<bool>(global4.x, true, false), global0[_wgslsmith_index_u32(4294967295u, 13u)]), !vec3<bool>(global4.x, global0[_wgslsmith_index_u32(0u, 13u)], global4.x)), vec3<bool>(!global4.x, global4.x || global4.x, global0[_wgslsmith_index_u32(~0u, 13u)]), true), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(16399u, 59532u, 42168u)) <= 1u), !select(!(!vec3<bool>(false, var_0.x, true)), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global4.x & false), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, false), var_0.x), select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, true, true), vec3<bool>(global4.x, global0[_wgslsmith_index_u32(0u, 13u)], true)), false && var_0.x)), !(!vec3<bool>(global0[_wgslsmith_index_u32(89900u, 13u)] || global0[_wgslsmith_index_u32(7639u, 13u)], u_input.b == u_input.b, false)));
    let var_1 = vec3<u32>(1u, 32800u, 1u) & ~firstLeadingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 88060u, 25574u)), ~vec3<u32>(45932u, 16542u, 16868u)));
    global2 = array<Struct_1, 30>();
    return select(!select(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), !(!vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(37585u, 13u)], var_0.x)), !all(vec3<bool>(global4.x, true, true))), !select(!select(vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 13u)], global4.x, global4.x, true), global4.x), vec4<bool>(global4.x, false, var_0.x == global4.x, true), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 13u)], false, true))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(0i, u_input.b, _wgslsmith_add_i32(u_input.b, -u_input.b)));
    global4 = !(!(!var_0.wyx));
    var var_1 = Struct_2(vec2<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(54097u, 111396u, 1u, 51976u), vec4<u32>(0u, 5206u, 0u, 0u))), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(19193u, 26140u), vec2<u32>(20211u, 61046u)) << (max(0u, 1u) % 32u))), global2[_wgslsmith_index_u32(~(~1u), 30u)], Struct_1(select(firstLeadingBit(-46704i), -u_input.c.x, true), ~select(vec4<i32>(0i, u_input.a.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b, -2147483647i, 17771i, u_input.b) & vec4<i32>(28922i, u_input.c.x, -2147483647i, u_input.c.x), func_2(global4.zy, Struct_2(vec2<u32>(32519u, 99515u), Struct_1(u_input.a.x, vec4<i32>(-32161i, 2147483647i, u_input.b, u_input.c.x), u_input.c.x, 555f, 0i), global2[_wgslsmith_index_u32(69794u, 30u)]), vec3<f32>(1000f, 1240f, 403f))), u_input.c.x, -1544f, u_input.c.x));
    var var_2 = vec4<i32>(-(~1i) >> (~((47589u & var_1.a.x) ^ (var_1.a.x >> (var_1.a.x % 32u))) % 32u), ~firstTrailingBit(-20597i), ~(~(i32(-1i) * -13491i)), u_input.c.x);
    global1 = array<Struct_3, 21>();
    var var_3 = 1u;
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(1693f, _wgslsmith_f_op_f32(sign(var_1.c.d)), -459f), var_1.c.d, max(-_wgslsmith_dot_vec4_i32(var_1.c.b >> (vec4<u32>(21774u, 90282u, 25569u, var_1.a.x) % vec4<u32>(32u)), vec4<i32>(var_2.x, var_2.x, 17543i, u_input.a.x)), 1i));
}

