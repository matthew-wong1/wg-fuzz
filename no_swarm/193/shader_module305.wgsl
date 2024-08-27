struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec3<bool> {
    let var_0 = vec4<bool>(true, !all(vec2<bool>(true, true)), true, all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), false)));
    return !(!vec3<bool>(any(var_0.xy), true, true));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = vec3<f32>(-914f, _wgslsmith_div_f32(-490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1630f) - _wgslsmith_f_op_f32(round(-1079f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)) * _wgslsmith_f_op_f32(-793f * _wgslsmith_div_f32(-1693f, 808f)))));
    var var_1 = !func_2();
    global0 = array<Struct_2, 28>();
    var var_2 = Struct_2(arg_0.a.x >> ((10293u | (arg_0.a.x | select(1u, arg_0.a.x, false))) % 32u), Struct_1(~reverseBits(arg_0.a & vec4<u32>(24442u, 10248u, 29038u, arg_0.a.x)), !(!all(vec4<bool>(arg_0.b, false, var_1.x, arg_1)))), -2147483647i, var_0.x);
    global0 = array<Struct_2, 28>();
    return false;
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 28>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(f32(-1f) * -1586f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-421f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.x)))), 1261f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(871f))))) + -215f)));
    var_1 = var_0.x;
    var var_2 = 1i;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    let var_0 = !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(func_1(Struct_1(vec4<u32>(0u, 620u, 102532u, 36190u), false), true), false), vec2<bool>(true, true)), !func_2().xy);
    global0 = array<Struct_2, 28>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3() | countOneBits(1u), func_3() | 1u), 28u)];
    var var_2 = _wgslsmith_mult_i32(-33767i, -(-1i | var_1.c));
    var var_3 = vec2<bool>(!any(vec4<bool>(var_0.x | var_0.x, all(vec3<bool>(false, true, var_1.b.b)), var_0.x, select(var_1.b.b, var_1.b.b, false))), select(var_0.x, true, false || (31055u == ~var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, select(max(u_input.a.xz, reverseBits(vec2<i32>(1i, u_input.a.x) | vec2<i32>(28100i, 2147483647i))), ~u_input.a.yz, select(!vec2<bool>(var_3.x, var_0.x), func_2().zy, all(!vec4<bool>(var_3.x, var_3.x, var_0.x, var_3.x)))));
}

