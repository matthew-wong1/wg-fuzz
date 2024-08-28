struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(-641f);

var<private> global2: bool;

var<private> global3: bool;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(419f), Struct_1(-362f), Struct_1(1402f), Struct_1(733f), Struct_1(-770f), Struct_1(1769f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = any(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(false, false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(700f + global1.a), _wgslsmith_f_op_f32(global1.a - -820f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, 1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, global1.a), vec2<f32>(-513f, 668f), true)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-215f, global1.a), vec2<f32>(global1.a, global1.a)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global1.a, -543f)), -438f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2337f, global1.a), vec2<f32>(-713f, -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, 1947f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -697f), vec2<f32>(global1.a, 2046f))))))));
    let var_2 = var_1.x;
    global4 = array<Struct_1, 6>();
    global4 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) + 1f);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    global3 = arg_1.x;
    global1 = global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 6u)];
    var var_0 = 4294967295u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-786f)))), Struct_1(-961f), Struct_1(arg_0));
    global4 = array<Struct_1, 6>();
    return arg_1.x;
}

fn func_2() -> Struct_2 {
    global1 = global4[_wgslsmith_index_u32(1050u, 6u)];
    global2 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), global1.a, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))))), vec3<bool>(true, select(true, true, 1u <= ~global0.x), !(_wgslsmith_f_op_f32(func_3()) == _wgslsmith_f_op_f32(step(-335f, global1.a)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -402f), global4[_wgslsmith_index_u32(u_input.d.x, 6u)], Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a + -218f))))));
    global1 = global4[_wgslsmith_index_u32(~reverseBits(~firstLeadingBit(1u)), 6u)];
    var var_0 = 277f;
    global2 = true;
    return Struct_2(_wgslsmith_f_op_f32(func_3()), global4[_wgslsmith_index_u32(~1u, 6u)], Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.a, global1.a))))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = u_input.a;
    global3 = true;
    var var_2 = vec3<bool>(arg_0, !all(select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, true, false)), !vec4<bool>(arg_0, true, true, arg_0), false)), all(!select(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, true))));
    let var_3 = vec4<bool>(any(select(select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, var_2.x, var_2.x), arg_0), select(!vec3<bool>(true, var_2.x, false), !vec3<bool>(true, false, arg_0), vec3<bool>(var_2.x, arg_0, true)), vec3<bool>(arg_0 | false, true, true || arg_0))), select(true, _wgslsmith_mult_i32(u_input.e, 1i) >= -6023i, true), !all(vec3<bool>(var_0.a >= global1.a, true, arg_0 != false)), all(!vec3<bool>(all(vec4<bool>(false, true, arg_0, false)), true, true)));
    return Struct_2(_wgslsmith_f_op_f32(1700f + 1051f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1326f)), func_2().b);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = abs(-(~1i));
    global4 = array<Struct_1, 6>();
    global1 = global4[_wgslsmith_index_u32(min(u_input.d.x, u_input.d.x), 6u)];
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = !select(select(select(!vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, true, true, false), vec4<bool>(false, var_1, false, var_1)), vec4<bool>(true & var_1, var_1, true, all(vec4<bool>(false, false, var_1, var_1))), true), !(!select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1))), !(!(!vec4<bool>(var_1, false, false, true))));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)), func_5(Struct_1(global1.a), -abs(_wgslsmith_mod_i32(2147483647i, u_input.e)), func_1(!(global0.x <= u_input.a.x)), func_2()), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f + global1.a))))));
    global4 = array<Struct_1, 6>();
    let var_1 = vec2<i32>(-(~u_input.c), u_input.c);
    var var_2 = _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1473f), _wgslsmith_div_f32(global1.a, var_0.b.a))) + 1315f), _wgslsmith_f_op_f32(f32(-1f) * -284f))), true));
    let var_3 = vec3<i32>(-(~0i), _wgslsmith_mod_i32(-var_1.x, ~(-1i)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1 << (vec2<u32>(firstTrailingBit(reverseBits(7032u)), 6155u) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f * 1670f) + _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, -1405f)) + var_0.b.a))), -firstTrailingBit(abs(~vec4<i32>(var_3.x, var_3.x, var_1.x, var_1.x))), reverseBits(~select(2972u << (0u % 32u), 0u, false)));
}

