struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: Struct_1 = Struct_1(4294967295u, false);

var<private> global2: array<f32, 12> = array<f32, 12>(621f, -453f, 1842f, -602f, 231f, -1407f, 929f, -675f, -1350f, 1655f, -175f, 262f);

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> vec3<bool> {
    global2 = array<f32, 12>();
    var var_0 = 2147483647i;
    var var_1 = vec4<f32>(-1010f, _wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1173f, -348f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f - 522f)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, ~(~global1.a)), 12u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))));
    let var_2 = Struct_2(vec3<i32>((~arg_1 >> (abs(4294967295u) % 32u)) ^ _wgslsmith_dot_vec4_i32(select(vec4<i32>(-18902i, arg_1, u_input.a.x, arg_0.x), vec4<i32>(-1i, -1i, -33118i, -23045i), vec4<bool>(true, global0[_wgslsmith_index_u32(6139u, 32u)], global1.b, false)), u_input.a), -(~countOneBits(u_input.d.x)), -countOneBits(-2147483647i)));
    let var_3 = false;
    return !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global1.b), vec3<bool>(false, false, global1.b), vec3<bool>(true, false, false)), all(vec3<bool>(true, var_3, true))), vec3<bool>(any(vec2<bool>(false, true)), true & global1.b, !global0[_wgslsmith_index_u32(u_input.e, 32u)]), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 32u)], any(vec4<bool>(global1.b, false, global1.b, global1.b)), any(vec2<bool>(false, global1.b)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32(u_input.c, u_input.d.x);
    global2 = array<f32, 12>();
    let var_1 = Struct_2(~(~vec3<i32>(0i, var_0 << (20085u % 32u), _wgslsmith_add_i32(u_input.b, -54792i))));
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(reverseBits(u_input.e)), 12u)];
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))), -1000f)), 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a, 12u)] - -1571f)))), -660f), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(105711u, 12u)])), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(11703u, 12u)])), global3.x)), global0[_wgslsmith_index_u32(u_input.e, 32u)])), global3.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 12u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), !(!vec4<bool>(true, var_0 >= var_0, true, true))));
    return !select(!(!func_3(vec3<i32>(1i, u_input.a.x, -1i), -1i, 25786i)), !func_3(vec3<i32>(-8521i, u_input.d.x, u_input.a.x) & vec3<i32>(-23594i, 2147483647i, 0i), 1i, -u_input.d.x), false);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = true || all(func_2());
    var var_1 = Struct_2(-u_input.a.yzz);
    global0 = array<bool, 32>();
    var var_2 = _wgslsmith_f_op_f32(-global3.x);
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) - _wgslsmith_f_op_f32(round(arg_3)))));
    return Struct_2(vec3<i32>(u_input.d.x, _wgslsmith_div_i32(16514i, var_1.a.x), var_1.a.x));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f));
    var var_1 = Struct_1(4294967295u, true);
    var var_2 = Struct_1(_wgslsmith_add_u32(~(~countOneBits(var_1.a)), _wgslsmith_mod_u32(1u, 43766u)), var_1.b);
    let var_3 = Struct_1(min(~select(0u, 0u, var_1.b) | _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a, 4294967295u), ~vec2<u32>(u_input.e, 33280u)), ~arg_2.x), !(var_1.b | true));
    var var_4 = arg_3;
    return Struct_2(vec3<i32>(~1i, 2147483647i, arg_3.a.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(27186i, u_input.a.x ^ arg_2.a.x, vec2<u32>(arg_1.a, firstTrailingBit(~global1.a >> (~0u % 32u))), func_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.b) & -1i, -u_input.a.x), arg_2.a.x, ~arg_3, arg_2));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = countOneBits(~u_input.c >> ((40876u | (global1.a ^ abs(arg_1.a))) % 32u));
    var_0 = -2147483647i;
    let var_1 = true & (any(vec2<bool>(!global1.b, !global1.b)) & true);
    global0 = array<bool, 32>();
    let var_2 = global2[_wgslsmith_index_u32(arg_0.a, 12u)];
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<f32, 12>();
    global2 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_f32(281f * 1018f);
    var var_2 = func_6(func_5(global3.zy, Struct_1(~0u, global0[_wgslsmith_index_u32(u_input.e ^ 0u, 32u)] && !global0[_wgslsmith_index_u32(0u, 32u)]), func_4(~1i, 0i, vec2<u32>(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 10575u, 48161u), vec3<u32>(63133u, 52490u, 1u))), func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a, u_input.e, global1.a), vec3<u32>(u_input.e, global1.a, 19235u)), false, ~vec4<u32>(global1.a, 26071u, u_input.e, u_input.e), _wgslsmith_f_op_f32(-global3.x))), ~vec2<u32>(0u, u_input.e) >> (select(vec2<u32>(u_input.e, 16743u), abs(vec2<u32>(1u, 0u)), !global1.b) % vec2<u32>(32u))), Struct_1(17938u, any(func_2().xz)), func_1(vec3<u32>(firstTrailingBit(u_input.e >> (23656u % 32u)), abs(u_input.e), ~(~1u)), func_5(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(trunc(1747f))), func_5(_wgslsmith_div_vec2_f32(global3.ww, vec2<f32>(-3022f, global3.x)), Struct_1(3314u, global1.b), func_1(vec3<u32>(u_input.e, 0u, 4294967295u), false, vec4<u32>(u_input.e, global1.a, global1.a, 13062u), -372f), ~vec2<u32>(global1.a, global1.a)), Struct_2(vec3<i32>(u_input.a.x, 0i, 1i)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(32524u, u_input.e), vec2<u32>(u_input.e, global1.a)))).b, vec4<u32>(1u, ~_wgslsmith_add_u32(u_input.e, u_input.e), ~(77428u ^ global1.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 20315u), vec2<u32>(6454u, u_input.e)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.a, 30528u, global1.a), 12u)], _wgslsmith_f_op_f32(f32(-1f) * -1362f))))), false);
    global2 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~abs(~u_input.e), u_input.e);
}

