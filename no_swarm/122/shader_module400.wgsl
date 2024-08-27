struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: bool = true;

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<u32>(4294967295u, 49130u), vec3<u32>(46344u, 29544u, 4294967295u)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(1u, 61524u, 5444u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    global1 = array<vec3<f32>, 21>();
    var var_0 = Struct_2(Struct_1(arg_1.b, vec4<u32>(~arg_1.d.b.x, 4294967295u, ~_wgslsmith_sub_u32(98111u, 9115u), u_input.a)), _wgslsmith_f_op_f32(-arg_1.c), Struct_1(vec3<bool>(true, !arg_1.e, all(vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.b.x, 26207u, 8748u), u_input.a, ~84641u, ~u_input.d.x), select(vec4<u32>(u_input.d.x, arg_1.a.b.x, 4294967295u, 1u), ~vec4<u32>(4294967295u, arg_0.a.x, u_input.b, 25272u), vec4<bool>(false, true, arg_1.b.x, arg_1.e)))), _wgslsmith_f_op_f32(519f + _wgslsmith_f_op_f32(ceil(-521f))));
    global2 = arg_1.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~4294967295u >> (_wgslsmith_div_u32(1u, u_input.a) % 32u), 21u)]);
    global2 = (_wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_1.a.b.x, u_input.a), arg_1.a.b.x, select(u_input.d.x, _wgslsmith_sub_u32(arg_1.a.b.x, 0u), true == var_0.c.a.x)) > _wgslsmith_div_u32(arg_0.b.x, 0u ^ min(arg_0.a.x, 22687u))) & false;
    return -56502i;
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zxw, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), u_input.d.wxy), vec3<u32>(40584u, u_input.a, u_input.d.x))), _wgslsmith_clamp_u32(1u, 4294967295u, 1u)), u_input.d.zzz);
    global3 = array<Struct_3, 2>();
    let var_1 = u_input.d;
    global0 = array<f32, 14>();
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(611u, 13736u), 14u)]))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.a, 44285u, 27200u, 24255u))), -353f);
    return 16286i;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(!vec3<bool>(func_2(Struct_3(vec2<u32>(arg_1.x, 49575u), u_input.d.zzy), Struct_4(Struct_1(vec3<bool>(false, true, false), u_input.d), vec3<bool>(true, true, false), arg_2.x, global3[_wgslsmith_index_u32(u_input.d.x, 2u)], true)) == abs(11878i), true, !any(vec4<bool>(false, false, true, false))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 0u), 1u, arg_1.x, ~0u)), vec4<u32>(arg_1.x, arg_1.x, countOneBits(u_input.b >> (26571u % 32u)), 1u)));
    global3 = array<Struct_3, 2>();
    let var_1 = func_3();
    let var_2 = _wgslsmith_sub_u32(u_input.b, 20447u);
    let var_3 = var_0.a.x;
    return Struct_2(var_0, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 14u)] + _wgslsmith_f_op_f32(exp2(arg_2.x))), Struct_1(select(select(!var_0.a, var_0.a, all(vec4<bool>(var_3, var_0.a.x, var_0.a.x, var_0.a.x))), vec3<bool>(var_3 & false, all(var_0.a), true), !(!vec3<bool>(var_3, true, var_3))), vec4<u32>(46060u, _wgslsmith_clamp_u32(arg_1.x, 23284u, ~31495u), select(4294967295u, _wgslsmith_mult_u32(19489u, arg_1.x), var_0.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(50479u, 3133u, u_input.a), var_0.b.zzw))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1039f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(vec3<u32>(u_input.a ^ _wgslsmith_mult_u32(u_input.d.x, 78488u), _wgslsmith_mult_u32(4294967295u, 0u), ~(~u_input.d.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(u_input.d.yxw, vec3<u32>(u_input.b, u_input.b, 0u), u_input.d.zwy)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~vec3<u32>(_wgslsmith_add_u32(28883u, 26858u), 1u, u_input.d.x & u_input.d.x) >> (vec3<u32>(~u_input.b >> (4294967295u % 32u), countOneBits(~u_input.a), u_input.a) % vec3<u32>(32u)));
    global3 = array<Struct_3, 2>();
    global1 = array<vec3<f32>, 21>();
    global1 = array<vec3<f32>, 21>();
    global3 = array<Struct_3, 2>();
    let var_1 = _wgslsmith_mult_i32(-u_input.e, 4899i);
    var var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.x, 1u, 81156u)), vec3<u32>(~4294967295u, firstTrailingBit(1u), 43377u) & vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.d.x), var_0.x, 55200u)));
    let var_3 = func_1(~var_1, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 50895u, 56753u) << (vec3<u32>(44418u, u_input.d.x, var_0.x) % vec3<u32>(32u)), abs(var_0)), var_0.x), 4294967295u), vec4<f32>(-805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26545u, 14u)]), -865f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 14u)]))), -1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, u_input.a >> (u_input.b % 32u)), 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~func_2(global3[_wgslsmith_index_u32(100813u, 2u)], Struct_4(var_3.a, vec3<bool>(var_3.a.a.x, false, false), global0[_wgslsmith_index_u32(var_0.x, 14u)], Struct_3(vec2<u32>(76020u, u_input.d.x), vec3<u32>(var_0.x, var_3.c.b.x, u_input.d.x)), var_3.c.a.x)), firstLeadingBit(-var_1)) & func_2(Struct_3(u_input.d.ww, vec3<u32>(var_0.x, var_0.x, 0u)), Struct_4(Struct_1(var_3.a.a, var_3.a.b), var_3.a.a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] - var_3.b), Struct_3(u_input.d.xw, vec3<u32>(var_0.x, var_0.x, var_3.a.b.x)), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b + 1000f)), 1613f, _wgslsmith_f_op_f32(step(var_3.d, -1000f)), _wgslsmith_f_op_f32(-var_3.b)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1060u, 14u)], var_3.b, var_3.d)) - vec4<f32>(-1793f, var_3.b, -1000f, 1106f))))));
}

