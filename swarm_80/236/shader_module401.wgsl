struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), 1i, vec3<bool>(false, true, false), vec3<f32>(-2594f, 1993f, 668f)), vec3<i32>(i32(-2147483648), -68148i, -1i), Struct_1(vec2<bool>(true, false), 1i, vec3<bool>(true, false, true), vec3<f32>(-329f, -880f, 172f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(461f + 1157f)))));
    global0 = array<vec3<u32>, 14>();
    var var_1 = vec3<i32>(global1.c.b, 1i, -1i);
    var var_2 = Struct_2(Struct_1(vec2<bool>(!(false && global1.c.a.x), global1.c.c.x), -57778i, global1.c.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-813f, arg_0.d.x, false)), _wgslsmith_f_op_f32(round(global1.a.d.x)), _wgslsmith_f_op_f32(-global1.c.d.x)))), firstTrailingBit(-select(u_input.c.zzz, abs(vec3<i32>(global1.a.b, 2147483647i, 1i)), true)), Struct_1(select(global1.a.a, select(arg_0.c.xy, global1.c.a, arg_0.c.xy), arg_0.a.x), global1.c.b, select(arg_0.c, vec3<bool>(global1.c.d.x < -1068f, true && arg_0.c.x, !global1.c.a.x), select(vec3<bool>(arg_0.a.x, global1.c.c.x, global1.c.c.x), vec3<bool>(global1.c.a.x, false, arg_0.c.x), !arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, 1093f, -1000f))));
    var var_3 = 1i;
    return firstLeadingBit(48558u | _wgslsmith_div_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], vec3<u32>(43182u, 110u, 24920u))));
}

fn func_2() -> u32 {
    global1 = Struct_2(global1.a, ~select((global1.b << (vec3<u32>(4294967295u, 9655u, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 70520u), global0[_wgslsmith_index_u32(121922u, 14u)]) % vec3<u32>(32u)), -vec3<i32>(u_input.c.x, global1.c.b, 2147483647i), !global1.c.c.x), global1.c);
    var var_0 = true;
    let var_1 = abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 2147483647i), vec2<i32>(~global1.a.b, 1i))) & u_input.c.x;
    let var_2 = global1.a;
    var var_3 = vec2<i32>(-u_input.c.x, _wgslsmith_add_i32(i32(-1i) * -1i, -1i));
    return ~_wgslsmith_sub_u32(_wgslsmith_div_u32(func_3(Struct_1(global1.c.a, var_1, var_2.c, global1.a.d)), select(min(33599u, 1u), 1u, true)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 64419u, 20772u), vec3<u32>(4294967295u, 0u, 1u), global1.a.a.x), vec3<u32>(1u, 1u, 1u)), ~1u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(~0u, func_2());
    let var_1 = global1.b.x;
    let var_2 = ~var_0;
    var var_3 = _wgslsmith_f_op_f32(-225f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(539f * 755f))));
    global0 = array<vec3<u32>, 14>();
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(abs(~109618u));
    var var_1 = func_1();
    let var_2 = Struct_2(Struct_1(global1.a.a, -1i, !vec3<bool>(any(vec3<bool>(var_1.c.x, var_1.a.x, global1.a.c.x)), true, global1.c.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.d.x, global1.a.d.x, -1872f)))), global1.b, global1.c);
    var var_3 = reverseBits(~reverseBits(38229u));
    var_3 = ~4294967295u;
    let var_4 = var_2;
    let var_5 = u_input.b;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(7756i, ~_wgslsmith_div_i32(var_6.c.b, 2147483647i)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-671f * var_6.c.d.x)))))), 0u, vec3<i32>(44905i, -_wgslsmith_clamp_i32(var_2.b.x, -35311i, firstTrailingBit(global1.a.b)), var_6.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -1i, var_6.b.x, firstLeadingBit(max(1i, -18252i)), countOneBits(i32(-1i) * -2147483647i)), ~_wgslsmith_mult_vec4_i32(-u_input.c, vec4<i32>(4161i, var_2.a.b, var_5, var_6.a.b))));
}

