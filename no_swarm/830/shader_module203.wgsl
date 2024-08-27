struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<i32>(-1i, -3287i)), Struct_4(vec2<i32>(1i, 2147483647i)), Struct_4(vec2<i32>(17555i, 22046i)), Struct_4(vec2<i32>(-1i, -4232i)), Struct_4(vec2<i32>(-53910i, 2147483647i)), Struct_4(vec2<i32>(31652i, 2147483647i)), Struct_4(vec2<i32>(95424i, -1i)), Struct_4(vec2<i32>(-1i, i32(-2147483648))));

var<private> global1: bool = false;

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(74140u, 23764u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(24478u, 4294967295u, 0u), vec3<u32>(47938u, 71262u, 68313u), vec3<u32>(0u, 4294967295u, 1u));

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<vec3<u32>, 6>();
    let var_0 = max(vec2<i32>(-1i, firstTrailingBit(reverseBits(~2745i))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-30776i, -42927i, 1i)), ~u_input.a.yxw), u_input.a.xyw), -(~(-13046i))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(5218u), firstTrailingBit(_wgslsmith_sub_u32(~_wgslsmith_add_u32(4294967295u, 0u), min(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(2409u, 4294967295u, 32189u), global2[_wgslsmith_index_u32(4294967295u, 6u)])))), firstLeadingBit(1u)), 8u)];
    global2 = array<vec3<u32>, 6>();
    var var_2 = Struct_1(!(!select(!vec3<bool>(global3.x, true, true), vec3<bool>(false, global3.x, global3.x), select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, global3.x, global3.x)))));
    return 56011u;
}

fn func_2() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~(~reverseBits(reverseBits(_wgslsmith_mod_u32(0u, 1u)))), 8u)];
    var var_1 = _wgslsmith_mod_vec2_u32(max(max(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, func_3(1872f)))), firstTrailingBit(~(~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<bool>(global3.x, global3.x)))));
    var var_2 = var_1.x;
    var var_3 = vec2<bool>(any(!(!(!vec2<bool>(false, global3.x)))), true);
    global0 = array<Struct_4, 8>();
    return Struct_2(!select(select(vec2<bool>(global3.x, global3.x), select(vec2<bool>(var_3.x, true), vec2<bool>(global3.x, false), vec2<bool>(var_3.x, global3.x)), var_3.x), select(vec2<bool>(true, true), vec2<bool>(global3.x, var_3.x), select(vec2<bool>(var_3.x, true), vec2<bool>(true, var_3.x), vec2<bool>(true, false))), false), !(~(~var_0.a.x) > 33054i), Struct_1(!vec3<bool>(true, select(var_3.x, true, true), true)));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    let var_1 = Struct_1(var_0.c.a);
    global0 = array<Struct_4, 8>();
    global1 = !global3.x;
    let var_2 = Struct_4(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, abs(abs(vec2<i32>(u_input.a.x, 3264i)))), -15661i));
    return -176f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~34727u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mod_u32(16599u, 34754u), firstLeadingBit(0u))) << (~67614u % 32u), vec3<f32>(_wgslsmith_f_op_f32(func_1()), 896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1534f))) * _wgslsmith_f_op_f32(1f * 904f))), ~_wgslsmith_sub_u32(select(max(71173u, 12200u), _wgslsmith_sub_u32(69764u, 1u), global3.x && true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 36052u, 20216u), vec4<u32>(31099u, 22536u, 1u, 12059u)), select(vec4<u32>(40433u, 53508u, 4294967295u, 1u), vec4<u32>(19103u, 5932u, 0u, 8825u), vec4<bool>(global3.x, global3.x, global3.x, global3.x)))));
}

