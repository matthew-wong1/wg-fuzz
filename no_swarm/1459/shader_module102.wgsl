struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -241f;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, false, false, false, false, false, true, false, true, false, true, false, false, true, false);

var<private> global2: array<f32, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = max(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(66773u, _wgslsmith_add_u32(arg_0, u_input.a)), ~vec2<u32>(4294967295u, 94439u), ~vec2<u32>(u_input.a, arg_0)), ~(~vec2<u32>(u_input.a, u_input.a))), ~firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 32544u), vec2<u32>(u_input.a, arg_0))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, arg_1.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 29u)] + _wgslsmith_f_op_f32(step(arg_1.a, 1350f))), -377f))));
    let var_2 = Struct_4(all(vec2<bool>(true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(11616u, 17u)], false, global1[_wgslsmith_index_u32(15201u, 17u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(29419u, 17u)]), false)))), Struct_1(abs(var_0.x), ~(vec3<u32>(4294967295u, 1u, var_0.x) >> (vec3<u32>(arg_0, 0u, u_input.a) % vec3<u32>(32u))) ^ firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 8390u) & vec3<u32>(51342u, 10267u, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(248f, var_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), global2[_wgslsmith_index_u32(var_0.x, 29u)])), 102f), arg_1, Struct_3(global1[_wgslsmith_index_u32(1u, 17u)]), max(~abs(_wgslsmith_mult_u32(var_0.x, 0u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(arg_0), arg_0), ~(~49775u))));
    var var_3 = abs(min(vec2<i32>(u_input.b.x, countOneBits(12860i)), -_wgslsmith_mod_vec2_i32(min(u_input.b, vec2<i32>(-1i, u_input.b.x)), min(vec2<i32>(u_input.b.x, -34153i), u_input.b))));
    global2 = array<f32, 29>();
    return 174f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.d))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<u32> {
    global2 = array<f32, 29>();
    var var_0 = !(!func_3(1u, arg_0));
    let var_1 = Struct_4(true, Struct_1(~u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(min(u_input.a, 1u), 1u, ~1u), vec3<u32>(_wgslsmith_mult_u32(5154u, u_input.a), firstTrailingBit(u_input.a), 25749u)), _wgslsmith_f_op_f32(-1403f - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, 438f))))), arg_0, arg_2, u_input.a);
    global0 = _wgslsmith_div_f32(-993f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - arg_0.a))), var_1.c.a, !global1[_wgslsmith_index_u32(9671u, 17u)])))));
    var_0 = false;
    return ~(~(~(~vec2<u32>(var_1.b.a, u_input.a))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(select(select(abs(func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<i32>(0i, 0i, 2147483647i, 2147483647i), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 17u)]))), countOneBits(vec2<u32>(u_input.a, 1u)) | (vec2<u32>(u_input.a, 1u) | vec2<u32>(u_input.a, 4294967295u)), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 17u)], true), all(vec4<bool>(global1[_wgslsmith_index_u32(3043u, 17u)], global1[_wgslsmith_index_u32(20780u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)])))), abs(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(u_input.a, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)))), global1[_wgslsmith_index_u32((u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0, 44865u), vec4<u32>(5125u, 4294967295u, arg_0, arg_0)) % 32u)) | arg_0, 17u)]), ~abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0) | vec2<u32>(12054u, u_input.a), vec2<u32>(9285u, 0u))));
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + -923f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9767u, 29u)])))), -vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), i32(-1i) * -1i), 36634i, _wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(50026i))), Struct_3(true)).x;
    let var_2 = abs(reverseBits(select(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-52298i, 2147483647i, 4374i), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 17u)], false, global1[_wgslsmith_index_u32(u_input.a, 17u)])) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 32989u, var_1), vec3<u32>(1u, 28706u, 69842u)) % vec3<u32>(32u)))) ^ ~(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b.x, -1i, u_input.b.x)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1161f);
    let var_4 = Struct_5(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(arg_0, 29u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 29u)]), var_3 < var_3))))), Struct_3(false), Struct_4(global1[_wgslsmith_index_u32(1539u, 17u)], Struct_1(~var_0.x, vec3<u32>(u_input.a, 64382u, u_input.a) ^ ~vec3<u32>(1u, var_1, 4173u), _wgslsmith_f_op_f32(step(var_3, -1000f)), _wgslsmith_f_op_f32(-1f)), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(130288u, 59170u), vec2<u32>(var_0.x, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(29324u, 11008u))), 29u)]), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 17u)]), var_0.x));
    return Struct_1(reverseBits(select(69180u, var_1, false)), (vec3<u32>(_wgslsmith_sub_u32(var_1, 1u), var_1, ~var_4.c.b.b.x) | vec3<u32>(~15974u, var_0.x, 4294967295u)) & ~(~vec3<u32>(0u, 0u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(max(194f, global2[_wgslsmith_index_u32(~(~u_input.a), 29u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, func_1(u_input.a), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 29u)]), Struct_3(!any(select(vec4<bool>(global1[_wgslsmith_index_u32(47143u, 17u)], true, false, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], false), global1[_wgslsmith_index_u32(u_input.a, 17u)]))), func_2(Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 29u)]), ~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, -19526i, u_input.b.x), vec4<i32>(61574i, u_input.b.x, 0i, u_input.b.x)), -2147483647i), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 17u)])).x);
    let var_1 = -1000f;
    let var_2 = abs(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(40534u, 1u, 1u), var_0.b.b, vec3<u32>(u_input.a, var_0.b.a, 40926u)), select(vec3<u32>(1u, 18325u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, var_0.d.a, global1[_wgslsmith_index_u32(48319u, 17u)]))) << (var_0.b.b % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), global2[_wgslsmith_index_u32(1u, 29u)], true));
    var var_4 = !(!vec2<bool>(var_0.d.a, false));
    let var_5 = Struct_5(Struct_2(1598f), Struct_3(global1[_wgslsmith_index_u32(4294967295u << (_wgslsmith_clamp_u32(u_input.a >> (u_input.a % 32u), 64732u, 32318u) % 32u), 17u)]), Struct_4(var_4.x, Struct_1(43475u, func_1(0u).b, _wgslsmith_f_op_f32(exp2(var_0.b.d)), -860f), var_0.c, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -365f) <= global2[_wgslsmith_index_u32(abs(54665u), 29u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 134786u), vec2<u32>(4294967295u, 44958u))));
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.c.a, var_1, var_0.b.d, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 29u)], -913f, -531f, var_5.c.c.a))))), firstLeadingBit(u_input.b.x), -reverseBits(vec4<i32>(_wgslsmith_mult_i32(36007i, 27690i), -10967i, max(22446i, u_input.b.x), u_input.b.x << (0u % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(-8862i, u_input.b.x), -u_input.b), var_5.c.b.b);
}

