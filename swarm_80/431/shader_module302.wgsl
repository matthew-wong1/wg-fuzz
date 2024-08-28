struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(129f, -169f, -1569f), vec4<f32>(-488f, -527f, -2270f, -1314f)), Struct_1(vec3<f32>(1131f, -314f, -140f), vec4<f32>(-115f, -530f, -1403f, -1000f)), Struct_1(vec3<f32>(-222f, 162f, -174f), vec4<f32>(238f, 781f, 866f, -1000f)), Struct_1(vec3<f32>(1512f, -509f, -642f), vec4<f32>(263f, 226f, -1132f, -978f)), Struct_1(vec3<f32>(1061f, -719f, 1162f), vec4<f32>(-922f, -1019f, -129f, 1000f)), Struct_1(vec3<f32>(-342f, -1298f, 833f), vec4<f32>(1510f, 1104f, 1356f, 528f)));

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: i32 = 50927i;

var<private> global4: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global2.b);
    var var_1 = !global4.x;
    global2 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 6u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(select(var_0.yyy, _wgslsmith_div_vec3_f32(vec3<f32>(284f, global2.b.x, var_0.x), var_0.wyz), any(vec3<bool>(global4.x, false, global4.x)))))), _wgslsmith_f_op_vec4_f32(-global2.b));
    global0 = array<Struct_1, 6>();
    return global4.xz;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = firstTrailingBit(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), ~firstLeadingBit(vec3<u32>(6667u, u_input.b, 1809u)), abs(vec3<u32>(4294967295u, 26098u, 40255u) << (vec3<u32>(u_input.d, 15471u, u_input.a.x) % vec3<u32>(32u)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-1411f, 1264f), -1044f, -345f, 1000f);
    let var_2 = vec2<bool>(false, global4.x);
    global2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(global2.b)))))) * var_1));
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.a.x)), 6u)];
    return ~_wgslsmith_mod_u32(~(1u << (_wgslsmith_mod_u32(var_0.x, 1u) % 32u)), var_0.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_sub_i32(u_input.e, u_input.c & 15181i);
    let var_2 = 1u;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, func_3(arg_1, ~(-1i)) ^ 0u), 6u)];
    var var_3 = ~select(_wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, var_2), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2, 0u), _wgslsmith_sub_u32(45260u, u_input.a.x), _wgslsmith_div_u32(4294967295u, var_2))), firstLeadingBit(var_2), !(!arg_0.x));
    return !select(select(vec3<bool>(var_0.x, var_0.x, true), select(!vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, false), !vec3<bool>(global4.x, false, false)), vec3<bool>(arg_0.x != var_0.x, false, arg_0.x)), !(!vec3<bool>(false, arg_0.x, true)), select(vec3<bool>(true, global4.x & var_0.x, false), select(select(vec3<bool>(true, arg_0.x, var_0.x), vec3<bool>(true, false, false), arg_0.x), vec3<bool>(true, true, true), false), !(!var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec3<bool>(global4.x, false, true), !vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, global4.x, global4.x)), !(!func_1(global4.xz, Struct_1(global2.a, global2.b))), any(!vec3<bool>(true, true, global4.x)));
    global1 = var_0.x;
    global0 = array<Struct_1, 6>();
    var var_1 = -u_input.e;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(global2.a.x, -1000f, 409f), var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, global2.a.x, global2.a.x, global2.a.x))))))));
    var var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(u_input.a.x, ~u_input.b) ^ ~(~u_input.d << (52735u % 32u))), 6u)];
    let var_3 = u_input.e;
    var var_4 = 1966f;
    var var_5 = global0[_wgslsmith_index_u32(u_input.b, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_add_u32(0u, 1u), countOneBits(u_input.d)) >> (countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, 32324u), vec3<u32>(u_input.b, 0u, 1u))) % vec3<u32>(32u)), min(~(~vec3<u32>(u_input.d, u_input.a.x, u_input.b)), countOneBits(vec3<u32>(u_input.b, 12273u, 0u)))), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-var_5.b.x)), var_5.a.x, vec4<i32>(_wgslsmith_clamp_i32(-10872i, var_3, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_3, u_input.e, u_input.c), countOneBits(vec3<i32>(u_input.c, 877i, var_3)))), _wgslsmith_sub_i32(var_3, var_3), 1i, var_3 ^ 0i));
}

