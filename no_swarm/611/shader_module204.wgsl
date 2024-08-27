struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: Struct_2;

var<private> global3: array<f32, 6> = array<f32, 6>(466f, 1197f, 1207f, -391f, 188f, 950f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    global3 = array<f32, 6>();
    global1 = array<vec3<f32>, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1430f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 214f, 455f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(24758u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]))))));
    global3 = array<f32, 6>();
    var var_1 = Struct_1(max(select(13285u, u_input.a.x, global2.a), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, u_input.a.x)))) ^ u_input.a.x, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 51141u), 6u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 6u)] * var_0.x)))))), ~_wgslsmith_div_vec2_i32(~(~vec2<i32>(-1i, 15967i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global2.b.x, u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-40383i, -43583i), vec2<i32>(-20151i, -6817i), u_input.b.zx), countOneBits(vec2<i32>(10928i, -1i)))), 1i <= ~global2.b.x);
    return min(var_1.a, countOneBits(countOneBits(var_1.a)) & 1u) != 0u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = -(~vec3<i32>(global2.b.x, firstTrailingBit(u_input.c.x), ~u_input.c.x << (7451u % 32u)));
    global2 = Struct_2(global2.a, global2.b);
    global3 = array<f32, 6>();
    var var_1 = _wgslsmith_clamp_vec3_u32(u_input.a, select(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(95718u, u_input.a.x, 7033u), _wgslsmith_mult_vec3_u32(~u_input.a, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), select(vec3<bool>(global2.a, !global2.a, false == global2.a), select(select(vec3<bool>(global2.a, true, true), vec3<bool>(false, global2.a, global2.a), vec3<bool>(global2.a, global2.a, true)), vec3<bool>(false, global2.a, true), false), func_3())), vec3<u32>(1u, ~u_input.a.x, 0u));
    let var_2 = true;
    return Struct_1(~min(var_1.x, 0u << (var_1.x % 32u)), -888f, ~(~(~select(var_0.zy, u_input.c.yz, global2.a))), true);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(min(~u_input.a.x, 1u), 6u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(u_input.a.x, 47173u, arg_0), 6u)]))));
    global1 = array<vec3<f32>, 12>();
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), func_3(), var_0.d);
    let var_2 = 12885i;
    let var_3 = Struct_2(true, min(reverseBits(global2.b), _wgslsmith_add_vec4_i32(~abs(global2.b), vec4<i32>(countOneBits(var_2), _wgslsmith_mult_i32(arg_2, -1i), arg_2, max(1i, var_2)))));
    return u_input.a.x | u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    var var_0 = vec4<f32>(-2490f, _wgslsmith_div_f32(-632f, 1490f), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = ~abs(_wgslsmith_sub_u32(~func_1(true, global2.b.zz, 1i), ~_wgslsmith_div_u32(1u, u_input.a.x)));
    global0 = array<vec2<u32>, 26>();
    global1 = array<vec3<f32>, 12>();
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_sub_u32(countOneBits(u_input.a.x), abs(u_input.a.x ^ _wgslsmith_div_u32(4294967295u, 124435u))), 751f, vec2<i32>(~global2.b.x, countOneBits(~(global2.b.x << (94715u % 32u)))), var_2);
    var var_4 = reverseBits(~global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, ~4294967295u)), ~(~vec2<u32>(4294967295u, var_3.a)), firstLeadingBit(vec2<u32>(0u, ~57519u))), _wgslsmith_mod_u32(var_3.a, ~78162u), var_4.zxy, u_input.a.x, (-vec3<i32>(var_3.c.x, 27850i, global2.b.x) & abs(countOneBits(vec3<i32>(var_3.c.x, -67059i, -1152i)))) ^ max(vec3<i32>(var_3.c.x, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(32908i, -1i), var_3.c)), -u_input.c));
}

