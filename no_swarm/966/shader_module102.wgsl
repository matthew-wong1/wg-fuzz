struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<u32, 6> = array<u32, 6>(85324u, 7437u, 1u, 0u, 0u, 58726u);

var<private> global3: i32 = 74386i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = arg_2;
    var var_1 = all(select(vec4<bool>(any(vec2<bool>(global1.x, true)), global1.x, true, select(global1.x, all(vec4<bool>(true, false, false, false)), global1.x)), select(select(vec4<bool>(global1.x, global1.x, true, true), select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, global1.x, true, global1.x), true), !global1.x), !vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, !global1.x, global1.x, select(global1.x, global1.x, false))), select(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, false, global1.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2630u, 6u)], 6u)] == global2[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(select(true, global1.x, false), global1.x, !global1.x, arg_3 < arg_0.b.a), _wgslsmith_div_f32(var_0.a.x, -352f) <= var_0.a.x)));
    var_1 = arg_0.a.x > _wgslsmith_dot_vec4_i32(-(~vec4<i32>(32395i, 2147483647i, arg_0.a.x, -2147483647i)), _wgslsmith_mult_vec4_i32((vec4<i32>(arg_0.b.a, arg_3, arg_0.b.a, 1i) | vec4<i32>(arg_3, -2147483647i, arg_0.a.x, arg_3)) << ((vec4<u32>(1u, 13792u, 27132u, u_input.d.x) ^ vec4<u32>(u_input.d.x, 3948u, global2[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.c)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(8003i, arg_3), _wgslsmith_add_i32(1i, arg_0.a.x), arg_0.a.x ^ 1i, _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(arg_3, arg_3)))));
    let var_2 = select(u_input.c.x, _wgslsmith_div_u32(max(~8739u, _wgslsmith_clamp_u32(4294967295u, 46804u, arg_0.c)) << (_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(65773u, 1727u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.d, u_input.c)), true);
    var var_3 = global1.x;
    return 36688i;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global3 = func_3(Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(67092i, 0i), countOneBits(vec2<i32>(-8466i, 32500i))), Struct_1(-46223i), 53354u), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~arg_2.x, 8u)] + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -358f, 1710f, arg_0.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), 0i) & -30714i;
    global2 = array<u32, 6>();
    global3 = -select(i32(-1i) * -30576i, firstTrailingBit(select(25934i, -6031i, true)), true);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))))));
    global0 = array<vec4<f32>, 8>();
    return Struct_1(_wgslsmith_sub_i32(1i, ~(-2147483647i)));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = !select(vec4<bool>(!global1.x, global1.x, any(vec4<bool>(arg_0.x, false, true, arg_0.x)), false && (arg_0.x || false)), !arg_0, !select(!arg_0, vec4<bool>(true, true, true, true), vec4<bool>(false, global1.x, false, arg_0.x)));
    var var_1 = Struct_4(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-20812i, 1i, -40419i, 2147483647i)) << (~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c.x) % vec4<u32>(32u)), ~vec4<i32>(1i, 1i, 1i, 1i))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1111f, 742f, -787f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1448f, 346f, -308f) - vec3<f32>(1900f, 929f, -321f))))), u_input.b.x <= abs(4294967295u), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d.zy), ~u_input.d.zz, ~(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], u_input.c.x) ^ u_input.c.xz))), ~global2[_wgslsmith_index_u32(~(~u_input.a), 6u)]);
    var var_2 = var_1.b.a;
    let var_3 = Struct_3(var_1.b);
    global0 = array<vec4<f32>, 8>();
    return StorageBuffer(~5314u, _wgslsmith_mult_u32(var_1.c, ~1u), select(select(u_input.b << (vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(22688u, 6u)]) % vec2<u32>(32u)), vec2<u32>(53024u, global2[_wgslsmith_index_u32(u_input.d.x, 6u)]) >> (vec2<u32>(4294967295u, 69149u) % vec2<u32>(32u)), arg_0.yx), vec2<u32>(~var_1.c, 4294967295u | var_1.c), select(vec2<bool>(var_0.x, global1.x), vec2<bool>(arg_0.x, var_0.x), !vec2<bool>(global1.x, arg_0.x))) << (~vec2<u32>(~var_1.c, ~0u) % vec2<u32>(32u)), -(~var_3.a.a), ~global2[_wgslsmith_index_u32(4294967295u, 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(~(~29067u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(u_input.c.x, u_input.b.x), 6u)], 6u)], !(!any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_add_u32(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35277u, u_input.d.x, u_input.a), vec3<u32>(83328u, 5263u, global2[_wgslsmith_index_u32(u_input.d.x, 6u)])), abs(global2[_wgslsmith_index_u32(1u, 6u)])), ~global2[_wgslsmith_index_u32(u_input.d.x, 6u)], false), u_input.b.x) >= u_input.c.x;
    var var_2 = 28301u;
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(~firstLeadingBit(1i), ~_wgslsmith_sub_i32(min(2147483647i, 23321i), _wgslsmith_mult_i32(-93i, 0i)), -1i), countOneBits(1i));
    var_0 = countOneBits(0u & _wgslsmith_mult_u32(reverseBits(21652u << (u_input.d.x % 32u)), ~(~u_input.a)));
    var var_4 = Struct_3(Struct_1(var_3.x ^ 2147483647i));
    let x = u_input.a;
    s_output = func_1(!(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, global1.x, false, var_1), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, false, var_1, global1.x), true))));
}

