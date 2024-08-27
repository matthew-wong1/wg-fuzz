struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<bool, 16>;

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(true, Struct_1(vec4<f32>(-710f, 1139f, 351f, 988f), 14808u, vec4<bool>(false, true, true, false), vec3<i32>(-28203i, -4293i, -22278i)), 276f), Struct_2(false, Struct_1(vec4<f32>(494f, -262f, 1448f, -1000f), 65611u, vec4<bool>(true, true, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -6309i)), 375f), Struct_2(false, Struct_1(vec4<f32>(-422f, -300f, -1208f, 1000f), 65344u, vec4<bool>(true, true, false, false), vec3<i32>(-1i, 0i, i32(-2147483648))), 1141f), Struct_2(false, Struct_1(vec4<f32>(-332f, -1000f, -589f, 1197f), 46821u, vec4<bool>(false, false, false, true), vec3<i32>(-1i, 44807i, 59371i)), 829f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1() -> u32 {
    let var_0 = vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-18851i, u_input.b), (global0.a.x & global0.a.x) ^ firstLeadingBit(u_input.c)) < u_input.c, true, any(select(global1.c, select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], global1.c.x), global1.c, select(vec4<bool>(global1.c.x, false, false, global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<bool>(global1.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], false), vec4<bool>(global1.c.x, true, global1.c.x, true))), true)));
    global3 = array<bool, 16>();
    var var_1 = any(vec2<bool>(all(vec2<bool>(u_input.b != 11134i, var_0.x)), !(true && any(vec3<bool>(var_0.x, global1.c.x, true)))));
    var_1 = false;
    let var_2 = vec4<i32>(~_wgslsmith_dot_vec2_i32(reverseBits(global1.d.yx), -global0.a) | 0i, -24884i, 0i, global1.d.x);
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_1 {
    global4 = array<Struct_2, 4>();
    var var_0 = Struct_3(-arg_0.b.d.yy);
    var_0 = Struct_3(firstLeadingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(4404i, 1i), global1.d.xy) << (~vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))));
    let var_1 = arg_0.b.a.yy;
    global2 = arg_0.b.d.x;
    return arg_0.b;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    global4 = array<Struct_2, 4>();
    global4 = array<Struct_2, 4>();
    global0 = arg_0;
    var var_0 = global1.d.xz;
    global2 = ~u_input.b;
    return vec4<u32>(1u, ~(_wgslsmith_clamp_u32(4294967295u, u_input.a.x & global1.b, ~global1.b) & ~1u), global1.b, _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(global4[_wgslsmith_index_u32(~func_1(), 4u)], 4294967295u == u_input.a.x, global1.b);
    global3 = array<bool, 16>();
    var var_0 = abs(53771u);
    var var_1 = u_input.a.x;
    var_0 = 4294967295u;
    var var_2 = firstLeadingBit(func_3(Struct_3(global1.d.yx & vec2<i32>(u_input.b, global0.a.x)), ~(global1.d.x ^ -12311i))) ^ ~vec4<u32>(20665u ^ _wgslsmith_sub_u32(global1.b, global1.b), _wgslsmith_mult_u32(u_input.a.x, 26850u) >> (~1u % 32u), ~global1.b, global1.b);
    let var_3 = _wgslsmith_clamp_vec3_u32(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global1.b, 92907u), u_input.a ^ min(vec3<u32>(global1.b, 64799u, 80758u), u_input.a)), ~firstLeadingBit(~u_input.a)), var_2.xzy, ~var_2.ywy);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, global1.a.x, global1.a.x)), vec4<u32>(select(0u, 0u, true), 1u, ~0u, 1u), -1191f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, 300f) - vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))));
}

