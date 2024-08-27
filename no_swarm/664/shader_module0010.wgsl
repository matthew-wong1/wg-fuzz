struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 14> = array<i32, 14>(-10177i, 10204i, -22836i, 2147483647i, -28362i, -28062i, 0i, 2147483647i, -1i, 59022i, 2147483647i, i32(-2147483648), -15643i, 17441i);

var<private> global2: array<Struct_1, 19>;

var<private> global3: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a.b);
    global1 = array<i32, 14>();
    let var_1 = 16559u;
    global0 = array<Struct_1, 7>();
    var var_2 = select(global3.x, 2147483647i, true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(min(2266f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.b)))))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1851f)), arg_2 >> (16535u % 32u)))) + _wgslsmith_f_op_f32(floor(1f))), -1528f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(489f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-547f + -1780f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(339f, -740f))) - _wgslsmith_f_op_f32(738f + _wgslsmith_f_op_f32(f32(-1f) * -855f)))));
    let var_1 = Struct_3(-(~1i), reverseBits(28967u), Struct_1(vec4<bool>(-963f > _wgslsmith_f_op_f32(-var_0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1213f + -105f) - var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -675f)))));
    return var_1.a << (reverseBits(~u_input.b.x) % 32u);
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = ((vec4<i32>(func_2(43449u, vec3<u32>(u_input.b.x, 1u, arg_1), 4294967295u), 5179i, abs(-53335i), global1[_wgslsmith_index_u32(arg_1, 14u)]) << (_wgslsmith_div_vec4_u32(~vec4<u32>(76988u, 0u, 4733u, arg_1), firstTrailingBit(vec4<u32>(4762u, 54599u, u_input.b.x, arg_1))) % vec4<u32>(32u))) << (~abs(max(vec4<u32>(arg_1, u_input.b.x, arg_1, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 84090u))) % vec4<u32>(32u))) & -max(~countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 14u)], -2147483647i, global3.x, -13887i)), -firstTrailingBit(vec4<i32>(71486i, global3.x, -42677i, 6075i)));
    var var_1 = Struct_1(!(!(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1196f))));
    global0 = array<Struct_1, 7>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    let var_0 = -17444i;
    let var_1 = Struct_1(vec4<bool>(false, !func_1(true, ~4294967295u), !any(vec3<bool>(true, true, true)), any(vec3<bool>(u_input.c.x > u_input.a, true, true))), -752f);
    var var_2 = var_1.a.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(-1962f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + var_1.b) * 507f), -373f, var_1.b);
    var var_4 = 1i;
    var var_5 = 69942u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-604f * var_1.b))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(step(-350f, _wgslsmith_f_op_f32(var_1.b - var_3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(296f)), _wgslsmith_f_op_f32(1997f + -217f)), -1581f), 53724i, u_input.a);
}

