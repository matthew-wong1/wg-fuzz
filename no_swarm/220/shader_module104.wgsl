struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    return 58616u;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    var var_0 = !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, arg_2.x, 14600u) | arg_2), 3u)];
    let var_1 = !select(!vec3<bool>(arg_3, false, all(vec4<bool>(true, false, false, var_0.x))), vec3<bool>(!all(vec3<bool>(false, arg_3, false)), arg_3, !(!arg_3)), vec3<bool>(~5483u > arg_2.x, arg_3, true));
    global1 = array<vec2<bool>, 3>();
    global2 = array<Struct_1, 26>();
    global0 = ~_wgslsmith_mod_u32(min(u_input.a.x | _wgslsmith_add_u32(arg_2.x, u_input.a.x), ~max(53288u, arg_2.x)), arg_2.x);
    return u_input.c;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = ~43535u;
    global0 = max(1u, countOneBits(~func_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 442u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), Struct_3(1000f, -885f, -1539f, -442f), _wgslsmith_f_op_f32(step(-1460f, 255f)))));
    var var_0 = ~min(vec4<u32>(u_input.a.x, 4294967295u >> (u_input.a.x % 32u), u_input.a.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 63730u), vec2<u32>(u_input.a.x, u_input.a.x)))), vec4<u32>(u_input.a.x, ~1u, u_input.a.x, u_input.a.x << ((u_input.a.x >> (4294967295u % 32u)) % 32u)));
    var var_1 = arg_0.xz;
    var var_2 = firstTrailingBit(vec4<i32>(10244i, -1i, _wgslsmith_dot_vec2_i32(max(arg_0.ww, ~u_input.b.xz), vec2<i32>(select(arg_0.x, 2147483647i, true), 0i)), _wgslsmith_div_i32(func_3(-1i, arg_0.x, vec3<u32>(19713u, u_input.a.x, 4294967295u), true) >> (~u_input.a.x % 32u), _wgslsmith_add_i32(-1i, -u_input.b.x))));
    return Struct_1(~(-u_input.b.yw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(u_input.b.x, u_input.b.x | 21912i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (u_input.a.xz % vec2<u32>(32u)), firstTrailingBit(-u_input.b.yz)), u_input.b.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1203f, -622f))))), 1f, 765f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(sign(1482f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)) + 880f))));
    global2 = array<Struct_1, 26>();
    global1 = array<vec2<bool>, 3>();
    global2 = array<Struct_1, 26>();
    var var_2 = firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(45088u, ~firstLeadingBit(1u)), ~abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) & ~(~(12702u ^ u_input.a.x)), 0i);
}

