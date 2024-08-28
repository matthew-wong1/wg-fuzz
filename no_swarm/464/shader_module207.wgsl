struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(12412u, 68713u, 1u, 10843u, 52257u, 24583u, 37286u);

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: Struct_2;

var<private> global4: array<f32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = ~countOneBits(4294967295u);
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1341f + 1114f) + 846f), 704f)));
    let var_2 = Struct_2(false, -vec4<i32>(arg_2.a.x, 0i, countOneBits(global3.d.x), -global3.b.x) >> (~vec4<u32>(~u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.c.x, 14694u, arg_2.c.x), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(arg_2.c.x, 7u)])), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)])) % vec4<u32>(32u)), arg_0, ~global3.b >> (max(reverseBits(countOneBits(vec4<u32>(1u, 1u, arg_2.b, global0[_wgslsmith_index_u32(arg_2.b, 7u)]))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 15004u, arg_2.b, arg_2.c.x), ~vec4<u32>(5562u, 4294967295u, arg_2.b, global0[_wgslsmith_index_u32(arg_2.b, 7u)]))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~(~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 7u)], 4294967295u, 1u, arg_2.c.x)))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b, 1u, arg_2.b, global0[_wgslsmith_index_u32(49490u, 7u)]), vec4<u32>(33035u, 0u, arg_2.c.x, 4294967295u)), ~vec4<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(var_0, 7u)], 95279u), ~vec4<u32>(var_0, 12464u, arg_2.b, 42625u))) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c.x, u_input.a, 4294967295u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_2.c.x, var_0, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_2.b, 7u)], var_0, arg_2.b), vec4<u32>(var_0, 41274u, 31848u, 97216u))));
    var var_4 = arg_2.c.x;
    return -7893i == -(~u_input.c.x);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = -220f;
    var var_1 = vec3<u32>(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(260u, 7u)]), 7u)]), 7u)], 7u)] & u_input.b.x), 9018u, ~(~53780u));
    var var_2 = 89060u;
    let var_3 = _wgslsmith_clamp_u32(4294967295u, var_1.x, global0[_wgslsmith_index_u32(0u, 7u)]);
    var_1 = firstTrailingBit(vec3<u32>(116910u, ~_wgslsmith_dot_vec2_u32(~u_input.b.xx, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(30189u, 7u)])), var_1.x));
    return vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), -150f, _wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_div_f32(-302f, global3.c.x))), !(arg_0.a == arg_0.a) != false, Struct_1(_wgslsmith_clamp_vec4_i32(min(arg_0.b, global3.b), global3.b | vec4<i32>(u_input.c.x, u_input.c.x, arg_0.d.x, global1.x), vec4<i32>(global1.x, 2147483647i, global3.b.x, arg_0.d.x)), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(41335u, 1u, 1u)), vec3<u32>(1u, ~u_input.a, ~42227u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c.x))), !(!vec3<bool>(false, true, global3.a)))), global3.a, true);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(global3.d, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 20694u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(42431u, 7u)], 78616u, 65257u, 0u)), firstTrailingBit(u_input.b.x), global0[_wgslsmith_index_u32(countOneBits(u_input.b.x), 7u)]), ~u_input.b)), vec3<u32>(~16355u, 4294967295u, ~global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 31u)]), select(select(vec3<bool>(select(global3.a, false, false), global3.a, true), func_2(Struct_2(true, global3.b, vec4<f32>(global3.c.x, -788f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34852u, 7u)], 31u)], global3.c.x), vec4<i32>(-34037i, global1.x, u_input.c.x, global3.b.x))), func_2(Struct_2(false, global3.d, vec4<f32>(global3.c.x, -812f, global3.c.x, 1203f), vec4<i32>(global3.b.x, global3.d.x, global1.x, global1.x)))), vec3<bool>(global3.a, true, !(1u == u_input.a)), vec3<bool>(global3.a, !func_3(global3.c, false, Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), 1432u, u_input.b, -652f, vec3<bool>(false, true, global3.a))), true)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(188f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(266f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-970f - var_0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global3.c)) - global3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

