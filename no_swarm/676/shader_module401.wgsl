struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 1u));

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(66112u, 42019u), vec2<u32>(1u, 72168u), vec2<u32>(20023u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(105617u, 52652u), vec2<u32>(17256u, 40503u), vec2<u32>(1u, 1u), vec2<u32>(0u, 43875u));

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(reverseBits(global0.a));
    global1 = array<vec2<u32>, 8>();
    var var_1 = 989f;
    var var_2 = 1584f;
    var var_3 = Struct_1(~(var_0.a << (_wgslsmith_div_vec2_u32(firstLeadingBit(global0.a), ~vec2<u32>(126283u, u_input.a.x)) % vec2<u32>(32u))));
    return var_0.a.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(-u_input.b.x, ((global0.a.x >= u_input.a.x) | true) | false), 0u), 23u)];
}

fn func_1() -> i32 {
    let var_0 = func_2(firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, 0i)));
    var var_1 = global2[_wgslsmith_index_u32(16805u, 23u)];
    global0 = Struct_1(select(vec2<u32>(var_0.a, ~global0.a.x), u_input.a.xw, !select(true, true, true)));
    global1 = array<vec2<u32>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(752f)) + _wgslsmith_f_op_f32(930f * -1359f)), _wgslsmith_f_op_f32(trunc(152f)), _wgslsmith_div_f32(-997f, _wgslsmith_div_f32(-385f, 686f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2154f, -2383f, 573f) + vec3<f32>(685f, 1982f, 214f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -228f, -712f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -488f, -304f))))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec3<i32>(0i << (select(_wgslsmith_mod_u32(45502u, _wgslsmith_dot_vec3_u32(u_input.a.wzx, vec3<u32>(global0.a.x, 32538u, 44924u))), 1u, false) % 32u), _wgslsmith_sub_i32(u_input.b.x, -23166i), countOneBits(-func_1()));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-298f)), _wgslsmith_f_op_f32(ceil(-544f)))))), _wgslsmith_f_op_f32(ceil(752f))), _wgslsmith_f_op_f32(f32(-1f) * -663f));
    var var_3 = func_2(~var_1.x);
    var var_4 = all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 327f > var_2.x), vec4<bool>(true, true, true, true), true | (var_1.x < 0i)));
    var_4 = select(any(vec3<bool>(_wgslsmith_f_op_f32(-var_2.x) == -1000f, true, false)), true, true);
    global1 = array<vec2<u32>, 8>();
    let var_5 = Struct_1((~_wgslsmith_sub_vec2_u32(global0.a, u_input.a.xw) | vec2<u32>(1u << (global0.a.x % 32u), func_2(var_1.x).a)) ^ vec2<u32>(~global0.a.x >> (select(var_3.a, 4294967295u, false) % 32u), abs(abs(var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-595f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, -1865f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 221f, 1000f, var_2.x))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1342f)), _wgslsmith_div_vec3_f32(vec3<f32>(-258f, 376f, 1955f), vec3<f32>(-1456f, 1283f, var_2.x)))))), firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x << (global0.a.x % 32u)) | var_1.x));
}

