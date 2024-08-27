struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 2147483647i, -21056i), -1i, vec2<u32>(38181u, 43476u), vec2<bool>(true, true), 912f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = (select(reverseBits(vec4<i32>(-10380i, global2.a.x, 94152i, 73579i)), vec4<i32>(-1i, ~global2.b, u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 1i, -2147483647i), vec3<i32>(1i, global2.a.x, -1i))), true) << (vec4<u32>(40392u, 0u, global2.c.x, 4294967295u) % vec4<u32>(32u))) | select(~vec4<i32>(i32(-1i) * -33903i, _wgslsmith_div_i32(1i, global2.a.x), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(global2.a.x, global2.b)), global2.b), -_wgslsmith_add_vec4_i32(vec4<i32>(49809i, global2.a.x, -12366i, -1i), select(vec4<i32>(45847i, 1i, -52155i, u_input.d.x), vec4<i32>(global2.b, global2.b, u_input.d.x, u_input.d.x), vec4<bool>(global2.d.x, global1.x, false, global1.x))), select(select(!vec4<bool>(true, true, global1.x, global2.d.x), select(vec4<bool>(global1.x, global2.d.x, global2.d.x, global1.x), vec4<bool>(true, true, true, false), true), vec4<bool>(false, global2.d.x, global1.x, false)), vec4<bool>(false, any(vec3<bool>(true, global2.d.x, global2.d.x)), global1.x, false), vec4<bool>(true, all(global1.xx), false, true)));
    let var_1 = Struct_1(max(vec3<i32>(-21208i, var_0.x, u_input.d.x >> (110413u % 32u)), _wgslsmith_div_vec3_i32(var_0.zwy, firstLeadingBit(vec3<i32>(-2147483647i, global2.b, 0i)))) ^ reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d.x, var_0.x, 47573i), vec3<i32>(var_0.x, global2.a.x, var_0.x))), -31188i, global0.xy, !(!select(vec2<bool>(true, true), vec2<bool>(global1.x, true), global2.d.x && false)), arg_0.x);
    var var_2 = ~16665u;
    var var_3 = min(max(vec2<i32>(var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global2.a.x, 51064i) ^ vec3<i32>(u_input.d.x, var_0.x, 2147483647i), max(global2.a, vec3<i32>(var_0.x, 4768i, -2147483647i)))), vec2<i32>(~(-5710i), ~63431i)), var_0.wy);
    let var_4 = _wgslsmith_f_op_f32(-1613f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -795f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(step(-925f, -1471f)))))));
    return global1.x;
}

fn func_2() -> vec3<u32> {
    global1 = vec4<bool>(all(vec3<bool>(!global2.d.x, true, global2.d.x)), global2.d.x, !(!(~(-39772i) > -u_input.d.x)), !func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e, -1121f, global2.e) * vec3<f32>(global2.e, global2.e, 1255f)))));
    global1 = vec4<bool>(global1.x, false | func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.e, global2.e, global2.e))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.e, 748f, 1444f)))))), all(!select(global1.yy, vec2<bool>(false, false), global2.d.x)), true);
    let var_0 = vec3<bool>(global2.d.x, true && all(global2.d), !global1.x);
    var var_1 = Struct_1(vec3<i32>(abs(-_wgslsmith_div_i32(0i, -1i)), global2.b, ~u_input.d.x), -24148i, _wgslsmith_mod_vec2_u32(select(u_input.c.yz, global0.wz, !global1.yy) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, global2.c.x), global0.wy) % vec2<u32>(32u)), vec2<u32>(~(~global2.c.x), global0.x)), select(!select(select(vec2<bool>(true, true), var_0.yy, false), global2.d, select(false, true, global2.d.x)), global1.xz, !vec2<bool>(true, global2.e > -213f)), _wgslsmith_f_op_f32(max(-1443f, _wgslsmith_f_op_f32(step(global2.e, _wgslsmith_f_op_f32(min(global2.e, _wgslsmith_f_op_f32(abs(global2.e)))))))));
    global1 = select(vec4<bool>(true, any(select(vec4<bool>(false, global1.x, true, global2.d.x), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, false, global1.x, false), vec4<bool>(global1.x, true, false, global2.d.x)), all(vec2<bool>(var_1.d.x, var_0.x)))), true, any(vec3<bool>(true, select(false, var_1.d.x, global2.d.x), !var_0.x))), vec4<bool>(false, !(!global2.d.x), !any(vec4<bool>(global2.d.x, true, var_0.x, var_1.d.x)), true), select(select(!select(vec4<bool>(global2.d.x, global2.d.x, false, var_0.x), vec4<bool>(var_0.x, global2.d.x, false, global2.d.x), true), !select(vec4<bool>(true, global1.x, false, var_0.x), vec4<bool>(false, global2.d.x, false, false), true), vec4<bool>(any(vec2<bool>(global2.d.x, false)), var_0.x, var_0.x, true)), vec4<bool>(global1.x, select(!var_0.x, false & var_0.x, global2.e > 613f), var_0.x, global1.x), var_0.x));
    return ~firstTrailingBit(~(~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(var_1.c.x, 0u, 221u))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(global0.x, ~min(4294967295u, u_input.b.x)), ~global0.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(global0.x), _wgslsmith_mod_u32(4294967295u, global2.c.x)), ~(~43169u)), _wgslsmith_mult_u32(9980u, global2.c.x), ~_wgslsmith_mod_u32(global2.c.x, 17370u) ^ 55877u), u_input.a);
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(76052u, 17347u, 1u), vec3<u32>(var_0.x, u_input.b.x, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(34832u, 0u, 57824u), u_input.c & u_input.c), func_2()) ^ _wgslsmith_clamp_vec3_u32(global0.xxw, ~(~vec3<u32>(0u, 1811u, 45438u)), var_0), vec3<u32>(abs(u_input.c.x), global2.c.x, select(_wgslsmith_mult_u32(~0u, 6618u | u_input.c.x), ~1u, global1.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(~(~(-global2.a)), vec3<i32>(-1i, -2147483647i, _wgslsmith_mod_i32(8979i, countOneBits(u_input.d.x)))), abs(countOneBits(0i)), global2.c, vec2<bool>(!global1.x & true, 4294967295u > var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.e)) + global2.e)))));
    var var_3 = vec3<f32>(global2.e, _wgslsmith_f_op_f32(step(var_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1923f, _wgslsmith_f_op_f32(global2.e - 321f))))), _wgslsmith_f_op_f32(f32(-1f) * -718f), !var_2.d.x)));
    let var_4 = ~(~(~_wgslsmith_mod_vec3_u32(var_0 | u_input.c, min(vec3<u32>(global2.c.x, 4294967295u, var_2.c.x), vec3<u32>(4294967295u, var_1, global0.x)))));
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    global1 = !select(!select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(true, true, true, global1.x), global1.x), select(vec4<bool>(true, global2.d.x, global2.d.x, global2.d.x), vec4<bool>(global2.d.x, arg_1.d.x, arg_1.d.x, arg_0), vec4<bool>(global2.d.x, arg_1.d.x, global1.x, global1.x)), !vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_0)), select(select(vec4<bool>(global1.x, global2.d.x, false, global2.d.x), select(vec4<bool>(arg_0, true, global2.d.x, true), vec4<bool>(global2.d.x, global1.x, true, global2.d.x), arg_1.d.x), vec4<bool>(false, global2.d.x, true, true)), vec4<bool>(false, any(global1.xxy), true, arg_0), global2.d.x), vec4<bool>(-2903f != _wgslsmith_div_f32(global2.e, 715f), select(false, global1.x, arg_1.d.x) & (0i == arg_2), true, ~u_input.d.x == global2.a.x));
    let var_0 = _wgslsmith_dot_vec4_u32(select(~(vec4<u32>(global2.c.x, u_input.b.x, 7846u, global0.x) | vec4<u32>(u_input.c.x, 0u, global0.x, 0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), global2.c), global0.x >> (34263u % 32u), countOneBits(arg_1.c.x), global2.c.x), arg_0), _wgslsmith_add_vec4_u32(select(~vec4<u32>(4294967295u, global2.c.x, 0u, global2.c.x), ~vec4<u32>(4294967295u, 4294967295u, 1u, arg_1.c.x), true), ~_wgslsmith_add_vec4_u32(vec4<u32>(global2.c.x, 4294967295u, arg_1.c.x, u_input.b.x), vec4<u32>(12143u, arg_1.c.x, 8502u, 2623u)))) | func_1().c.x;
    global1 = !select(vec4<bool>(!(!global2.d.x), global1.x, true, true), !select(vec4<bool>(true, true, true, global1.x), select(vec4<bool>(false, false, global1.x, global2.d.x), vec4<bool>(arg_1.d.x, true, false, false), global1.x), any(global1.xzy)), !(!vec4<bool>(false, true, true, arg_0)));
    var var_1 = 1u;
    var var_2 = arg_1;
    return Struct_1(global2.a, firstTrailingBit(9475i), ~(~global0.xy), vec2<bool>(all(select(vec4<bool>(global1.x, false, false, false), vec4<bool>(global2.d.x, global2.d.x, false, arg_1.d.x), vec4<bool>(arg_0, arg_1.d.x, true, true))) && global2.d.x, any(!global1.xyz)), _wgslsmith_div_f32(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e, -551f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(~arg_0.a, ~(~(-10228i)), (countOneBits(u_input.c.zz) ^ global2.c) >> (arg_0.c % vec2<u32>(32u)), !(!func_4(select(true, false, global2.d.x), Struct_1(vec3<i32>(global2.b, -3605i, u_input.d.x), u_input.d.x, vec2<u32>(1u, 4294967295u), global1.zx, global2.e), func_1().a.x, _wgslsmith_div_f32(global2.e, 131f)).d), arg_0.e);
    let var_2 = ~select(global2.b, -50915i, true);
    let var_3 = Struct_1(vec3<i32>(-254i, ~1i, var_2), var_1.a.x, vec2<u32>(func_2().x, 18533u), vec2<bool>(~global2.a.x < -firstLeadingBit(27596i), global1.x), -1360f);
    var var_4 = abs(vec3<i32>(global2.b | _wgslsmith_mod_i32(-1i ^ global2.b, i32(-1i) * -24503i), var_3.a.x, ~(~1i)));
    return func_1();
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global1 = !(!vec4<bool>(true, any(global1.xzz) || any(vec3<bool>(false, true, arg_2.x)), !global1.x & true, func_2().x < ~arg_1.c.x));
    global2 = Struct_1(-(func_5(arg_1, arg_1, 4294967295u).a & vec3<i32>(_wgslsmith_add_i32(70331i, u_input.d.x), 1i, arg_1.a.x)), u_input.d.x, _wgslsmith_div_vec2_u32(~(~func_1().c), select(vec2<u32>(global2.c.x, 97790u), global0.yy, func_4(!global2.d.x, arg_1, global2.a.x, arg_1.e).d)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.e, -1000f)) - -358f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global2.e + -185f), -703f, -1195f, _wgslsmith_f_op_f32(174f - 546f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, global2.e, global2.e, global2.e)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, 587f, -1244f, -1000f))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -730f, global2.e, 311f))));
    global0 = ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 1u), vec4<u32>(u_input.b.x, 29653u, 4294967295u, arg_1.c.x))) & (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.a, arg_0.x, 20426u), vec4<u32>(u_input.c.x, 1u, 0u, 1u)), vec4<u32>(arg_1.c.x, arg_1.c.x, 21500u, global2.c.x)) | vec4<u32>(16572u, arg_1.c.x, 1u, 4294967295u)));
    global0 = firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c.x, global0.x >> (47883u % 32u), firstTrailingBit(global0.x), func_1().c.x), ~(~vec4<u32>(global0.x, global2.c.x, 6855u, 0u)))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(26416u, 4294967295u), firstTrailingBit(vec2<u32>(arg_0.x, 14340u))), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), 35954u), vec2<u32>(u_input.c.x, global2.c.x) & ~vec2<u32>(4294967295u, global0.x)), ~arg_0.x, arg_1.c.x) % vec4<u32>(32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<u32>(~8703u, abs(_wgslsmith_sub_u32(4294967295u, ~21443u)), ~0u), func_5(func_4(global1.x, func_1(), abs(_wgslsmith_add_i32(u_input.d.x, 5479i)), func_1().e), func_4(true, Struct_1(global2.a << (global0.wwx % vec3<u32>(32u)), ~u_input.d.x, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, 34716u)), global1.zx, _wgslsmith_f_op_f32(min(global2.e, 1579f))), i32(-1i) * -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e * global2.e), func_4(true, Struct_1(global2.a, global2.a.x, vec2<u32>(0u, global2.c.x), vec2<bool>(true, global2.d.x), global2.e), u_input.d.x, -811f).e)), ~_wgslsmith_clamp_u32(~global0.x, global2.c.x, global0.x | global0.x)), func_5(Struct_1(func_4(global2.d.x, func_1(), 1i, _wgslsmith_f_op_f32(global2.e + global2.e)).a, ~1i, vec2<u32>(global2.c.x, func_2().x), !global2.d, _wgslsmith_f_op_f32(589f * global2.e)), func_1(), global0.x ^ u_input.c.x).d);
    let var_1 = func_1();
    let var_2 = func_1();
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(select(firstLeadingBit(~vec3<i32>(-21391i, 43617i, 0i)), vec3<i32>(2147483647i, var_0.a.x, 1i) << ((u_input.c >> (vec3<u32>(global0.x, var_1.c.x, var_0.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(1924i < var_1.b, false, !var_2.d.x)), vec3<i32>(-(var_2.a.x >> (global0.x % 32u)), -(~(-39034i)), _wgslsmith_add_i32(var_1.b, global2.a.x))), _wgslsmith_mod_i32(-_wgslsmith_add_i32(_wgslsmith_add_i32(global2.a.x, -1i), -var_2.b), var_0.b), ~var_1.c, var_0.d, func_5(Struct_1(var_0.a, _wgslsmith_mult_i32(~global2.b, 23230i), vec2<u32>(var_1.c.x, 4294967295u), func_4(!global2.d.x, var_1, u_input.d.x, _wgslsmith_f_op_f32(step(355f, var_2.e))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - -426f))), var_2, ~var_1.c.x).e);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e * var_2.e) * _wgslsmith_f_op_f32(-var_2.e))))));
    var var_5 = 5064i << (0u % 32u);
    var_0 = var_2;
    global2 = func_5(var_3, var_1, var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(~global0.x, var_3.c.x & global0.x, 1u)));
}

