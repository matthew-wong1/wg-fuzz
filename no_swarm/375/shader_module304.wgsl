struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(abs(_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, arg_1.a.x), _wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 23933u)), ~vec2<u32>(arg_1.c.x, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x)))), abs(arg_1.c ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, arg_0.x, u_input.c, 9157u), vec4<u32>(arg_0.x, arg_1.a.x, 11772u, 0u) ^ arg_0)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_0.b, vec2<f32>(1000f, _wgslsmith_f_op_f32(-arg_1.b.x)))))), vec4<f32>(2043f, -1536f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x - 460f), _wgslsmith_f_op_f32(f32(-1f) * -940f), global0.x)), _wgslsmith_f_op_f32(arg_1.b.x + -603f), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-381f, _wgslsmith_f_op_f32(max(var_0.b.x, -1401f))))))), (vec4<u32>(arg_0.x << (u_input.b.x % 32u), ~1u, u_input.e, 73891u ^ u_input.c) & ~min(arg_1.c, vec4<u32>(arg_0.x, var_0.c.x, 0u, var_0.a.x))) & vec4<u32>(arg_1.c.x, ~(~var_0.a.x), ~(~4294967295u), 24907u));
    let var_2 = select(select(select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, true), true), vec3<bool>(!global0.x, _wgslsmith_div_f32(-1000f, var_1.b.x) < _wgslsmith_f_op_f32(f32(-1f) * -467f), arg_2.a > ~arg_2.a), !(!select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x))), vec3<bool>(true, true, any(!vec3<bool>(global0.x, global0.x, true))), select(vec3<bool>(any(!vec4<bool>(global0.x, true, global0.x, true)), _wgslsmith_div_f32(var_1.b.x, arg_1.b.x) <= _wgslsmith_div_f32(var_0.b.x, -147f), var_0.a.x != (var_1.c.x >> (0u % 32u))), vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), !global0.x, any(vec4<bool>(global0.x, false, global0.x, global0.x))), !vec3<bool>(true || global0.x, false, var_0.b.x != arg_1.b.x)));
    global0 = vec3<bool>(false, !(!global0.x) && false, !global0.x || (false || global0.x));
    let var_3 = firstLeadingBit(arg_0.zx) ^ vec2<u32>(var_0.a.x, arg_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(613f, _wgslsmith_f_op_f32(max(arg_1.b.x, 206f)))) - _wgslsmith_f_op_f32(trunc(var_1.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), arg_1.b.x))))));
}

fn func_2(arg_0: Struct_4) -> i32 {
    global0 = !select(vec3<bool>(_wgslsmith_mult_i32(arg_0.e.x, u_input.a) > (arg_0.c | 872i), false, true), vec3<bool>(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x) > _wgslsmith_f_op_f32(-488f + -1854f), global0.x, all(global0.zx)), vec3<bool>(true, true, global0.x));
    var var_0 = u_input.c;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(1529f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.c, 4294967295u, 1u, 4294967295u), Struct_1(vec2<u32>(u_input.b.x, 0u), vec2<f32>(-1000f, arg_0.b.x), vec4<u32>(u_input.b.x, arg_0.d, arg_0.d, arg_0.d)), Struct_2(u_input.d.x, arg_0.c))) - -370f)))));
    let var_2 = false;
    global0 = select(select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(var_2, var_2, global0.x)), !vec3<bool>(true, global0.x, false)), vec3<bool>(var_2, var_2, true), global0.x), select(!vec3<bool>(var_2, true, global0.x), vec3<bool>(true & var_2, var_2, false), vec3<bool>(true, arg_0.a > 16379u, false)), any(!vec2<bool>(var_2, var_2))), vec3<bool>(global0.x, all(select(!global0.yx, vec2<bool>(false, false), false)), var_2 && var_2), vec3<bool>(any(vec3<bool>(54796i != arg_0.e.x, var_2, global0.x || false)), any(select(vec3<bool>(var_2, true, false), vec3<bool>(var_2, var_2, global0.x), global0.x)), all(!vec4<bool>(false, var_2, global0.x, true))));
    return i32(-1i) * -select(arg_0.e.x, -2147483647i, !all(global0.xx));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = !arg_0;
    global0 = arg_0;
    let var_0 = !(!vec2<bool>(true, !any(arg_0.xz)));
    var var_1 = Struct_4(34979u, _wgslsmith_f_op_vec2_f32(arg_2.xx * vec2<f32>(121f, arg_2.x)), -8327i | ~(-u_input.d.x << (firstLeadingBit(54770u) % 32u)), _wgslsmith_mod_u32(30565u, arg_3.x), vec4<i32>(-9379i, 34730i, _wgslsmith_sub_i32(firstTrailingBit(u_input.d.x) & -2147483647i, u_input.d.x), -39207i));
    let var_2 = Struct_4(~(~arg_3.x), arg_2.yy, _wgslsmith_sub_i32(11979i, u_input.a), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d, 0u, 18117u), vec4<u32>(4294967295u, 3511u, u_input.c, var_1.d))), u_input.c | ~13031u) & _wgslsmith_mod_u32(~35727u, firstLeadingBit(u_input.e ^ 23961u)), reverseBits(var_1.e));
    return Struct_1(max(arg_3, arg_3), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b - var_1.b) * vec2<f32>(-334f, arg_2.x)))), var_2.b, !arg_0.xx)), _wgslsmith_mult_vec4_u32(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 30814u, var_2.a, 17559u), vec4<u32>(u_input.e, 4294967295u, var_2.d, 15999u)), countOneBits(vec4<u32>(45768u, 21587u, var_2.a, var_1.d)), var_2.b.x <= _wgslsmith_f_op_f32(func_3(vec4<u32>(var_2.a, 4294967295u, var_1.a, var_2.a), Struct_1(vec2<u32>(4294967295u, 1u), var_1.b, vec4<u32>(u_input.b.x, var_1.d, u_input.c, 18294u)), Struct_2(53641i, 17189i)))), ~(countOneBits(vec4<u32>(1u, u_input.b.x, var_1.d, 4294967295u)) | vec4<u32>(176931u, u_input.b.x, var_1.a, arg_3.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = func_4(select(vec3<bool>(-u_input.a <= func_2(Struct_4(11420u, arg_2.yx, u_input.d.x, 0u, vec4<i32>(u_input.d.x, 24362i, u_input.a, 2147483647i))), any(!vec4<bool>(global0.x, false, false, true)), !select(true, global0.x, false)), !(!vec3<bool>(global0.x, false, global0.x)), any(vec4<bool>(all(vec3<bool>(global0.x, global0.x, false)), global0.x, !global0.x, !global0.x))), false, _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-1359f, _wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(111f + -433f)), arg_0.b.x, arg_0.b.x)), _wgslsmith_mod_vec2_u32(u_input.b, ~(vec2<u32>(u_input.e, 29479u) | u_input.b)));
    let var_1 = Struct_2(u_input.a, -16312i);
    let var_2 = vec3<f32>(arg_2.x, -1837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)));
    var var_3 = _wgslsmith_mod_vec2_u32(~(arg_0.a & max(_wgslsmith_mult_vec2_u32(arg_0.c.xx, vec2<u32>(u_input.b.x, u_input.c)), u_input.b)), arg_0.c.wz);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-609f, -1030f), var_2.xz), vec2<f32>(arg_2.x, -785f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -113f) + arg_0.b.x), 1341f, _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - var_2.x))), arg_0.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -1078f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<i32>(i32(-1i) * -1i, -1i));
    global0 = vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(4294967295u, 48309u), vec2<f32>(1050f, -2369f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.e, u_input.c)), vec4<f32>(452f, 1000f, -504f, -1000f), vec3<f32>(-1151f, 528f, 117f))) - -173f), -394f)) <= 1000f, !all(vec2<bool>(all(vec2<bool>(global0.x, true)), global0.x)), global0.x);
    global0 = !select(!vec3<bool>(false & global0.x, global0.x, any(vec4<bool>(global0.x, false, false, global0.x))), vec3<bool>(global0.x, true, global0.x), vec3<bool>(select(any(global0.yy), global0.x, true), false, global0.x));
    let var_1 = !all(select(vec2<bool>(any(vec3<bool>(true, true, global0.x)), !global0.x), select(vec2<bool>(false, global0.x), global0.yx, u_input.c <= 0u), any(vec4<bool>(global0.x, true, global0.x, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(min(-348f, _wgslsmith_f_op_f32(861f + 1382f))))), global0.x)));
    let var_3 = abs(var_0);
    global0 = select(select(!vec3<bool>(true, global0.x, !var_1), vec3<bool>(all(vec2<bool>(false, global0.x)), true, any(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(var_1, global0.x, true, var_1), vec4<bool>(false, global0.x, false, var_1)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1, true), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, true), vec3<bool>(false, true, var_1))), select(vec3<bool>(true, true, true), !vec3<bool>(var_1, global0.x, false), select(vec3<bool>(var_1, false, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, var_1, false))), vec3<bool>(true, true, var_1))), vec3<bool>(var_1, true, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b.x), Struct_1(vec2<u32>(u_input.b.x, u_input.c), vec2<f32>(1103f, -336f), vec4<u32>(30802u, 1u, u_input.c, u_input.b.x)), Struct_2(1390i, -1i)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1258f + -703f)) - 444f));
    let var_4 = -firstTrailingBit(max(~(~var_3), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.zz, u_input.d.zx), -vec2<i32>(-2147483647i, 0i))));
    var var_5 = Struct_1(~vec2<u32>(abs(u_input.b.x), ~39707u) >> (select(u_input.b, vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.e), ~u_input.e), false) % vec2<u32>(32u)), vec2<f32>(1f, 1f), vec4<u32>(1u, u_input.b.x, 4294967295u, 1u << (u_input.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(min(1674f, _wgslsmith_f_op_f32(func_1(func_4(vec3<bool>(true, var_1, false), var_1, vec4<f32>(-915f, 140f, var_5.b.x, var_5.b.x), vec2<u32>(27777u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.b.x, var_5.b.x, var_5.b.x, 2001f) + vec4<f32>(-404f, -2106f, -519f, var_5.b.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(167f, var_5.b.x, 378f)))))))), -533f);
}

