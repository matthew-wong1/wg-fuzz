struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(24788u, 72150u), vec2<u32>(1u, 72978u), vec2<u32>(1u, 54866u), vec2<u32>(0u, 0u), vec2<u32>(1u, 32149u), vec2<u32>(4294967295u, 22498u), vec2<u32>(50938u, 106u), vec2<u32>(72538u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(29291u, 7429u), vec2<u32>(9067u, 8619u), vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(27889u, 51487u), vec2<u32>(15889u, 25879u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33949u, 0u), vec2<u32>(87593u, 10337u));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<u32>(38752u, 4294967295u, 42416u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 20027u)), Struct_3(vec3<u32>(0u, 34839u, 1u)), Struct_3(vec3<u32>(95324u, 4294967295u, 57939u)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(18956u, 41170u, 0u)), Struct_3(vec3<u32>(60288u, 33403u, 4294967295u)), Struct_3(vec3<u32>(1u, 0u, 1u)), Struct_3(vec3<u32>(15506u, 4294967295u, 63224u)), Struct_3(vec3<u32>(39184u, 55987u, 0u)), Struct_3(vec3<u32>(36385u, 4294967295u, 94814u)), Struct_3(vec3<u32>(4294967295u, 50820u, 46366u)), Struct_3(vec3<u32>(20621u, 32850u, 17565u)), Struct_3(vec3<u32>(13100u, 1u, 43357u)), Struct_3(vec3<u32>(0u, 0u, 15637u)), Struct_3(vec3<u32>(1u, 0u, 56054u)), Struct_3(vec3<u32>(72617u, 46577u, 67040u)), Struct_3(vec3<u32>(93465u, 21543u, 4294967295u)), Struct_3(vec3<u32>(45326u, 15842u, 4294967295u)), Struct_3(vec3<u32>(16270u, 10u, 4294967295u)), Struct_3(vec3<u32>(49544u, 4294967295u, 26436u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    global1 = array<Struct_3, 21>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a & 0u, 21u)];
    global0 = array<vec2<u32>, 23>();
    let var_1 = Struct_2(Struct_1(~var_0.a & var_0.a, ~vec2<u32>(abs(arg_0.c.x), ~arg_0.c.x), arg_0.a), arg_0, min(reverseBits(_wgslsmith_dot_vec2_u32(var_0.a.zx, min(vec2<u32>(43540u, 42277u), vec2<u32>(34040u, 1u)))), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(61850u, 16708u), select(arg_0.a.x, arg_0.b.x, true))), arg_0.b.x, true);
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 21u)];
    return abs(var_0.a.x);
}

fn func_1() -> Struct_1 {
    let var_0 = -37939i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f), _wgslsmith_f_op_f32(f32(-1f) * -1132f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f + 1000f)))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a, ~57683u), ~firstLeadingBit(u_input.a), u_input.a), _wgslsmith_div_vec3_u32((vec3<u32>(4294967295u, 111742u, 1u) & vec3<u32>(u_input.a, u_input.a, 3062u)) ^ vec3<u32>(19186u, u_input.a, 0u), firstTrailingBit(vec3<u32>(u_input.a, 84418u, 131181u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), select(vec3<u32>(u_input.a, u_input.a, 47702u), vec3<u32>(u_input.a, u_input.a, 44657u), false), ~vec3<u32>(0u, u_input.a, u_input.a))), global0[_wgslsmith_index_u32(68326u, 23u)], vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~58503u, _wgslsmith_clamp_u32(u_input.a, 1u, 0u), func_2(Struct_1(vec3<u32>(53724u, 58460u, 21651u), vec2<u32>(u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), false, vec2<f32>(-117f, 1583f))), vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 20260u), u_input.a)), 4294967295u, 4294967295u));
    let var_3 = Struct_4(Struct_3(vec3<u32>(~11629u, 5113u, u_input.a)));
    global0 = array<vec2<u32>, 23>();
    return var_2;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = false;
    global1 = array<Struct_3, 21>();
    var var_1 = 2415u;
    var var_2 = Struct_1(~vec3<u32>(u_input.a, (1u & u_input.a) & firstLeadingBit(75378u), firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(1u, arg_0.a.x, arg_0.a.x)))), global0[_wgslsmith_index_u32(u_input.a, 23u)], vec3<u32>(_wgslsmith_add_u32(abs(_wgslsmith_div_u32(arg_0.a.x, 4294967295u)), arg_0.a.x), 1u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 25759u, u_input.a, 37819u)), ~firstTrailingBit(vec4<u32>(34257u, arg_0.a.x, u_input.a, 113704u)))));
    let var_3 = select(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))), vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true, !(all(vec2<bool>(false, true)) || false)), vec4<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), (u_input.b.x << (_wgslsmith_mod_u32(u_input.a, 49119u) % 32u)) >= min(u_input.c, -u_input.b.x), true, all(vec2<bool>(true, true))));
    return StorageBuffer(select(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, 2147483647i, 26993i)), reverseBits(vec4<i32>(-1i, 2147483647i, u_input.d.x, u_input.d.x) | vec4<i32>(u_input.d.x, -1i, -1i, 2147483647i)), var_3.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.a.x, ~1u, 4294967295u), vec4<u32>(u_input.a, arg_1.a.x, 4294967295u, 4294967295u) << (~vec4<u32>(1u, 17377u, 61492u, arg_1.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1346f))), vec4<u32>(4294967295u, 48783u, 1u, ~max(var_2.b.x, var_2.a.x)) >> (vec4<u32>(34892u, func_1().c.x, 4294967295u, 4243u) % vec4<u32>(32u)), min(var_2.b.x, u_input.a) >> ((abs(_wgslsmith_mult_u32(arg_1.c.x, u_input.a)) | (33217u << (~arg_1.a.x % 32u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 611f))) * 224f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1505f)));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = func_3(global1[_wgslsmith_index_u32(u_input.a, 21u)], func_1());
}

