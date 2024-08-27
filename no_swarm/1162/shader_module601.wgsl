struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(40266i, 0i, -16903i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(-36420i, 11745i, 0i), vec3<i32>(0i, 6860i, i32(-2147483648)), vec3<i32>(11920i, 1i, 1i), vec3<i32>(5369i, -1i, i32(-2147483648)), vec3<i32>(36979i, -15129i, 0i), vec3<i32>(i32(-2147483648), -237i, i32(-2147483648)), vec3<i32>(46427i, 0i, 2147483647i), vec3<i32>(-26791i, 0i, -19335i), vec3<i32>(18775i, 0i, 46038i), vec3<i32>(-5634i, 1i, 0i), vec3<i32>(-3794i, 5130i, 0i), vec3<i32>(65351i, 21720i, 1i), vec3<i32>(19258i, 2603i, -35255i), vec3<i32>(27212i, i32(-2147483648), -70267i), vec3<i32>(242i, i32(-2147483648), 14262i), vec3<i32>(-5654i, i32(-2147483648), 30546i), vec3<i32>(-7526i, 1i, -1i), vec3<i32>(427i, i32(-2147483648), -1i));

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: Struct_2;

var<private> global3: i32 = 0i;

var<private> global4: u32 = 60343u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_2(firstTrailingBit(_wgslsmith_sub_u32(17180u, reverseBits(global2.b.c)) << (122u % 32u)), global2.b);
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.b.d, global2.b.d))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.d)) - 761f) * -348f)), 1f));
    var var_3 = Struct_2(10161u & var_1, Struct_1(var_0.b.e.x, all(!(!vec3<bool>(global2.b.b, var_0.b.b, true))), 35267u, var_2, vec4<i32>(-1i, u_input.b, -52694i, var_0.b.e.x)));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-262f, -2183f), vec2<f32>(1183f, -835f), global2.b.b)) - vec2<f32>(_wgslsmith_f_op_f32(round(global2.b.d)), var_2)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-924f, var_3.b.d)), 374f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, global2.b.d))))), vec2<f32>(-486f, -1245f));
    return vec3<u32>(0u, firstTrailingBit(~firstTrailingBit(~var_3.b.c)), arg_1);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(func_3(vec2<bool>(arg_0.b.b, global2.b.b), _wgslsmith_sub_u32(35776u, global2.b.c)) >> ((~vec3<u32>(global2.a, arg_0.a, 1u) | select(vec3<u32>(0u, global2.b.c, 23746u), vec3<u32>(0u, arg_0.b.c, 0u), vec3<bool>(arg_0.b.b, global2.b.b, true))) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(~arg_0.b.c, global2.b.c & 0u, abs(global2.a)))) ^ vec3<u32>(min(select(arg_0.b.c ^ 1u, 4294967295u, true | global2.b.b), _wgslsmith_div_u32(~arg_0.a, global2.b.c)), global2.a, global2.b.c);
    let var_1 = arg_0;
    var var_2 = 1u;
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.d, arg_0, global2.b.d, global2.b.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), vec4<bool>(global2.b.b, true, global2.b.b, false))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, global2.b.d, 2003f, arg_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1433f, global2.b.d, global2.b.d, -284f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1601f, 1186f, global2.b.d, global2.b.d))))));
    var var_1 = u_input.c.yz;
    let var_2 = ~((vec3<u32>(~4294967295u, global2.a, abs(0u)) & reverseBits(vec3<u32>(global2.a, global2.a, global2.b.c))) & abs(vec3<u32>(func_2(Struct_2(global2.b.c, Struct_1(-1i, global2.b.b, global2.a, arg_0, global2.b.e)), 539f), 12375u, ~89342u)));
    let var_3 = select(var_2, vec3<u32>(25262u, 0u, 60092u), ~global2.b.e.x > min(abs(-6504i), u_input.b));
    var var_4 = global2.b.b;
    return firstTrailingBit(_wgslsmith_clamp_u32(60233u, ~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 22133u), firstTrailingBit((12644u | var_2.x) | (var_2.x << (var_2.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 35736u | func_1(-640f, 1i);
    let var_1 = Struct_1(global2.b.e.x >> (52747u % 32u), true, global2.b.c, _wgslsmith_f_op_f32(-global2.b.d), select(global2.b.e, vec4<i32>(-38742i, -3270i, 29227i, countOneBits(firstTrailingBit(u_input.d))), !(!vec4<bool>(global2.b.b, global2.b.b, false, global2.b.b))));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(vec4<u32>(62166u, var_2.c, 0u, var_2.c) ^ vec4<u32>(var_0, var_1.c, var_1.c, 4294967295u), select(vec4<u32>(var_1.c, 1u, 4870u, var_0), vec4<u32>(global2.b.c, 4294967295u, var_2.c, var_0), var_2.b), !vec4<bool>(global2.b.b, false, var_1.b, false)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(43994u, 0u, var_1.c, 99987u), vec4<u32>(var_1.c, 41447u, 4294967295u, global2.b.c) >> (vec4<u32>(var_2.c, 4294967295u, 40456u, 18907u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

