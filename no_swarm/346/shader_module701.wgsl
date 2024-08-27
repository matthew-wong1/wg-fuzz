struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: Struct_1 = Struct_1(true, vec2<i32>(0i, 1i), 2147483647i);

var<private> global2: Struct_2 = Struct_2(vec2<i32>(2147483647i, -20378i), vec3<i32>(12626i, 2147483647i, -5338i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = vec3<i32>(global1.c, 1i, ~((-global1.c << (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u)) | _wgslsmith_clamp_i32(global2.b.x, ~global2.b.x, ~global2.b.x)));
    var var_1 = vec3<bool>(true, true, abs(-2147483647i) < ~(countOneBits(global2.b.x) >> (1u % 32u)));
    var_1 = !vec3<bool>((true || var_1.x) || all(var_1.zz), !(u_input.a.x >= 1u), true);
    var_1 = vec3<bool>(global1.a, false, !global1.a);
    let var_2 = !select(any(vec2<bool>(global1.a && true, global1.a == global1.a)), false, true);
    return var_0.x;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_3(Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(7131i, -27658i), select(vec2<i32>(global2.a.x, global1.b.x), vec2<i32>(global2.a.x, global2.a.x), global1.a)), global2.b), Struct_1(false, vec2<i32>(select(0i, global1.b.x, false) << (firstLeadingBit(0u) % 32u), -_wgslsmith_sub_i32(global1.c, global1.c)), func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1606f - -482f))))), Struct_2(-abs(vec2<i32>(global2.b.x, 10405i)), vec3<i32>(global1.b.x, global1.b.x, abs(1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-368f, -696f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1691f, 388f)))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -371f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1443f)) + _wgslsmith_f_op_f32(step(-679f, 216f))))));
    var var_1 = _wgslsmith_add_vec2_i32(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(22628i, var_0.d.b.x), vec2<i32>(var_0.d.a.x, -50516i))) >> (vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_div_u32(1u, u_input.a.x)) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~(-1i)), vec2<i32>(17281i, 1i)));
    var var_2 = vec4<u32>(~34278u, min(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(93984u, 12971u, u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, 11258u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<bool>(true, global1.a, true))) << (_wgslsmith_dot_vec2_u32(u_input.a ^ vec2<u32>(u_input.a.x, 15672u), u_input.a) % 32u)), 1u, max(~(~8173u), 6446u) >> (abs(firstTrailingBit(0u)) % 32u));
    global1 = Struct_1(true, abs(firstLeadingBit(global2.a)), var_0.b.b.x);
    return var_0.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = -_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.b.x, global1.c, 15946i, global2.a.x), vec4<i32>(-1i, global1.b.x, global2.a.x, global2.a.x), true), vec4<i32>(-29968i, 0i, global1.c, global1.b.x)));
    let var_1 = (firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, min(u_input.a.x, 4294967295u))) ^ ((4294967295u << (countOneBits(u_input.a.x) % 32u)) << (1u % 32u))) > _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, firstTrailingBit(u_input.a.x) >> (0u % 32u)));
    var var_2 = func_2();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1478f, -501f, -210f) * vec3<f32>(1831f, -2297f, 1630f))) * vec3<f32>(_wgslsmith_f_op_f32(1292f - 421f), _wgslsmith_f_op_f32(round(751f)), 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-979f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)), -847f)), vec2<u32>(_wgslsmith_add_u32(1u, ~u_input.a.x), u_input.a.x) << (select(~(~vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(5399u, ~35208u), !any(vec2<bool>(var_1, var_1))) % vec2<u32>(32u)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, 2147483647i), global2.b.xz), ~(-abs(vec2<i32>(-1i, 1i))), ~max(vec2<i32>(global1.b.x, -38667i), ~global1.b)) ^ vec2<i32>(-10829i, 25347i);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2117f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1408f)), -1000f)), -949f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - -373f);
    var var_3 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 60523u), vec2<u32>(u_input.a.x, 11989u), u_input.a), vec2<u32>(96986u, u_input.a.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(4294967295u, 25086u)))) << (vec2<u32>(19695u, u_input.a.x) % vec2<u32>(32u));
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = func_1();
}

