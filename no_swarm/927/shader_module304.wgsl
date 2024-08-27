struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: i32 = 22576i;

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<bool> {
    return select(select(select(!(!vec3<bool>(global0.x, global0.x, global0.x)), !vec3<bool>(global0.x, false, global0.x), any(global0.xy)), !vec3<bool>(all(vec3<bool>(global0.x, true, global0.x)), true, all(vec3<bool>(global0.x, global0.x, true))), vec3<bool>(false, true, true)), select(vec3<bool>(true, global0.x, true), select(select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(global0.x, global0.x, true), !vec3<bool>(global0.x, true, true)), vec3<bool>(true, true, true), global0.x), vec3<bool>(true, true, !global0.x)), vec3<bool>(false, true, true));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = !func_3();
    global1 = -1i << (~_wgslsmith_clamp_u32(~(u_input.a >> (u_input.a % 32u)), u_input.a, firstLeadingBit(u_input.a)) % 32u);
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2511f, 562f)), _wgslsmith_f_op_f32(max(-1337f, 726f)), -1000f, _wgslsmith_f_op_f32(step(2441f, 1669f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(208f, 436f, -935f, 1222f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, 2105f, -198f, 159f))))), u_input.b);
    var var_1 = select(!(!vec4<bool>(arg_0.a | global0.x, true, true, true)), !vec4<bool>(true, global0.x, countOneBits(u_input.a) > 0u, (var_0.a.x < var_0.a.x) || true), !select(!(!vec4<bool>(arg_0.a, arg_0.a, false, true)), select(vec4<bool>(false, global0.x, true, true), select(vec4<bool>(false, global0.x, true, arg_0.a), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, true, false)), !vec4<bool>(false, arg_0.a, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, false, false, true), vec4<bool>(true, true, arg_0.a, false)), vec4<bool>(true, true, true, true), false)));
    let var_2 = ~firstLeadingBit(2147483647i);
    return Struct_3(any(select(select(vec4<bool>(global0.x, true, true, arg_0.a), vec4<bool>(true, true, true, false), global0.x), !vec4<bool>(arg_0.a, var_1.x, arg_0.a, arg_0.a), select(vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, global0.x, arg_0.a, true), true))) && !var_1.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = !(!vec3<bool>(!(global0.x && arg_2.a), true, arg_2.a && true));
    global0 = !(!(!func_3()));
    var_0 = !func_3();
    let var_1 = Struct_3(global0.x);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_i32(abs(min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 79957i))) << (vec2<u32>(1u, 21024u) % vec2<u32>(32u)), vec2<i32>(-26656i, 54721i)));
    return Struct_4(!(var_0.x & false));
}

fn func_1() -> vec4<u32> {
    global2 = global0.x;
    let var_0 = func_4(~(~firstTrailingBit(~vec3<u32>(u_input.a, 4294967295u, u_input.a))), 707f, func_2(Struct_3(global0.x)));
    let var_1 = 4294967295u;
    let var_2 = min(vec3<i32>(_wgslsmith_div_i32(select(-1i, u_input.b, true), firstTrailingBit(u_input.b)), u_input.b, u_input.b) >> (reverseBits(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(var_1, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(1u, u_input.a, var_1)), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, var_0.a, false), vec3<bool>(false, false, global0.x)))) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, -1622i))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(u_input.b, u_input.b, 10226i))), vec3<i32>(1i, u_input.b, ~(-32814i)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-453f - -687f))) * _wgslsmith_f_op_f32(abs(304f)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, max(1u, _wgslsmith_clamp_u32(0u, 46939u, var_1))), ~3054u, ~(~33969u), _wgslsmith_div_u32(_wgslsmith_div_u32(6517u, u_input.a) ^ ~u_input.a, 33229u)), vec4<u32>(u_input.a, var_1, _wgslsmith_sub_u32(firstLeadingBit(~var_1), u_input.a), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true);
    let var_1 = abs((vec2<u32>(_wgslsmith_div_u32(u_input.a, 78313u), ~0u) & vec2<u32>(min(80126u, 6490u), _wgslsmith_div_u32(1u, u_input.a))) << (~(~vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)));
    var var_2 = func_1();
    var var_3 = -338f;
    global0 = select(select(vec3<bool>(true, var_0.a, all(global0.yz) & (false || var_0.a)), select(vec3<bool>(all(vec4<bool>(var_0.a, true, var_0.a, false)), var_1.x == 57667u, true), !select(vec3<bool>(global0.x, var_0.a, true), vec3<bool>(true, global0.x, true), vec3<bool>(true, true, global0.x)), false), !(!global0.x)), func_3(), !func_3());
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(954f * 585f), _wgslsmith_f_op_f32(-199f * 975f), _wgslsmith_f_op_f32(select(-1000f, 1330f, global0.x))), vec3<f32>(-675f, -417f, _wgslsmith_f_op_f32(ceil(367f)))))), func_4(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1.x, 38261u)), 41858u), var_2.x, ~_wgslsmith_mult_u32(10694u, 10598u)), _wgslsmith_f_op_f32(f32(-1f) * -443f), Struct_3(!global0.x)));
    var_2 = select(abs(abs(~vec4<u32>(var_2.x, 1u, u_input.a, var_1.x)) << (firstTrailingBit(vec4<u32>(var_2.x, u_input.a, u_input.a, 23111u)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(36861u, func_1().x, 36657u >> (var_2.x % 32u), _wgslsmith_sub_u32(var_2.x, var_2.x)), firstLeadingBit(vec4<u32>(94213u, 33414u, 21673u, u_input.a) | vec4<u32>(28248u, var_1.x, u_input.a, var_2.x))), select(!(!(!vec4<bool>(var_0.a, true, true, global0.x))), !select(select(vec4<bool>(var_4.b.a, var_4.b.a, var_0.a, false), vec4<bool>(false, global0.x, true, false), var_0.a), vec4<bool>(global0.x, var_0.a, true, true), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(249f, max(-vec4<i32>(2147483647i, u_input.b, -2147483647i, -1i), min(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), ~vec4<i32>(u_input.b, -22107i, 17160i, -2147483647i))) ^ reverseBits(abs(vec4<i32>(1809i, u_input.b, -1i, u_input.b)) ^ (vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(20125u, var_2.x, 58510u, u_input.a) % vec4<u32>(32u)))), ~(~u_input.a), _wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(select(vec3<i32>(u_input.b, -27732i, u_input.b), vec3<i32>(u_input.b, -35226i, -4765i), vec3<bool>(var_0.a, var_4.b.a, global0.x)))), ~select(vec3<i32>(u_input.b, 1i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(u_input.b, u_input.b, 0i)), all(vec3<bool>(var_0.a, true, var_0.a))), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -56907i, 29318i), vec3<i32>(u_input.b, u_input.b, u_input.b))), -_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), 11330i)));
}

