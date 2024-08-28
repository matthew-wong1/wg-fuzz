struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -1000f;

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = u_input.d.x;
    var var_0 = vec2<i32>(-33837i, reverseBits(firstTrailingBit(_wgslsmith_div_i32(u_input.d.x, u_input.d.x))));
    var_0 = _wgslsmith_add_vec2_i32(u_input.a, -((vec2<i32>(u_input.a.x, u_input.a.x) ^ firstLeadingBit(vec2<i32>(1i, u_input.b.x))) >> (vec2<u32>(~global2.x, min(49657u, 53854u)) % vec2<u32>(32u))));
    var_0 = -vec2<i32>(u_input.b.x, firstTrailingBit(i32(-1i) * -1i) ^ _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), countOneBits(0i)));
    var_0 = u_input.b.xy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-820f)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(u_input.d.x, 16550i);
    var var_1 = global2.x;
    let var_2 = Struct_2(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), 56467u >> (~4294967295u % 32u), Struct_1(vec4<i32>(firstLeadingBit(-2147483647i), 33609i, -_wgslsmith_div_i32(-7986i, -2747i), min(-u_input.b.x, var_0.x))), vec2<bool>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.d.x, -1i, var_0.x, 0i)))) != -470f, true), ~(-u_input.a.x) | _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, u_input.b.x), var_0.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2880i, 2147483647i, u_input.d.x, var_0.x)), firstTrailingBit(u_input.d))));
    global2 = vec2<u32>(reverseBits(~firstLeadingBit(~4391u)), 4294967295u);
    let var_3 = ~var_2.b;
    return var_2.c;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global2.x, arg_0.b, arg_0.b) | max(vec4<u32>(global2.x, arg_0.b, u_input.c.x, arg_0.b), vec4<u32>(4294967295u, 11962u, 24622u, 1u)), ~(~vec4<u32>(arg_0.b, 24864u, 9611u, 1u))));
    var var_1 = Struct_2(select(!vec2<bool>(select(arg_0.d.x, false, true), arg_0.a.x), select(vec2<bool>(true, any(arg_0.d)), arg_0.d, vec2<bool>(true, true)), true), min(global2.x, u_input.c.x), arg_0.c, !(!select(select(arg_0.d, vec2<bool>(true, arg_0.a.x), arg_0.d.x), !vec2<bool>(arg_0.d.x, arg_0.a.x), any(vec4<bool>(true, false, arg_0.d.x, true)))), arg_0.e | arg_0.c.a.x);
    return func_2();
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = Struct_2(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec4<bool>(true, true, true, true))), 4294967295u, Struct_1(arg_1.a), select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(false, false, true)), true), _wgslsmith_div_i32(select(u_input.d.x, 1i, false), func_2().a.x) != -59295i), 2147483647i & (-26818i >> (reverseBits(global2.x << (0u % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-296f)) * _wgslsmith_f_op_f32(max(1458f, 178f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 787f, -1903f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1138f))))));
    var var_2 = select(select(select(!vec3<bool>(true, false, var_0.d.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, var_0.d.x, false), false), true), select(vec3<bool>(true, select(var_0.a.x, true, var_0.d.x), true), !(!vec3<bool>(var_0.d.x, false, var_0.d.x)), any(vec3<bool>(var_0.a.x, var_0.a.x, true))), any(vec3<bool>(true & var_0.a.x, any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), false))), vec3<bool>(!(any(vec3<bool>(var_0.d.x, var_0.a.x, var_0.a.x)) && select(false, false, var_0.a.x)), !(!var_0.a.x) | true, true), !select(vec3<bool>(u_input.c.x != global2.x, var_0.d.x, true), !select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, true, var_0.a.x)), true));
    let var_3 = Struct_2(select(!var_2.xy, select(vec2<bool>(var_2.x, true), var_0.a, var_2.x && var_2.x), any(select(select(vec4<bool>(false, var_0.a.x, false, var_2.x), vec4<bool>(var_0.a.x, true, true, var_2.x), true), vec4<bool>(var_0.a.x, true, true, var_2.x), !vec4<bool>(var_2.x, var_0.a.x, true, var_0.a.x)))), reverseBits(u_input.c.x), Struct_1(var_0.c.a), !(!var_2.zz), -2147483647i);
    var var_4 = vec3<i32>(29566i, _wgslsmith_sub_i32(-2147483647i, 1i), var_0.c.a.x);
    return ~67210u >> (_wgslsmith_mult_u32(abs(_wgslsmith_add_u32(min(var_3.b, 4294967295u), 1u)), select(1u, var_0.b, true)) % 32u);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = global2.x;
    var_0 = global2.x | 0u;
    let var_1 = ~_wgslsmith_mod_u32(~u_input.c.x, ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(31522u, u_input.c.x))));
    let var_2 = func_5(~select(~reverseBits(vec4<u32>(var_1, global2.x, 24671u, arg_0)), _wgslsmith_sub_vec4_u32(~vec4<u32>(17611u, global2.x, arg_0, 24955u), _wgslsmith_sub_vec4_u32(vec4<u32>(32213u, arg_0, 17878u, 0u), vec4<u32>(arg_0, global2.x, u_input.c.x, arg_0))), vec4<bool>(true, true, true, true)), func_4(Struct_2(vec2<bool>(true, true), 1u, func_2(), vec2<bool>(true, true), -u_input.d.x)), Struct_1(vec4<i32>(abs(_wgslsmith_div_i32(1i, u_input.b.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), u_input.d.wx), max(min(u_input.d.x, u_input.b.x), min(-1i, 73938i)), u_input.d.x)), reverseBits(2147483647i));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(Struct_2(vec2<bool>(false, false), var_1, Struct_1(vec4<i32>(-59210i, u_input.d.x, u_input.b.x, 1i)), vec2<bool>(true, false), u_input.d.x)))) + -2006f)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-712f + _wgslsmith_f_op_f32(-2758f - 1260f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1(1u));
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), ~(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, var_0, 7903u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, global2.x, u_input.c.x, global2.x), vec4<u32>(1u, 21644u, 26037u, u_input.c.x))) & ~reverseBits(var_0)), Struct_1(reverseBits(-u_input.b)), !vec2<bool>(true, any(vec4<bool>(true, true, false, false)) | true), 0i);
    let var_2 = all(vec4<bool>(!var_1.a.x, select(any(var_1.d), false, false), _wgslsmith_sub_u32(~var_1.b, 1u) < var_1.b, true));
    var var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, global2.x), _wgslsmith_add_vec2_u32(~vec2<u32>(~global2.x, var_1.b), vec2<u32>(1u, ~0u)));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(20052u, var_0 >> (select(48859u, global2.x, var_1.a.x) % 32u)), ~u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(~31011u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, var_0), vec3<u32>(4294967295u, 1106u, var_0)), countOneBits(1u), var_0)), ~(vec4<u32>(61024u, u_input.c.x, var_1.b, global2.x) << (~vec4<u32>(28275u, 1u, 1u, 14686u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(320f, -1499f, -107f, 1345f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1150f, -2163f, 388f, -425f), vec4<f32>(570f, -137f, 135f, 1000f))))))), abs(select(-(vec2<i32>(u_input.d.x, u_input.a.x) | vec2<i32>(u_input.b.x, 69253i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_4.a.x, var_4.a.x), vec2<i32>(var_1.e, 12544i)), select(!var_1.d, vec2<bool>(var_1.a.x, var_2), var_1.d))));
}

