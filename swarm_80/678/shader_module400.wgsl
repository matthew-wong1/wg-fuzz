struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-17079i), Struct_1(0i), Struct_1(31236i), Struct_1(-1i), Struct_1(-97i), Struct_1(-48764i));

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-17430i), Struct_1(-25397i), Struct_1(1i), Struct_1(0i), Struct_1(41637i), Struct_1(-60775i), Struct_1(11469i), Struct_1(-917i), Struct_1(8712i), Struct_1(-1i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-18490i), Struct_1(-1i), Struct_1(68336i), Struct_1(2147483647i), Struct_1(2767i), Struct_1(2147483647i), Struct_1(1i), Struct_1(0i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(547f * _wgslsmith_f_op_f32(floor(359f)));
    global2 = array<Struct_1, 20>();
    let var_1 = vec4<bool>(any(select(global1[_wgslsmith_index_u32(1u, 28u)], vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(~67180u, 28u)])) != true, true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0 >= 303f), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))), true);
    let var_2 = Struct_1(~((-2147483647i ^ (u_input.a.x >> (24442u % 32u))) | reverseBits(~u_input.b)));
    var var_3 = 24662u;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) >> (~1u % 32u), ~1u) | select(1u, 0u, all(select(vec4<bool>(true, true, var_1.x, false), var_1, !var_1)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<u32> {
    global2 = array<Struct_1, 20>();
    var var_0 = func_3();
    let var_1 = Struct_1(2147483647i);
    return vec3<u32>(1u, ~_wgslsmith_mod_u32(45774u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 39977u, 13819u), vec3<u32>(1u, 10259u, 1u)), vec3<u32>(4294967295u, 1u, 76630u))), ~_wgslsmith_dot_vec3_u32(~max(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 8007u, 1132u)), _wgslsmith_sub_vec3_u32(vec3<u32>(20657u, 52487u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(7426u, 1u, 0u), vec3<u32>(128285u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(22223u, 5788u, 29979u)), vec3<u32>(1u, 1u, 1u))), abs(17948u), 1u), ~func_2(Struct_1(~u_input.b), select(select(global1[_wgslsmith_index_u32(26794u, 28u)], vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(true, true, true), true)), vec3<u32>(1u, 1u, 1u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-10095i, 54053i, u_input.a.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(63876u, 1u, 47393u), func_1(vec3<i32>(0i, -73795i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, -1i), Struct_1(4440i))) % vec3<u32>(32u)), max(u_input.a.xzw, -max(u_input.a.wyz, vec3<i32>(21515i, u_input.a.x, 17621i)))));
    var var_1 = 36168i;
    let var_2 = global0[_wgslsmith_index_u32(~(84609u | _wgslsmith_clamp_u32(countOneBits(~0u), 27568u, 1u >> (~4294967295u % 32u))), 6u)];
    let var_3 = (u_input.b >= 0i) & true;
    var_1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 21613u)), ~1u, 1u)));
}

