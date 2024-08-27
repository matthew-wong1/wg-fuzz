struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, false, false, false, true, true, false, true, false, true, false, false, false, true, false);

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-256f * -585f), 2902f) * 1263f), _wgslsmith_f_op_f32(794f + -2100f))), -336f, _wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(102f)), _wgslsmith_f_op_f32(round(-551f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1007f - -499f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1843f + -1014f), _wgslsmith_f_op_f32(214f + 1014f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)));
    let var_2 = ~vec2<u32>(_wgslsmith_add_u32(1u, ~55661u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(42891u, u_input.a, 1u)), 0u)) ^ vec2<u32>(12840u, _wgslsmith_div_u32(~3635u, u_input.a) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), abs(vec2<u32>(u_input.a, u_input.a))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1427f, -895f, -649f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1795f, 896f, 856f)))))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1345f, var_1.x, var_1.x, -213f) * vec4<f32>(var_0.x, -1000f, var_0.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, -196f, var_1.x, -1057f)))))));
    var var_3 = -2147483647i;
    return vec4<u32>(31624u ^ u_input.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_2.x, u_input.a), ~(~1u)), 2093u), 25497u, _wgslsmith_div_u32(33265u | ~(~u_input.a), var_2.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true || arg_2), firstTrailingBit(~func_3(-22580i, vec3<i32>(-1i, 1i, -20489i))), vec2<u32>(_wgslsmith_div_u32(u_input.a, arg_1), 16786u) | vec2<u32>(29857u, 4294967295u), 47365i), vec2<bool>(true, global0[_wgslsmith_index_u32(abs(2202u), 17u)]), Struct_1(!vec2<bool>(true, any(vec3<bool>(true, false, true))), firstLeadingBit(~(vec4<u32>(51269u, arg_1, 3772u, arg_1) >> (vec4<u32>(u_input.a, arg_1, 1u, u_input.a) % vec4<u32>(32u)))), vec2<u32>(~arg_1, 1u), abs(0i)));
    var var_1 = vec2<bool>(!(any(!vec4<bool>(var_0.c.a.x, false, false, true)) || true), global0[_wgslsmith_index_u32(abs(reverseBits(var_0.c.c.x)), 17u)]);
    var_0 = Struct_2(Struct_1(!vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, 4294967295u, 69067u), 17u)]), var_0.a.b, ~(~(~vec2<u32>(1987u, var_0.a.b.x))), abs(_wgslsmith_add_i32(-15084i, -20985i))), select(select(select(var_0.a.a, vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true), !vec2<bool>(var_1.x, true)), select(!vec2<bool>(arg_2, arg_2), var_0.c.a, !arg_2), all(vec3<bool>(true, true, true))), select(!(!vec2<bool>(var_1.x, var_1.x)), !(!var_0.b), vec2<bool>(true, true)), false), var_0.c);
    let var_2 = Struct_2(var_0.a, var_0.a.a, var_0.c);
    var_1 = select(select(vec2<bool>(arg_2, true), var_2.c.a, all(select(vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_0.a.a.x, true), var_1.x))), vec2<bool>(false, var_2.a.a.x), !var_2.c.a);
    return vec3<u32>(4294967295u, ~firstLeadingBit(u_input.a) ^ ~(var_2.c.b.x | 1u), _wgslsmith_add_u32(0u, ~(~39992u))) ^ max(abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 78115u, arg_1), vec3<u32>(var_2.a.c.x, arg_1, 73188u))), var_0.c.b.zzx);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = arg_1.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * 2390f), any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], true, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(round(arg_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x))), _wgslsmith_f_op_f32(sign(-1000f))));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, func_3(abs(1i), vec3<i32>(~(-46878i), 0i, 32230i)).x), u_input.a);
    var var_3 = _wgslsmith_sub_u32(~(~(~(0u << (1u % 32u)))), u_input.a);
    var var_4 = min(min(~(~vec4<i32>(-1i, 861i, -23487i, 14165i)), -vec4<i32>(18677i, 20869i, 2147483647i, 1i)), vec4<i32>(2147483647i << (var_2 % 32u), i32(-1i) * -954i, _wgslsmith_add_i32(-22855i, -53662i), _wgslsmith_mult_i32(abs(-23175i), 1i))) >> (countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 44464u, var_2, 20287u), ~vec4<u32>(arg_0.x, var_2, arg_0.x, 0u))) % vec4<u32>(32u));
    return all(vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 17u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(2820u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)]))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    let var_0 = func_4(~(_wgslsmith_div_vec3_u32(func_2(vec4<f32>(-328f, -1615f, -1290f, 1153f), arg_2.b.x, arg_1.c.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_1.c.c.x, 19u), arg_2.b.ywx)) & reverseBits(arg_2.b.zzz)), vec3<f32>(737f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(891f * -1331f) - 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1443f, _wgslsmith_f_op_f32(477f - -701f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)))));
    global1 = 1u;
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(972f))))))));
    return (arg_1.a.d << (_wgslsmith_dot_vec2_u32(~vec2<u32>(11976u, u_input.a) | func_3(-53984i, arg_3).zy, arg_1.a.c) % 32u)) ^ -(~(-max(0i, arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 28>();
    var var_0 = vec3<bool>((0u | ~_wgslsmith_div_u32(u_input.a, u_input.a)) > ~min(1u, u_input.a), global0[_wgslsmith_index_u32(~u_input.a, 17u)], !any(vec2<bool>(true, select(global0[_wgslsmith_index_u32(1u, 17u)], true, true))));
    var var_1 = -(-(~(~vec3<i32>(1i, 0i, 74609i))) & vec3<i32>(_wgslsmith_mult_i32(func_1(vec4<i32>(-24866i, -16185i, -19577i, 0i), Struct_2(Struct_1(var_0.yx, vec4<u32>(1u, u_input.a, 0u, 11535u), vec2<u32>(u_input.a, 0u), -3339i), var_0.xy, Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<u32>(0u, u_input.a, 9135u, u_input.a), vec2<u32>(4294967295u, u_input.a), 0i)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(53603u, 17u)], true), vec4<u32>(u_input.a, u_input.a, 5072u, u_input.a), vec2<u32>(u_input.a, 11198u), -40651i), vec3<i32>(35392i, 1i, -1i)), 0i), 24570i, func_1(vec4<i32>(66719i, 35581i, 1i, 0i), Struct_2(Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec2<u32>(0u, 68383u), 46764i), var_0.yx, Struct_1(var_0.yx, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec2<u32>(55960u, 0u), 46573i)), Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.a, u_input.a, 0u, 123014u), vec2<u32>(4294967295u, u_input.a), -1i), vec3<i32>(27644i, -2147483647i, -1i)) << (22419u % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 17u)] == !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, var_1.x, 2147483647i)) ^ -vec3<i32>(-10584i, var_1.x, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 19818i), vec3<i32>(2147483647i, -1i, var_1.x)) & -vec3<i32>(-2147483647i, 16003i, var_1.x)), _wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(2147483647i, -39011i, 2147483647i)), -vec3<i32>(var_1.x, 1i, var_1.x))), vec2<u32>(4294967295u, _wgslsmith_add_u32(func_3(firstTrailingBit(var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x)).x, ~_wgslsmith_div_u32(0u, u_input.a))), _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(var_1.x, abs(var_1.x), var_1.x & var_1.x), var_1.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 24999i, var_1.x), ~vec3<i32>(2147483647i, -5269i, 34334i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, -1194f)) * _wgslsmith_f_op_f32(floor(766f)))))));
}

