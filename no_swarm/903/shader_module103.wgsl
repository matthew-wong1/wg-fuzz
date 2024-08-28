struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, false, false), vec3<u32>(5307u, 99908u, 4294967295u), vec2<u32>(9738u, 94580u), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, true), vec3<u32>(1u, 19777u, 31919u), vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), vec3<u32>(9574u, 4294967295u, 4294967295u), vec2<u32>(0u, 69529u), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 4294967295u, 17464u), vec2<u32>(1u, 0u), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec3<u32>(26805u, 4294967295u, 0u), vec2<u32>(112854u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), vec3<u32>(80771u, 1u, 15805u), vec2<u32>(2553u, 1u), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), vec3<u32>(1u, 0u, 0u), vec2<u32>(15500u, 26010u), vec4<bool>(false, true, true, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global2 = array<Struct_1, 7>();
    return arg_0.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = Struct_1(arg_1.b.b.ywy, vec4<bool>(arg_1.b.b.x, false, !select(true, false, false), ~arg_0.x <= 0i), func_3(Struct_1(vec3<bool>(all(vec2<bool>(true, false)), !arg_1.b.a.x, false), !select(vec4<bool>(arg_1.b.b.x, arg_1.b.a.x, arg_1.b.b.x, false), arg_1.b.e, arg_1.b.b), vec3<u32>(50849u, 23926u, 29979u) << (~vec3<u32>(16080u, u_input.a, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec2_u32(~arg_1.b.d, vec2<u32>(20597u, arg_1.c)), select(!vec4<bool>(false, false, arg_1.b.e.x, arg_1.b.b.x), !vec4<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.e.x, arg_1.b.e.x), arg_1.b.e))), vec2<u32>(1u, 7207u), vec4<bool>(arg_1.b.e.x, true, any(arg_1.b.a.zz), !arg_1.b.e.x));
    global2 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(810f, 1158f), vec2<f32>(1250f, 509f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, 802f))))));
    let var_2 = Struct_1(vec3<bool>(var_0.a.x, var_0.e.x, arg_1.b.e.x), arg_1.b.e, ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(85847u, 1u, u_input.a)), vec3<u32>(var_0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 4294967295u), var_0.c.yy), var_0.c.x)), abs(firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b.c.yy, vec2<u32>(u_input.a, 56753u)), ~vec2<u32>(1u, var_0.d.x)))), select(select(select(var_0.e, vec4<bool>(arg_1.b.b.x, true, var_0.a.x, true), arg_1.b.e), select(var_0.e, select(vec4<bool>(true, false, false, arg_1.b.e.x), vec4<bool>(false, var_0.e.x, false, true), var_0.e), vec4<bool>(true, arg_1.b.b.x, var_0.a.x, true)), var_0.e), arg_1.b.b, !select(!arg_1.b.e, var_0.e, true)));
    global2 = array<Struct_1, 7>();
    return ~var_2.d;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 17u)];
    let var_1 = u_input.c.zy;
    global1 = array<Struct_2, 17>();
    global1 = array<Struct_2, 17>();
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, 4294967295u, _wgslsmith_mod_u32(~47198u, 14689u), _wgslsmith_dot_vec2_u32(select(var_0.b.d, var_0.b.d, var_0.b.a.xy), func_2(vec4<i32>(var_1.x, 0i, -1i, -58458i), global1[_wgslsmith_index_u32(var_0.c, 17u)]))), ~(~vec4<u32>(~var_0.b.d.x, ~var_0.a, reverseBits(var_0.a), var_0.a & u_input.a)));
    return StorageBuffer(-122f, u_input.c.x, firstLeadingBit(-firstTrailingBit(vec4<i32>(1172i, u_input.b, var_1.x, 1i))) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -1i, 0i, 0i), firstTrailingBit(vec4<i32>(var_1.x, u_input.c.x, var_1.x, -2147483647i)), countOneBits(vec4<i32>(u_input.c.x, 62912i, var_1.x, 48750i))), var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
}

