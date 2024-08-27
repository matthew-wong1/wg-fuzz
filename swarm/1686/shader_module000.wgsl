struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, 1362f);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(false, 167f));

var<private> global2: array<i32, 2> = array<i32, 2>(-13136i, -70679i);

var<private> global3: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> u32 {
    global2 = array<i32, 2>();
    global0 = global1[_wgslsmith_index_u32(1u, 1u)];
    let var_0 = !(!(!any(select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a), vec2<bool>(false, global0.a)))));
    let var_1 = Struct_2(global0.a & true, _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))));
    global2 = array<i32, 2>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b);
    var var_1 = -min(_wgslsmith_mult_vec3_i32(~max(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], -27374i, 2147483647i), vec3<i32>(-2147483647i, -8579i, global2[_wgslsmith_index_u32(1u, 2u)])), vec3<i32>(1i, 1i, 1i)), select(vec3<i32>(34318i & global2[_wgslsmith_index_u32(24258u, 2u)], global2[_wgslsmith_index_u32(~arg_1.x, 2u)], max(-1i, 26442i)), ~(vec3<i32>(-2147483647i, u_input.c, -1i) | vec3<i32>(u_input.c, 23131i, global2[_wgslsmith_index_u32(17652u, 2u)])), true));
    let var_2 = Struct_1(~(~vec4<u32>(4294967295u, arg_1.x, 0u, 1u)) >> (vec4<u32>(u_input.b, 4294967295u, (arg_1.x << (arg_1.x % 32u)) << (firstLeadingBit(40521u) % 32u), ~countOneBits(u_input.b)) % vec4<u32>(32u)), select(!(!(!vec4<bool>(false, global0.a, arg_0.a, false))), select(!vec4<bool>(true, global0.a, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.b >= global0.b, select(global0.a, arg_0.a, global0.a), 1526f <= arg_0.b), select(!vec4<bool>(true, arg_0.a, arg_0.a, global0.a), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, global0.a, global0.a), vec4<bool>(true, false, false, arg_0.a)), vec4<bool>(arg_0.a, global0.a, global0.a, true))), vec4<bool>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(29182u, 2u)], 0i) == var_1.x, any(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), arg_0.a)), global0.a, true)), _wgslsmith_clamp_vec3_i32(-((vec3<i32>(u_input.a, var_1.x, global2[_wgslsmith_index_u32(46814u, 2u)]) << (arg_1 % vec3<u32>(32u))) | select(vec3<i32>(var_1.x, var_1.x, u_input.c), vec3<i32>(var_1.x, 20610i, var_1.x), global0.a)), reverseBits(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 2u)], 17351i, global2[_wgslsmith_index_u32(17023u, 2u)]), vec3<i32>(-49889i, u_input.c, var_1.x)))), select(-vec3<i32>(-61352i, u_input.a, global2[_wgslsmith_index_u32(1u, 2u)]) << ((vec3<u32>(u_input.b, 4294967295u, arg_1.x) & vec3<u32>(23724u, 83185u, arg_1.x)) % vec3<u32>(32u)), reverseBits(~vec3<i32>(22762i, -1i, global2[_wgslsmith_index_u32(u_input.b, 2u)])), select(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, false, arg_0.a), vec3<bool>(true, global0.a, true)), select(vec3<bool>(arg_0.a, global0.a, true), vec3<bool>(true, true, true), vec3<bool>(false, global0.a, true)), vec3<bool>(true, global0.a, arg_0.a)))), !select(vec2<bool>(true, true), !select(vec2<bool>(true, arg_0.a), vec2<bool>(false, false), vec2<bool>(global0.a, true)), global0.a));
    let var_3 = Struct_1(var_2.a, !select(select(!vec4<bool>(global0.a, global0.a, var_2.d.x, false), select(var_2.b, var_2.b, var_2.b), select(var_2.b, vec4<bool>(var_2.b.x, false, false, true), var_2.b)), select(vec4<bool>(arg_0.a, true, global0.a, arg_0.a), !vec4<bool>(global0.a, var_2.d.x, arg_0.a, true), true), !select(var_2.b, var_2.b, var_2.b)), vec3<i32>(-var_2.c.x, var_1.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, global2[_wgslsmith_index_u32(var_2.a.x, 2u)]) >> (abs(33853u) % 32u), -2147483647i, firstLeadingBit(global2[_wgslsmith_index_u32(9285u, 2u)]))), !vec2<bool>(u_input.b >= 15444u, arg_0.a));
    var_1 = select(countOneBits(countOneBits(var_3.c)) << (arg_1 % vec3<u32>(32u)), vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~38575u, ~arg_1.x), 2u)], -(~(i32(-1i) * -1i)), var_1.x), vec3<bool>(global0.a, !arg_0.a, false));
    return select(var_2.c.x, var_2.c.x, true);
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b + -183f), arg_1)))));
    let var_0 = func_3(global1[_wgslsmith_index_u32(u_input.b, 1u)], _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(countOneBits(u_input.b), 70606u), _wgslsmith_mod_u32(~16701u, 102398u), ~1u), vec3<u32>(~_wgslsmith_mod_u32(4828u, 42001u), 21527u, u_input.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, _wgslsmith_f_op_f32(step(arg_1, 788f)), 962f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, global0.b, global0.b) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, global0.b, arg_1), vec3<f32>(1228f, 636f, global0.b), false))))));
    var var_2 = vec2<i32>(~(-28782i), ~firstTrailingBit(arg_0));
    global2 = array<i32, 2>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(2235u, _wgslsmith_div_u32(_wgslsmith_add_u32(abs(func_1()), ~firstTrailingBit(14961u)), 13686u));
    let var_1 = Struct_1(vec4<u32>(~22907u, _wgslsmith_div_u32(~(u_input.b & u_input.b), ~(~4294967295u)), u_input.b, u_input.b), select(!vec4<bool>(true, false, select(global0.a, false, false), true), vec4<bool>(func_2(u_input.a, 1597f), all(vec2<bool>(global0.a, global0.a)), -1332f <= _wgslsmith_f_op_f32(ceil(global0.b)), true), !vec4<bool>(true, any(vec3<bool>(global0.a, global0.a, true)), !global0.a, !global0.a)), abs(vec3<i32>(global2[_wgslsmith_index_u32(27314u, 2u)], -2147483647i, global2[_wgslsmith_index_u32(~1u, 2u)])), !select(!(!vec2<bool>(global0.a, global0.a)), vec2<bool>(true, !global0.a), all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) * 388f)), -firstLeadingBit(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], u_input.c, -2147483647i))) << (var_1.a.wwx % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f + 798f))))), max(select(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 2u)]), var_1.c.zy, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], var_1.c.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(63077i, var_1.c.x), vec2<i32>(var_1.c.x, global2[_wgslsmith_index_u32(var_1.a.x, 2u)])), var_1.c.xy), select(!var_1.d, select(vec2<bool>(false, global0.a), vec2<bool>(var_1.b.x, true), true), var_1.b.x)), var_1.c.yx));
}

