struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<u32, 12>;

var<private> global2: Struct_1 = Struct_1(467f);

var<private> global3: array<vec4<i32>, 20>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = u_input.c.x;
    global2 = Struct_1(arg_1.a);
    global2 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    global1 = array<u32, 12>();
    let var_1 = true;
    return !(!select(vec3<bool>(!var_1, false, 153f > arg_1.a), select(vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, var_1)), !vec3<bool>(var_1, true, false)), var_1));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(662f, global2.a)), global2.a, _wgslsmith_f_op_f32(492f + -254f)))))));
    global2 = global0[_wgslsmith_index_u32(79742u, 18u)];
    let var_1 = global0[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(4294967295u, 12u)]) & (u_input.e & ~u_input.d), 18u)];
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-1722f - 909f)) - -885f)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1469f + var_0.x))), _wgslsmith_f_op_f32(abs(1633f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f), -1943f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a, var_0.x, 1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(532f, var_0.x, global2.a), vec3<f32>(445f, global2.a, 964f)), vec3<f32>(var_1.a, var_0.x, global2.a)))))));
    return select(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2 ^ u_input.c.xwy, u_input.c.zzw), arg_2), u_input.c.x >> (~(~global1[_wgslsmith_index_u32(0u, 12u)]) % 32u)), u_input.c.xx, !vec2<bool>(true, any(!arg_1)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), !func_2(-430i, Struct_1(global2.a)), vec3<bool>(true, true, func_2(1i, Struct_1(arg_1)).x)), vec4<bool>(true, true, false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), vec3<u32>(1u, ~u_input.d, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(51813u, 12u)], 0u, 55373u) << (arg_0.x % 32u))), arg_0);
    return global0[_wgslsmith_index_u32(~(~select(var_0.x, ~(~arg_0.x), all(vec4<bool>(true, false, true, true)))), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.d, 4144u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(~u_input.c.x)), 12u)], 12u)]);
    global0 = array<Struct_1, 18>();
    global2 = func_1(vec2<u32>(u_input.e, u_input.e), _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) + _wgslsmith_f_op_f32(min(global2.a, -641f))))));
    var var_1 = -u_input.a;
    var var_2 = _wgslsmith_mult_i32(-35719i, _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), var_1.x, 2147483647i, -54412i), vec4<i32>(1i, -30931i, -11873i, _wgslsmith_sub_i32(var_1.x, -var_1.x))));
    let var_3 = select(select(vec4<bool>(all(vec4<bool>(true, true, true, false)), countOneBits(-14079i) == _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(var_1.x, 1i)), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), _wgslsmith_add_u32(u_input.d, u_input.c.x) <= 7430u), true), vec4<bool>(_wgslsmith_f_op_f32(step(1394f, -1309f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 1433f)), all(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true))), false);
    let var_4 = -2147483647i;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1711f))), vec3<f32>(global2.a, _wgslsmith_f_op_f32(max(global2.a, -379f)), _wgslsmith_f_op_f32(-global2.a)), var_3.zxz)), -1i);
}

