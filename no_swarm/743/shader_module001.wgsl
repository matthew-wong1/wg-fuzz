struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(2147483647i, 44872i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), -13841i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-33587i, 37114i), vec2<i32>(-39230i, 2308i), vec2<i32>(51194i, 0i), vec2<i32>(10947i, -5613i), vec2<i32>(5381i, i32(-2147483648)), vec2<i32>(-80145i, 2147483647i), vec2<i32>(-7368i, i32(-2147483648)), vec2<i32>(1i, -39891i), vec2<i32>(2147483647i, 13688i), vec2<i32>(-6888i, 2147483647i), vec2<i32>(12902i, -2767i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 32846i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-12687i, 2147483647i), vec2<i32>(34309i, 0i), vec2<i32>(-8135i, 13333i));

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(16510u, 84424u), vec2<u32>(3217u, 4294967295u), vec2<u32>(4294967295u, 20251u), vec2<u32>(13083u, 15246u), vec2<u32>(0u, 4294967295u), vec2<u32>(34627u, 39312u), vec2<u32>(11937u, 12341u), vec2<u32>(25767u, 4294967295u), vec2<u32>(1u, 69555u), vec2<u32>(9217u, 4294967295u), vec2<u32>(0u, 19948u), vec2<u32>(7335u, 0u), vec2<u32>(80940u, 32944u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -(~_wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, -77891i), vec3<i32>(u_input.d.x, u_input.c, -30020i)), vec3<i32>(countOneBits(u_input.c), u_input.a << (5003u % 32u), -21454i)));
    let var_1 = Struct_2(i32(-1i) * -4654i);
    let var_2 = Struct_1(!(~arg_0 >= ~(~arg_0)), ~firstTrailingBit(vec2<u32>(0u, arg_0)) << ((min(vec2<u32>(arg_0, arg_0) | vec2<u32>(4294967295u, arg_0), ~global1[_wgslsmith_index_u32(1u, 13u)]) << (_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_0, arg_0)), vec2<u32>(36735u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), false);
    let var_3 = var_1;
    let var_4 = var_2;
    return Struct_1(var_2.a, abs(var_4.b), true);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = firstTrailingBit(vec3<u32>(abs(33367u), ~251u, firstTrailingBit(abs(_wgslsmith_add_u32(0u, 1u)))));
    let var_1 = Struct_1(true, var_0.zx | vec2<u32>(26557u, _wgslsmith_mult_u32(13836u, firstLeadingBit(var_0.x))), false);
    return _wgslsmith_add_u32(48444u, var_0.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = array<vec2<u32>, 13>();
    return all(select(!select(!vec4<bool>(arg_1.c, arg_2.a, arg_1.a, true), !vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c), -260f >= arg_0.x), !vec4<bool>(true, select(true, arg_2.c, arg_2.a), func_2(4294967295u).a, 341f >= arg_0.x), any(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_1.c), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(arg_2.a, true)))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = func_2(0u);
    let var_1 = vec3<i32>(~0i, -arg_1.x >> (~_wgslsmith_add_u32(var_0.b.x >> (98827u % 32u), 48529u) % 32u), arg_1.x);
    let var_2 = -957f;
    var var_3 = vec3<bool>(true, true || !select(false, true, all(vec3<bool>(var_0.c, false, arg_0))), func_4(vec2<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(274f * -1534f) * var_2)), Struct_1(arg_0, countOneBits(func_2(var_0.b.x).b), abs(arg_1.x) < ~arg_1.x), func_2(func_3(-404f, Struct_2(2147483647i)) >> (~4294967295u % 32u))));
    let var_4 = Struct_2(-77853i);
    return -(~(-33624i)) ^ _wgslsmith_sub_i32(u_input.d.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(305f + -501f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(538f, -654f))), -446f), 1u, countOneBits(~57991u), max(vec3<i32>(u_input.d.x | (i32(-1i) * -17494i), min(u_input.c, u_input.b), func_1(true, vec3<i32>(u_input.b, u_input.a, 3421i), select(true, true, false))), vec3<i32>(u_input.a, u_input.d.x, 0i)));
}

