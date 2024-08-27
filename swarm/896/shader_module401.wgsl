struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_1 = Struct_1(1u);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(global2.a);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1640f);
    let var_3 = global0[_wgslsmith_index_u32(arg_1.a, 8u)];
    let var_4 = ~(~0u);
    return 1700f;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 708f) - _wgslsmith_f_op_f32(sign(-1224f))))));
    global2 = Struct_1(min(1u, ~global1.a) | (_wgslsmith_div_u32(_wgslsmith_div_u32(1u, global2.a), ~20478u) >> (~22895u % 32u)));
    global1 = Struct_1(global2.a);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(66056u, _wgslsmith_clamp_u32(min(global2.a, global2.a), ~_wgslsmith_mod_u32(0u, 35605u), _wgslsmith_mult_u32(abs(global2.a), global1.a))), 8u)];
    let var_1 = abs(countOneBits(vec2<i32>(0i, u_input.d ^ 12146i))) >> (vec2<u32>(_wgslsmith_clamp_u32(global2.a, 1u | ~global1.a, min(20291u, _wgslsmith_mult_u32(global1.a, 1u))), ~global1.a) % vec2<u32>(32u));
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(false, global0[_wgslsmith_index_u32(37247u, 8u)])))), 1490f) * vec2<f32>(-1688f, _wgslsmith_f_op_f32(func_3()))));
    global0 = array<Struct_1, 8>();
    var var_2 = vec4<u32>(global2.a, ~(4294967295u << ((~global2.a >> (firstTrailingBit(var_0.a) % 32u)) % 32u)), _wgslsmith_add_u32(~4294967295u, 1u), ~max(abs(0u) >> (~4294967295u % 32u), min(~52665u, ~var_0.a)));
    let var_3 = Struct_1(43016u);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(53987u, var_3.a) & vec2<u32>(_wgslsmith_mult_u32(14185u, var_3.a), abs(20455u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~global1.a, global2.a), var_2.ww)), _wgslsmith_sub_u32(global1.a, 84307u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    var var_1 = firstTrailingBit(u_input.a.x);
    var_1 = u_input.a.x;
    global2 = Struct_1(abs(func_1()));
    global2 = Struct_1(global2.a);
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(global2.a) >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, global1.a, global2.a), vec3<u32>(4294967295u, 14789u, 15936u))) % 32u), global2.a), 8u)];
    global2 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, global1.a, global2.a, 1u) >> (~vec4<u32>(0u, 41810u, 43709u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.a, global2.a, global1.a), vec4<u32>(13993u, global2.a, global2.a, global2.a)), abs(vec4<u32>(global2.a, global1.a, 4294967295u, global1.a)))));
    var var_2 = _wgslsmith_f_op_f32(sign(-1000f));
    var_2 = -1012f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.d, u_input.b, u_input.c, u_input.b), vec4<i32>(-1i, 44225i, u_input.d, u_input.b), true), ~vec4<i32>(u_input.d, u_input.c, -2147483647i, -6911i)) << (~vec4<u32>(global1.a, global2.a, 16503u, 1u) % vec4<u32>(32u))), select(reverseBits(min(abs(vec4<u32>(global2.a, 1u, 1u, global2.a)), vec4<u32>(21331u, global2.a, global2.a, 1u) >> (vec4<u32>(0u, global2.a, global1.a, global2.a) % vec4<u32>(32u)))), reverseBits(min(abs(vec4<u32>(global2.a, global1.a, 8715u, global2.a)), min(vec4<u32>(global1.a, 0u, 4294967295u, global2.a), vec4<u32>(global2.a, 616u, global1.a, global2.a)))), var_0.x));
}

