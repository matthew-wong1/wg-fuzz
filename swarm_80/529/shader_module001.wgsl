struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 16989u, 34928u, 4294967295u), vec4<u32>(34527u, 56026u, 1u, 34764u), vec4<u32>(4256u, 37044u, 43155u, 18781u), vec4<u32>(92548u, 1u, 0u, 81232u), vec4<u32>(4294967295u, 0u, 4294967295u, 69517u), vec4<u32>(12127u, 93902u, 39052u, 0u), vec4<u32>(18841u, 58127u, 36187u, 1u), vec4<u32>(8506u, 0u, 14737u, 0u), vec4<u32>(1u, 44009u, 33653u, 10719u), vec4<u32>(1u, 25374u, 4316u, 35374u), vec4<u32>(4294967295u, 76612u, 0u, 57276u), vec4<u32>(0u, 3163u, 4294967295u, 4294967295u), vec4<u32>(26279u, 1u, 18527u, 33546u), vec4<u32>(1u, 4294967295u, 40269u, 0u), vec4<u32>(4294967295u, 1u, 7631u, 4294967295u), vec4<u32>(68412u, 47319u, 1u, 0u), vec4<u32>(4294967295u, 60508u, 48513u, 62392u), vec4<u32>(14109u, 4294967295u, 1u, 28258u), vec4<u32>(29813u, 56337u, 55250u, 0u), vec4<u32>(96887u, 1u, 25396u, 23844u), vec4<u32>(0u, 43321u, 52u, 20916u), vec4<u32>(4294967295u, 18073u, 0u, 4294967295u), vec4<u32>(4294967295u, 53908u, 1u, 1u));

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    global2 = array<Struct_1, 28>();
    global3 = global2[_wgslsmith_index_u32(~(~(0u << (countOneBits(35560u) % 32u))), 28u)];
    global2 = array<Struct_1, 28>();
    global3 = global2[_wgslsmith_index_u32(~1u << (global3.b % 32u), 28u)];
    var var_0 = 1156f;
    return 0u;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = 2147483647i;
    global0 = array<vec4<u32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(max(-359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(392f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-266f)), _wgslsmith_f_op_f32(f32(-1f) * -986f))))))));
    let var_2 = Struct_2(~(~(~u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + _wgslsmith_div_f32(1796f, -156f))))), countOneBits(select(max(vec2<u32>(arg_1.b, arg_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 34738u), vec2<u32>(u_input.c, 0u))), ~vec2<u32>(0u, 11684u) & vec2<u32>(arg_1.b, arg_1.b), vec2<bool>(true, true))), vec2<i32>(-(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(45971i, -14615i, arg_0, -3921i)) & _wgslsmith_mod_i32(var_0, var_0)), u_input.e.x));
    let var_3 = global2[_wgslsmith_index_u32(global3.b, 28u)];
    return global3.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(abs(abs(~30972u)), 312f, vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 89484u), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 7231u, global3.b, 51549u), vec4<u32>(1u, global3.b, arg_1.b, 43904u)))), u_input.d);
    let var_1 = global2[_wgslsmith_index_u32(var_0.c.x & func_3(2147483647i, arg_1, !any(select(vec3<bool>(global3.a.x, false, true), vec3<bool>(true, false, false), arg_1.a.x))), 28u)];
    global2 = array<Struct_1, 28>();
    var var_2 = Struct_1(select(vec2<bool>(!global3.a.x & arg_1.a.x, all(vec4<bool>(arg_1.a.x, false, false, global3.a.x))), vec2<bool>(global3.a.x, var_1.a.x), select(all(select(vec2<bool>(true, false), global3.a, arg_1.a.x)), false || (global3.a.x & false), global3.a.x)), (min(var_0.c.x, 32320u) | func_1(var_0.c.x, global3.b)) ^ abs(arg_1.b));
    let var_3 = global1[_wgslsmith_index_u32(func_3(firstLeadingBit(-arg_2.x), global2[_wgslsmith_index_u32(1u, 28u)], arg_1.a.x), 20u)];
    return select(!(!(!vec4<bool>(true, var_2.a.x, arg_1.a.x, var_1.a.x))), !vec4<bool>(!arg_1.a.x, all(vec3<bool>(true, false, var_1.a.x)), true, select(false, true, global3.a.x) || arg_1.a.x), 1i < _wgslsmith_div_i32(-(~var_3.d.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-44083i, var_3.d.x), _wgslsmith_mod_i32(-36189i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b ^ firstTrailingBit(~(~func_1(u_input.b, u_input.c))), 28u)];
    global1 = array<Struct_2, 20>();
    let var_1 = func_2(firstLeadingBit(~(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, var_0.b)) >> (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), global2[_wgslsmith_index_u32(1u, 28u)], reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.e.zwz), u_input.e.xwx, vec3<i32>(u_input.d.x, 0i, u_input.a)), vec3<i32>(0i, abs(-1i), ~(-43472i)))));
    let var_2 = vec4<u32>(countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(5899u, 1u), 0u, 1u), 0u)), 26305u, min(global3.b, ~(~_wgslsmith_clamp_u32(27840u, 22774u, 1u))), var_0.b);
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(i32(-1i) * -22037i) | u_input.a, -1i, -47305i), u_input.e.xyw);
    let var_4 = 65556i;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, ~var_0.b) & var_2.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1471f, 448f, 1128f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, 932f, 950f) + vec3<f32>(1098f, 669f, -1403f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(step(-583f, 1477f)), 1000f)))), -800f, abs(_wgslsmith_mod_u32(1u, 28429u)));
}

