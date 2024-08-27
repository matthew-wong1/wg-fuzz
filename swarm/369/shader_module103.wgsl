struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: array<vec4<f32>, 24>;

var<private> global2: Struct_5 = Struct_5(false);

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> vec2<u32> {
    let var_0 = select(!(!(!select(vec4<bool>(global3.d.x, false, true, global2.a), global3.d, global3.d.x))), global3.d, select(vec4<bool>(firstLeadingBit(arg_2) != ~14394u, all(select(vec3<bool>(global3.d.x, global3.d.x, true), global3.d.zzw, global3.d.zxy)), false, false), !select(global3.d, select(vec4<bool>(true, global3.d.x, global2.a, global2.a), vec4<bool>(false, global2.a, false, global2.a), false), all(global3.d.zw)), global3.d.x));
    global0 = array<vec4<f32>, 25>();
    global3 = Struct_3(Struct_1(global3.b.wy), _wgslsmith_f_op_vec4_f32(-global3.b), global3.a, !select(vec4<bool>(true, true, true, true), global3.d, global2.a));
    var var_1 = Struct_5(false);
    let var_2 = global3.d.x;
    return _wgslsmith_mult_vec2_u32(select(firstTrailingBit(reverseBits(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, arg_2), global3.d.xy))), ~u_input.a.yy, vec2<bool>(false, true)), vec2<u32>(abs(reverseBits(1u)), select(~75200u, _wgslsmith_add_u32(0u, 1u), true)) ^ ~vec2<u32>(u_input.a.x, ~69719u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5) -> u32 {
    global2 = Struct_5(arg_1.d.x);
    global3 = arg_1;
    let var_0 = -2147483647i;
    var var_1 = !(!vec3<bool>(!(!global3.d.x), arg_2.a, true));
    var var_2 = -374f;
    return u_input.a.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_5 {
    global3 = Struct_3(global3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 25u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.a.x, arg_1.x, global3.a.a.x, -745f) * vec4<f32>(arg_1.x, arg_1.x, global3.b.x, -1374f))))), global3.c, vec4<bool>((true || global3.d.x) && all(!vec4<bool>(global2.a, false, true, global3.d.x)), global2.a, !global2.a, any(vec2<bool>(false, all(vec4<bool>(global2.a, true, false, false))))));
    global0 = array<vec4<f32>, 25>();
    let var_0 = true;
    global3 = Struct_3(global3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-186f, global3.c.a.x)), -625f), -2596f, arg_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-462f, 1053f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, arg_1.x)))), vec4<bool>(all(vec2<bool>(true, true)), true, true, global3.d.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.a));
    return Struct_5(global2.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global2 = func_4(-((vec2<i32>(1i, 1i) << (_wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(36160u, 4294967295u)) % vec2<u32>(32u))) >> ((~vec2<u32>(u_input.a.x, 0u) >> (func_2(-7540i, u_input.a.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(abs(0u), 24u)], _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(39994i, ~13027i)) >> ((~func_3(vec4<i32>(-1i, -9301i, -11486i, 32586i), Struct_3(global3.c, vec4<f32>(global3.b.x, global3.a.a.x, global3.c.a.x, -710f), Struct_1(global3.b.zy), global3.d), Struct_5(global3.d.x)) | 0u) % 32u));
    var var_0 = vec2<bool>(select(global2.a | global2.a, global3.d.x, global2.a), true);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(global3.a.a)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.c.a.x, -1158f), _wgslsmith_f_op_f32(ceil(1368f))))), global3.d.wxx, vec4<i32>(1i, 1i, 1i, 1i) << (arg_0 % vec4<u32>(32u)), global3.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-global3.a.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-927f, -1160f), vec2<f32>(339f, global3.c.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, global3.b.x)))), var_1.c.x)));
    let var_3 = global3.b.xy;
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(vec4<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), countOneBits(~4294967295u), ~(1u & u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(1u, 25u)])))))), global3.a, global3.d);
    global2 = func_4(-vec2<i32>(~(i32(-1i) * -53370i), i32(-1i) * -3355i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1988f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) + -1835f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x - var_0.b.x))), _wgslsmith_f_op_f32(800f + var_0.c.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.b.x))))))), 1i);
    global0 = array<vec4<f32>, 25>();
    var var_1 = countOneBits(max(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-1i, -1i)), 5153i));
    global3 = Struct_3(global3.c, _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b * global0[_wgslsmith_index_u32(1u, 25u)]) + _wgslsmith_f_op_vec4_f32(-global3.b)))), global3.c, global3.d);
    let var_2 = select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(countOneBits(vec3<u32>(u_input.a.x, min(5266u, 0u), 0u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a.a.x))));
    let var_3 = Struct_2(vec4<i32>(abs(firstTrailingBit(reverseBits(31208i))), 2147483647i, ~1i, 1i), ~(((vec4<u32>(0u, u_input.a.x, u_input.a.x, var_2.x) ^ vec4<u32>(4294967295u, 46369u, 16821u, 2031u)) | vec4<u32>(var_2.x, var_2.x, u_input.a.x, 9754u)) | countOneBits(vec4<u32>(1u, u_input.a.x, 45042u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 7592u, var_2.x, 0u))), !(~_wgslsmith_add_u32(1u, 13052u) == firstLeadingBit(u_input.a.x)), global3.d.yyw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_3.a.xz, var_3.a.xx) | _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, -41955i)), var_3.a.yy), min(vec2<i32>(1i, var_3.a.x), -var_3.a.wx)), var_3.a.x, min(vec3<i32>(var_3.a.x, -10464i, var_3.a.x), abs(vec3<i32>(var_3.a.x, _wgslsmith_dot_vec3_i32(var_3.a.zzz, var_3.a.xzw), var_3.a.x))), countOneBits(var_3.a), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(reverseBits(var_3.a.xyz), var_3.a.wyw)), vec3<i32>(_wgslsmith_div_i32(var_3.a.x, 1i) ^ (var_3.a.x | var_3.a.x), _wgslsmith_div_i32(var_3.a.x, -1i), firstLeadingBit(firstLeadingBit(40418i)))));
}

