struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(27459i, 19545i, 18167i, 104523i, i32(-2147483648), 654i, 3127i, 7552i, 2147483647i, 45229i, -17247i, 0i, -1i, 1661i, 924i, -1i, 6580i, 1i, 0i);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<f32, 20> = array<f32, 20>(-1165f, 170f, 371f, -966f, 2023f, 425f, 471f, -176f, -392f, 513f, -713f, 1000f, -1178f, -161f, 306f, -1717f, 1065f, -1000f, -542f, -410f);

var<private> global3: Struct_3;

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_2, 24>();
    global3 = Struct_3(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(arg_1, arg_1, ~(-52579i))), -(~2147483647i), 74168u, Struct_1(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 19u)])));
    var var_0 = vec4<u32>(abs(global3.c), u_input.a, countOneBits(arg_0) | 4294967295u, u_input.c);
    global0 = array<i32, 19>();
    let var_1 = Struct_3(1i, -41836i, 43555u, global3.d);
    return global3.d;
}

fn func_1() -> bool {
    global4 = 37395u;
    global1 = array<Struct_2, 24>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(!select(select(var_0, vec2<bool>(true, true), var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), var_0.x), Struct_1(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 19u)], global3.d.a)), func_2(u_input.c, abs(0i)), Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3.d.a, -1i, global3.a, global3.d.a), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global3.c, 19u)], -1i, global0[_wgslsmith_index_u32(global3.c, 19u)], -15181i), vec4<i32>(-1i, global3.b, 2029i, 31293i))))));
    return false;
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(~2147483647i, global0[_wgslsmith_index_u32(firstLeadingBit(0u), 19u)], global3.c, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 19u)]));
    let var_1 = !(all(vec2<bool>(select(false, false, false), false)) && !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(453f, -258f, global2[_wgslsmith_index_u32(global3.c, 20u)]))))))));
    var_0 = Struct_3(_wgslsmith_div_i32(global3.b, min(1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(39777u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<i32>(0i, 1i)))), ~func_2(~global3.c, var_0.a).a, 1u, func_2(_wgslsmith_sub_u32(global3.c, ~(~1u)), var_0.a >> (~firstLeadingBit(u_input.b.x) % 32u)));
    var_0 = Struct_3(21587i, firstLeadingBit(global3.b), global3.c ^ 8004u, Struct_1(_wgslsmith_clamp_i32(global3.a, ~abs(global3.a), 1i)));
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 20>();
    global2 = array<f32, 20>();
    let var_0 = select(select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), func_1()), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(select(false, false, true), false), vec2<bool>(true, true)), select(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(u_input.c, 20u)])) >= 669f, true)), !(!func_3()));
    global2 = array<f32, 20>();
    global1 = array<Struct_2, 24>();
    global0 = array<i32, 19>();
    let var_1 = vec3<i32>(abs(-2147483647i), 31848i, 3331i);
    let var_2 = firstTrailingBit(~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(~4294967295u), vec3<i32>(_wgslsmith_mod_i32(func_2(_wgslsmith_div_u32(56116u, var_2), 17899i).a, ~1i), _wgslsmith_sub_i32(var_1.x, var_1.x), -12294i), ~(~var_1), ~firstTrailingBit(global3.c));
}

