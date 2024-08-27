struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_3(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(36059u, 0u), global0.a, vec2<bool>(true, true)), global0.a), ~vec2<u32>(28902u, 24056u)), arg_0);
    let var_1 = Struct_1(global0.a.x, var_0.b.b, global0.b.c);
    let var_2 = ~arg_0.a;
    var var_3 = vec4<bool>(true, !((i32(-1i) * -1i) > _wgslsmith_add_i32(var_0.b.b.x, global0.b.b.x)), false, ~countOneBits(-1i) < _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.b.b.x, global0.b.b.x), _wgslsmith_sub_i32(var_0.b.b.x, 13427i)), _wgslsmith_mod_i32(u_input.a ^ arg_0.b.x, abs(2147483647i))));
    var_3 = select(select(!vec4<bool>(var_3.x, select(var_3.x, true, true), any(vec4<bool>(var_3.x, var_3.x, true, var_3.x)), 30735u == u_input.b), !vec4<bool>(var_3.x, global0.a.x == 23039u, any(vec4<bool>(false, var_3.x, true, false)), true), true), select(select(!vec4<bool>(var_3.x, true, var_3.x, var_3.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, var_3.x)), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, false, false, true)), all(!var_3.wzx)), select(select(vec4<bool>(var_3.x, var_3.x, false, false), select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(var_3.x, true, var_3.x, false)), var_3.x | false), select(select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, var_3.x, var_3.x)), select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, false, var_3.x)), var_3.x), select(vec4<bool>(var_3.x, true, true, false), select(vec4<bool>(true, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(false, true, true, true)), select(vec4<bool>(var_3.x, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, var_3.x, var_3.x, var_3.x)))), var_3.x), true);
    return var_0.b.b;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1585f);
    var var_1 = !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), true)));
    global0 = Struct_3(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, arg_0.x) << (vec3<u32>(arg_0.x, global0.a.x, 45062u) % vec3<u32>(32u)), arg_0.yxz >> (vec3<u32>(21678u, global0.b.a, global0.b.a) % vec3<u32>(32u))), ~(~29188u))), Struct_1(reverseBits(~0u ^ _wgslsmith_mult_u32(1u, arg_0.x)), -vec4<i32>(global0.b.b.x, ~10980i, _wgslsmith_add_i32(1i, 1i), select(u_input.a, global0.b.b.x, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1511f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(416f, 448f))))));
    global0 = Struct_3(~_wgslsmith_sub_vec2_u32(vec2<u32>(10885u, global0.a.x), ~vec2<u32>(0u, 1u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b) ^ arg_0.ww, abs(~vec2<u32>(0u, 15250u))), global0.b);
    let var_2 = global0.b.b.yzw;
    return Struct_1(abs(_wgslsmith_clamp_u32(9428u, global0.a.x, arg_0.x)), func_3(Struct_1(~select(0u, 1u, var_1.x), vec4<i32>(u_input.a, u_input.a, var_2.x, global0.b.b.x) ^ global0.b.b, -726f)), 1061f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(0u, ~(global0.a.x ^ ~(~0u)), u_input.b);
    global0 = Struct_3(var_0.zy, func_2(~(~(~vec4<u32>(15960u, var_0.x, u_input.b, 12333u)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c, 991f, 468f)));
    return global0.b;
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-845f - _wgslsmith_f_op_f32(1627f + 1976f)), arg_0.c, global0.b.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(460f, arg_0.c, -1195f)))))));
    let var_1 = _wgslsmith_dot_vec2_i32(global0.b.b.ww, ~vec2<i32>(_wgslsmith_mod_i32(~global0.b.b.x, 2147483647i), arg_0.b.x));
    let var_2 = Struct_3(~(vec2<u32>(global0.b.a, _wgslsmith_sub_u32(arg_0.a, 34867u)) << ((_wgslsmith_add_vec2_u32(global0.a, global0.a) << (select(vec2<u32>(13091u, 48674u), global0.a, true) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0);
    let var_3 = ~(-(((var_2.b.b.yz << (var_2.a % vec2<u32>(32u))) | vec2<i32>(var_1, 2147483647i)) >> ((_wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(8269u, 4294967295u)) | ~vec2<u32>(var_2.b.a, 0u)) % vec2<u32>(32u))));
    let var_4 = Struct_3(global0.a, arg_0);
    return vec2<f32>(1298f, var_4.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(func_1()));
    var var_1 = Struct_3(abs(global0.a), Struct_1(u_input.b, countOneBits(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.b.x, global0.b.b.x, 0i, u_input.a), vec4<i32>(u_input.a, 16334i, global0.b.b.x, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(646f * var_0.x), true)))));
    var var_2 = func_2(max(vec4<u32>(global0.b.a, ~_wgslsmith_div_u32(var_1.a.x, global0.a.x), ~(~20545u), func_2(~vec4<u32>(u_input.b, u_input.b, 9943u, u_input.b)).a), ~(vec4<u32>(global0.a.x, var_1.a.x, 4294967295u, 1u) << (reverseBits(vec4<u32>(var_1.a.x, var_1.a.x, 19696u, var_1.a.x)) % vec4<u32>(32u))))).b.zz;
    let var_3 = Struct_3(countOneBits(~global0.a), Struct_1(firstTrailingBit(func_1().a), var_1.b.b, -206f));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-152f)), 930f, func_2(vec4<u32>(7346u, u_input.b, 6918u, 1u)).c) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(104f, var_3.b.c, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(456f, var_3.b.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * global0.b.c))), var_3.b.c)));
    var var_5 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~6008u, var_3.a.x, _wgslsmith_clamp_i32(-2147483647i, global0.b.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.b.b.x, 13669i), u_input.a)) >> (var_1.a.x % 32u), global0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), 1000f, -1444f))))));
}

