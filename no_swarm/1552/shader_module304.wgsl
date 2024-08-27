struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 10>();
    let var_0 = vec4<bool>(true, false, any(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, select(false, true, false)))), false);
    var var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    var var_2 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1008f), 117f, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f - 1391f)))), true)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1064f * -1892f))));
    return select(i32(-1i) * -2147483647i, 1i, true);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(vec3<i32>(-(abs(-1i) >> (arg_0 % 32u)), -1i, i32(-1i) * -arg_1.a.x), !(!all(!vec3<bool>(true, true, arg_1.b))), _wgslsmith_add_i32(func_3(), firstTrailingBit(_wgslsmith_mod_i32(arg_1.a.x & -60976i, -29872i))));
    var var_1 = select(vec4<bool>(true, false, var_0.b, true), !(!select(vec4<bool>(false, arg_1.b, false, true), vec4<bool>(false, false, arg_1.b, var_0.b), false)), false);
    var_1 = vec4<bool>(select(max(-38310i, reverseBits(var_0.c)) <= ~reverseBits(-2147483647i), !var_0.b, arg_1.b), var_1.x, false, all(!var_1.zz));
    let var_2 = countOneBits(~vec3<u32>(1u, u_input.a.x, 18897u));
    global0 = array<Struct_1, 10>();
    return var_2.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 2796u)) ^ ~vec3<u32>(u_input.a.x, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 13340u, abs(u_input.b)), select(u_input.a.www | vec3<u32>(15295u, 4294967295u, 21955u), vec3<u32>(u_input.b, 44416u, 1u) << (u_input.a.xwy % vec3<u32>(32u)), select(arg_2.xyz, arg_2.wwy, vec3<bool>(arg_2.x, true, false))))) >> (vec3<u32>(~countOneBits(func_2(19332u, global0[_wgslsmith_index_u32(1u, 10u)])), 39100u, 18642u) % vec3<u32>(32u));
    var var_1 = vec2<i32>(arg_1, ~arg_3);
    let var_2 = arg_2.wxy;
    return _wgslsmith_f_op_f32(f32(-1f) * -163f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = u_input.a.x;
    let var_1 = vec3<bool>(arg_2.b, false, true);
    global0 = array<Struct_1, 10>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = abs(abs(1i)) < func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), 50180i, vec4<bool>(true, true, false, true), 53775i)) - 663f), -622f, _wgslsmith_f_op_f32(round(469f))), vec4<u32>(u_input.a.x, 31030u, _wgslsmith_mult_u32(u_input.b, 28468u) & select(u_input.a.x, 1u, true), u_input.a.x | ~u_input.a.x), global0[_wgslsmith_index_u32(1u, 10u)]);
    let var_2 = vec3<f32>(-656f, 516f, 1602f);
    let var_3 = var_2.x;
    var var_4 = u_input.a;
    var var_5 = all(!vec3<bool>(all(vec3<bool>(false, true, true)), var_3 > 1000f, true)) && true;
    let x = u_input.a;
    s_output = StorageBuffer(106f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2010f, var_3) - vec2<f32>(-507f, var_2.x))))))), -_wgslsmith_div_i32(-1i, max(47551i >> (var_4.x % 32u), 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-931f))) * var_3) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * 341f))))));
}

