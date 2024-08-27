struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, false, true, true, false, false, false, true, true, true, true, false, true, true, false, true, true, true, false, false, true, true, false, true, false);

var<private> global1: array<i32, 4> = array<i32, 4>(0i, 0i, 0i, 13716i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    global0 = array<bool, 26>();
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(arg_0)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = ~19327i;
    let var_1 = vec3<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~(~u_input.b)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.b), min(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0))), arg_0)), 4u)]);
    global1 = array<i32, 4>();
    global1 = array<i32, 4>();
    let var_2 = select(!vec2<bool>(arg_2 && any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)])), select(var_1.x != var_1.x, !arg_2, true)), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)] | global0[_wgslsmith_index_u32(0u, 26u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(64932u, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)]), vec2<bool>(false, arg_2)), !(arg_2 & false)), arg_2);
    return Struct_1(firstLeadingBit(vec3<u32>(4294967295u | (arg_0 ^ arg_0), 1u, countOneBits(firstTrailingBit(95132u)))));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(max(vec3<u32>(60930u, u_input.b, ~u_input.b), select(vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(7229u, 4294967295u, u_input.b), vec3<u32>(4294967295u, 47707u, 60030u)), global0[_wgslsmith_index_u32(u_input.b & 1u, 26u)])), (~vec3<u32>(14564u, 81792u, 4294967295u) | ~vec3<u32>(u_input.b, u_input.b, 1u)) ^ countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 35546u), vec3<u32>(u_input.b, 30871u, 1065u)))));
    global0 = array<bool, 26>();
    let var_1 = func_3(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(-452f, global1[_wgslsmith_index_u32(var_0.a.x, 4u)], vec3<i32>(-27806i, u_input.d.x, -2147483647i), 1002u))))))), (false || arg_0.x) && all(vec4<bool>(true, true, u_input.b < u_input.b, true)));
    var var_2 = vec2<bool>(!(!select(true, true, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), any(select(vec4<bool>(true, all(arg_0.zx), true, true), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.a.x, 26u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(5485u, 26u)], global0[_wgslsmith_index_u32(71965u, 26u)], true, false), true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.a.x, 26u)], arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], false, global0[_wgslsmith_index_u32(u_input.b, 26u)])), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(3013u, 26u)], global0[_wgslsmith_index_u32(46694u, 26u)])), !vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(var_1.a.x, 26u)]))));
    var_2 = arg_0.xz;
    return _wgslsmith_add_i32(global1[_wgslsmith_index_u32(max(func_3(_wgslsmith_mod_u32(var_1.a.x, 36215u) | var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1231f, 1424f))), all(select(vec4<bool>(arg_0.x, arg_0.x, false, global0[_wgslsmith_index_u32(78792u, 26u)]), vec4<bool>(false, true, true, true), arg_0.x))).a.x, var_1.a.x), 4u)], ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)] != _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mult_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(15739u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.d.x, -34992i), u_input.d << (vec4<u32>(0u, 63512u, u_input.b, 0u) % vec4<u32>(32u)))), 18104i >= ~func_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)], false)), !global0[_wgslsmith_index_u32(~u_input.b << (_wgslsmith_mod_u32(abs(10001u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6397u), vec2<u32>(8066u, 17883u))) % 32u), 26u)], false);
    var var_1 = vec2<i32>(u_input.c.x, ~u_input.e.x) & vec2<i32>(2147483647i, 1i);
    global0 = array<bool, 26>();
    var var_2 = -_wgslsmith_add_i32(-_wgslsmith_sub_i32(func_1(vec3<bool>(global0[_wgslsmith_index_u32(24725u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], true)), ~global1[_wgslsmith_index_u32(24098u, 4u)]), ~(-14537i) << (max(~49291u, ~u_input.b) % 32u));
    global0 = array<bool, 26>();
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - -989f)) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-513f + -2123f), i32(-1i) * -2147483647i, vec3<i32>(-4822i, 0i, -1i), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(45274u, 0u, u_input.b))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1854f, _wgslsmith_f_op_f32(min(276f, 292f)))) * _wgslsmith_f_op_f32(step(-1123f, _wgslsmith_f_op_f32(select(-1094f, 1724f, var_0.x)))))), false, firstTrailingBit(vec2<u32>(~4294967295u & u_input.b, 71172u)), select(-2147483647i, 1286i, any(var_0.yxw)), true);
    var var_4 = select(select(select(var_0, vec4<bool>(false, true, var_0.x, all(var_0.wz)), var_0), var_0, select(var_0, var_0, !all(vec4<bool>(true, false, false, var_0.x)))), vec4<bool>(true, (_wgslsmith_f_op_f32(ceil(-816f)) <= -1000f) | global0[_wgslsmith_index_u32(countOneBits(1u), 26u)], true, true), !vec4<bool>(true, true, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(72416u, 4294967295u), 26u)], !(!var_3.e)));
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

