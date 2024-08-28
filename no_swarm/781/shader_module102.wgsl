struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 29> = array<f32, 29>(-365f, -1000f, 109f, 862f, -1674f, 1162f, 1000f, 1675f, -640f, 611f, -103f, 1000f, -1190f, 1089f, -687f, 1076f, -1499f, 1000f, 929f, 727f, -1426f, 611f, 1000f, 248f, -301f, 192f, 1090f, -939f, -1000f);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -1i, -30090i, -1937i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_2) -> bool {
    let var_0 = -1106f;
    var var_1 = global2.a;
    let var_2 = arg_1;
    var var_3 = reverseBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, ~arg_0.c.x, ~1u, arg_0.c.x), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(u_input.a.x, 0u)), 48488u, ~arg_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, arg_0.c.x), vec4<u32>(arg_0.c.x, 4294967295u, arg_0.c.x, 61354u))))));
    global0 = abs(~(u_input.a.x & abs(arg_0.c.x)) | arg_0.c.x);
    return true || !(true && !(529f > var_0));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(93489u, 68744u, u_input.a.x), u_input.a), u_input.a), u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(30470u, ~u_input.a.x, arg_1), u_input.a));
    let var_1 = vec4<u32>(~firstLeadingBit(1u), 0u, u_input.a.x, ~abs(~arg_1 >> (_wgslsmith_mod_u32(38819u, 46484u) % 32u)));
    var var_2 = select(vec4<bool>(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), !(all(vec4<bool>(false, false, true, true)) || true), false, func_3(Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, 536f, global1[_wgslsmith_index_u32(var_0.x, 29u)])), reverseBits(u_input.a.yx)), vec4<i32>(~arg_2.a.x, 0i, _wgslsmith_mult_i32(0i, 1i), arg_2.a.x), Struct_2(~arg_2.a.x))), select(vec4<bool>(true, any(vec3<bool>(true, true, false)) && true, false, false), vec4<bool>(true, true, true, true), true), any(select(vec2<bool>(true, any(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), false)));
    let var_3 = arg_0;
    let var_4 = 51861i;
    return _wgslsmith_f_op_f32(f32(-1f) * -1371f);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 88822u, 0u), vec3<u32>(u_input.a.x, 71151u, u_input.a.x))), 29u)], -152f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)]) + -540f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_3(-2147483647i, global2.a.zww), 0u, Struct_1(global2.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 281f) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2528u, 29u)])), -523f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(18656u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]))))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_4(Struct_3(2147483647i, abs(select(vec3<i32>(10400i, -46644i, u_input.b), global2.a.xzw, true))), _wgslsmith_f_op_vec3_f32(abs(var_0.yxx)), vec2<u32>(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(33239u, 1u, 0u, 24963u), vec4<u32>(0u, u_input.a.x, 1u, 1u))), 1u));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(725f, _wgslsmith_f_op_f32(sign(var_0.x)), !(u_input.c > 19916i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -745f) - _wgslsmith_f_op_f32(f32(-1f) * -1182f)))));
    var var_3 = _wgslsmith_div_vec3_f32(var_0.yyw, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), 2630f), var_0.yyz))));
    global1 = array<f32, 29>();
    return Struct_4(Struct_3(firstTrailingBit(var_1.a.a) | (_wgslsmith_mult_i32(2147483647i, var_1.a.a) | 25457i), ~global2.a.zww), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1039f - -600f), var_0.x, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(var_0.yzx + vec3<f32>(494f, 1456f, var_0.x)))))), var_1.c);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(12095i);
    global2 = Struct_1(~(-vec4<i32>(var_0.a, -2632i, 1i, global2.a.x >> (1u % 32u))));
    var var_1 = 0u;
    var var_2 = vec2<f32>(global1[_wgslsmith_index_u32(countOneBits(1u), 29u)], -590f);
    let var_3 = 75143u;
    return _wgslsmith_sub_u32(u_input.a.x, 28389u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(~(-24957i), u_input.c);
    var var_1 = min(countOneBits(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(~u_input.a.x, abs(u_input.a.x)))), func_4(func_1(), Struct_3(-(i32(-1i) * -1i), vec3<i32>(16281i, -1i, -8588i))));
    var var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(40125u, u_input.a.x >> (4294967295u % 32u), ~u_input.a.x, ~48413u), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~0u, ~u_input.a.x))), 29u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-936f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] - _wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(22420u, 29u)])), 524f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(78717u, 29u)], 2084f, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])) - vec3<f32>(520f, 396f, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(81269u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -345f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, -1111f, -753f))))) + _wgslsmith_f_op_vec3_f32(-func_1().b));
    var var_4 = _wgslsmith_dot_vec2_u32(~u_input.a.xx, u_input.a.xy);
    var_1 = 48934u;
    let x = u_input.a;
    s_output = StorageBuffer(~1i, u_input.a.zy, vec4<i32>(-3161i, -(-1i & -u_input.c), ~_wgslsmith_clamp_i32(-56216i, u_input.c, u_input.b) >> (u_input.a.x % 32u), 1i));
}

