struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_3(-199f, arg_1, arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(573f + _wgslsmith_f_op_f32(f32(-1f) * -1289f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1606f)) * arg_0.d), _wgslsmith_f_op_f32(-arg_0.d))));
    let var_1 = any(select(vec3<bool>(any(!vec3<bool>(false, arg_0.c, arg_0.c)), true & (var_0.c | false), all(!vec3<bool>(var_0.c, var_0.c, true))), select(!(!vec3<bool>(var_0.c, true, true)), select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(true, true, true), vec3<bool>(var_0.c, arg_0.c, var_0.c)), true), any(vec2<bool>(true, true))));
    let var_2 = Struct_3(var_0.a, Struct_2(1u), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f * arg_0.d) + arg_0.d)), _wgslsmith_f_op_f32(-var_0.a))));
    return _wgslsmith_f_op_f32(floor(var_2.d));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.d.yw;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(~(~u_input.d.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1733f)));
    global0 = array<Struct_1, 30>();
    var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_1.a, var_1.b, var_1.c, 1155f), var_1.b))))), Struct_2(1u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) - 1297f)));
    let var_2 = _wgslsmith_clamp_i32(u_input.c.x | ~(u_input.b << (var_1.b.a % 32u)), min(u_input.a, _wgslsmith_div_i32(1i, -26091i)), abs(~(-36191i))) >> (u_input.e.x % 32u);
    return global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.d.wwy, vec3<u32>(var_1.b.a, 0u, var_1.b.a)), _wgslsmith_mult_u32(1u, 1u))), 30u)];
}

fn func_1() -> f32 {
    var var_0 = func_2(vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1000f + -425f), Struct_2(~u_input.d.x), all(select(!(!vec3<bool>(var_0.a.x, var_0.a.x, true)), select(var_0.a.yww, vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a.ywx), select(!vec3<bool>(false, var_0.a.x, var_0.a.x), !var_0.a.xwy, !var_0.a.wxw))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1105f)))));
    var var_2 = Struct_1(var_0.a);
    var_1 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d)) + _wgslsmith_f_op_f32(round(1342f))), Struct_2(13734u), true, _wgslsmith_f_op_f32(var_1.a * var_1.a)), Struct_2(2144u))), Struct_2(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(25740u, 4294967295u), u_input.e)), _wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(67507u, 4294967295u) << (u_input.d.xw % vec2<u32>(32u))))), _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(362f, -2255f)), _wgslsmith_f_op_f32(min(var_1.a, var_1.a))))) != 1096f, -182f);
    var_0 = global0[_wgslsmith_index_u32(116758u, 30u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(false, all(!vec4<bool>(-827i < u_input.c.x, true, true, true)), true);
    var_0 = (_wgslsmith_mod_i32(u_input.b, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), -1i)) < _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), u_input.c.wx), vec2<i32>(-2147483647i, 2147483647i))) && false;
    var var_1 = 23427u;
    var_0 = false | !((~u_input.b > 43547i) || all(vec4<bool>(true, true, true, false)));
    var_0 = true;
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(1176f * 743f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1585f + -577f), _wgslsmith_f_op_f32(func_1()))))), any(vec4<bool>(true, firstTrailingBit(-2147483647i) != (u_input.a >> (u_input.d.x % 32u)), any(vec3<bool>(true, true, true)), false)), func_2(vec2<bool>(true, true)).a.x);
    var_1 = 0u;
    var_2 = select(vec3<bool>(var_2.x, true, var_2.x), !select(vec3<bool>(!var_2.x, var_2.x, false), vec3<bool>(!var_2.x, var_2.x, var_2.x && var_2.x), true), !vec3<bool>(true, func_2(func_2(var_2.zx).a.wx).a.x, ~(-1i) != u_input.a));
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.e.x), u_input.d.x), 4294967295u, firstLeadingBit(22738u))), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x >> (53048u % 32u), firstLeadingBit(1u));
}

