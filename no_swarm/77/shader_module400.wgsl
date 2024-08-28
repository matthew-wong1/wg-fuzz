struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(i32(-2147483648), i32(-2147483648), -4413i, -31436i, -1i, -1313i, 59853i, -59419i, 2147483647i, i32(-2147483648), 58809i, -1i, 6490i);

var<private> global1: vec3<f32> = vec3<f32>(-589f, -230f, 134f);

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5) -> u32 {
    var var_0 = firstTrailingBit(u_input.a.x);
    global2 = 1i;
    let var_1 = vec4<bool>(arg_1.c, select(arg_1.b.a.a.x <= min(u_input.e, 1u), arg_1.c, arg_1.c), false, true | arg_1.c);
    global0 = array<i32, 13>();
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-438f, global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -558f, -346f)))), all(select(!var_1, select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(false, false, false, var_1.x), var_1), !vec4<bool>(true, true, arg_1.c, arg_1.c)))))));
    return _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(arg_1.b.a.a.x, ~4294967295u)), 4294967295u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_5) -> vec4<u32> {
    global0 = array<i32, 13>();
    let var_0 = arg_1.b;
    var var_1 = Struct_4(global1.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.b.b.a.x ^ ~arg_1.a.x, 1u), abs(25230u), reverseBits(~var_0.a.a.x) & arg_1.b.a.a.x));
    let var_2 = arg_0.zyx;
    global2 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(func_3(u_input.d, arg_1), 13u)], _wgslsmith_dot_vec2_i32(var_0.a.b & (vec2<i32>(arg_1.b.a.b.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]) & var_0.b.b), vec2<i32>(-2147483647i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 13u)], arg_1.b.a.b.x))) ^ arg_1.b.a.b.x);
    return select(vec4<u32>(select(var_0.a.a.x, firstLeadingBit(1u), any(!vec3<bool>(true, var_2.x, false))), ~0u, var_0.a.a.x, ~var_0.b.a.x), _wgslsmith_sub_vec4_u32(~firstTrailingBit(~vec4<u32>(102569u, 1u, var_1.b, 1u)), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.e, 22762u), vec4<u32>(16081u, var_0.b.a.x, 0u, u_input.e), vec4<u32>(u_input.e, 4294967295u, 1u, 40195u)))), !var_2.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2, 7601u, max(arg_1.a.x, u_input.e), arg_2), (func_2(select(vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, true, true), true), Struct_5(vec2<u32>(57516u, 4294967295u), Struct_3(Struct_1(vec3<u32>(1u, arg_1.a.x, 10595u), arg_1.b), Struct_1(vec3<u32>(arg_2, arg_1.a.x, arg_2), vec2<i32>(1i, 2147483647i))), false)) >> (countOneBits(~vec4<u32>(30321u, arg_2, arg_1.a.x, 5562u)) % vec4<u32>(32u))) | vec4<u32>(31059u >> ((35715u & arg_1.a.x) % 32u), arg_1.a.x >> (1u % 32u), 1u, ~firstLeadingBit(9145u)));
    global2 = abs(-2605i);
    var var_1 = ~(arg_1.a.zy << (arg_1.a.zx % vec2<u32>(32u)));
    global2 = i32(-1i) * -1i;
    var var_2 = !arg_3;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(-global0[_wgslsmith_index_u32(0u, 13u)]);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1134f, global1.x, global1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 1645f, -1708f), vec4<f32>(global1.x, global1.x, -258f, global1.x)))), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<i32>(u_input.b, u_input.d.x) ^ u_input.a), 4294967295u, vec2<bool>(true, true))) - _wgslsmith_f_op_f32(-580f * -1221f)));
    var var_1 = Struct_1(vec3<u32>(abs(u_input.e), u_input.e, 1u), firstTrailingBit(vec2<i32>(abs(_wgslsmith_div_i32(u_input.c.x, 2147483647i)), _wgslsmith_clamp_i32(820i | u_input.d.x, -2147483647i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(-u_input.c.xx) & var_1.b), select(~(~(~var_1.a)), vec3<u32>(~max(var_1.a.x, 3931u), reverseBits(~u_input.e), u_input.e), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(var_1.a.x == 1u, true, true), vec3<bool>(u_input.b == global0[_wgslsmith_index_u32(4294967295u, 13u)], true, true))));
}

