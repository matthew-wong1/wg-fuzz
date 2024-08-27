struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = arg_1;
    global0 = array<i32, 29>();
    let var_1 = all(select(vec2<bool>(all(vec3<bool>(false, global1.x, false)), all(!global1.yx)), select(vec2<bool>(true, true), global1.yy, 0u > ~u_input.a.x), vec2<bool>(global1.x, true)));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return false;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global1 = !select(select(vec3<bool>(true, any(vec2<bool>(global1.x, false)), any(vec3<bool>(global1.x, global1.x, true))), vec3<bool>(true, true, true), all(vec3<bool>(false, global1.x, global1.x))), select(vec3<bool>(true, global1.x, arg_0.x == 385f), select(select(vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, true)), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, false)), any(vec4<bool>(false, true, global1.x, false))), select(select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, global1.x, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, false))), !vec3<bool>(select(global1.x, false, global1.x), func_3(arg_0.x, Struct_1(global0[_wgslsmith_index_u32(644u, 29u)], 34105u), global0[_wgslsmith_index_u32(44275u, 29u)], Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.a.x)), true));
    var var_0 = vec4<u32>(~12039u, ~(~abs(1u)), u_input.a.x, _wgslsmith_clamp_u32(~firstLeadingBit(0u), u_input.b.x, ~(~60353u))) & ~select(vec4<u32>(abs(4294967295u), ~1u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.b.x, 11960u))), ~vec4<u32>(u_input.b.x, u_input.b.x, 6535u, u_input.a.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(85032u, u_input.a.x, u_input.b.x, 0u), vec4<u32>(u_input.a.x, 44967u, u_input.b.x, u_input.a.x)), !select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, true, global1.x, false)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(select(firstLeadingBit(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(42367u, 29u)])), _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], -1i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), firstLeadingBit(vec3<i32>(0i, 1488i, global0[_wgslsmith_index_u32(0u, 29u)]))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 62619u), 29u)] > global0[_wgslsmith_index_u32(~var_0.x, 29u)]), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-34027i, -1i, global0[_wgslsmith_index_u32(107127u, 29u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(67960u, 29u)], 2147483647i)), max(vec3<i32>(global0[_wgslsmith_index_u32(1u, 29u)], 1i, 93i), vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], 0i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))))), 4294967295u);
    var var_2 = Struct_1(max(countOneBits(2147483647i), _wgslsmith_clamp_i32(select(~(-1i), firstLeadingBit(var_1.a), var_1.b >= 4294967295u), firstTrailingBit(var_1.a >> (u_input.b.x % 32u)), -918i)), ~1u);
    var_2 = var_1;
    return Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((_wgslsmith_clamp_u32(1u, var_2.b, 27899u) | ~u_input.b.x) >> (~1u % 32u), u_input.a.x), 29u)], var_1.b >> (4294967295u % 32u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<i32, 29>();
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw), arg_0.yw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1183f) - arg_0.xx) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_0.yz, vec2<f32>(arg_0.x, arg_0.x), vec2<bool>(false, false)))))))));
    global1 = vec3<bool>(global1.x, false, true);
    global1 = vec3<bool>(true, ~select(firstLeadingBit(var_0.b), 66298u, true) >= 4294967295u, true);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.b.x;
    global1 = select(vec3<bool>(false, !global1.x, false), select(select(!(!vec3<bool>(global1.x, true, global1.x)), !(!vec3<bool>(false, global1.x, global1.x)), global1.x != true), select(vec3<bool>(true, any(vec3<bool>(global1.x, global1.x, true)), global1.x), vec3<bool>(true, true, false & global1.x), !select(vec3<bool>(true, true, global1.x), vec3<bool>(true, true, global1.x), global1.x)), any(vec3<bool>(all(vec4<bool>(global1.x, global1.x, true, true)), true, global1.x))), vec3<bool>(global1.x, any(!select(vec2<bool>(global1.x, global1.x), global1.xy, global1.x)), true && global1.x));
    global1 = vec3<bool>(all(select(select(!vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(global1.x, false, true, false), !vec4<bool>(false, global1.x, false, global1.x)), select(!vec4<bool>(global1.x, global1.x, false, true), select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, global1.x, false, false), true), vec4<bool>(true, global1.x, false, false)), select(!vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, false, global1.x, global1.x), global1.x)))), global1.x, global1.x);
    var var_1 = select(_wgslsmith_mult_vec3_i32(select(abs(vec3<i32>(6902i, arg_1, 1i)), abs(vec3<i32>(-47175i, 49686i, 7267i) ^ vec3<i32>(0i, 5152i, arg_1)), !global1.x), reverseBits(-vec3<i32>(0i, -1443i, arg_0.a)) ^ (-vec3<i32>(1i, arg_1, global0[_wgslsmith_index_u32(62686u, 29u)]) >> ((vec3<u32>(47203u, arg_0.b, 48993u) & vec3<u32>(1u, 1u, arg_0.b)) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(reverseBits(~(-vec3<i32>(arg_1, arg_0.a, -1464i))), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec3<i32>(-25926i, arg_0.a, 6350i), true), vec3<i32>(2147483647i, _wgslsmith_mult_i32(arg_0.a, arg_0.a), -1i << (u_input.b.x % 32u)))), vec3<bool>(true, true, true));
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1357f, -261f)), -708f));
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(412f)), _wgslsmith_f_op_f32(f32(-1f) * -205f))), 1097f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1447f - -1885f), _wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(-255f + 667f), -2433f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-147f, -163f, 597f, 476f) + vec4<f32>(619f, -299f, 106f, 221f)))), -51772i);
    var var_1 = var_0;
    global1 = select(vec3<bool>(true, !(true | any(vec3<bool>(true, true, global1.x))), true), select(!vec3<bool>(global1.x & global1.x, !global1.x, true), select(vec3<bool>(any(vec2<bool>(global1.x, false)), all(global1.xz), true), vec3<bool>(false, true, true), select(vec3<bool>(false, global1.x, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !vec3<bool>(false, false, global1.x))), false == select(true, !global1.x, global1.x)), false);
    var var_2 = vec3<i32>(var_0.a, 37908i, ~min(~(~global0[_wgslsmith_index_u32(0u, 29u)]), -_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(var_1.b, 29u)], -1226i)));
    var var_3 = func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) * _wgslsmith_f_op_f32(abs(297f))), -140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + 219f) + -259f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1133f, -1207f), _wgslsmith_f_op_f32(-1218f - -523f), !global1.x))), 1f));
    var_2 = _wgslsmith_add_vec3_i32(-(~abs(min(vec3<i32>(var_1.a, var_3.a, -1i), vec3<i32>(var_0.a, 0i, 5929i)))), _wgslsmith_sub_vec3_i32(-(select(vec3<i32>(7064i, var_2.x, 1i), vec3<i32>(var_3.a, -51822i, var_1.a), vec3<bool>(global1.x, global1.x, false)) << (vec3<u32>(47973u, 4294967295u, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(max(firstTrailingBit(vec3<i32>(var_1.a, var_2.x, global0[_wgslsmith_index_u32(4294967295u, 29u)])), ~vec3<i32>(-25286i, var_3.a, var_0.a)), reverseBits(-vec3<i32>(-2147483647i, 20230i, var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, var_0.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, 48829u, 37573u), vec3<u32>(3837u, u_input.b.x, var_0.b))), ~reverseBits(vec3<u32>(0u, var_1.b, var_3.b) ^ vec3<u32>(u_input.a.x, u_input.b.x, 18871u))));
}

