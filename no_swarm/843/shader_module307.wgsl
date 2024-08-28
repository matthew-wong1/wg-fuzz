struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(-1i, -86701i)), Struct_1(vec2<i32>(-42041i, 10234i)), Struct_1(vec2<i32>(0i, 22087i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(1i, 11759i)), Struct_1(vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(-16277i, -22351i)), Struct_1(vec2<i32>(-1i, -40660i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-11658i, 2147483647i)), Struct_1(vec2<i32>(12211i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(1i, -15167i)), Struct_1(vec2<i32>(2147483647i, 18665i)), Struct_1(vec2<i32>(-1i, 6931i)), Struct_1(vec2<i32>(10190i, 40782i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(0i, 47190i)));

var<private> global1: vec3<bool>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 4619u);

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(select(!(!vec4<bool>(global1.x, false, false, global1.x)), select(vec4<bool>(!global1.x, select(global1.x, global1.x, false), false & global1.x, true), vec4<bool>(global1.x, all(global1.zy), all(vec3<bool>(true, true, global1.x)), select(true, false, global1.x)), select(!vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, true, global1.x, false))), global1.x), vec4<bool>(global1.x, global1.x | true, global1.x, true), (global1.x || (~57401u > ~global2.x)) || global1.x);
    var var_1 = arg_1;
    var_0 = vec4<bool>(all(select(vec3<bool>(global1.x, true, var_0.x), select(vec3<bool>(false, global1.x, var_0.x), var_0.zwx, var_0.xyz), global1.x)), true, var_0.x, global1.x);
    let var_2 = var_0.x;
    let var_3 = -u_input.b;
    return select(select(!vec4<bool>(true, !var_0.x, any(vec3<bool>(var_0.x, false, true)), global2.x < 53408u), select(!vec4<bool>(var_0.x, var_0.x, global1.x, false), !vec4<bool>(true, var_0.x, true, global1.x), all(!var_0.zw)), !vec4<bool>(var_0.x, all(vec3<bool>(false, global1.x, false)), any(vec4<bool>(false, global1.x, true, global1.x)), global1.x)), select(select(select(!vec4<bool>(false, false, true, var_0.x), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(true, false, false, true), vec4<bool>(global1.x, false, global1.x, false)), !vec4<bool>(false, true, global1.x, false)), vec4<bool>(false, 2147483647i <= var_1.a.x, true, false), select(vec4<bool>(true, var_0.x, true, true), !vec4<bool>(var_0.x, false, false, true), all(vec2<bool>(var_0.x, var_0.x)))), !vec4<bool>(!global1.x, global2.x >= 53293u, !var_0.x, global4.a.x >= -1i), true), !select(select(vec4<bool>(false, false, true, global1.x), !vec4<bool>(false, true, global1.x, var_0.x), !vec4<bool>(global1.x, false, global1.x, var_0.x)), select(!vec4<bool>(false, global1.x, var_0.x, global1.x), vec4<bool>(true, false, true, false), select(false, var_0.x, true)), vec4<bool>(true, false, true, global1.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec4<bool>(true, all(arg_0.yxz), 1516i != ~(1i & -u_input.b.x), all(vec2<bool>(_wgslsmith_f_op_f32(sign(-557f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1380f), true)));
    let var_1 = arg_1.a.x;
    global0 = array<Struct_1, 20>();
    var var_2 = !func_3(Struct_1(firstLeadingBit(vec2<i32>(var_1, arg_1.a.x))), global0[_wgslsmith_index_u32(global2.x, 20u)], arg_1, arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(400f)) * _wgslsmith_f_op_f32(-1979f + -1131f)), _wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(558f - 880f)))), _wgslsmith_f_op_f32(sign(829f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(439f + -774f) - _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(round(-543f)))) + -713f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1752f, _wgslsmith_f_op_f32(f32(-1f) * -2838f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-231f, -113f)))), 1389f, 2119f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + _wgslsmith_f_op_f32(-var_3.x))) - var_3.x), 273f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(abs(~_wgslsmith_mult_vec2_i32(global4.a, vec2<i32>(u_input.b.x, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-308f * -949f), -1099f)) * _wgslsmith_f_op_f32(func_4(func_3(Struct_1(vec2<i32>(var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(global4.a), Struct_1(u_input.a)), Struct_1(global4.a), global1.zy))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -494f) - 1223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-384f))))))));
    var var_2 = true;
    let var_3 = Struct_1(-select(global4.a, vec2<i32>(global4.a.x, 2147483647i) | vec2<i32>(-22160i, -40743i), global1.x));
    var var_4 = -1i & var_0.a.x;
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, 2147483647i, global4.a.x, -2147483647i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-14252i, -6335i, u_input.a.x, global4.a.x)), -vec4<i32>(-9558i, var_0.a.x, -1i, global4.a.x))), firstTrailingBit(var_0.a.x)));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = -830f;
    global3 = global1.x;
    var var_1 = func_2();
    global4 = global0[_wgslsmith_index_u32(1u >> ((abs(_wgslsmith_mod_u32(~60666u, 1u | arg_0)) & _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(4294967295u, 29569u, arg_0)), 27927u)) % 32u), 20u)];
    global1 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f - 319f) + _wgslsmith_f_op_f32(-var_0)) < 703f, all(global1.xy), all(select(!vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(false, false, false), vec3<bool>(true, global1.x, global1.x), global1.x), 1257f < var_0)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, _wgslsmith_f_op_f32(trunc(570f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    let var_0 = min(-1i, 32354i);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(4294967295u)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -453f, 145f, -1246f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(212f, 422f, -1000f, -1000f))))))));
    var_1 = vec4<f32>(var_1.x, -426f, var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -777f))))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    global2 = ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(33328u, 1u, 50816u), vec3<u32>(4294967295u, global2.x, global2.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 55336u, global2.x) ^ vec3<u32>(global2.x, global2.x, 0u), ~vec3<u32>(global2.x, 42813u, 9985u)) % vec3<u32>(32u)));
    var var_3 = ~abs(global2.x);
    let var_4 = func_2();
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(vec2<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, -14370i, 2147483647i))), -firstTrailingBit(_wgslsmith_div_vec2_i32(var_5.a, vec2<i32>(u_input.b.x, var_0)))), 0u, -vec4<i32>(~var_2.a.x & ~2147483647i, var_0, var_5.a.x, -(~(-30560i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(0i), ~1i), _wgslsmith_mod_vec2_i32(var_5.a, vec2<i32>(global4.a.x, 4871i))), var_5.a), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 25996i, -42147i), u_input.b) & vec3<i32>(u_input.b.x, 2147483647i, 34702i))));
}

