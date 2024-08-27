struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec4<f32> = vec4<f32>(256f, 270f, -410f, -1004f);

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> vec2<u32> {
    global2 = Struct_3(global0[_wgslsmith_index_u32(abs(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(75413u, global2.d), _wgslsmith_mult_u32(1u, 0u)))), 20u)], Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.a.x, 1u, 87651u) ^ global2.b.a, _wgslsmith_sub_vec3_u32(global2.b.a, vec3<u32>(1u, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_u32(~4294967295u, 1u, ~global2.d), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))), Struct_1(vec2<u32>(0u, 70808u))), _wgslsmith_mod_i32(0i ^ u_input.b.x, -abs(~(-1i))), ~u_input.c.x, select(vec2<bool>(true, global2.e.x), select(select(select(global2.e, global2.e, vec2<bool>(global2.e.x, true)), global2.e, -31002i < arg_1), global2.e, all(select(vec3<bool>(false, global2.e.x, global2.e.x), vec3<bool>(global2.e.x, global2.e.x, global2.e.x), global2.e.x))), global2.e));
    var var_0 = arg_1;
    return u_input.c;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = arg_0.zx;
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(~(~(~global2.d)), 20u)], Struct_2(global2.b.a, _wgslsmith_f_op_f32(-755f - global1.x), Struct_1(~global2.b.c.a)), -48032i, ~global2.a.a.x, vec2<bool>(false, true));
    var var_2 = _wgslsmith_f_op_f32(788f * global1.x) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.b + 566f), _wgslsmith_f_op_f32(round(global1.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(825f + -931f) - _wgslsmith_f_op_f32(-189f * -542f)))));
    var var_3 = ~(vec2<i32>(-1i) * -vec2<i32>(~u_input.b.x, var_1.c));
    var_2 = all(!vec4<bool>(true, var_1.e.x, all(select(vec4<bool>(true, global2.e.x, false, global2.e.x), vec4<bool>(false, false, true, global2.e.x), true)), _wgslsmith_div_f32(global1.x, global1.x) != _wgslsmith_f_op_f32(ceil(464f))));
    return Struct_3(Struct_1(vec2<u32>(0u, var_1.b.a.x) & ~u_input.c), Struct_2(_wgslsmith_div_vec3_u32(var_1.b.a, _wgslsmith_mult_vec3_u32(var_1.b.a, var_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.b))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c) >> (func_3(vec4<f32>(global2.b.b, global1.x, global1.x, global1.x), 2147483647i, vec2<f32>(global1.x, 278f), var_0.x) % vec2<u32>(32u)), vec2<u32>(countOneBits(1u), ~global2.a.a.x)), 20u)]), select(~var_3.x, countOneBits(-20406i ^ _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, var_3.x, global2.c, var_3.x))), true), 53687u, !select(vec2<bool>(var_1.e.x && true, global2.e.x), !vec2<bool>(true, global2.e.x), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, global2.e.x, false, var_1.e.x), vec4<bool>(global2.e.x, var_1.e.x, global2.e.x, global2.e.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    global0 = array<Struct_1, 20>();
    let var_0 = vec3<bool>(global2.b.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), arg_2.e.x, global2.c == _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~u_input.b, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(7311i, -62852i, 0i))), select(-global2.c, _wgslsmith_mod_i32(arg_2.c, 13181i), arg_0.e.x)));
    var var_1 = var_0.x | true;
    let var_2 = arg_2.b.a;
    var var_3 = !(!(!(!vec4<bool>(false, global2.e.x, false, arg_2.e.x))));
    return arg_0.b;
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    global2 = Struct_3(global2.a, func_4(func_2(vec4<i32>(-1i >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, 0i)), ~u_input.b.x, 2147483647i)), Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(global2.b.c.a, global2.b.c.a), _wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_div_u32(global2.d, global2.b.c.a.x)), _wgslsmith_f_op_f32(-func_2(vec4<i32>(global2.c, 24264i, global2.c, -2147483647i)).b.b), func_2(vec4<i32>(-2747i, 40590i, u_input.b.x, -1i)).a), Struct_3(func_2(-vec4<i32>(-80410i, 32289i, -2147483647i, global2.c)).b.c, Struct_2(~vec3<u32>(0u, u_input.a, 33471u), -247f, global0[_wgslsmith_index_u32(~94991u, 20u)]), func_2(-vec4<i32>(-1i, u_input.b.x, 34199i, 1i)).c, firstLeadingBit(~71506u), select(global2.e, vec2<bool>(global2.e.x, false), false))), 1i, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.b.a.x, 1u), func_4(Struct_3(global2.b.c, Struct_2(global2.b.a, global2.b.b, Struct_1(vec2<u32>(u_input.c.x, global2.b.c.a.x))), global2.c, u_input.a, global2.e), Struct_2(global2.b.a, -719f, Struct_1(global2.a.a)), Struct_3(global2.b.c, global2.b, 2147483647i, 66703u, global2.e)).a.x) << (u_input.c.x % 32u), 17658u), global2.e);
    let var_1 = all(!select(select(global2.e, global2.e, false), global2.e, true)) || !global2.e.x;
    let var_2 = ~_wgslsmith_add_u32(4294967295u, global2.d);
    let var_3 = Struct_3(Struct_1(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2), u_input.c))), func_2(select(select(~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, -1i, global2.c, 1i) << (vec4<u32>(1u, var_2, var_2, 0u) % vec4<u32>(32u)), select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(false, false, global2.e.x, true), vec4<bool>(false, false, false, global2.e.x))), -_wgslsmith_add_vec4_i32(vec4<i32>(-551i, 21345i, global2.c, 17849i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)), true)).b, ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, ~0i), global2.c, global2.c ^ _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.xx)), global2.d, global2.e);
    return func_2(vec4<i32>(abs(~0i), i32(-1i) * -(global2.c | u_input.b.x), u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(u_input.b.xx, u_input.b.yx), firstTrailingBit(u_input.b.yz)), ~countOneBits(u_input.b.yz)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = func_2(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, global2.c, 12487i, -1i), vec4<i32>(global2.c, 0i, 30878i, -41330i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.c.a.x, 1u), firstTrailingBit(vec4<u32>(22775u, 31760u, 7551u, var_0.a.x))) % vec4<u32>(32u))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), global1.x, func_4(Struct_3(func_4(func_2(vec4<i32>(u_input.b.x, -26942i, global2.c, -56377i)), global2.b, func_2(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, global2.c))).c, global2.b, 2147483647i, 94308u, !select(vec2<bool>(true, global2.e.x), global2.e, global2.e)), Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-357f, 284f)) + -196f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.a, var_0.a), 48757u), 20u)]), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-33995i, u_input.b.x, global2.c, -2147483647i), vec4<i32>(1i, 2147483647i, global2.c, u_input.b.x) ^ vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -10136i)))).b, 392f);
    var var_1 = min(-max(vec3<i32>(u_input.b.x, -2147483647i, func_2(vec4<i32>(-1i, -2147483647i, u_input.b.x, global2.c)).c), -u_input.b), vec3<i32>(abs(-(global2.c << (u_input.a % 32u))), 21454i, global2.c));
    let var_2 = func_2(-vec4<i32>(firstLeadingBit(-global2.c), _wgslsmith_div_i32(max(2756i, 2147483647i), ~0i), global2.c, -27145i));
    var var_3 = var_2.b;
    let var_4 = _wgslsmith_sub_u32(u_input.a, abs(4668u));
    global0 = array<Struct_1, 20>();
    global2 = func_2(select(vec4<i32>(1i, 1i >> ((u_input.a ^ global2.d) % 32u), -45153i, var_2.c), ~(reverseBits(vec4<i32>(var_1.x, 1i, -26412i, var_2.c)) | _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, var_2.c, u_input.b.x), vec4<i32>(global2.c, -1i, u_input.b.x, var_2.c))), select(vec4<bool>(true, !var_2.e.x, !global2.e.x, 20866u == var_2.b.c.a.x), !select(vec4<bool>(global2.e.x, var_2.e.x, global2.e.x, true), vec4<bool>(true, global2.e.x, var_2.e.x, var_2.e.x), true), select(global2.e.x, global2.e.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1054f, var_2.b.b) - global1.xy))))));
}

