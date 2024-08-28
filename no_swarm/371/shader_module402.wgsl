struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 49387u);

var<private> global2: array<u32, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(38309u, 1u, 16876u), vec3<u32>(0u, 42228u, 4294967295u) >> (vec3<u32>(global1.x, 1u, 0u) % vec3<u32>(32u))), ~vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], 91129u, 1u) ^ reverseBits(vec3<u32>(u_input.a, 16251u, 0u))), arg_1.d.yww, vec3<u32>(17548u, ~(~select(74721u, 1u, arg_1.b.x)), ~arg_1.e), !(!arg_1.c));
    let var_1 = firstLeadingBit(~firstLeadingBit(vec4<u32>(1u, ~global2[_wgslsmith_index_u32(arg_1.e, 30u)], firstLeadingBit(u_input.a), countOneBits(30793u))));
    var var_2 = Struct_2(countOneBits(abs(vec3<u32>(54389u, 11286u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 30u)], 30u)], 30u)]) & ~vec3<u32>(arg_1.e, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.e, 30u)], 30u)]))), var_0.b, vec3<u32>(60477u, _wgslsmith_add_u32(~(~30324u), select(0u, ~arg_1.e, !var_0.d)), 4294967295u >> (~_wgslsmith_mult_u32(4294967295u, u_input.d) % 32u)), !all(select(!vec4<bool>(true, false, global0.x, arg_1.b.x), !vec4<bool>(arg_1.c, false, arg_1.b.x, true), vec4<bool>(true, true, true, true))));
    var_0 = Struct_2(firstTrailingBit(var_1.zxw), arg_1.d.xxy, var_2.c, !(!all(select(vec4<bool>(false, var_0.d, false, false), vec4<bool>(arg_1.b.x, global0.x, arg_1.b.x, var_0.d), global0.x))));
    global0 = vec4<bool>(false, true, true, all(arg_1.b));
    return select(global2[_wgslsmith_index_u32(abs(~(~(~u_input.d))), 30u)], _wgslsmith_div_u32(4294967295u & abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9654u, 30u)], 30u)] << (u_input.d % 32u)), ~(~(~1u))), var_0.d);
}

fn func_2() -> Struct_2 {
    var var_0 = -vec4<i32>(u_input.e.x, -27538i, 2147483647i, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.e.x, 12460i, u_input.c)), vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, 9169i)));
    global2 = array<u32, 30>();
    global0 = !vec4<bool>(!all(global0.zw) || (94611u < (u_input.a ^ u_input.d)), true, global0.x, global0.x);
    return Struct_2(vec3<u32>(select(func_3(vec2<f32>(-1255f, 954f), Struct_1(2858u, global0.xx, true, vec4<f32>(1443f, 602f, -168f, 880f), global1.x)), ~global1.x, true) | min(46348u, global2[_wgslsmith_index_u32(13998u, 30u)] << (global2[_wgslsmith_index_u32(global1.x, 30u)] % 32u)), global1.x, func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1077f, -931f), vec2<f32>(-342f, -759f))))), Struct_1(~51543u, global0.wy, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(114f, 426f, 1538f, 253f) * vec4<f32>(130f, -1407f, -471f, 327f)), ~80673u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, -1057f, -1000f) - vec3<f32>(313f, -2161f, 386f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1096f, 552f, 1664f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-787f, 423f, 615f) - vec3<f32>(-1004f, -375f, 1849f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -366f, -760f), vec3<f32>(1426f, 414f, 441f)))))), ~(~vec3<u32>(firstLeadingBit(u_input.d), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_mult_u32(global1.x, 69874u))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(arg_1.a, _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(63220u, 59050u, global2[_wgslsmith_index_u32(arg_1.a.x, 30u)]), vec3<u32>(u_input.a, 71405u, 76578u)), ~(vec3<u32>(47159u, arg_1.a.x, 1u) << (arg_1.c % vec3<u32>(32u))))), select(arg_0, vec2<bool>(any(vec4<bool>(global0.x, global0.x, true, arg_1.d)), global1.x >= _wgslsmith_div_u32(4294967295u, u_input.a)), arg_0), true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1372f))), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), _wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.b.x)), countOneBits(~func_2().c.x));
    global0 = select(select(!vec4<bool>(true, 0u > arg_1.a.x, false, all(vec4<bool>(true, true, arg_1.d, true))), vec4<bool>(all(arg_0) && true, false, global0.x, !any(vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, true, false, arg_1.d), vec4<bool>(arg_1.d, global0.x, false, true), vec4<bool>(var_0.c, var_0.c, true, true)), select(vec4<bool>(arg_1.d, arg_0.x, arg_1.d, arg_1.d), vec4<bool>(true, arg_1.d, arg_1.d, global0.x), vec4<bool>(true, true, global0.x, global0.x))), !select(vec4<bool>(false, var_0.b.x, true, global0.x), vec4<bool>(true, arg_1.d, arg_0.x, arg_0.x), true), true)), !(!vec4<bool>(!var_0.b.x, false, !global0.x, arg_0.x)), !(!select(!vec4<bool>(false, false, arg_0.x, false), select(vec4<bool>(false, true, global0.x, arg_1.d), vec4<bool>(false, false, true, false), true), !vec4<bool>(true, global0.x, false, true))));
    var var_1 = (global1.x & _wgslsmith_add_u32(~8691u, var_0.a)) | global1.x;
    var var_2 = Struct_2(arg_1.a, vec3<f32>(-110f, 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), arg_1.b.x)))), _wgslsmith_add_vec3_u32(abs(~(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 63295u, 15985u) << (vec3<u32>(arg_1.c.x, arg_1.a.x, 22611u) % vec3<u32>(32u)))), max(vec3<u32>(reverseBits(global1.x), ~47647u, 0u), arg_1.a)), arg_0.x);
    global1 = ~var_2.a.xx;
    return select(var_0.b, global0.yy, select(select(vec2<bool>(true, any(arg_0)), !global0.xy, vec2<bool>(true, false)), global0.zw, arg_0));
}

fn func_1() -> f32 {
    let var_0 = ~(~(~vec3<u32>(7693u, global2[_wgslsmith_index_u32(4294967295u, 30u)], global1.x)) | vec3<u32>(0u, select(1u, 0u, !global0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global1.x, global1.x, global2[_wgslsmith_index_u32(global1.x, 30u)]), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-108f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1083f, 1732f), vec2<f32>(470f, -372f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1035f, 461f), vec2<f32>(1840f, -921f)))))))));
    global1 = var_0.zy;
    global2 = array<u32, 30>();
    let var_2 = Struct_1(reverseBits(global1.x) | 39127u, func_4(vec2<bool>(false, global0.x), func_2()), all(!select(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(false, true, global0.x, global0.x), global0.x), select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), false)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, var_1.x), 56473u);
    return _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) * var_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), 1229f);
    let var_2 = vec3<u32>((~global1.x ^ ~(~u_input.d)) << (_wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~18724u, 30u)], ~0u)) % 32u), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(1u, global2[_wgslsmith_index_u32(global1.x, 30u)], global1.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 4294967295u, global1.x) ^ vec3<u32>(global1.x, 4294967295u, 1u), vec3<u32>(u_input.a, 12822u, 64062u)), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global1.x, 4294967295u), vec3<u32>(28218u, 38795u, 1u)), vec3<u32>(44951u, 70275u, 4294967295u) | vec3<u32>(57636u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u), global0.wyz)), 27644u);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1202f, var_1.x, var_1.x), vec4<f32>(1128f, 523f, var_1.x, -1765f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, 131f, var_1.x)))))))));
    global2 = array<u32, 30>();
    var_3 = vec4<f32>(var_1.x, 1037f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(func_2().b.x)))), -1000f);
    let var_4 = ~(~(u_input.c << (4294967295u % 32u)));
    var var_5 = var_2.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_mult_i32(select(var_4, 53300i, var_0), u_input.e.x), -2147483647i), firstLeadingBit((~vec3<i32>(0i, var_4, u_input.e.x) & ~vec3<i32>(u_input.c, var_4, -15197i)) ^ max(vec3<i32>(-39999i, var_4, -22222i), vec3<i32>(var_4, var_4, var_4))));
}

