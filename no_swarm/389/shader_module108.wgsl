struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-12640i, 10379i, 1i, 2008i);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(15443i, -549f), Struct_1(19312i, -387f), Struct_1(1i, 368f), Struct_1(-1i, 273f), Struct_1(0i, 757f), Struct_1(-1i, 640f), Struct_1(18712i, 627f), Struct_1(-51152i, 322f), Struct_1(31320i, -1096f), Struct_1(i32(-2147483648), 1736f), Struct_1(2147483647i, 1000f), Struct_1(-49565i, -1000f), Struct_1(37286i, 994f), Struct_1(-636i, 140f), Struct_1(-4266i, -434f), Struct_1(-41506i, -909f), Struct_1(-1i, -558f), Struct_1(3436i, 233f), Struct_1(2147483647i, 1000f), Struct_1(18527i, -474f));

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: array<u32, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var_1 = Struct_1(1i, 872f);
    global2 = array<vec2<f32>, 15>();
    var var_2 = vec4<bool>(true, true, true, true);
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -1i, 15267i), -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.b, arg_0.b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = func_2(Struct_1(func_2(Struct_1(_wgslsmith_mult_i32(-1i, arg_3.a), _wgslsmith_f_op_f32(arg_2 * 2332f)), u_input.a.zz).a, _wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(abs(-628f)))), vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~19074u), 19u)], ~49090u), 19u)]));
    var var_1 = !(!select(vec4<bool>(false, false, true, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), false)));
    let var_2 = select(vec2<bool>(var_1.x, ~var_0.a >= -(-19731i | arg_3.a)), vec2<bool>(var_1.x | (arg_1.a > (arg_1.a ^ arg_3.a)), all(vec4<bool>(true, var_1.x, false, var_1.x))), select(!select(var_1.yz, vec2<bool>(true, false), any(vec4<bool>(true, var_1.x, var_1.x, false))), vec2<bool>((var_1.x | true) & true, true), var_1.zx));
    var var_3 = any(!(!select(vec3<bool>(true, false, true), vec3<bool>(var_2.x, var_1.x, true), var_1.zzx))) || !(any(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)) || true);
    var_3 = true;
    return _wgslsmith_mod_i32(arg_1.a, var_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global3 = array<u32, 19>();
    global0 = -vec4<i32>(global0.x, _wgslsmith_mult_i32(firstTrailingBit(1i), -_wgslsmith_mod_i32(arg_0.a, 30607i)), func_3(func_2(Struct_1(arg_0.a, 1179f), u_input.a.xx), global1[_wgslsmith_index_u32(0u, 20u)], -801f, arg_0), global0.x);
    var var_0 = select(!select(select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1), vec2<bool>(true, true), arg_1), vec2<bool>(true, any(vec4<bool>(arg_1, false, false, true))), arg_1), vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false), !vec2<bool>(arg_1, false))), false), true);
    var var_1 = arg_0;
    let var_2 = global0.xwx;
    return func_2(arg_0, u_input.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    let var_0 = func_1(Struct_1(~(-4956i), _wgslsmith_f_op_f32(f32(-1f) * -752f)), false);
    global3 = array<u32, 19>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_div_f32(var_0.b, var_0.b))) * var_0.b)), -1561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 1360f));
    var var_2 = !(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.x, _wgslsmith_mod_i32(1i, 2147483647i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_0.a, global0.x, -32853i), vec4<i32>(-1i, global0.x, -22498i, 1i))) != 2147483647i);
    var_2 = true;
    var_2 = true;
    global0 = -reverseBits(-(~vec4<i32>(global0.x, global0.x, 0i, global0.x))) << (~(~max(vec4<u32>(9599u, 39261u, 3803u, global3[_wgslsmith_index_u32(43056u, 19u)]), vec4<u32>(0u, 4294967295u, 1u, 44461u) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], 38253u), -844f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -282f))), _wgslsmith_f_op_f32(abs(var_1.x))), -firstLeadingBit(abs(0i)), global0.xy);
}

