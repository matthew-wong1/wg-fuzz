struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<vec3<u32>, 3>;

var<private> global2: array<f32, 18>;

var<private> global3: array<u32, 4> = array<u32, 4>(30590u, 0u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> u32 {
    global0 = array<bool, 21>();
    return _wgslsmith_sub_u32(u_input.e.x, ~u_input.e.x);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_2(31194u, ~global3[_wgslsmith_index_u32(arg_2, 4u)]);
    global3 = array<u32, 4>();
    var var_1 = Struct_4(min(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), u_input.a, arg_1.x << (u_input.e.x % 32u)), _wgslsmith_mult_i32(-25218i, u_input.b)) <= -1219i, arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)], 18u)]), -1000f));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, ~arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), arg_1) << (79034u % 32u), 1i), firstTrailingBit((vec4<i32>(1i, 2147483647i, 8197i, u_input.d.x) ^ vec4<i32>(u_input.d.x, 0i, -17925i, 28395i)) << (~vec4<u32>(global3[_wgslsmith_index_u32(arg_2, 4u)], 1u, arg_2, global3[_wgslsmith_index_u32(u_input.e.x, 4u)]) % vec4<u32>(32u)))), abs(~_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.d.x, u_input.d.x, 0i, -2147483647i), vec4<i32>(arg_1.x, u_input.d.x, 62912i, u_input.a)), vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.b))), arg_1.x, _wgslsmith_f_op_f32(exp2(arg_0.b.a.x)));
    global1 = array<vec3<u32>, 3>();
    return vec3<u32>(abs(arg_2), countOneBits(min(~49049u, 62913u) ^ countOneBits(_wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.xz))), func_2(arg_0, any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 21u)], var_1.a, arg_0.b.b), vec4<bool>(arg_0.b.b, true, false, arg_0.b.b), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 21u)], global0[_wgslsmith_index_u32(var_0.b, 21u)], arg_0.b.b, arg_0.a))) || !all(vec4<bool>(var_1.a, var_1.a, arg_0.a, arg_0.b.b))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global3 = array<u32, 4>();
    let var_0 = _wgslsmith_dot_vec2_u32(reverseBits(~(vec2<u32>(u_input.e.x, 4294967295u) << (u_input.e.yy % vec2<u32>(32u)))), vec2<u32>(~global3[_wgslsmith_index_u32(1u & global3[_wgslsmith_index_u32(0u, 4u)], 4u)], global3[_wgslsmith_index_u32(func_2(Struct_4(false, Struct_3(vec2<f32>(1348f, 1175f), global0[_wgslsmith_index_u32(102954u, 21u)]), arg_0), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], true))), 4u)])) <= ~(~u_input.e.x);
    let var_1 = -(2147483647i << (_wgslsmith_mod_u32(~1u, u_input.e.x) % 32u));
    let var_2 = all(select(select(select(select(vec3<bool>(false, var_0, false), vec3<bool>(true, global0[_wgslsmith_index_u32(21874u, 21u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20374u, 4u)], 21u)]), vec3<bool>(false, var_0, var_0)), !vec3<bool>(var_0, true, false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], true, global0[_wgslsmith_index_u32(1u, 21u)])), vec3<bool>(any(vec3<bool>(false, true, true)), true, global0[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(var_0, !global0[_wgslsmith_index_u32(1u, 21u)], var_0 && var_0)), !(!(!vec3<bool>(true, false, var_0))), global0[_wgslsmith_index_u32(~14857u, 21u)]));
    var var_3 = _wgslsmith_clamp_u32(73603u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(Struct_4(global0[_wgslsmith_index_u32(u_input.e.x, 21u)], Struct_3(vec2<f32>(358f, global2[_wgslsmith_index_u32(43716u, 18u)]), true), global2[_wgslsmith_index_u32(u_input.e.x, 18u)]), u_input.d, ~16262u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46593u, 4u)], 4u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], 4u)], 1u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(1u, 4u)]), 4u)])), 4u)], 4u)], 14037u);
    return Struct_4(!(~u_input.e.x <= ~_wgslsmith_add_u32(u_input.e.x, u_input.e.x)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1344f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(280f, arg_0), vec2<bool>(var_0, true)))), global0[_wgslsmith_index_u32(firstTrailingBit(abs(_wgslsmith_mod_u32(75900u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)]))), 21u)]), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(countOneBits(~_wgslsmith_div_u32(20298u, 1u)), _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.e.x, 3u)] << (firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(29270u, 4294967295u, 83072u), u_input.e)) % vec3<u32>(32u)), firstTrailingBit(u_input.e)));
    var var_1 = func_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(var_0.a), 18u)] + global2[_wgslsmith_index_u32(4294967295u, 18u)]));
    let var_2 = vec4<i32>(abs(13997i), _wgslsmith_div_i32(u_input.a, -29413i), u_input.c, 0i);
    global0 = array<bool, 21>();
    global3 = array<u32, 4>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.c)), global2[_wgslsmith_index_u32(16686u, 18u)]);
    var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1257f * _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(11809u, 18u)]))) * 689f)));
    let var_4 = var_0;
    var var_5 = Struct_1(select(var_2, _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-8009i), -20359i, -1212i, u_input.d.x), vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.d.x, 18886i, -11119i)), vec4<bool>(true, !global0[_wgslsmith_index_u32(var_4.b, 21u)], true, !(var_1.a && global0[_wgslsmith_index_u32(var_4.a, 21u)]))), countOneBits(vec4<i32>(u_input.c, u_input.b, countOneBits(_wgslsmith_sub_i32(u_input.b, 2147483647i)), firstTrailingBit(38629i))), 2147483647i, _wgslsmith_f_op_f32(1647f - var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d, vec2<i32>(_wgslsmith_div_i32(-var_2.x, 47468i) | select(-2147483647i, max(0i, u_input.b), true), 41725i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, 1124f, global2[_wgslsmith_index_u32(var_4.a, 18u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.d, 1824f, -483f) + vec3<f32>(-2071f, -246f, var_5.d))), vec3<f32>(var_5.d, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(max(-892f, -812f))))))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.e.x, global3[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(var_0.a, u_input.e.x)), var_0.b)), u_input.e, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, 0u), 1u, var_4.a), ~(~vec3<u32>(var_4.a, 30510u, var_0.a)))));
}

