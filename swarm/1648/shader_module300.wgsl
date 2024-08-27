struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(27584u, 29393u, 0u, 0u, 12591u, 0u, 4294967295u, 4294967295u, 0u, 0u, 2384u, 66405u, 43297u, 0u, 20082u, 4294967295u, 63588u, 31908u, 4294967295u, 10347u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_3(Struct_1(false, _wgslsmith_f_op_f32(173f * -553f), reverseBits(u_input.a.x)), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1265f)) * arg_0), ~(max(var_0, var_0) >> (4294967295u % 32u))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, any(vec4<bool>(false, true, true, true))), false), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec3<bool>(false, true, false))), true));
    global0 = array<u32, 20>();
    return -2147483647i;
}

fn func_2() -> vec2<u32> {
    var var_0 = countOneBits(vec4<i32>(abs(1i), 1i >> (_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], u_input.a.x) % 32u), reverseBits(~1i), firstLeadingBit(min(i32(-1i) * -2147483647i, 54441i))));
    var var_1 = Struct_1(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 20u)], 20u)], 20u)]) >= firstTrailingBit(select(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~global0[_wgslsmith_index_u32(84540u, 20u)], true)), _wgslsmith_f_op_f32(-1f), 1u);
    var var_2 = countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-2147483647i), i32(-1i) * -61283i, var_0.x) & var_0.zyy, -_wgslsmith_mult_vec3_i32(~var_0.wzx, var_0.xwz)));
    var_2 = vec3<i32>(23987i, _wgslsmith_dot_vec2_i32(var_2.xz, firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.xy, vec2<i32>(var_0.x, 1i)), var_2.zz))), func_3(var_1.b));
    var var_3 = select(vec4<bool>(any(!vec2<bool>(var_1.a, var_1.a)), true, var_1.a, var_1.a | select(23768i <= var_2.x, true, !var_1.a)), vec4<bool>(!all(select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a))), true, !var_1.a, var_1.a), vec4<bool>(all(select(vec3<bool>(var_1.a, true, var_1.a), !vec3<bool>(false, var_1.a, false), -351f == var_1.b)), var_1.a, true, false));
    return u_input.a.zx;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    let var_0 = ~(vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 25999u), arg_1, 27833u, 59004u) & countOneBits(vec4<u32>(56451u, global0[_wgslsmith_index_u32(4885u, 20u)], 1u, 14707u) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(25528u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) % vec4<u32>(32u)))) >> (vec4<u32>(4294967295u, 112007u, 20627u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(26570u, arg_1), vec2<u32>(0u, arg_1)), func_2()), u_input.a.yz)) % vec4<u32>(32u));
    var var_1 = -(~(~vec3<i32>(-34563i, -10848i, 1i)));
    var var_2 = min(vec4<i32>(var_1.x, 61256i, -7115i, abs(select(~0i, 1i, true))), ~vec4<i32>(countOneBits(var_1.x) << (func_2().x % 32u), var_1.x, abs(var_1.x & var_1.x), 1i));
    var var_3 = ~_wgslsmith_mult_vec2_u32(select(var_0.yx, ~vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)]), true), _wgslsmith_mod_vec2_u32(~select(var_0.xx, u_input.a.yy, arg_0.x), var_0.zz));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(293f, -2447f, -1622f), vec3<f32>(1285f, -2566f, 2195f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, -1000f, 1325f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, -1055f, 3114f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-679f, 286f, 649f), vec3<f32>(2107f, -1000f, -1297f)))))));
    return _wgslsmith_f_op_f32(exp2(var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, select(true, false, true), true), ~(~global0[_wgslsmith_index_u32(1u, 20u)]))), firstTrailingBit(global0[_wgslsmith_index_u32(7497u, 20u)] << (u_input.a.x % 32u)) ^ ~u_input.a.x), 1u, Struct_1(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2302f, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, true), u_input.a.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1731f - -764f)))), 1u), func_3(_wgslsmith_f_op_f32(step(-803f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1203f)), -1028f)))));
    let var_1 = select(~max(u_input.a, countOneBits(vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), u_input.a, all(!select(vec4<bool>(var_0.a.a, false, true, true), vec4<bool>(true, var_0.a.a, false, var_0.c.a), vec4<bool>(true, true, var_0.a.a, var_0.a.a))) & true);
    var_0 = Struct_2(Struct_1(var_0.a.a & any(!vec2<bool>(var_0.a.a, true)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1731f, var_0.c.b)))), ~global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), ~_wgslsmith_dot_vec2_u32(~(~var_1.xz), u_input.a.zz), Struct_1(-295f >= var_0.a.b, -1032f, func_2().x), ~firstTrailingBit(var_0.d & abs(var_0.d)));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(func_3(_wgslsmith_f_op_f32(abs(var_0.c.b))), _wgslsmith_mod_i32(max(var_0.d, var_0.d), -var_0.d) & ~(-1i)), _wgslsmith_clamp_i32(~(i32(-1i) * -39142i), 1i & max(i32(-1i) * -1i, ~var_0.d), var_0.d), 66187i);
    var var_3 = Struct_3(var_0.c, Struct_1(all(!(!vec2<bool>(false, var_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.b)))), 1u), vec2<bool>(all(select(vec2<bool>(false, var_0.a.a), vec2<bool>(true, var_0.a.a), vec2<bool>(true, true))), true));
    let var_4 = var_3.b;
    var_0 = Struct_2(Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-777f * var_3.b.b), -701f, var_3.a.a))), _wgslsmith_mult_u32(min(~0u, var_3.a.c), ~var_4.c)), _wgslsmith_dot_vec2_u32(max(u_input.a.zz, ~u_input.a.xy), select(u_input.a.xx, var_1.yy, !(!var_3.a.a))), var_3.a, var_2.x);
    let var_5 = select(select(!(!(!vec4<bool>(var_0.a.a, var_4.a, true, var_3.c.x))), vec4<bool>(var_3.b.a, select(true, any(vec4<bool>(var_4.a, var_4.a, var_0.a.a, true)), !var_0.c.a), all(vec2<bool>(false, true)), !var_4.a), vec4<bool>(any(select(vec3<bool>(var_3.a.a, true, false), vec3<bool>(var_0.a.a, var_4.a, false), vec3<bool>(true, var_0.c.a, false))), any(select(vec4<bool>(var_4.a, false, false, var_0.a.a), vec4<bool>(var_3.a.a, true, var_0.a.a, var_3.b.a), true)), false, false)), vec4<bool>(true, all(!vec4<bool>(var_3.c.x, false, false, true)), all(!select(vec4<bool>(true, var_0.a.a, true, false), vec4<bool>(var_0.a.a, var_0.a.a, false, true), vec4<bool>(var_3.a.a, var_4.a, true, false))), any(select(vec2<bool>(true, true), !var_3.c, select(var_3.c, vec2<bool>(true, var_4.a), var_0.a.a)))), true);
    var_3 = Struct_3(Struct_1(!all(!var_5.zzy), _wgslsmith_f_op_f32(select(-1108f, 2572f, var_4.a)), 4294967295u), var_0.a, !select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.c.a), vec2<bool>(var_4.a, true)), select(var_5.zw, var_3.c, var_0.c.a), var_3.a.a), var_5.wx, !(!vec2<bool>(true, var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(35000i, _wgslsmith_sub_i32(~var_2.x, var_0.d) >> (global0[_wgslsmith_index_u32(~46968u, 20u)] % 32u), var_2.x), _wgslsmith_f_op_f32(-var_4.b), vec4<f32>(-133f, _wgslsmith_f_op_f32(floor(var_4.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f), var_3.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_4.b)), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_5.x, true, var_4.a), 1u)), !var_0.c.a)))));
}

