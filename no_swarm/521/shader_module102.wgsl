struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 23334u, 1u, 13484u);

var<private> global3: array<i32, 18> = array<i32, 18>(2147483647i, -1i, 33869i, 24309i, 0i, 1i, -1358i, -15227i, 1269i, 30679i, -30352i, 2147483647i, -11309i, -11997i, 22530i, i32(-2147483648), 73144i, 10000i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    global3 = array<i32, 18>();
    global3 = array<i32, 18>();
    var var_0 = firstLeadingBit(select(_wgslsmith_div_vec4_i32(arg_2.d.a, arg_2.d.a), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_2.e, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 18u)]), firstTrailingBit(arg_2.d.a)), true));
    global0 = array<u32, 31>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.c, arg_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1249f, arg_3.a, arg_0.x), _wgslsmith_f_op_vec3_f32(arg_3.b * arg_1.b), (arg_2.c.x | arg_2.c.x) > 82428u))));
    return var_0.x;
}

fn func_2() -> bool {
    let var_0 = Struct_2(max(reverseBits(-vec4<i32>(-46150i, u_input.a, u_input.a, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 18u)])), vec4<i32>(~func_3(vec4<f32>(-637f, 1798f, 1000f, 1216f), global1[_wgslsmith_index_u32(1u, 8u)], Struct_3(1845f, vec3<i32>(-4548i, global3[_wgslsmith_index_u32(48644u, 18u)], 25537i), vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(9405u, 31u)], 0u), Struct_2(vec4<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(26182u, 18u)], -1i), Struct_1(-1151f, vec3<f32>(912f, -1711f, -1000f)), 375f), global3[_wgslsmith_index_u32(global2.x, 18u)]), Struct_1(-574f, vec3<f32>(2320f, -276f, -537f))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, -54750i), vec3<i32>(2396i, global3[_wgslsmith_index_u32(global2.x, 18u)], -2147483647i)), -vec3<i32>(-1i, 13353i, 2147483647i)), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -15831i, 47669i), vec4<i32>(-40807i, global3[_wgslsmith_index_u32(1u, 18u)], -13595i, 21396i)))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(54342u), 31u)], 8u)], _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-557f))));
    let var_1 = var_0;
    var var_2 = 1607f;
    let var_3 = ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(~max(4294967295u, global0[_wgslsmith_index_u32(global2.x, 31u)])), 31u)], 31u)];
    var_2 = var_0.b.b.x;
    return !any(vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<i32>) -> vec4<u32> {
    global3 = array<i32, 18>();
    var var_0 = arg_0.a.x;
    var var_1 = select(vec4<bool>(select(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), true, func_2(), true), vec4<bool>(true & (arg_1.x >= -186f), all(vec2<bool>(true, true)), false, true), vec4<bool>(false, !select(true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -354f)) <= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-697f, arg_1.x), arg_1.x)), true));
    let var_2 = global1[_wgslsmith_index_u32(1u & (_wgslsmith_sub_u32(firstTrailingBit(~arg_2), _wgslsmith_dot_vec2_u32(global2.zz, _wgslsmith_clamp_vec2_u32(global2.zz, global2.ww, vec2<u32>(1u, arg_2)))) ^ (reverseBits(min(global0[_wgslsmith_index_u32(1u, 31u)], arg_2)) << (~_wgslsmith_sub_u32(31162u, 1u) % 32u))), 8u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-246f, -2178f, var_2.b.x))), var_2.b, vec3<bool>(!var_1.x, false, true || var_1.x)))));
    return vec4<u32>(25661u, countOneBits(reverseBits(1u)), ~(~_wgslsmith_div_u32(~30514u, 50270u)), 5188u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    global2 = firstLeadingBit(func_1(Struct_2(-vec4<i32>(43393i, global3[_wgslsmith_index_u32(17968u, 18u)], u_input.a, -11156i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(global2.x), 31u)], 8u)], _wgslsmith_f_op_f32(step(305f, 226f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, 1216f) - vec2<f32>(816f, -626f)) - vec2<f32>(236f, 1036f)), global2.x, vec3<i32>(-1i) * -vec3<i32>(-26569i, 21623i, u_input.a)) ^ ~select(vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global2.x, 1u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4131u, 31u)], 7984u, global2.x), true));
    var var_0 = vec3<bool>(!(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), true, true);
    var var_1 = any(vec4<bool>(all(!vec3<bool>(false, var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(345f, 1000f, var_0.x)) * _wgslsmith_f_op_f32(select(-416f, -728f, false))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -137f)), !var_0.x));
    let var_2 = true;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1733f, 1000f))))), select(-_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), -vec3<i32>(global3[_wgslsmith_index_u32(119321u, 18u)], 28602i, u_input.a)), countOneBits(~(~vec3<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 18u)]))), !all(vec3<bool>(false, var_2, var_2))), _wgslsmith_mod_vec3_u32(countOneBits(global2.zzw), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(11158u, global2.x, global0[_wgslsmith_index_u32(12354u, 31u)]), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], global2.x), 31u)]), 9741u, 4294967295u)), Struct_2(vec4<i32>(1i, u_input.a >> (4294967295u % 32u), countOneBits(0i), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, 1012f, 1060f, -1667f)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(11990u), 31u)], 8u)], Struct_3(927f, vec3<i32>(global3[_wgslsmith_index_u32(51373u, 18u)], global3[_wgslsmith_index_u32(62217u, 18u)], 53599i), global2.wwx, Struct_2(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(0u, 8u)], -1000f), global3[_wgslsmith_index_u32(48435u, 18u)]), Struct_1(1000f, vec3<f32>(-1136f, 1666f, -381f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)), vec3<f32>(_wgslsmith_f_op_f32(-871f - 690f), -170f, _wgslsmith_f_op_f32(811f + -972f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1006f, 730f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1488f)), 773f))), i32(-1i) * -(i32(-1i) * -30430i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, -241f, -769f)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(259f + 991f), _wgslsmith_f_op_f32(f32(-1f) * -313f)))), var_3.d.c, _wgslsmith_f_op_f32(f32(-1f) * -450f)), var_3.d.c, -527f, var_3.a);
}

