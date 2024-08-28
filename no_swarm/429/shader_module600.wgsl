struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(1390f, -323f, -1709f, 215f), vec4<f32>(-153f, -409f, -1000f, -910f), vec4<f32>(319f, -1886f, 1873f, -812f), vec4<f32>(1530f, 733f, -653f, 298f), vec4<f32>(-2428f, 1960f, 350f, 1980f), vec4<f32>(-1000f, -959f, -1206f, -280f), vec4<f32>(419f, 842f, -694f, 146f), vec4<f32>(-221f, 240f, 2167f, -995f), vec4<f32>(-311f, -1000f, 1559f, 857f), vec4<f32>(842f, 649f, -182f, 266f), vec4<f32>(-1000f, -945f, -425f, 1000f), vec4<f32>(-781f, -2163f, -403f, -875f), vec4<f32>(828f, -845f, -466f, 274f), vec4<f32>(-2326f, -519f, -374f, -299f), vec4<f32>(1790f, -244f, 865f, 962f), vec4<f32>(756f, 1757f, -987f, 1000f));

var<private> global1: array<u32, 31>;

var<private> global2: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = arg_1.a;
    global1 = array<u32, 31>();
    global1 = array<u32, 31>();
    var var_1 = arg_1;
    global1 = array<u32, 31>();
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = ~(arg_2 >> (~reverseBits(countOneBits(arg_2)) % vec2<u32>(32u)));
    let var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-459f, _wgslsmith_f_op_f32(-1086f * 1571f), arg_0)));
    var var_3 = func_3(global0[_wgslsmith_index_u32(arg_2.x, 16u)], Struct_3(Struct_2(~abs(0u), select(select(vec4<bool>(true, false, arg_0, arg_1.x), vec4<bool>(true, arg_0, true, arg_1.x), vec4<bool>(arg_1.x, arg_0, true, arg_0)), vec4<bool>(arg_1.x, true, arg_1.x, false), arg_0), ~0u)));
    var var_4 = ~(-2147483647i);
    return Struct_1(~vec2<u32>(8097u, min(select(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 31u)], true), _wgslsmith_div_u32(58001u, u_input.b))));
}

fn func_1() -> Struct_1 {
    return func_2(true, vec4<bool>(false, true, all(vec4<bool>(false, true, true, true)), !all(vec2<bool>(false, true))), vec2<u32>(_wgslsmith_div_u32(1u >> (global1[_wgslsmith_index_u32(u_input.b, 31u)] % 32u), u_input.b), 14956u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = arg_2;
    global1 = array<u32, 31>();
    var var_1 = all(vec2<bool>(true, all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 31u)] < global1[_wgslsmith_index_u32(u_input.b, 31u)], true))));
    global2 = 35653u;
    return Struct_2(~4294967295u, select(!vec4<bool>(true, select(false, false, true), any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, !all(vec3<bool>(true, true, true)), true), vec4<bool>((-2147483647i & arg_0) <= _wgslsmith_clamp_i32(arg_0, arg_0, arg_0), select(any(vec2<bool>(true, false)), true, true), u_input.b > arg_1.a.x, false)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~_wgslsmith_mod_i32(-2147483647i, u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x >> (53898u % 32u), _wgslsmith_add_i32(21174i, u_input.a.x)));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f - 1000f) * _wgslsmith_f_op_f32(339f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = func_4(~var_0.x, func_1(), -198f);
    let var_4 = !any(vec3<bool>(any(func_4(723i, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(0u, 31u)], u_input.b)), var_2).b.yzz), var_3.b.x, all(!var_3.b)));
    global0 = array<vec4<f32>, 16>();
    var var_5 = var_2;
    global0 = array<vec4<f32>, 16>();
    let var_6 = select(~vec4<u32>(reverseBits(func_4(u_input.a.x, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20887u, 31u)], 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), -1054f).c), 4294967295u, var_3.c << (u_input.b % 32u), u_input.b), vec4<u32>(~0u, 44336u, abs(25745u), func_1().a.x << ((1u << (global1[_wgslsmith_index_u32(var_3.a, 31u)] % 32u)) % 32u)), countOneBits(func_1().a.x) >= global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 6422u), var_3.c), global1[_wgslsmith_index_u32(~(~1u), 31u)]), 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_3.c, ~_wgslsmith_add_u32(0u, func_4(var_0.x, Struct_1(var_6.zy), 233f).a), 0u));
}

