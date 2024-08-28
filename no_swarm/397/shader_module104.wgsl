struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 26> = array<i32, 26>(i32(-2147483648), 72165i, 68343i, 10380i, 45441i, 1i, 5432i, -35404i, -28036i, 42273i, 696i, 19946i, i32(-2147483648), -25232i, 2147483647i, -16208i, i32(-2147483648), -73571i, -22220i, 29852i, 1i, 4217i, -1i, -1i, 16545i, 1i);

var<private> global2: array<f32, 17>;

var<private> global3: array<vec4<bool>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = select(!vec2<bool>(all(global3[_wgslsmith_index_u32(1u, 1u)]), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(true, true, true))));
    let var_1 = abs(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x ^ 40577u), ~min(u_input.a.x, u_input.a.x), 0u, min(15729u, ~u_input.a.x))) << (countOneBits(~(select(vec4<u32>(0u, 71748u, 44097u, 1u), vec4<u32>(73863u, 19054u, 4294967295u, u_input.a.x), global3[_wgslsmith_index_u32(u_input.a.x, 1u)]) | (vec4<u32>(0u, 46953u, u_input.a.x, u_input.a.x) << (vec4<u32>(420u, u_input.a.x, 30179u, u_input.a.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    let var_2 = vec3<bool>(!any(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, false, true, var_0.x), global3[_wgslsmith_index_u32(4294967295u, 1u)])) || var_0.x, any(!select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), var_0.x))), var_0.x);
    var var_3 = ~_wgslsmith_clamp_u32(var_1.x, 19774u, var_1.x);
    let var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.x, 62179u, ~var_1.x), u_input.a.x)) | var_1.x, 1u)];
    return !(!var_4.zz);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global2 = array<f32, 17>();
    var var_0 = Struct_2(Struct_1(vec4<u32>(u_input.a.x | abs(u_input.a.x), u_input.a.x, reverseBits(select(1u, u_input.a.x, true)), ~(~u_input.a.x)), false, (u_input.c << (~u_input.a.x % 32u)) == (~26310i >> (0u % 32u)), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_1(~_wgslsmith_add_vec4_u32(select(vec4<u32>(81758u, 15051u, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, 1u, 0u), vec4<bool>(false, false, true, true)), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)), (global1[_wgslsmith_index_u32(u_input.a.x, 26u)] > countOneBits(-1i)) | true, all(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 943f, 1163f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], -346f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), arg_0.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_0.x, -931f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    global0 = vec4<i32>(-(~(u_input.c ^ global0.x)), global1[_wgslsmith_index_u32(72493u, 26u)], ~_wgslsmith_add_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(abs(4294967295u), 26u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(var_0.b.a.x, 26u)])), (14278i | global0.x) >> (~1u % 32u)), u_input.c);
    let var_1 = select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -1317f, -197f, 444f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.d, 832f, -511f, -1151f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(7420u, 17u)], 412f, var_0.b.d, -1000f)))), global2[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-746f)), 192f, 1318f))), !vec2<bool>(false, (i32(-1i) * -1i) > u_input.c), true | ((all(global3[_wgslsmith_index_u32(u_input.a.x, 1u)]) | true) == all(vec3<bool>(var_0.a.c, var_0.a.b, true))));
    global0 = u_input.b;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, ~max(var_0.b.a.x, u_input.a.x), ~6828u), ~vec3<u32>(~(u_input.a.x >> (var_0.b.a.x % 32u)), min(~16781u, ~1u), var_0.a.a.x));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = min(abs(vec4<u32>(select(4294967295u, 1u, arg_0), 4294967295u ^ arg_2.x, arg_2.x << (u_input.a.x % 32u), ~28072u)) & vec4<u32>(~min(arg_2.x, arg_2.x), _wgslsmith_add_u32(arg_2.x, 4294967295u), u_input.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 15899u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_2.x, 1u), vec4<u32>(83098u, u_input.a.x, 60094u, u_input.a.x)))), vec4<u32>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 17u)], -380f)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_2.x, u_input.a.x), abs(~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.a.x, u_input.a.x, false), 4294967295u, _wgslsmith_div_u32(u_input.a.x, 26591u)), select(~vec3<u32>(arg_2.x, arg_2.x, u_input.a.x), ~arg_2, !arg_3.zwy)), _wgslsmith_add_u32(~max(4294967295u, 1u), 4294967295u)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1531f, -445f, arg_1.x, -854f) * vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, global2[_wgslsmith_index_u32(var_0.x, 17u)], arg_1.x))) - _wgslsmith_f_op_vec4_f32(-arg_1)), Struct_1(~(~vec4<u32>(79638u, 4294967295u, 22321u, arg_2.x)) | vec4<u32>(17485u, u_input.a.x, ~4294967295u, 1u), false, !(!(!arg_3.x)), arg_1.x), vec4<i32>(1i, 3815i, reverseBits(1i), 29410i));
    let var_2 = select(4142u, var_0.x, !(!all(vec2<bool>(false, true))));
    global2 = array<f32, 17>();
    let var_3 = Struct_3(vec4<f32>(1667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.d)) - 1977f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(735f * global2[_wgslsmith_index_u32(var_0.x, 17u)]), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.d, global2[_wgslsmith_index_u32(10595u, 17u)])) - 1199f))), Struct_1(var_1.b.a, !arg_3.x, var_1.b.c, global2[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x)), 17u)]), var_1.c >> ((countOneBits(~vec4<u32>(var_2, var_2, u_input.a.x, 41582u)) << (vec4<u32>(1u, firstLeadingBit(0u), 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_3.b.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec3<bool> {
    global0 = vec4<i32>(u_input.b.x, -53642i, -u_input.c, global1[_wgslsmith_index_u32(31460u, 26u)]) ^ vec4<i32>(_wgslsmith_add_i32(arg_2.c.x, global0.x) >> (abs(arg_3.x) % 32u), u_input.c, _wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 9582i, arg_2.c.x, global0.x), vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_2.b.a.x, 26u)], 27022i, 1i)), u_input.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.c, 2147483647i, global0.x), arg_2.c)), arg_2.c.x);
    let var_0 = Struct_1(max(arg_2.b.a, arg_0 & countOneBits(vec4<u32>(arg_2.b.a.x, arg_3.x, 76231u, 4294967295u))), select(2147483647i, global0.x, !select(arg_2.b.b, true, arg_2.b.c)) != ((-1i | select(global1[_wgslsmith_index_u32(arg_2.b.a.x, 26u)], global0.x, arg_2.b.c)) << (~(arg_0.x ^ 44374u) % 32u)), _wgslsmith_f_op_f32(round(arg_2.b.d)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2[_wgslsmith_index_u32(arg_2.b.a.x, 17u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a.x)))), arg_2.a.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d)) - _wgslsmith_div_f32(-829f, 299f));
    let var_2 = ~arg_0.x;
    return !select(arg_1.wxw, select(select(!arg_1.yxw, select(arg_1.ywx, vec3<bool>(var_0.b, false, true), arg_1.wyx), vec3<bool>(false, arg_2.b.b, var_0.c)), arg_1.zxz, all(global3[_wgslsmith_index_u32(~50685u, 1u)])), arg_2.b.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = all(select(arg_0.xx, vec2<bool>(arg_0.x, arg_0.x), !(arg_1.x >= global2[_wgslsmith_index_u32(4294967295u, 17u)]) | all(vec3<bool>(false, arg_0.x, false))));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -1543f))), -754f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -237f)))), any(global3[_wgslsmith_index_u32(select(0u, u_input.a.x, false), 1u)]));
    var_1 = arg_0.zx;
    let var_2 = ~vec4<i32>(global1[_wgslsmith_index_u32(min(u_input.a.x, 1u), 26u)], -1i, global1[_wgslsmith_index_u32(select(u_input.a.x & u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, ~4294967295u), var_1.x), 26u)], u_input.b.x);
    var var_3 = _wgslsmith_mod_i32(-global0.x, _wgslsmith_add_i32(-2147483647i, -reverseBits(45887i)));
    return Struct_2(Struct_1(vec4<u32>(1u, max(u_input.a.x, 4294967295u), u_input.a.x, (u_input.a.x << (0u % 32u)) ^ firstLeadingBit(0u)), false, !var_0, -925f), Struct_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(10327u, 1u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u) << (vec4<u32>(95844u, 85049u, 40055u, 4294967295u) % vec4<u32>(32u))), !select(var_0, global1[_wgslsmith_index_u32(0u, 26u)] >= global1[_wgslsmith_index_u32(1u, 26u)], !var_0), !any(arg_0.xz), _wgslsmith_div_f32(arg_1.x, 862f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!func_4(vec4<u32>(~u_input.a.x, func_1(true, vec4<f32>(-1193f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(21685u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), u_input.a, vec4<bool>(false, false, true, false)), u_input.a.x, 28468u), vec4<bool>(all(vec3<bool>(false, true, true)), global0.x <= 0i, true, true), Struct_3(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], -139f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -130f), Struct_1(vec4<u32>(1u, 4725u, u_input.a.x, u_input.a.x), true, false, global2[_wgslsmith_index_u32(125084u, 17u)]), vec4<i32>(27398i, 49654i, -1i, 0i)), select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 13279u), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, 482f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(37178u, 17u)], 500f, -1000f, -1246f)), _wgslsmith_div_vec4_f32(vec4<f32>(1143f, global2[_wgslsmith_index_u32(4294967295u, 17u)], -245f, -372f), vec4<f32>(var_0.b.d, global2[_wgslsmith_index_u32(var_0.b.a.x, 17u)], -606f, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])))))), var_0.b, firstTrailingBit(u_input.b));
    var var_2 = vec4<bool>(true, false, false, any(!(!vec2<bool>(var_0.a.b, false))) | var_1.b.c);
    var var_3 = Struct_1(min(~var_1.b.a, ~var_1.b.a), var_0.b.c, true, _wgslsmith_f_op_f32(sign(var_1.b.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(2259f + -1449f), var_3.d, var_3.d, 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, -1885f, var_3.d, 1698f)))), _wgslsmith_dot_vec2_u32(var_1.b.a.xz, vec2<u32>(0u, 1u)) != ~44946u)) * vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.d)) + var_3.d), -753f, _wgslsmith_f_op_f32(ceil(var_1.b.d)))), all(!vec2<bool>(true, any(global3[_wgslsmith_index_u32(var_0.a.a.x, 1u)])))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f * var_1.a.x) + _wgslsmith_f_op_f32(-var_4.x)))) * _wgslsmith_f_op_f32(1000f - -1385f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~var_3.a.x, 17u)]))))));
    global1 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.a.yz - _wgslsmith_f_op_vec2_f32(step(var_4.yw, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.a.yz * vec2<f32>(var_5, -553f))))))), var_3.a);
}

