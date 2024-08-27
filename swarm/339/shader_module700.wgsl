struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(74740u, 20327u, 0u, 6125u), 7219i, vec2<f32>(1000f, -1001f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(vec4<u32>(~(~global2.a.x | u_input.a.x), 4294967295u, u_input.a.x, global2.a.x), -23366i, global2.c);
    let var_1 = !select(vec4<bool>(all(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(72016u, 15080u), 21u)]), select(false, all(vec4<bool>(true, true, false, true)), select(true, true, true)), true, (1u >> (global2.a.x % 32u)) > ~var_0.a.x), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, false), vec4<bool>(all(vec3<bool>(false, true, true)), false, select(false, false, false), true), true == any(vec2<bool>(false, true))), vec4<bool>(true, any(global0[_wgslsmith_index_u32(1u >> (global2.a.x % 32u), 21u)]), true, !select(true, false, false)));
    var var_2 = select(select(!(!vec2<bool>(var_1.x, false)), select(select(vec2<bool>(var_1.x, false), var_1.wy, var_1.x), select(vec2<bool>(false, true), var_1.xz, vec2<bool>(var_1.x, var_1.x)), select(var_1.zx, var_1.xy, !var_1.xz)), var_1.x), vec2<bool>(true, true), select(var_1.yz, !vec2<bool>(var_1.x, var_0.c.x > -174f), any(vec3<bool>(false || var_1.x, var_1.x, true))));
    let var_3 = false;
    var var_4 = Struct_1(global2.a, i32(-1i) * -2147483647i, vec2<f32>(_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - _wgslsmith_f_op_f32(var_0.c.x * global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(629f, -174f, true)) - 1883f))));
    return _wgslsmith_f_op_f32(var_4.c.x + _wgslsmith_div_f32(1093f, var_0.c.x)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + _wgslsmith_f_op_f32(-490f - _wgslsmith_f_op_f32(global2.c.x - var_4.c.x))), 1178f));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global1 = array<vec2<u32>, 21>();
    var var_0 = !(true || !select(true, true, false));
    let var_1 = all(!select(vec3<bool>(-1717f == global2.c.x, true, true), select(select(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(false, false, true), vec3<bool>(false, false, true)), !global0[_wgslsmith_index_u32(4294967295u, 21u)], vec3<bool>(true, true, false)), (arg_0.x < 857i) & func_3(u_input.a.x, global2.a.yyy)));
    global1 = array<vec2<u32>, 21>();
    var var_2 = false;
    return Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(max(u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global2.a.x, 11298u, u_input.a.x, 19308u), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)), u_input.a), abs(_wgslsmith_mult_vec4_u32(global2.a, vec4<u32>(global2.a.x, u_input.a.x, u_input.a.x, 64481u)))) << (u_input.a % vec4<u32>(32u)), global2.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c.x))), global2.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = vec3<i32>(select(-(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, arg_0.b, 0i, -1i), vec4<i32>(1i, arg_2.b, var_0.b, arg_2.b)) << (abs(var_0.a.x) % 32u)), arg_0.b, true), _wgslsmith_sub_i32(global2.b, global2.b), _wgslsmith_mod_i32(global2.b, _wgslsmith_mod_i32(-arg_2.b << (~var_0.a.x % 32u), arg_2.b)));
    global2 = arg_0;
    global2 = func_2(var_1.zz);
    let var_2 = countOneBits(-(~var_1.xz));
    return func_2(var_1.yx);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = vec4<bool>(0u < global2.a.x, true, !all(vec3<bool>(true, 891f >= global2.c.x, all(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), true);
    var var_1 = global2.a.x;
    var_1 = 36909u;
    let var_2 = func_4(func_2(vec2<i32>(-firstLeadingBit(global2.b), max(global2.b, 0i >> (global2.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-429f, global2.c.x, 166f, -322f), vec4<f32>(global2.c.x, -735f, 265f, global2.c.x))))))), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 9991u, _wgslsmith_div_u32(global2.a.x, 0u)) | ~(~vec4<u32>(0u, global2.a.x, 4294967295u, 0u)), _wgslsmith_add_i32(global2.b, -global2.b ^ -global2.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c + vec2<f32>(global2.c.x, global2.c.x)))))));
    var var_3 = Struct_1(global2.a & vec4<u32>(1u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(var_2.a.x, global2.a.x), 4294967295u), firstTrailingBit(~var_2.a.x), ~(~45854u)), -(~(-2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1007f, -1343f) + var_2.c)) * _wgslsmith_f_op_vec2_f32(select(var_2.c, global2.c, !vec2<bool>(false, var_0.x))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>((u_input.a.x << (~u_input.a.x % 32u)) >> (~(~global2.a.x) % 32u), ~4294967295u, ~_wgslsmith_mod_u32(countOneBits(49997u), 73375u), ~(~global2.a.x) | (func_1(vec3<i32>(global2.b, global2.b, -1i)) | 1u)), global2.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.c.x)))))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(global2.c.x));
    global0 = array<vec3<bool>, 21>();
    var var_2 = u_input.a.x >> (var_0.a.x % 32u);
    var var_3 = Struct_1(~vec4<u32>(func_4(Struct_1(vec4<u32>(52278u, 0u, 1u, u_input.a.x), 0i, vec2<f32>(var_0.c.x, 1456f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, 323f, -567f, -244f), vec4<f32>(global2.c.x, 192f, var_1, global2.c.x)), func_2(vec2<i32>(var_0.b, 67870i))).a.x, _wgslsmith_dot_vec2_u32(global2.a.yx, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(0u, global2.a.x))), abs(u_input.a.x), _wgslsmith_add_u32(u_input.a.x << (41043u % 32u), ~var_0.a.x)), 0i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, var_0.c.x)))));
    let var_4 = func_2(-vec2<i32>(global2.b, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_3.a.x, var_4.a.x), vec3<u32>(98425u, global2.a.x, var_0.a.x)), ~u_input.a.wyx) >> (reverseBits(~(~var_0.a.wzy)) % vec3<u32>(32u)), 2299f);
}

