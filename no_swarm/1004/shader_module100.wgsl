struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1u, 0u, vec4<bool>(false, true, false, true)), Struct_1(67751u, 1u, vec4<bool>(true, true, true, true)));

var<private> global1: array<bool, 27>;

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(-696f, 657f, -914f);

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 2u)];
    let var_1 = min(0u, abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d.x, 28997u)), abs(u_input.d.zx)))) >> (arg_2.a % 32u);
    let var_2 = reverseBits(vec4<u32>(~51844u, var_0.b, var_0.a, firstTrailingBit(var_1)));
    var var_3 = ~98145u;
    var var_4 = abs(-1i);
    return _wgslsmith_dot_vec2_u32(var_2.wx, (~var_2.yw << (firstLeadingBit(vec2<u32>(var_1, arg_1.x)) % vec2<u32>(32u))) ^ ~(countOneBits(arg_1) & ~arg_1));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> u32 {
    global4 = ~(u_input.c >> (~u_input.d.x % 32u));
    let var_0 = arg_0;
    var var_1 = Struct_1(~(arg_2.b | u_input.d.x) ^ 4294967295u, u_input.d.x, vec4<bool>(false, _wgslsmith_f_op_f32(abs(-1452f)) > global3.x, true, all(select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(var_0.c.x, false, true), arg_2.c.zww))));
    var_1 = global0[_wgslsmith_index_u32(arg_0.b, 2u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1061f))) * -2208f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))), global3.x, global3.x);
    return ~_wgslsmith_div_u32(countOneBits(~var_0.b) >> (_wgslsmith_sub_u32(max(u_input.d.x, arg_0.b), ~0u) % 32u), ~abs(22491u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(~((arg_2.x ^ 4294967295u) ^ _wgslsmith_mult_u32(1u, firstTrailingBit(arg_3.a))), func_3(Struct_1(arg_2.x, ~70395u, vec4<bool>(true, any(vec4<bool>(true, false, var_0.c.x, true)), var_0.c.x, select(arg_0.c.x, arg_0.c.x, false))), any(vec4<bool>(arg_3.c.x, true, true, true)), global0[_wgslsmith_index_u32(~countOneBits(var_0.b) | 1u, 2u)], false), vec4<bool>(all(select(vec4<bool>(arg_1.x, arg_3.c.x, var_0.c.x, false), !arg_3.c, select(arg_3.c, vec4<bool>(true, false, true, false), var_0.c))), select(arg_0.c.x | arg_3.c.x, select(global1[_wgslsmith_index_u32(var_0.a & u_input.d.x, 27u)], !var_0.c.x, false), true), true, false));
    let var_2 = global0[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(func_2(firstTrailingBit(vec4<i32>(u_input.c, u_input.b.x, u_input.c, u_input.a.x)), vec2<u32>(var_0.a, u_input.d.x), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -561f)), 19555u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 4294967295u, u_input.d.x), vec4<u32>(var_0.b, 29824u, 50879u, 4294967295u)), ~(~vec4<u32>(var_1.b, var_0.a, var_1.a, 0u)))), 2u)];
    var var_3 = arg_0;
    let var_4 = arg_3;
    return Struct_1(42045u, 1u, var_0.c);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = func_4(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], vec2<bool>(true, true), (firstTrailingBit(u_input.d ^ u_input.d) | ~abs(u_input.d)) | vec3<u32>(u_input.d.x, max(22242u, reverseBits(arg_2)), ~(0u | u_input.d.x)), Struct_1(func_3(Struct_1(~21562u, u_input.d.x, !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(40289u, 27u)], global1[_wgslsmith_index_u32(arg_2, 27u)])), global1[_wgslsmith_index_u32(u_input.d.x, 27u)], Struct_1(func_2(vec4<i32>(-2147483647i, u_input.c, -25780i, u_input.a.x), u_input.d.zz, global0[_wgslsmith_index_u32(arg_2, 2u)], -1560f), ~0u, select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2, 27u)], false, global1[_wgslsmith_index_u32(23882u, 27u)], global1[_wgslsmith_index_u32(9428u, 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(arg_2, 27u)], true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2, 27u)], global1[_wgslsmith_index_u32(32918u, 27u)], true))), true), 4294967295u, vec4<bool>(global1[_wgslsmith_index_u32(~min(u_input.d.x, 0u), 27u)], true, all(!vec2<bool>(false, global1[_wgslsmith_index_u32(26090u, 27u)])), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_2, 27u)], true))))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, arg_0, global3.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.x - arg_1), _wgslsmith_f_op_f32(global3.x + 467f), _wgslsmith_f_op_f32(max(663f, 1533f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, arg_1, -452f) + vec3<f32>(global3.x, 828f, global3.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_1, arg_0), vec3<f32>(global3.x, arg_0, -1000f))))), select(true, 1u > ~arg_2, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, global3.x), vec3<f32>(-1105f, -307f, 353f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, arg_0, global3.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, global3.x, arg_0), vec3<f32>(-1230f, 772f, global3.x), var_0.c.yxx))), var_0.c.wzz))));
    global4 = -reverseBits(u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(exp2(arg_1)))) * _wgslsmith_f_op_f32(trunc(arg_0)));
    var var_2 = Struct_1(~arg_2, var_0.a, !(!func_4(func_4(var_0, var_0.c.yx, u_input.d, Struct_1(4294967295u, 4294967295u, vec4<bool>(false, global1[_wgslsmith_index_u32(7255u, 27u)], global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(u_input.d.x, 27u)]))), var_0.c.wy, u_input.d, func_4(Struct_1(var_0.a, arg_2, var_0.c), var_0.c.wz, u_input.d, var_0)).c));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(-1i);
    var var_0 = func_1(189f, global3.x, u_input.d.x);
    var var_1 = -310f;
    let var_2 = select(u_input.d, vec3<u32>(~(~(~2325u)), ~45924u, func_4(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], vec2<bool>(true && global1[_wgslsmith_index_u32(21097u, 27u)], false), vec3<u32>(func_2(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.b.x), u_input.d.yx, global0[_wgslsmith_index_u32(0u, 2u)], global3.x), 1u, ~4294967295u), Struct_1(u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, var_0.a), !vec4<bool>(true, false, var_0.c.x, true))).a), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) > -1216f, global1[_wgslsmith_index_u32(u_input.d.x, 27u)], select(!var_0.c.x, true || var_0.c.x, true) || global1[_wgslsmith_index_u32(39962u, 27u)]));
    let var_3 = abs(firstTrailingBit(~vec4<u32>(u_input.d.x, var_2.x, 52533u, u_input.d.x) ^ ~(~vec4<u32>(27312u, 25204u, 4294967295u, 8623u))));
    var var_4 = ~vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, 12443i), vec4<i32>(u_input.a.x, 2147483647i, 1i, -13345i)), -2147483647i, _wgslsmith_mult_i32(min(_wgslsmith_mod_i32(u_input.c, 29308i), -14859i), select(u_input.c, u_input.a.x, false)), -(i32(-1i) * -u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-614f);
}

