struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: f32;

var<private> global2: f32 = 371f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-548f + -1440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2205f)) + _wgslsmith_div_f32(1578f, -306f)))), 901f, -1059f));
    global2 = var_0.x;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -243f);
    let var_1 = _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(arg_3.c.www, vec3<u32>(3341u << (arg_2.c.x % 32u), 1u, _wgslsmith_add_u32(~arg_2.c.x, 0u))));
    global0 = array<bool, 19>();
    return ~u_input.a.x;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = -select(vec4<i32>(func_3(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 19u)], global0[_wgslsmith_index_u32(arg_0.b, 19u)], true, false), global0[_wgslsmith_index_u32(arg_0.c.x, 19u)], arg_0, arg_0), -1i, -_wgslsmith_clamp_i32(33060i, u_input.a.x, -2147483647i), _wgslsmith_div_i32(-37495i | u_input.a.x, arg_0.a)), max(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a.x, 12302i, 15769i), abs(vec4<i32>(-45061i, 1i, 2147483647i, arg_0.a)) >> (~arg_0.c % vec4<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.c & vec4<u32>(arg_0.b, 4294967295u, arg_0.b, 59455u), vec4<u32>(arg_0.b, arg_0.b, arg_0.c.x, arg_0.b)), 19u)] && global0[_wgslsmith_index_u32(~arg_0.c.x, 19u)]);
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_div_u32(min(~arg_0.c.x, 4294967295u), arg_0.b), arg_0.c);
    global0 = array<bool, 19>();
    var var_2 = Struct_1(countOneBits(_wgslsmith_sub_i32(~arg_0.a, ~var_0.x & abs(1i))), arg_0.b, _wgslsmith_add_vec4_u32(arg_0.c, ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.c.yy, vec2<u32>(arg_0.b, 4294967295u)), 4294967295u, 4700u, var_1.c.x)));
    let var_3 = Struct_1(0i, abs(55408u), ~(var_2.c >> (~(~vec4<u32>(1u, 1u, 12873u, 1u)) % vec4<u32>(32u))));
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_1(u_input.a.x, ~(~(~1u) & _wgslsmith_div_u32(~88748u, func_2(Struct_1(2147483647i, 53746u, vec4<u32>(0u, 27633u, 1u, 0u))))), ~(~vec4<u32>(~16152u, 91984u << (0u % 32u), _wgslsmith_mod_u32(0u, 1u), min(23798u, 21547u))));
    var var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a.x, min(u_input.a.x, u_input.a.x), 46978i | u_input.a.x), vec3<i32>(select(2147483647i, var_0.a, false), var_0.a, -2147483647i)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(33111i, -33129i, u_input.a.x), vec3<i32>(-1i, 39012i, 52723i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(28733i, var_0.a, u_input.a.x))) >> (~var_0.c.wwz % vec3<u32>(32u)));
    var var_2 = var_0;
    var_2 = Struct_1(47699i, 0u, vec4<u32>(~_wgslsmith_dot_vec4_u32(min(var_2.c, vec4<u32>(var_0.b, var_2.b, 0u, var_2.b)), abs(vec4<u32>(var_2.b, 39083u, var_0.c.x, 53309u))), var_0.b, ~(~(~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_2.c.x, var_2.c.x), var_2.c.x >> (var_2.c.x % 32u)), ~(~vec2<u32>(var_2.c.x, var_0.c.x)))));
    var_2 = var_0;
    return ~firstTrailingBit(var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)));
    global1 = _wgslsmith_f_op_f32(select(840f, 1f, false));
    var var_0 = select(vec4<bool>(global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, -486f)), vec2<f32>(199f, -579f))), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 19u)]))), 19u)], all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(5276u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(21840u, 19u)]), vec3<bool>(false, false, true), !vec3<bool>(global0[_wgslsmith_index_u32(71305u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], true))), true, false), select(select(vec4<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(29782u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), global0[_wgslsmith_index_u32(12587u, 19u)], true, global0[_wgslsmith_index_u32(min(39841u, 1u), 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], true, true, !global0[_wgslsmith_index_u32(45018u, 19u)]), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(51791u, 19u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(122071u, 19u)], true, true))), vec4<bool>(true, true, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], true, false, global0[_wgslsmith_index_u32(0u, 19u)])), any(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], false), vec2<bool>(global0[_wgslsmith_index_u32(8454u, 19u)], true), vec2<bool>(true, true)))), !vec4<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 19u)], false)), true, global0[_wgslsmith_index_u32(50655u, 19u)] & false)), false);
    var var_1 = Struct_1(-1i, abs(~(~(~4294967295u))), vec4<u32>(firstLeadingBit(0u), max(4294967295u, abs(~0u)), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, 17042u, 1u)), vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(86546u, 1590u, 27613u), vec3<u32>(24033u, 27322u, 39461u))))));
    let var_2 = Struct_1(1i, 45924u, ~select(var_1.c | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 0u, var_1.c.x), var_1.c, var_1.c), reverseBits(vec4<u32>(1u, 14092u, var_1.c.x, var_1.b)) ^ var_1.c, vec4<bool>(true || global0[_wgslsmith_index_u32(38355u, 19u)], !global0[_wgslsmith_index_u32(54675u, 19u)], true, global0[_wgslsmith_index_u32(43503u, 19u)] & var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(var_1.c), countOneBits(abs(var_2.c)))), 515f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-739f, _wgslsmith_f_op_f32(max(-693f, 749f))) - -610f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1670f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-673f - -332f))) - -1364f)), vec2<f32>(1f, 1f));
}

