struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false));

var<private> global1: array<f32, 30> = array<f32, 30>(-2451f, 1191f, 522f, -337f, 482f, 591f, -189f, -1372f, -1000f, -400f, 1266f, -1000f, -160f, 1000f, -1000f, -1447f, 918f, -830f, -297f, 227f, -691f, -1429f, 283f, 1693f, 872f, 1255f, -1570f, 823f, -643f, 854f);

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(857f, -1521f), vec2<f32>(711f, 1000f), vec2<f32>(363f, 1198f), vec2<f32>(-1896f, -729f), vec2<f32>(-903f, -517f), vec2<f32>(-585f, 545f), vec2<f32>(-486f, 736f), vec2<f32>(638f, -2632f), vec2<f32>(-715f, -1225f), vec2<f32>(-1483f, -304f), vec2<f32>(-1812f, 1477f), vec2<f32>(936f, 481f), vec2<f32>(-1426f, -1692f), vec2<f32>(-1000f, -370f), vec2<f32>(1769f, 1384f), vec2<f32>(321f, 1312f), vec2<f32>(281f, -772f), vec2<f32>(-1296f, 1054f), vec2<f32>(-440f, 743f), vec2<f32>(-1185f, 512f), vec2<f32>(-502f, 398f), vec2<f32>(-460f, 1000f));

var<private> global4: Struct_1 = Struct_1(0u, 4294967295u, vec3<i32>(-1i, -1i, -20016i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(~arg_3.a, _wgslsmith_sub_u32(global4.b, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 23238u, 1u, global4.a) & vec4<u32>(4294967295u, u_input.a.x, 0u, arg_3.a), abs(vec4<u32>(u_input.b.x, 3622u, arg_3.b, 107718u))), arg_3.b)), global4.c);
    var var_1 = select(vec2<bool>(!arg_2, true), !(!vec2<bool>(arg_2, false)), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2), vec2<bool>(arg_0, true), true), !vec2<bool>(arg_0, false)), vec2<bool>(any(!global0[_wgslsmith_index_u32(4294967295u, 3u)]), any(vec2<bool>(true, true))), select(!vec2<bool>(false, arg_0), select(select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_0, false), true), !(!arg_2))));
    global2 = _wgslsmith_clamp_i32(~(-45864i), firstLeadingBit(_wgslsmith_dot_vec2_i32(global4.c.zz & vec2<i32>(global4.c.x, arg_3.c.x), -global4.c.xz)), i32(-1i) * -20188i) >> (~var_0.a % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-602f, arg_1.x)) - global1[_wgslsmith_index_u32(54878u, 30u)]), -161f, -419f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -453f, -101f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 770f, -1899f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1163f, arg_1.x, global1[_wgslsmith_index_u32(var_0.a, 30u)]))))))));
    var var_3 = var_0;
    return var_0.a;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    global3 = array<vec2<f32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(9429u, 30u)]));
    global2 = 0i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(863f)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.a, ~func_3(false, vec2<f32>(global1[_wgslsmith_index_u32(global4.b, 30u)], -1240f), true, Struct_1(44359u, global4.b, global4.c))), 30u)])), _wgslsmith_f_op_f32(min(-662f, global1[_wgslsmith_index_u32(global4.b, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f * global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global4.b, 4294967295u), 30u)])));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1161f), 2202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 741f))))), _wgslsmith_f_op_f32(f32(-1f) * -130f), select(!(!select(true, true, false)), any(!(!global0[_wgslsmith_index_u32(24636u, 3u)])), true)));
    return select(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(global0[_wgslsmith_index_u32(global4.a, 3u)])), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), -323f == var_1.x, any(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), global0[_wgslsmith_index_u32(global4.a, 3u)], true))));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_i32(34446i, max(_wgslsmith_add_i32(global4.c.x, -2928i), global4.c.x >> (89419u % 32u)) & -(~global4.c.x)));
    var var_1 = Struct_1(~global4.b, 1u, -global4.c);
    global3 = array<vec2<f32>, 22>();
    var var_2 = select(vec4<bool>(true, all(func_2(global4.c.x)), false, true), global0[_wgslsmith_index_u32(global4.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]);
    var var_3 = min(min(-vec2<i32>(2556i, -12473i) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(28732i, -1i, var_1.c.x, -1i), vec4<i32>(global4.c.x, global4.c.x, global4.c.x, var_1.c.x)), var_1.c.x), abs(abs(~vec2<i32>(global4.c.x, -3695i)))), min(max(global4.c.xx | vec2<i32>(2147483647i, -1i), vec2<i32>(abs(var_1.c.x), ~global4.c.x)), vec2<i32>(var_1.c.x, countOneBits(-22089i))));
    return Struct_1(reverseBits(var_1.a), _wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), vec3<i32>(_wgslsmith_sub_i32(~(var_1.c.x & var_3.x), var_1.c.x), var_1.c.x, min(~select(-29457i, -1i, var_2.x), -_wgslsmith_sub_i32(4932i, var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(min(global4.c.x, 35730i) >> (u_input.b.x % 32u), max(-8198i, ~var_0.c.x));
    var var_2 = func_1();
    let var_3 = true;
    var var_4 = func_1();
    let var_5 = reverseBits(~_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(0i, global4.c.x)), _wgslsmith_clamp_vec2_i32(global4.c.xz, vec2<i32>(1i, 1i), var_2.c.xz), vec2<i32>(~2147483647i, 1i)));
    var var_6 = var_0;
    global3 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(reverseBits(countOneBits(var_4.c >> (vec3<u32>(var_2.b, var_0.b, 0u) % vec3<u32>(32u)))), var_6.c), global3[_wgslsmith_index_u32(var_6.b, 22u)], -_wgslsmith_mult_vec4_i32(max(vec4<i32>(var_5.x, 0i, var_6.c.x, 0i), vec4<i32>(var_2.c.x, 1i, 16997i, global4.c.x)) >> ((vec4<u32>(4294967295u, u_input.b.x, 0u, 4294967295u) | vec4<u32>(5486u, 19663u, global4.b, 1u)) % vec4<u32>(32u)), vec4<i32>(global4.c.x ^ var_4.c.x, var_6.c.x, var_5.x, var_4.c.x)));
}

