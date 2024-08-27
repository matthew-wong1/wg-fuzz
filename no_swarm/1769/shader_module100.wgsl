struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1u, 42374u, vec3<bool>(false, false, true)), Struct_1(16190u, 299u, vec3<bool>(true, false, false)), Struct_1(93479u, 24492u, vec3<bool>(false, true, true)), Struct_1(0u, 14810u, vec3<bool>(true, true, true)), Struct_1(1495u, 7530u, vec3<bool>(false, true, true)));

var<private> global3: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_1 = Struct_2(Struct_1(4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.a.zz ^ arg_1.zz, ~global3.yz), var_0.a.c), min(2147483647i, ~countOneBits(-var_0.b)), ~(~42843u), !var_0.d);
    let var_2 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, -14378i) << (abs(u_input.a) % vec3<u32>(32u)), vec3<i32>(~arg_0.x, var_1.b, reverseBits(-13926i))), -1i);
    global0 = array<Struct_2, 29>();
    return global0[_wgslsmith_index_u32(u_input.a.x, 29u)];
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = Struct_2(Struct_1(~u_input.a.x, global3.x, select(global1[_wgslsmith_index_u32(arg_2.b.b, 21u)], !arg_0.a.c, global3.x == _wgslsmith_div_u32(42254u, u_input.a.x))), abs(-1i), ~reverseBits(~(~49694u)), select(select(!(!vec2<bool>(arg_2.c.a.c.x, false)), !(!vec2<bool>(arg_2.c.d.x, arg_2.c.d.x)), vec2<bool>(select(arg_0.a.c.x, arg_3, arg_0.d.x), !arg_2.b.c.x)), vec2<bool>(false, arg_1), !func_2(vec3<i32>(-1i, arg_0.b, arg_2.c.b) | vec3<i32>(43330i, 0i, arg_2.c.b), ~vec4<u32>(0u, 4294967295u, u_input.a.x, arg_2.a.x)).d));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(select(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, 43903u, u_input.a.x), vec3<u32>(var_0.c, var_0.a.b, 34547u)) ^ ~u_input.a, u_input.a, all(vec4<bool>(arg_0.a.c.x, arg_1, true, arg_2.b.c.x)) || false)), (max(reverseBits(vec3<u32>(global3.x, global3.x, arg_2.a.x)), u_input.a) | u_input.a) >> (~abs(~vec3<u32>(1164u, 7141u, 0u)) % vec3<u32>(32u))), 5u)];
    var var_2 = Struct_1(countOneBits(var_1.a), _wgslsmith_add_u32(~(u_input.a.x ^ _wgslsmith_mult_u32(u_input.a.x, global3.x)), firstLeadingBit(~var_0.a.a >> ((var_1.b & arg_0.a.a) % 32u))), global1[_wgslsmith_index_u32(global3.x, 21u)]);
    var var_3 = vec4<u32>(~(~(~(~58361u))), var_1.b, ~arg_0.c, arg_2.c.a.a);
    global3 = _wgslsmith_add_vec3_u32(abs(reverseBits(~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(var_3.x, 0u, arg_2.b.a)))), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.a, 1u, arg_0.c), vec3<u32>(0u, 4294967295u, 1u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(5479u, var_1.a, 21889u), ~u_input.a), u_input.a));
    return reverseBits(0i);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_add_u32(select(~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 3696u), global3.zz)), global3.x ^ 4294967295u, all(vec2<bool>(true, true))), 18420u);
    let var_1 = _wgslsmith_add_vec3_i32(-vec3<i32>(~(-40242i), ~0i, func_3(func_2(vec3<i32>(7752i, 35892i, 1i), vec4<u32>(4294967295u, 12743u, global3.x, u_input.a.x)), arg_0, Struct_3(vec2<u32>(25127u, var_0), Struct_1(9716u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), global0[_wgslsmith_index_u32(1u, 29u)]), true)), ~select(countOneBits(select(vec3<i32>(3404i, -34827i, -2147483647i), vec3<i32>(-75975i, -2147483647i, 1i), arg_0)), vec3<i32>(-16629i, _wgslsmith_clamp_i32(2147483647i, -1i, 2147483647i), ~50305i), true));
    global2 = array<Struct_1, 5>();
    let var_2 = _wgslsmith_f_op_f32(ceil(-869f));
    let var_3 = -2147483647i;
    return -159f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1150f, -1000f)), _wgslsmith_f_op_f32(func_1(true, false, -1000f))), _wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(f32(-1f) * -704f))))));
    global2 = array<Struct_1, 5>();
    global1 = array<vec3<bool>, 21>();
    var var_1 = ~select(vec4<i32>(firstTrailingBit(26097i), select(1i, max(26278i, 2147483647i), true), min(1i, ~(-48177i)), firstLeadingBit(~0i)), min(abs(-vec4<i32>(8317i, -11603i, 1i, 0i)), vec4<i32>(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_div_i32(1i, -32959i), _wgslsmith_div_i32(3173i, -39886i), ~(-2147483647i))), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), true, func_2(vec3<i32>(-1i, -1i, 37862i), min(vec4<u32>(global3.x, 72966u, u_input.a.x, global3.x), vec4<u32>(global3.x, u_input.a.x, u_input.a.x, global3.x))).d.x));
    var var_2 = -16316i & var_1.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, false, -111f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * 954f)))));
    var_1 = ~abs(vec4<i32>(_wgslsmith_add_i32(~var_1.x, countOneBits(-2147483647i)), var_1.x, _wgslsmith_clamp_i32(~var_1.x, var_1.x >> (0u % 32u), 0i), _wgslsmith_mult_i32(reverseBits(var_1.x), var_1.x)));
    var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-677f, -501f) * _wgslsmith_div_f32(-396f, 153f)), _wgslsmith_f_op_f32(var_3.x * 1600f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(622f, 678f))), firstLeadingBit(reverseBits(vec2<i32>(var_1.x & var_1.x, _wgslsmith_add_i32(var_1.x, 28533i)))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(var_1.x), -26476i), _wgslsmith_clamp_vec2_i32(~var_1.yy, vec2<i32>(var_1.x, 8137i), ~var_1.wz)), countOneBits(var_1.yz) | -var_1.wz), vec4<u32>(~(~_wgslsmith_add_u32(0u, 32923u)), u_input.a.x, 1u, 51054u), global3.x);
}

